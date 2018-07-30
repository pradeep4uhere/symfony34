<?php

namespace AppBundle\Controller;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use AppBundle\Entity\User;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\ButtonType;
use Symfony\Component\HttpFoundation\Response;

class UserController extends Controller
{
    

	private function getRepo($className){
		return $this->getDoctrine()->getRepository($className);
	}


   


     /**
     * @Route("/newprodCat")
     */
    public function newProdCatAction(Request $request)
    {
        $productsObj = $this->getRepo(Product::class)->findAll();
        $catsObj = $this->getRepo(Category::class)->findAll();
        for($i=1;$i<20;$i++){
          $prodcats = new TblProductCategory();
          $cateId= rand(1,count($catsObj));
          $prodcats->setProductId(rand(1,count($productsObj)));
          $prodcats->setCategoryId('5');
          $prodcats->setCreatedAt(new \DateTime('now'));
          $prodcats->setUpdatedAt(new \DateTime('now'));
          $prodcats->setStatus(1);
          $em = $this->getDoctrine()->getManager();
          $em->persist($prodcats);
        }
        $em->flush();
        die;

    }





     /**
     * @Route("/newprod")
     */
    public function newProductAction(Request $request)
    {
        
        for($i=0;$i<150;$i++){
          $products = new Product();
          $products->setName($this->random_pronounceable_word(rand(3,9)));
          $products->setDescriptions($this->random_pronounceable_word(rand(6,15)));
          $products->setPrice(rand(100,9999));
          $products->setCreatedAt(new \DateTime('now'));
          $productsObj = $this->getRepo(Product::class)->findAll();
          $em = $this->getDoctrine()->getManager();
          $em->persist($products);
        }
        $em->flush();
        die;

    }



     /**
     * @Route("/newcat")
     */
    public function newCategoryAction(Request $request)
    {
        
        for($i=0;$i<150;$i++){
          $cat = new Category();
          $cat->setName($this->random_pronounceable_word(rand(3,9)));
          $cat->setDescription($this->random_pronounceable_word(rand(6,15)));
          $cat->setCreatedAt(new \DateTime('now'));
          $cat->setUpdatedAt(new \DateTime('now'));
          $catObj = $this->getRepo(Category::class)->findAll();
          $cat->setParentId(rand(1,count($catObj)));
          $em = $this->getDoctrine()->getManager();
          $em->persist($cat);
        }
        $em->flush();
        die;

    }

    /**
     * @Route("/register",name="user_new")
     */
    public function registerAction(Request $request)
    {
    	$user = new User();
    	$form = $this->createFormBuilder($user)
	    	->add('firstName', TextType::class)
	    	->add('lastName', TextType::class)
	    	->add('email', TextType::class)
	    	->add('username', TextType::class)
	    	->add('password', TextType::class)
			->add('mobile', TextType::class)	    	
	    	->add('save', SubmitType::class, array('label' => 'Create Task'))
    	    ->getForm();

  	     $form->handleRequest($request);
  	     if ($form->isSubmitted() && $form->isValid()) {
	  	     	$user = $form->getData();
	  	     	$user->setCreatedAt(new \DateTime('now'));
	  	     	$user->setUpdatedAt(new \DateTime('now'));
	  	     	$em = $this->getDoctrine()->getManager();
        		$em->persist($user);
		        $em->flush();
	  	     	return $this->redirect('dashboard');
  	     }
        return $this->render('User/register.html.twig', array(
        	'form' => $form->createView(),
        ));
    }

    /**
     * @Route("/login")
     */
    public function loginAction()
    {
        return $this->render('AppBundle:User:login.html.twig', array(
            // ...
        ));
    }

    /**
     * @Route("/dashboard",name="dashboard")
     */
    public function dashboardAction()
    {

    	//Get All List Of USer
    	$userRepo = $this->getRepo(User::class)->findAll();
        return $this->render('User/dashboard.html.twig', array(
            // ...
            'user'=>$userRepo
        ));
    }

    /**
     * @Route("/logout")
     */
    public function logoutAction()
    {
        return $this->render('AppBundle:User:logout.html.twig', array(
            // ...
        ));
    }


    /**
     * @Route("/user/{id}",name="user_edit")
     */
    public function editAction(Request $request)
    {
    	$user_id=$request->get('id');;
    	$user = new User();
    	$userRepo = $this->getRepo(User::class)->find($user_id);
    	$form = $this->createFormBuilder($user)
	    	->add('firstName', TextType::class)
	    	->add('lastName', TextType::class)
	    	->add('email', TextType::class)
	    	->add('mobile', TextType::class)	    	
	    	->add('save', SubmitType::class, array('label' => 'Update'))
	    	->add('back', ButtonType::class, array('label' => 'Back'))
    	    ->getForm();
   	    $form->handleRequest($request);
   	    if ($form->isSubmitted() && $form->isValid()) {
	  	     	$userData = $form->getData();
	  	     	$userRepo->setFirstName($userData->getFirstName());
	  	     	$userRepo->setLastName($userData->getLastName());
	  	     	$userRepo->setMobile($userData->getMobile());
	  	     	$userRepo->setEmail($userData->getEmail());
	  	     	$userRepo->setUpdatedAt(new \DateTime('now'));
	  	     	$em = $this->getDoctrine()->getManager();
        		$em->persist($userRepo);
		        $em->flush();
	  	     	//return $this->Route('dashboard');
	  	     	return $this->forward($this->routeToControllerName('dashboard'));
  	     }
        return $this->render('User/edit.html.twig', array(
	         'form' => $form->createView(),
	         'user'=>$userRepo

        ));
    }

    private function routeToControllerName($routename) {
    	$routes = $this->get('router')->getRouteCollection();
    	return $routes->get($routename)->getDefaults()['_controller'];
  }



  private function random_pronounceable_word($length = 6){
      // consonant sounds
      $cons = array(
          // single consonants. Beware of Q, it's often awkward in words
          'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm',
          'n', 'p', 'r', 's', 't', 'v', 'w', 'x', 'z',
          // possible combinations excluding those which cannot start a word
          'pt', 'gl', 'gr', 'ch', 'ph', 'ps', 'sh', 'st', 'th', 'wh',
      );
     
      // consonant combinations that cannot start a word
      $cons_cant_start = array(
          'ck', 'cm',
          'dr', 'ds',
          'ft',
          'gh', 'gn',
          'kr', 'ks',
          'ls', 'lt', 'lr',
          'mp', 'mt', 'ms',
          'ng', 'ns',
          'rd', 'rg', 'rs', 'rt',
          'ss',
          'ts', 'tch',
      );
     
      // wovels
      $vows = array(
          // single vowels
          'a', 'e', 'i', 'o', 'u', 'y',
          // vowel combinations your language allows
          'ee', 'oa', 'oo',
      );
     
      // start by vowel or consonant ?
      $current = ( mt_rand( 0, 1 ) == '0' ? 'cons' : 'vows' );
     
      $word = '';
         
      while( strlen( $word ) < $length ) {
     
          // After first letter, use all consonant combos
          if( strlen( $word ) == 2 )
              $cons = array_merge( $cons, $cons_cant_start );
   
           // random sign from either $cons or $vows
          $rnd = ${$current}[ mt_rand( 0, count( ${$current} ) -1 ) ];
         
          // check if random sign fits in word length
          if( strlen( $word . $rnd ) <= $length ){
              $word .= $rnd;
              // alternate sounds
              $current = ( $current == 'cons' ? 'vows' : 'cons' );
          }
      }
     
      return $word;
  }

}

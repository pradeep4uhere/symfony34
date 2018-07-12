<?php

namespace AppBundle\Controller;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use AppBundle\Entity\User;
use AppBundle\Entity\Product;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\ButtonType;
use Symfony\Component\HttpFoundation\Response;

class UserController extends Controller
{
    

	private function getRepo($className){
		return $repository = $this->getDoctrine()->getRepository($className);
	}


    /**
     * @Route("/list")
     */
    public function listAction(Request $request)
    {
        return $this->render('User/list.html.twig', array(
	         
        ));
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
    	$repository = $this->getRepo(Product::class);
    	$products = $repository->findAll();

    	//Get All List Of USer
    	$userRepo = $this->getRepo(User::class)->findAll();
        return $this->render('User/dashboard.html.twig', array(
            // ...
            'products'=>$products,
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

}

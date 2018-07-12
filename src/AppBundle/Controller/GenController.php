<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class GenController extends Controller
{
    /**
     * @Route("/lucky")
     */
    public function luckyAction()
    {
        return $this->render('Gen/lucky.html.twig', array(
            // ...
        ));
    }

}

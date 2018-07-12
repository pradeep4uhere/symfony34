<?php

namespace AppBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class GenControllerTest extends WebTestCase
{
    public function testLucky()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/lucky');
    }

}

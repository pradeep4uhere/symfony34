<?php

namespace AppBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class UserControllerTest extends WebTestCase
{
    public function testList()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/list');
    }

    public function testRegister()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/register');
    }

    public function testLogin()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/login');
    }

    public function testDashboard()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/dashboard');
    }

    public function testLogout()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/logout');
    }

}

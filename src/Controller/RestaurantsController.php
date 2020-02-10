<?php

namespace App\Controller;

use App\Repository\HorairesRepository;
use App\Repository\RestaurantsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class RestaurantsController extends AbstractController
{
    /**
     * @Route("/restaurants", name="restaurants")
     */
    public function index(RestaurantsRepository $restaurantsRepository)
    {
        $result = $restaurantsRepository->findAll();


        return $this->json($result);

    }
}

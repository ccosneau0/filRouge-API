<?php

namespace App\Controller;

use App\Repository\HorairesRepository;
use App\Repository\RestaurantsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class TestController extends AbstractController
{
    /**
     * @Route("/test", name="test")
     * @param RestaurantsRepository $restaurantsRepository
     * @param HorairesRepository $horairesRepository
     * @return JsonResponse
     */
    public function index(RestaurantsRepository $restaurantsRepository, HorairesRepository $horairesRepository)
    {
        $resto = $restaurantsRepository->findAll();

        $time = $horairesRepository->findAll();

        $result = array_merge($resto , $time) ;

        return $this->json($result);

    }
}

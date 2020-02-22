<?php

namespace App\Controller;

use App\Repository\HorairesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class TestController extends AbstractController
{
    /**
     * @Route("/test", name="test")
     * @param HorairesRepository $horairesRepository
     * @return JsonResponse
     */
    public function index(HorairesRepository $horairesRepository)
    {
        //$resto = $restaurantsRepository->findAll();

        //$time = $horairesRepository->findAll();

        //$result = array_merge($resto , $time) ;



        $result = $horairesRepository->findBy(array('name' => $name));

        return $this->json($result);

    }
}

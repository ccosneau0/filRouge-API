<?php

namespace App\Controller;

use App\Repository\ConcertsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class ConcertsController extends AbstractController
{
    /**
     * @Route("/concerts", name="concerts")
     * @param ConcertsRepository $concertsRepository
     * @return JsonResponse
     */
    public function index(ConcertsRepository $concertsRepository)
    {
        $concerts = $concertsRepository->findAll();


        return $this->json($concerts);
    }
}

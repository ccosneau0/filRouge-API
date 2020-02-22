<?php

namespace App\Controller;

use App\Repository\MuseeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class MuseeController extends AbstractController
{
    /**
     * @Route("/musee", name="musee")
     * @param MuseeRepository $museeRepository
     * @return JsonResponse
     */
    public function index(MuseeRepository $museeRepository)
    {
        $musee = $museeRepository->findAll();

        return $this->json($musee);
    }
}

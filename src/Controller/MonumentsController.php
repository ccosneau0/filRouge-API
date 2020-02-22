<?php

namespace App\Controller;

use App\Repository\MonumentsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class MonumentsController extends AbstractController
{
    /**
     * @Route("/monuments", name="monuments")
     * @param MonumentsRepository $monumentsRepository
     * @return JsonResponse
     */
    public function index(MonumentsRepository $monumentsRepository)
    {
        $monuments = $monumentsRepository->findAll();

        return $this->json($monuments);
    }
}

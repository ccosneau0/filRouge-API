<?php

namespace App\Controller;

use App\Repository\CinemasRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class CinemasController extends AbstractController
{
    /**
     * @Route("/cinemas", name="cinemas")
     * @param CinemasRepository $cinemasRepository
     * @return JsonResponse
     */
    public function index(CinemasRepository $cinemasRepository)
    {
        $cinemas = $cinemasRepository->findAll();

        return $this->json($cinemas);
    }
}

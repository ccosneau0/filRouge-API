<?php

namespace App\Controller;

use App\Repository\ParcsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class ParcsController extends AbstractController
{
    /**
     * @Route("/parcs", name="parcs")
     * @param ParcsRepository $parcsRepository
     * @return JsonResponse
     */
    public function index(ParcsRepository $parcsRepository)
    {
        $parcs = $parcsRepository->findAll();

        return $this->json($parcs);
    }
}

<?php

namespace App\Controller;

use App\Repository\MarcheRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class MarcheController extends AbstractController
{
    /**
     * @Route("/marche", name="marche")
     * @param MarcheRepository $marcheRepository
     * @return JsonResponse
     */
    public function index(MarcheRepository $marcheRepository)
    {
        $marche = $marcheRepository->findAll();


        return $this->json($marche);
    }
}

<?php

namespace App\Controller;

use App\Repository\EpreuvesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class EpreuvesController extends AbstractController
{
    /**
     * @Route("/epreuves", name="epreuves")
     * @param EpreuvesRepository $epreuvesRepository
     * @return JsonResponse
     */
    public function index(EpreuvesRepository $epreuvesRepository)
    {
        $epreuves = $epreuvesRepository->findAll();

        return $this->json($epreuves);
    }
}

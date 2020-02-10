<?php

namespace App\Controller;

use App\Repository\HorairesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class HorairesController extends AbstractController
{
    /**
     * @Route("/horaires", name="horaires")
     */
    public function index(HorairesRepository $horairesRepository)
    {
        $result = $horairesRepository->findAll();



       return $this->json($result);

    }
}

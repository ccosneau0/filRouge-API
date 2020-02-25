<?php

namespace App\Controller;

use App\Repository\HorairesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class HorairesController extends AbstractController
{
    /**
     * @Route("/horaires", name="horaires")
     * @param HorairesRepository $horairesRepository
     * @return JsonResponse
     */
    public function index(HorairesRepository $horairesRepository)
    {
        $getName = $_GET["name"];

        $result = $horairesRepository->findBy(array("Name" => $getName));

        return $this->json($result);

    }
}

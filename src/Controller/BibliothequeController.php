<?php

namespace App\Controller;

use App\Entity\Bibliotheque;
use App\Repository\BibliothequeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class BibliothequeController extends AbstractController
{
    /**
     * @Route("/bibliotheque", name="bibliotheque")
     * @param BibliothequeRepository $bibliothequeRepository
     * @return JsonResponse
     */
    public function index(BibliothequeRepository $bibliothequeRepository)
    {
        $result = $bibliothequeRepository->findAll();
        return $this->json($result);
    }
}

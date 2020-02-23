<?php

namespace App\Controller;

use App\Entity\Restaurants;
use App\Repository\HorairesRepository;
use App\Repository\RestaurantsRepository;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\Query\Expr\Join;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class TestController extends AbstractController
{
    /**
     * @Route("/test", name="test")
     * @param HorairesRepository $horairesRepository
     * @param RestaurantsRepository $restaurantsRepository
     * @param EntityManager $em
     * @return JsonResponse
     */
    public function index(HorairesRepository $horairesRepository, RestaurantsRepository $restaurantsRepository, EntityManager $em)
    {
        $resto = $restaurantsRepository->findAll();

        $time = $horairesRepository->findAll();

        $result = array_merge($resto , $time);



        $qb = $em->createQueryBuilder()
            ->select('r')
            ->from('Restaurants', 'r')
            ->leftJoin('r.nom', 'h', Expr\Join::ON, 'h.is_primary = 1');




        return $this->json($result);

    }
}

<?php

namespace App\Controller;

use App\Repository\MuseeRepository;
use Doctrine\DBAL\Query\QueryBuilder;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @method getEntityManager()
 */
class TestController extends AbstractController
{
    /**
     * @Route("/test", name="test")
     * @param MuseeRepository $museeRepository
     * @return Response
     */
    public function index(MuseeRepository $museeRepository)
    {

        $nom = $_GET["nom"];

        json_encode($nom);

        $result = $museeRepository->findOneBy(array('Nom' => $nom));

        return $this->json($result);





        //$entityManager = $this->getDoctrine()->getEntityManager();

        //$queryBuilder = $em->createQueryBuilder();

        //$em=$this->getEntityManager();

        //$qb = $em->createQueryBuilder()
        //    ->select('r')
        //    ->from('Restaurants', 'r')
        //    ->leftJoin('r.nom', 'h', Expr\Join::ON, 'h.is_primary = 1');

        //return $this->json(array_merge($qb));

        //$response = $museeRepository->findAll();

        //return $this->json($response);

    }
}

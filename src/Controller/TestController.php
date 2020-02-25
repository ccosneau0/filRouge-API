<?php

namespace App\Controller;

use App\Repository\HorairesRepository;
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
     * @param HorairesRepository $horairesRepository
     * @return JsonResponse
     */

    public function index(HorairesRepository $horairesRepository)
    {

        $getNom = $_GET["nom"];
        //$getCoordonne = $_GET["coordonne"];

        //$longlat = explode(', ', $getCoordonne);
        //$longitude = $longlat[0];
        //$latitude = $longlat[1];


        //$getMusee = $museeRepository->findAll();
        //$compareCoordonne = similar_text($getCoordonne, $getMusee);


        //foreach ( $getMusee as $key => $twoValue ) {
            //similar_text($getCoordonne, $key, $percent);
            //if ($percent > 50) {
                //$result = array($twoValue);
            //}
        //}

            //return $result;

        //var_dump($result);

        //var_dump($compareCoordonne);

        $result = $horairesRepository->findBy(array('Name' => $getNom));

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

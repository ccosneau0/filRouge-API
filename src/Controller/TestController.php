<?php

namespace App\Controller;

use App\Repository\HorairesRepository;
use App\Repository\MonumentsRepository;
use App\Repository\MuseeRepository;
use Doctrine\DBAL\Query\QueryBuilder;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\Query\Expr\Math;
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
     * @param MonumentsRepository $monumentsRepository
     * @return Response
     */

    public function index(MonumentsRepository $monumentsRepository)
    {

        $getLong = $_GET['longitude'];
        $getLati = $_GET['latitude'];
        $result = [];

        $getMonuments = $monumentsRepository->findAll();


        for ($index = 0; $index < count($getMonuments); $index++){
            $longitude = $getMonuments[$index]->getLongitude();
            $latitude = $getMonuments[$index]->getLatitude();
            var_dump($longitude);
            echo '<br><br>';
            var_dump($latitude);
            $powLong = pow($getLong - $longitude[$index], 2);
            $powLat = pow($getLati - $latitude[$index], 2);
            $longLat = sqrt($powLong + $powLat);

            array_push($result, $longLat);
        }
        echo '<br><br>';
        var_dump($result);

        /*for ($i = 0; $i < count($getMonuments); $i++) {
            $powLong = pow($getLongitude - $long[$i], 2);
            array_push($repoLong, $powLong);
        }*/

        /*for ($yndex = 0; $yndex < count($getMonuments); $yndex++) {
            $lat = $getMonuments[$yndex]->getLatitude();
            for ($y = 0; $y < count($getMonuments); $y++) {
                $powLat = pow($getLatitude - $lat[$y], 2);
                array_push($repoLat, $powLat);
            }
        }
        if (isset($final) && $i == $y) {
            $final = sqrt($repoLong[$i] + $repoLat[$y]);
            if ($final <= 0.15) {
                array_push($loinOuPas, $final);
            }
        }*/


        /*for ($i = 0; $i < count($getMonuments); $i++) {

        }*/

        /*for ($i = 0; $i < $getMonuments; $i++) {
            $powLong = pow($getLongitude - $repoLong[$i]);
            $powLat = pow($getLatitude - $repoLat[$i]);
            $sqrtData = sqrt($powLong + $powlat);
            array_push($loinOuPas, $sqrtData);
            array_push($loinOuPas, sqrt(pow($getLongitude - $repoLong[$i]) + pow($getLatitude - $repoLat[$i])));
        }*/
        /*echo '<p>Longitude</p><br><br>';
        var_dump($repoLong);
        echo '<br><br><p>Latitude</p><br>';
        var_dump($repoLat);
        echo '<br><br><p>Result</p>';
        var_dump($loinOuPas);*/

        return $this->render('home/index.html.twig', [
            'controller_name' => 'TestController',
        ]);

        //if (Math.sqrt(((longitudeEpreuvesTest - resp1.Longitude)**2) + ((latitudeEpreuvesTest - resp1.Latitude)**2)) <= 0.0015)


        //(Math.sqrt(((longitudeEpreuvesTest - resp1.Longitude)**2) + ((latitudeEpreuvesTest - resp1.Latitude)**2)) <= 0.009)

        //$getNom = $_GET["nom"];
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

        //$result = $horairesRepository->findBy(array('Name' => $getNom));

        //return $this->json($result);





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

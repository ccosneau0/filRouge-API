<?php

namespace App\Repository;

use App\Entity\Monuments;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Monuments|null find($id, $lockMode = null, $lockVersion = null)
 * @method Monuments|null findOneBy(array $criteria, array $orderBy = null)
 * @method Monuments[]    findAll()
 * @method Monuments[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MonumentsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Monuments::class);
    }

    // /**
    //  * @return Monuments[] Returns an array of Monuments objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('m.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Monuments
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}

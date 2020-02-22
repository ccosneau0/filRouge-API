<?php

namespace App\Repository;

use App\Entity\Cinemas;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Cinemas|null find($id, $lockMode = null, $lockVersion = null)
 * @method Cinemas|null findOneBy(array $criteria, array $orderBy = null)
 * @method Cinemas[]    findAll()
 * @method Cinemas[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CinemasRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Cinemas::class);
    }

    // /**
    //  * @return Cinemas[] Returns an array of Cinemas objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Cinemas
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}

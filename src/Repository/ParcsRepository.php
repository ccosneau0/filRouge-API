<?php

namespace App\Repository;

use App\Entity\Parcs;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Parcs|null find($id, $lockMode = null, $lockVersion = null)
 * @method Parcs|null findOneBy(array $criteria, array $orderBy = null)
 * @method Parcs[]    findAll()
 * @method Parcs[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ParcsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Parcs::class);
    }

    // /**
    //  * @return Parcs[] Returns an array of Parcs objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('p.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Parcs
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}

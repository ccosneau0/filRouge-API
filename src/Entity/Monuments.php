<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass="App\Repository\MonumentsRepository")
 */
class Monuments
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Nom;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Rue;

    /**
     * @ORM\Column(type="string", length=5)
     */
    private $Arrondissement;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Coordonne;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Tarif;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->Nom;
    }

    public function setNom(string $Nom): self
    {
        $this->Nom = $Nom;

        return $this;
    }

    public function getRue(): ?string
    {
        return $this->Rue;
    }

    public function setRue(string $Rue): self
    {
        $this->Rue = $Rue;

        return $this;
    }

    public function getArrondissement(): ?string
    {
        return $this->Arrondissement;
    }

    public function setArrondissement(string $Arrondissement): self
    {
        $this->Arrondissement = $Arrondissement;

        return $this;
    }

    public function getCoordonne(): ?string
    {
        return $this->Coordonne;
    }

    public function setCoordonne(string $Coordonne): self
    {
        $this->Coordonne = $Coordonne;

        return $this;
    }

    public function getTarif(): ?string
    {
        return $this->Tarif;
    }

    public function setTarif(string $Tarif): self
    {
        $this->Tarif = $Tarif;

        return $this;
    }
}

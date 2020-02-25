<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass="App\Repository\MarcheRepository")
 */
class Marche
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
    private $nom;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Rue;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Arrondissement;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Coordonne;

    /**
     * @ORM\Column(type="float")
     */
    private $Longitude;

    /**
     * @ORM\Column(type="float")
     */
    private $Latitude;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

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

    public function getLongitude(): ?float
    {
        return $this->Longitude;
    }

    public function setLongitude(float $Longitude): self
    {
        $this->Longitude = $Longitude;

        return $this;
    }

    public function getLatitude(): ?float
    {
        return $this->Latitude;
    }

    public function setLatitude(float $Latitude): self
    {
        $this->Latitude = $Latitude;

        return $this;
    }
}

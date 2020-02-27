<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass="App\Repository\ParcsRepository")
 */
class Parcs
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
    private $Coordonne;

    /**
     * @ORM\Column(type="float")
     */
    private $Longitude;

    /**
     * @ORM\Column(type="float")
     */
    private $Latitude;

    /**
     * @ORM\Column(type="integer")
     */
    private $Value;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Picto;

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

    public function getValue(): ?int
    {
        return $this->Value;
    }

    public function setValue(int $Value): self
    {
        $this->Value = $Value;

        return $this;
    }

    public function getPicto(): ?string
    {
        return $this->Picto;
    }

    public function setPicto(string $Picto): self
    {
        $this->Picto = $Picto;

        return $this;
    }
}

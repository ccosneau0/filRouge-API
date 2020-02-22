<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass="App\Repository\EpreuvesRepository")
 */
class Epreuves
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
    private $Zone;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Coordonne;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $Capacite;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Sport;

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

    public function getZone(): ?string
    {
        return $this->Zone;
    }

    public function setZone(string $Zone): self
    {
        $this->Zone = $Zone;

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

    public function getCapacite(): ?string
    {
        return $this->Capacite;
    }

    public function setCapacite(string $Capacite): self
    {
        $this->Capacite = $Capacite;

        return $this;
    }

    public function getSport(): ?string
    {
        return $this->Sport;
    }

    public function setSport(string $Sport): self
    {
        $this->Sport = $Sport;

        return $this;
    }
}

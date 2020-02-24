<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ApiResource()
 * @ORM\Entity(repositoryClass="App\Repository\ConcertsRepository")
 */
class Concerts
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
    private $Date;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Lieux;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Coordonne;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Url;

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

    public function getDate(): ?string
    {
        return $this->Date;
    }

    public function setDate(string $Date): self
    {
        $this->Date = $Date;

        return $this;
    }

    public function getLieux(): ?string
    {
        return $this->Lieux;
    }

    public function setLieux(string $Lieux): self
    {
        $this->Lieux = $Lieux;

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

    public function getUrl(): ?string
    {
        return $this->Url;
    }

    public function setUrl(string $Url): self
    {
        $this->Url = $Url;

        return $this;
    }
}

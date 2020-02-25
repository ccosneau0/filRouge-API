<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200225204611 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE marche ADD value INT NOT NULL');
        $this->addSql('ALTER TABLE parcs ADD value INT NOT NULL');
        $this->addSql('ALTER TABLE musee ADD value INT NOT NULL');
        $this->addSql('ALTER TABLE monuments ADD value INT NOT NULL');
        $this->addSql('ALTER TABLE concerts ADD value INT NOT NULL');
        $this->addSql('ALTER TABLE horaires ADD value INT NOT NULL');
        $this->addSql('ALTER TABLE cinemas ADD value INT NOT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE cinemas DROP value');
        $this->addSql('ALTER TABLE concerts DROP value');
        $this->addSql('ALTER TABLE horaires DROP value');
        $this->addSql('ALTER TABLE marche DROP value');
        $this->addSql('ALTER TABLE monuments DROP value');
        $this->addSql('ALTER TABLE musee DROP value');
        $this->addSql('ALTER TABLE parcs DROP value');
    }
}

# FilRouge-API

* Modifier le fichier .env avec votre configuration (db host)
* se déplacer dans le dossier du ripo. Puis éxécuter npm install et composer install
* créer la base de donnée via la commande doctrine
* importer le fichier filRouge.sql dans la bdd créée
* php -S 127.0.0.1:8000 -t public
<br>
Expertise back : Charles Cosneau

<br>
<br>
Ce projet utilise le framework PHP Symfony, ainsi que le framework dédidé au API, API PLATFORM
<br>
<br>
<img src="file://mcd/MCD.png" alt="MCD BDD"> (filRouge/mcd/MCD.png)

### Relation OneToMany

Une relation oneToMany permet de relier deux entités pour associer du contenu. <br>
Par Exemple si nous avons deux tables, une comportant des écrivains et l'autre des livres, on on pourrait utiliser la relation oneToMany, permettant à un artiste d'avoir plusieurs livres, et chaque livre possédant un écrivain.
<br>
<br>
### Argumentation 

Pour ce projet, j'ai choisi d'utiliser API PLATFORM, car ce framework permet la réalisation d'un CRUD, et la visualisation des données de manière simple et rapide.
<br>
Pour mettre à disposition les données pour le front, j'ai décider d'utiliser des controller, qui permette d'écrire directement du PHP sans avoir à utiliser la logique d'api platform via les entités.
<br>
<br>
Cette api possède très peu d'url car celles-ci sont très générales et permettent de récupérer l'entièreté d'une entité. 
<br>
Les entités ont évoluées en fonction des besoins du front, cela aurait du être de même pour les controller mais nous nous sommes rendu compte trop tardivement que le front avait trop de manipulation à effectuer avant d'afficher les données, voilà malheureusement pourquoi il n'existe presque aucun filtre dans les controller.
<br>
http://127.0.0.1:8000/concerts - /epreuves - /monuments - /musee - /parcs
<br>
http://127.0.0.1:8000/horaires?name=nom+lieu


micro-projet post LARAVEL Laravel - Gestionnaire de stock
====

## Consignes

Créer un gestionnaire de stock. Pour les personnes qui ont validées les compétences du module PHP-POO, la consigne est de n'utiliser que la documentation Laravel (pas de LARACAST) et vous pouvez également utiliser le code que vous avez déjà écrit. 

## Base de donnée

Le schema de la base doit être le suivant:

products:
 - id
 - name
 - description
 - image
 - user_id

categories:
 - id
 - name

users:
 - id
 - email
 - password
 - is_admin

products_categories:
 - product_id
 - category_id


un PRODUCT est associé à plusieurs CATEGORY.
un PRODUCT a été créé par un USER.

## Fonctionnalités

- Un USER peut, s'il est administrateur, créer une CATEGORY
- on peut lister des PRODUCT, en afficher un (avec ses catégories) et en créer
- Seul l'auteur du product a le droit de modifier son product ou s'il est administrateur 
- On peut voir, a partir d'une catégorie donnée, la liste de tous les produits associés à la catégorie

## Tips

- Une table prducts_categories devra être crée mais ne doit pas exister en temps qu'entité.
- bien nommer ses méthodes de jointure (belongsTo/hasMany/...) est la clé d'un code propre.
- Commencer par gérer seulement les catégories, puis ajouter les produits, ensuite le lien category/product, et enfin ajouter la sécurité avec les users.
- keep it simple, définir des itérations avant de commencer a faire quoi que ce soit, et vous pouvez me les faire valider si vous voulez. 
- Don't Panic, et je réponds a mes mails : henri@larget.fr
# Looter App

## 1 - App Basics

### Exercice 1
- Une List a besoin d'identifiants sur les éléments quelle affiche pour des raisons de performance. Rajouter le paramètre id à notre List résout le problème.

### Exercice 2
- Un bouton et une fonction ont été ajouté pour permettre l'ajout d'items à notre liste.
- Le ForEach permet de définir comment afficher nos items dans notre liste tout en nous laissant ajouter les éléments que l'on souhaite autour.
On ne souhaite pas avoir un bouton d'ajout pour chaque items affichés d'où la séparation du Bouton via un ForEach.

### Exercice 3
- Le code ne fonctionne pas car une struct est par définition immuable.
- Le code fonctionne via l'utilisation d'un state car celui à le droit d'être modifier et rafraichit la page par la suite.

## 4 - Ajout Item

### Exercice 1
- Cela ne fonctionne pas car notre vue ne peut pas intéragir avec les valeurs de notre inventaire
- Ça fonctionne car on indique que notre objet peut être observé et que ses items sont accessibles.
- On utilise StateObject car nous n'avons pas besoin de garder l'inventaire en mémoire une fois la page quittée



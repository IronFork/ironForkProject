# ironForkProject
 robotic arm helping people with disabilities to eat
 
 https://ironfork.fr
 


READ ME





I - INTRODUCTION

  a) Présentation
  
  b) Objectifs du projet
  
II - MONTER LE ROBOT

  a) Imprimer les pièces en 3D
  
  b) Se procurer les moteurs
  
  c) Se procurer les composants annexes 
  
III - FAIRE FONCTIONNER LE ROBOT

IV - EXPLICATION DU CODE SOURCE

  a) La partie mécanique 
  
  b) La partie programmation
  
V - PISTES D'AMÉLIORATION




I - INTRODUCTION 


a) Présentation : 
Projet mené par un groupe de 12 étudiants en partenariat avec l'IEM "Christian Dabbadie" dans le cadre de leurs études à Centrale Lille. 

b) Objectifs du projet : 
Concevoir un bras robotique permettant aux personnes en situation de handicap d'avoir une plus grande autonomie lors de leurs repas. 
Projet en open source avec une licence GPL. 
L'un des objectifs du projet est de rendre le bras imprimable en 3D facilement dans un fablab.

I - MONTER LE ROBOT 

Vous aurez besoin d'une imprimante 3D et de ... bobines de PLA. Le reste des composants à commander est indiqué dans les étapes suivantes. Le budget estimé est de 500€ environs. 

a) Imprimer les pièces en 3D : 
Ouvrir le dossier fichiers_stl. Ce dossier contient les fichiers STL de chaque pièce du robot, organisées en sous-ensembles. Un sous-dossier nommé "assemblages" contient les fichiers STL des différents sous-ensembles, et de l'assemblage complet. 

Liste des pièces à imprimer en 3D : 

Pour le socle : 
  - 3 sous-socles différents (c'est le plancher du robot, les 3 sous-socles sont sur le même ficher STL)
  - 1 bol
  - 1 socle (en forme de petite tablette)
  - 1 adaptateur socle-moteur (permet de fixer le moteur sous le socle)
  - 1 poulie socle (poulie fixée sur l'axe moteur)
  
Pour la Tourelle : 
  - 1 Tourelle (placée en liaison pivot avec le socle, elle soutient le bras)
  - 1 poulie tourelle ( poulie fixée dans l'axe de la tourelle et reliée à la poulie socle par une courroie)
  - 2 adaptateurs tourelle-moteurs (permettent de fixer 2 moteurs sur la tourelle)
  
Pour le bras : 
  - 1 bras Tourelle (c'est le bras relié à la tourelle en pivot)
  - 1 adaptateur bras-moteur (permet de fixer le moteur sur le bras)
  
Pour l'avant-bras : 
  - 1 avant-bras (ressemble au bras-tourelle mais est légèrement différent)
  - 1 adaptateur avant-bras-moteur (permet de fixer le moteur)
  
Pour la pince : 
  - 1 pince 
  
  
Pour l'assemblage, référez-vous aux fichiers STL représentant les sous-ensembles du robot. 



b) Se procurer les moteurs : 
Vous aurez besoin de cinq moteurs dynamixel XL430-W250-T.
documentation technique sur github : https://github.com/ROBOTIS-GIT/emanual/blob/master/docs/en/dxl/x/xl430-w250.md


c) Se procurer les composants annexes : 
voir notice. (visserie, fils électriques, rasberry pi, carte de programmation, etc... )

d) Assembler le robot : 
Vous devez vous référer au dossier fichiers_stl pour voir le rôle de chaque composant au sein de l'assemblage complet. 
Référez-vous également au schéma électrique pour les différents branchements. 
Référez-vous à la notice pour vous aider

L'assemblage du robot est maintenant terminé. 


II - FAIRE FONCTIONNER LE ROBOT  

Version 1 du robot 

La trajectoire est programmée par l'ensemble des fichiers matlab 
puis est lue par le programme IronFork.c

Version 2 du robot 

Compiler IronForkV3.c et l'executer. Le robot pourra apprendre sa trajectoire pendant une phase de teaching et ensuite la répeter. 


III - EXPLICATION DU CODE SOURCE 

a) La partie mécanique

Le schéma cinématique : 
Nous avons choisi un nombre de 5 pièces d'un point de vue cinématique. Elles sont reliées en série au bâti par cinq liaisons pivot. Une pivot verticale lie le BATI avec la TOURELLE, une pivot horizontale lie la TOURELLE au BRAS, une pivot horizontale lie le BRAS à l'AVANT-BRAS, et une liaison pivot horizontale lie l'AVANT-BRAS à la PINCE. 
Ce choix de 4 pièces et de cinq liaisons pivot nous permet de positionner la PINCE à n'importe quel endroit dans l'espace, et de réaliser un maximum de mouvements en gardant la PINCE à l'horizontal (ce qui permet de déplacer une cuillère sans renverser son contenu). Ce choix de cinématique permet des mouvements fluides et précis. Référez-vous au fichier STL de l'assemblage complet pour vous représenter l'architecture du robot. 

La tourelle : 
La tourelle est au bâti par une liason pivot verticale. Cette liaison permet au robot de tourner sur lui même et de déplacer la cuillère de manière grossière latéralement de gauche à droite. 
Cette liasion qui est la première est la seule à supporter toute la structure du robot, et subit donc beaucoup d'efforts. Il y a également beaucoup de forttements, de par l'appui de la tourelle sur le bâti. Nous avons choisi d'utiliser un coussinet à collerette entre le bati et la tourelle pour minimiser les frottements. La liasion est motorisée par un servomoteur Dynamixel positionné à quelques centimètres de la liaison, et relié par une liaison poulie-couroie. Cela permet de résoudre le problème de coaxialité du moteur avec la liasion, et d'écentuels efforts supportés par l'axe du moteur.

La tourelle et le bras : 
La tourelle et le bras sont reliés par une liaison pivot horizontale. Cette liaison contribue grandement au mouvement d'avant en arrière de la cuillère. 
Encore une fois, cette liasion supporte une bonne partie de la structure du robot, surtout quand celui-ci est étendu. Dans ce cas là, le couple dans l'axe de la liaison est particulièrement élevé. C'est pourquoi nous avons choisi de placer non pas un, mais deux servomoteurs Dynamixel en parallèle de manière à pouvoir axionner cette liasion avec une puissance suffisante. Deux adaptateurs sont vissés au bâti avec des vis à bois permettent de fixer les servomoteurs. 

Le bras et l'avant-bras : 
Le bras est relié à l'avant-bras par une liasion pivot motorisée par un servomoteur Dynamixel. Cette laison contribue grandement au mouvement vertical de bas en haut de la cuillère. Un adaptateur vissé au bras par des vis à bois permet de fixer le moteur. 

L'avant-bras et la pince : 
L'avant-bras et la pince sont reliés entre eux par une liaison pivot motorisée par un servomoteur Dynamixel. Cette liaison permet d'effectuer un mouvement vertical de précison, à la manière d'un poignet. Un adaptateur vissé à l'avant-bras permet de fixer le moteur. 

La pince : 
La pince présente une fente ainsi qu'un trou. Ce trou permet d'y placer un insert de filletage, et la fente permet d'y glisser un manche de cuillère. Ainsi, avec une vis de pression, la cuillère peut être bloquée dans la fente. L'avantage de ce système est qu'il permet l'utilisation d'une cuillère quelconque. 

Le bol : 
Un bol imprimé en 3D est fixé sur le support. ce bol a une forme particulière qui permet à la nourriture d'être centrée dans la zone de pelletage. De plus, le rebord avancé peu haut et le rebord éloigné élevé permettent une introduction de la cuillère aisée, et un raclage facilité. L'avantage de ce système est qu'il permet de n'avoir qu'un seul et unique geste de peletage pour le robot. L'inconvénient est le côté sanitaire : il faut imprimer le bol en PET, et les stries de l'impression 3D peuvent occasionner des copeaux de plastiques dans la nourriture lors du raclage. 


b) La partie programmation

cf commentaires



IV - PISTES D'AMELIORATION

- sécurité, détection d'erreur informatique
- tests en conditions réeelles (personne en situation de handicap)
- améliorer le système de fixation de la cuillère 
- réduire le volume
- trouver des composants moins cher
- reconnaissance faciale
- ...


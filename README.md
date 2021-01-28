# ironForkProject
 robotic arm helping people with disabilities to eat


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
Ouvrir le dossier fichiers_stl. Ce dossier contient des sous-dossiers comprenant les fichiers STL des différents sous ensembles du bras robotique. Il contient également un fichier STL représentant le robot assemblé. Dans chaque sous-dossier est présent les fichiers STL de chaque pièce et un fichier STL représentant le sous-ensemble assemblé. 

b) Se procurer les moteurs : 
Vous aurez besoin de cinq moteurs dynamixel XL430-W250-T.
documentation technique sur github : https://github.com/ROBOTIS-GIT/emanual/blob/master/docs/en/dxl/x/xl430-w250.md


c) Se procurer les composants annexes : 
voir fichier référence composants annexes. (visserie, fils électriques, rasberry pi, carte de programmation, etc... )

d) Assembler le robot : 
Vous devez vous référer au dossier fichiers_stl pour voir le rôle de chaque composant au sein de l'assemblage complet. 
Référez-vous également au schéma électrique pour les différents branchements. 

L'assemblage du robot est maintenant terminé. 


II - FAIRE FONCTIONNER LE ROBOT  

[A COMPLÉTER]


III - EXPLICATION DU CODE SOURCE 

a) La partie mécanique

Le schéma cinématique : 
Nous avons choisi un nombre de 4 pièces d'un point de vue cinématique. Elles sont reliées en série au bâti par cinq liaisons pivot. Une pivot verticale lie le BATI avec la TOURELLE, une pivot horizontale lie la TOURELLE au BRAS, une pivot horizontale lie le BRAS à l'AVANT-BRAS, et une liaison pivot horizontale lie l'AVANT-BRAS à la PINCE. 
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

Le choix des composants

La trajectoire choisie 

Explication des fichiers 


IV - PISTES D'AMELIORATION



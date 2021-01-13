%% création du robot
IronFork = rigidBodyTree;

% création des parties du robot
tourelle = rigidBody('tourelle');
bras = rigidBody('bras');
avantBras = rigidBody('avantBras');
pince = rigidBody('pince');

% création des joint entre parties
jnt1 = rigidBodyJoint('jnt1','revolute');
jnt2 = rigidBodyJoint('jnt2','revolute');
jnt3 = rigidBodyJoint('jnt3','revolute');
jnt4 = rigidBodyJoint('jnt4','revolute');

%% Paramètrage des joints

% Liaison bati-tourelle
jnt1.HomePosition = alpha1; %position initiale du moteur

%Placement de la liaison.
tform1 = trvec2tform([0, 0, 0]);

setFixedTransform(jnt1,tform1); %applique la transformation
tourelle.Joint = jnt1; %liaison du joint au corps

% Liaison tourelle-bras
jnt2.HomePosition = alpha2; %position initiale du moteur

tform2 = trvec2tform([0, 0, AB])*eul2tform([0, -pi/2, 0]);

setFixedTransform(jnt2,tform2);
bras.Joint = jnt2;

% Liaison bras-avantBras
jnt3.HomePosition = alpha3; %position initiale du moteur

tform3 = trvec2tform([BC, 0, 0]);

setFixedTransform(jnt3,tform3);
avantBras.Joint = jnt3;

% Liaison avantBras-pince
jnt4.HomePosition = alpha4; %position initiale du moteur

tform4 = trvec2tform([CD, 0, 0]);

setFixedTransform(jnt4,tform4);
pince.Joint = jnt4;

%% Mise en place robot
addBody(IronFork,tourelle,'base');
addBody(IronFork,bras,'tourelle');
addBody(IronFork,avantBras,'bras');
addBody(IronFork,pince,'avantBras');

%% Ajout end effector

cuillereBout = rigidBody('cuillereBout');
tform5 = trvec2tform([DE, 0, 0])*eul2tform([0, 0, pi/2]); % User defined
setFixedTransform(cuillereBout.Joint,tform5);
addBody(IronFork,cuillereBout,'pince');

%% Visualisation

q0=homeConfiguration(IronFork);
showdetails(IronFork);
show(IronFork,q0);





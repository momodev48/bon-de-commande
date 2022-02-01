
create table delegue
(
iddeleg int primary key identity,
nom nvarchar(50),
prenom nvarchar(50),
gsm varchar(50),
email varchar(100),
login_ varchar(50),
mot_de_passe varchar(50), 
)
insert into delegue values('Almaz','J','0459856985','almaz@belgiumpayment.com','almaz','almaz')
select * from delegue
select nomutil,pass  from utilisateur 

create table societe_cliente( 
idsociete int primary key identity,
nom_societe varchar(100),
nom_enseigne varchar(100),
adresse  varchar(100),
code_postal int,
ville  varchar(50),
personne_de_contact  varchar(100),
fonction  varchar(50),
gsm  varchar(50),
email  varchar(100),
iban  varchar(50),
heures_ouverture  varchar(50),
activite  varchar(50),
jour_fermeture varchar(50),
)
insert into societe_cliente values('Pasta bar','','31  avenue leopold Koekelberg',1081,'Bruxelles','Reda','Gérant','0421545856','reda@hotmail.com','BE21252365254','7h 19h','horeca','')

create table terminal
(
idterminal int primary key identity,
nom varchar(50),
prix_location int,
prix_vente int,
fixe_mobile varchar(50),
)
insert into terminal values('A920',50,800,'mobile')

create table bondecommande(
idbon int primary key,
iddeleg int foreign key references delegue(iddeleg),
idsociete int foreign key references societe_cliente(idsociete),
datebon date,
)
insert into bondecommande values(1,1,1,'23/10/2018')

create table detailcommande
(
idterminal int foreign key references terminal(idterminal),
idbon int foreign key references bondecommande(idbon) ,
quantite int,
location_ou_vente varchar(20),
installation_terminal varchar(50),
activation_terminal varchar(50),
assistance_technique varchar(50),
--changer le type de activation installation.. en int 15 en int label a cote avec 'euros / mois
cout_transaction varchar(50),
date_livraison date,
cr_actif varchar(50),
cr_a_activer varchar(50),
constraint pk primary key(idbon,idterminal)
)
insert into bondecommande values(1,1,1,'location','15 euros/mois htva','62 euros/mois','75eurps/mois','0.12euros','23/04/2019','SDX','EDN')

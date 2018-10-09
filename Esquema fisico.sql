create database Torneo;
	use Torneo;

	create table Campeon(IdCampeon integer primary key, Nombre varchar(20) , ApellidoPaterno varchar(20),
	 ApellidoMaterno varchar(20), Telefono varchar(10), Direccion varchar(30), Puntos integer);

	create table Jugador(IdJugador integer primary key, Nombre varchar(20), ApellidoPaterno varchar(20),
	 ApellidoMaterno varchar(20), Telefono varchar(10), Direccion varchar(30), Puntos integer);

	create table Enfrenta(NumEncuentros integer, IdCampeon integer, IdJugador integer,
	 foreign key(IdCampeon) references Campeon(IdCampeon), foreign key(IdJugador) references Jugador(IdJugador));
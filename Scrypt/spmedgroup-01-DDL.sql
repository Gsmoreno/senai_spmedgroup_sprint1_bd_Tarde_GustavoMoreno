create database SpMedGroup_Tarde

use SpMedGroup_Tarde

create table Clinica (
	IdClinica int primary key identity,
	IdEndereco int foreign key references Endereco(IdEndereco),
	CNPJ bigint,
	Telefone bigint,
	NomeClinica varchar (255)
);

create table Especialidades (
	IdEspecialidades int primary key identity,
	NomeEspecialidade varchar(255)
);

create table TipoUsuario (
	IdTipoUsuario int primary key identity,
	NomeTipoUsuario varchar (255)
);

create table Usuarios (
	IdUsuarios int primary key identity,
	NomeUser varchar (255),
	Email varchar(255),
	Senha varchar(255),
	CPF bigint,
	Telefone bigint,
	IdTipoUsuario int foreign key references TipoUsuario(IdTipoUsuario),
	
);

create table Pacientes (
	IdPacientes int primary key identity,
	Nome varchar(255),
	RG varchar (255),
	IdProntuario int foreign key references Prontuarios(IdProntuario),
	IdConsultas int foreign key references Consultas(IdConsulta)
);

create table Prontuarios (
	IdProntuario int primary key identity,
	Nome varchar(255),
	Email varchar(255),
	RG varchar(255),
	DataNascimento date,
	IdEndereco int foreign key references Endereco(IdEndereco)
);

alter table Prontuarios
add IdPacientes int foreign key references Pacientes(IdPacientes)

create table Medicos (
	IdMedico int primary key identity,
	Nome varchar(255),
	Idade int,
	CPF bigint,
	CMR varchar (255),
	IdEspecialidades int foreign key references Especialidades (IdEspecialidades)
);

create table Consultas (
	IdConsulta int primary key identity,
	DataConsulta datetime,
	Situacao varchar(255),
	IdProntuario int foreign key references Prontuarios(IdProntuario),
	IdMedico int foreign key references Medicos(IdMedico)
);

create table Endereco (
	IdEndereco int primary key identity,
	NomeEndereco varchar(255),
	CEP varchar(255),
	Estado varchar(255),
	Cidade varchar (255)
);

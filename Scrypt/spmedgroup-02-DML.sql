insert into Clinica (IdEndereco, CNPJ, Telefone, NomeClinica)
values (1,'1234567890','11940028922','Clinica Porssa');

insert into Especialidades(NomeEspecialidade)
values ('Acupuntura'),
		('Anestesiologia'),
		('Angiologia'),
		('Cardiologia'),
		('Cirurgia Cardiovascular'),
		('Cirurgia da Mão'),
		('Cirurgia do Aparelho Digestivo'),
		('Cirurgia Geral'),
		('Cirurgia Pediátrica'),
		('Cirurgia Plástica'),
		('Cirurgia Torácica'),
		('Cirurgia Vascular'),
		('Dermatologia'),
		('Radioterapia'),
		('Urologia'),
		('Pediatria'),
		('Psiquiatria');

insert into TipoUsuario (NomeTipoUsuario)
values ('ADM'),
		('Paciente'),
		('Medico');

insert into Prontuarios(Nome, Email, RG, DataNascimento, IdEndereco)
values ('Bruno','marinao@gmail.com', '325444441', '27/08/1972', 1);

insert into Medicos(Nome, Idade, CPF, CMR, IdEspecialidades, IdClinica)
values ('Roberto Porssale', '33', '1231223123', '65463-SP',17, 1);



insert into Usuarios(NomeUser, Email, Senha, CPF, Telefone, IdTipoUsuario)
values ('ADM','adm@adm.com','adm123','12312312334','1198731222', 1 ),
		('Mariana','marina@email.com','mari123','12312312334','1198731222', 2 ),
		('Alexandre','ale@email.com','ale123','12312312334','1198731222', 2 ),
		('Fernando','fefe@adm.com','fefe123','12312312334','1198731222', 2 ),
		('Henrique','henrique@adm.com','henr123','12312312334','1198731222', 2 ),
		('Ricardo','riacardo@adm.com','ric123','12312312334','1198731222', 3 ),
		('Roberto','roberto@adm.com','robert123','12312312334','1198731222', 3 ),
		('Helena','helena@adm.com','hela123','12312312334','1198731222', 3 );

insert into Consultas(IdProntuario, IdMedico, DataConsulta, Situacao)
values (4,3, '20/01/2020  15:00:00', 'Realizada'),
		(5,2, '06/01/2020  10:00:00', 'Cancelada'),
		(1,3, '07/02/2020  11:00:00', 'Realizada'),
		(5,3, '06/02/2018  10:00:00', 'Realizada'),
		(3,1, '07/02/2019  11:00:45', 'Cancelada'),
		(4,3, '08/03/2020  15:00:00', 'Agendada'),
		(2,1, '09/03/2020  11:00:45', 'Agendada');

insert into Pacientes(IdProntuario, IdConsultas, Nome, RG)
values (3,3, 'Mariana', '900901-2'),
		(1,2, 'Alexandre', '900901-1'),
		(2,4, 'Henrique', '900901-6'),
		(4,1, 'Fernando', '900901-3');

Insert into Endereco (NomeEndereco, CEP, Estado, Cidade)
values ('R. Ver. Geraldo de Camargo, 66', '09405380', 'Santa Luzia', 'Ribeirão Pires - SP')
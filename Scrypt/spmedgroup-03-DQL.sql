SELECT*FROM TipoUsuario;
SELECT*FROM Pacientes;
SELECT*FROM  Especialidades;

SELECT*FROM Prontuarios;
SELECT*FROM Endereco;
SELECT*FROM Usuarios;
SELECT*FROM Clinica;
SELECT*FROM Medicos;
SELECT*FROM Consultas;


--Converter DATA DE NASCIMETO EM (MM/DD/YYYY)
SELECT CONVERT(VARCHAR(10), DataNascimento, 110) AS [MM/DD/YYYY]
FROM Prontuarios

--Contar o total de usuarios
SELECT COUNT(IdUsuarios) FROM Usuarios

--Procedure para calcular a idade do usuario
CREATE PROCEDURE IdadeUsuario 
@id INT
AS
SELECT YEAR(GETDATE())-YEAR(DataNascimento)-IIF(MONTH(GETDATE())*32+DAY(GETDATE())<MONTH(DataNascimento)*32+DAY(DataNascimento),1,0) 
FROM Prontuarios
WHERE Prontuarios.IdPacientes = @id

EXECUTE IdadeUsuario  3

--PROCEDURE PARA CONSULTAR OS MEDICOS PARA CADA ESPECIALIDADE
CREATE PROC MedicoEspecialidade 
@ID INT
AS
SELECT Medicos.Nome, Especialidades.NomeEspecialidade  FROM Medicos
INNER JOIN Especialidades ON Medicos.IdEspecialidades = Especialidades.IdEspecialidades
WHERE Especialidades.IdEspecialidades = @ID

EXECUTE MedicoEspecialidade 4


---------------------------------------------------------------------------------
SELECT Consultas.DataConsulta, Consultas.Situacao, Medicos.Nome, Pacientes.Nome FROM Consultas
INNER JOIN Medicos ON Consultas.IdMedico = Medicos.IdMedico
INNER JOIN Pacientes ON Pacientes.IdPacientes = Pacientes.IdPacientes
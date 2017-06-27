INSERT INTO Pessoa VALUES ('123cdxPP', 'Airo preparador', 'Guarulhos', 'São Paulo', 'Brasil', 'M', '13-DEC-1996');
INSERT INTO Pessoa VALUES ('321xdcPP', 'Gi preparador', 'Ribeirão Preto', 'São Paulo', 'Brasil', 'F', '28-DEC-1996');
INSERT INTO Pessoa VALUES ('70r741PP', 'Jurg preparador', 'São Paulo', 'São Paulo', 'Brasil', 'M', '13-DEC-1996');
INSERT INTO Pessoa VALUES ('123cdxAA', 'Airo atleta', 'Guarulhos', 'São Paulo', 'Brasil', 'M', '13-DEC-1996');
INSERT INTO Pessoa VALUES ('321xdcAA', 'Gi atleta', 'Ribeirão Preto', 'São Paulo', 'Brasil', 'F', '28-DEC-1996');
INSERT INTO Pessoa VALUES ('70r741AA', 'Jurg atleta', 'São Paulo', 'São Paulo', 'Brasil', 'M', '13-DEC-1996');

INSERT INTO Preparador VALUES ('123cdxPP', 'lucassoares1793@gmail.com', '123456789aA!');
INSERT INTO Preparador VALUES ('321xdcPP', 'xofanna@gimail.com', '123456789aA@');
INSERT INTO Preparador VALUES ('70r741PP', 'tortao@jureg.jurg', '123456789aA#');
INSERT INTO Modalidade VALUES (1, 'Arremeço de peso', 'O objetivo é arremessar o mais longe possível uma bola de metal maciço. Para os homens, o peso tem 7,260 kg; para as mulheres, 4 kg. No arremesso, o atleta mantém o braço flexionado, apoiando o peso junto ao pescoço. Deve permanecer dentro de um círculo com 2,1 metros de diâmetro.');
INSERT INTO Modalidade VALUES (2, '100 Metros Borboleta', '100 Metros Borboleta é a modalidade de velocidade do estilo mariposa da natação.');
INSERT INTO Modalidade VALUES (3, 'Salto triplo', 'O Triplo Salto é uma combinação de três saltos sucessivos que terminam com a queda numa caixa de areia. A prova inicia-se com uma corrida de impulso. ');

INSERT INTO Nacao VALUES ('Brasil', 'America do Sul', 50, NULL, NULL, NULL);
INSERT INTO Nacao VALUES ('Alemanha', 'Europa', 60, 'Futebol', NULL, NULL);
INSERT INTO Nacao VALUES ('Estados Unidos', 'America do Norte', 75, 'Basquete', NULL, NULL);

INSERT INTO Atleta VALUES ('321xdcPP', 1, 'Brasil', '123cdxAA', 100.0, 2.00, 1, 0);
INSERT INTO Atleta VALUES ('70r741PP', 2, 'Alemanha', '321xdcAA', 80.0, 1.80, 1, 1);
INSERT INTO Atleta VALUES ('123cdxPP', 3, 'Estados Unidos', '70r741AA', 120.0, 1.70, 1, 0);	

INSERT INTO TelefonePessoa VALUES ('123cdxPP', 33334444);
INSERT INTO TelefonePessoa VALUES ('321xdcPP', 12345678);
INSERT INTO TelefonePessoa VALUES ('70r741PP', 87654321);
INSERT INTO TelefonePessoa VALUES ('123cdxAA', 12312312);
INSERT INTO TelefonePessoa VALUES ('321xdcAA', 66666666);
INSERT INTO TelefonePessoa VALUES ('70r741AA', 25252525);

INSERT INTO Medico VALUES ('123456789aaa', 396440216, 'Airo medico', 'Guarulhos', 'São Paulo', 'Brasil');
INSERT INTO Medico VALUES ('987654321bbb', 825500244, 'Gi medico', 'Ribeirão Preto', 'São Paulo', 'Brasil');
INSERT INTO Medico VALUES ('123987456ccc', 111222355, 'Jurg medico', 'São Paulo', 'São Paulo', 'Brasil');

INSERT INTO TelefoneMedico VALUES ('123456789aaa', 44443333);
INSERT INTO TelefoneMedico VALUES ('987654321bbb', 22224444);
INSERT INTO TelefoneMedico VALUES ('123987456ccc', 12121212);

INSERT INTO RotinaTreino VALUES (1, '123cdxPP', 180);
INSERT INTO RotinaTreino VALUES (2, '321xdcPP', 240);
INSERT INTO RotinaTreino VALUES (3, '70r741PP', 150);

INSERT INTO DiasTreino VALUES (1, '123cdxPP', 'Sunday');
INSERT INTO DiasTreino VALUES (2, '321xdcPP', 'Monday');
INSERT INTO DiasTreino VALUES (3, '70r741PP', 'Friday');

INSERT INTO Preparo VALUES (1, 'O atleta realiza cerca de 10m de alongamento e 30m de corrida para aquecimento antes de qualquer treino.');
INSERT INTO Preparo VALUES (2, 'O atleta realiza cerca de 15m de alongamento e 20m de corrida para aquecimento antes de qualquer treino.');
INSERT INTO Preparo VALUES (3, 'O atleta realiza cerca de 20m de alongamento e 40m de corrida para aquecimento antes de qualquer treino.');

INSERT INTO Recuperacao VALUES (1, 'O Atleta realizou 10 sessões de fisioterapia');
INSERT INTO Recuperacao VALUES (2, 'O Atleta realizou 15 sessões com o psicólogo');
INSERT INTO Recuperacao VALUES (3, 'O Atleta permaneceu afastado, em repouso, por um período de um mês');

INSERT INTO Treino VALUES (1, 'Musculação');
INSERT INTO Treino VALUES (2, 'Agachamento');
INSERT INTO Treino VALUES (3, 'Flexões');

INSERT INTO PreparoRotina VALUES (1, '123cdxPP', 1);
INSERT INTO PreparoRotina VALUES (2, '321xdcPP', 2);
INSERT INTO PreparoRotina VALUES (3, '70r741PP', 3);

INSERT INTO RecuperacaoRotina VALUES (1, '123cdxPP', 1);
INSERT INTO RecuperacaoRotina VALUES (2, '321xdcPP', 2);
INSERT INTO RecuperacaoRotina VALUES (3, '70r741PP', 3);

INSERT INTO TreinoRotina VALUES (1, '123cdxPP', 1);
INSERT INTO TreinoRotina VALUES (2, '321xdcPP', 2);
INSERT INTO TreinoRotina VALUES (3, '70r741PP', 3);

INSERT INTO TesteDoping VALUES (1, 'Exame de sangue', 0);
INSERT INTO TesteDoping VALUES (2, 'Exame de urina', 0);
INSERT INTO TesteDoping VALUES (3, 'Exame de sangue e urina', 0);

INSERT INTO TestarDoping VALUES ('123456789aaa', '123cdxAA', 1);
INSERT INTO TestarDoping VALUES ('987654321bbb', '321xdcAA', 2);
INSERT INTO TestarDoping VALUES ('123987456ccc', '70r741AA', 3);

INSERT INTO MetodoTratamento VALUES (1, 'Ingerir medicação receitada', 'Muito efetivo');
INSERT INTO MetodoTratamento VALUES (2, 'Repouso', 'Pouco Efetivo');
INSERT INTO MetodoTratamento VALUES (3, 'Placebo', 'Inútil');

INSERT INTO Diagnostico VALUES (1, 'TODO');
INSERT INTO Diagnostico VALUES (2, 'TODO');
INSERT INTO Diagnostico VALUES (3, 'TODO');

INSERT INTO Consulta VALUES ('08-AUG-2017', '123cdxAA', '123456789aaa', 1, 'O Atleta de passaporte 123cdxPP foi atendido pelo médico de CRM 123456789aaa. Quadro não urgente');
INSERT INTO Consulta VALUES ('12-AUG-2017', '321xdcAA', '987654321bbb', 2, 'O Atleta de passaporte 321xdcPP foi atendido pelo médico de CRM 987654321bbb. Quadro urgente');
INSERT INTO Consulta VALUES ('30-JUL-2017', '70r741AA', '123987456ccc', 3, 'O Atleta de passaporte 321xdcPP foi atendido pelo médico de CRM 123987456ccc. Quadro não urgente');

INSERT INTO Atendimento VALUES ('123cdxAA', '123456789aaa', '08-AUG-2017');
INSERT INTO Atendimento VALUES ('321xdcAA', '987654321bbb', '12-AUG-2017');
INSERT INTO Atendimento VALUES ('70r741AA', '123987456ccc', '30-JUL-2O17');

INSERT INTO Tratamento VALUES (1, 1);
INSERT INTO Tratamento VALUES (2, 2);
INSERT INTO Tratamento VALUES (3, 3);

INSERT INTO Lesao VALUES (1, 'Fratura no fêmur');
INSERT INTO Lesao VALUES (2, 'Rompimento do tendão');
INSERT INTO Lesao VALUES (3, 'Fratura no pé');

INSERT INTO LesaoMedico VALUES (1, '123456789aaa');
INSERT INTO LesaoMedico VALUES (2, '987654321bbb');
INSERT INTO LesaoMedico VALUES (3, '123987456ccc');

INSERT INTO LesaoAtleta VALUES (1, '123cdxAA');
INSERT INTO LesaoAtleta VALUES (2, '321xdcAA');
INSERT INTO LesaoAtleta VALUES (3, '70r741AA');

INSERT INTO Sintoma VALUES ('08-AUG-2017', '123456789aaa', '123cdxAA', 'TODO');
INSERT INTO Sintoma VALUES ('12-AUG-2017', '987654321bbb', '321xdcAA', 'TODO');
INSERT INTO Sintoma VALUES ('30-JUL-2017', '123987456ccc', '70r741AA', 'TODO');

COMMIT;
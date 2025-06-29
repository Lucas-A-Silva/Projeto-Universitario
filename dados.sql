use sistema_aluguel_carros;

INSERT INTO Clientes (nome, cpf, email, telefone, endereco) VALUES
('João Silva', '123.456.789-00', 'joao@email.com', '11999999999', 'Rua A, 123'),
('Maria Oliveira', '987.654.321-00', 'maria@email.com', '11888888888', 'Av B, 456'),
('Carlos Souza', '111.222.333-44', 'carlos@email.com', '11777777777', 'Rua C, 789');


INSERT INTO Carros (marca, modelo, ano, placa, cor, status, valor_diaria) VALUES
('Toyota', 'Corolla', 2020, 'ABC1D23', 'Prata', 'disponível', 150.00),
('Fiat', 'Uno', 2018, 'XYZ9F87', 'Branco', 'manutenção', 80.00),
('Chevrolet', 'Onix', 2021, 'KLM4G56', 'Preto', 'alugado', 130.00);


INSERT INTO Alugueis (id_cliente, id_carro, data_inicio, data_fim_prevista, data_fim_real, valor_total) VALUES
(1, 3, '2025-06-01', '2025-06-05', '2025-06-05', 520.00),
(2, 1, '2025-06-10', '2025-06-12', NULL, NULL); -- falta pagar 


INSERT INTO Pagamentos (id_aluguel, data_pagamento, valor_pago, metodo_pagamento) VALUES
(1, '2025-06-05', 520.00, 'cartão');


INSERT INTO Manutencoes (id_carro, descricao, data_manutencao, custo) VALUES
(2, 'Troca de óleo e filtros', '2025-05-15', 250.00),
(2, 'Reparo no motor', '2025-06-20', 800.00); 


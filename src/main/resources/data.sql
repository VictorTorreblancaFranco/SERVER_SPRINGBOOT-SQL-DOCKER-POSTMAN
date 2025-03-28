-- Clientes
INSERT INTO customer (dni, first_name, last_name, state) VALUES
('12345678', 'Juan', 'Sanchez', 'A'),
('87654321', 'Maria', 'Lopez', 'A');

-- Productos
INSERT INTO product (name, price, stock) VALUES
('Casco Deportivo', 150.00, 10),
('Guantes de Cuero', 50.00, 20);

-- Ventas
INSERT INTO sale (customer_id, product_id, quantity, sale_date) VALUES
(1, 1, 2, '2025-03-28'),
(2, 2, 1, '2025-03-27'),
(1, 2, 3, '2025-03-26');

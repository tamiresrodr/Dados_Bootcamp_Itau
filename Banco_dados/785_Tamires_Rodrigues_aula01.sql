--13/07/2021
--Exercicio1
SELECT * FROM employee_territories;
--1-Selecione os id's únicos de territórios da tabela employee_territories.
SELECT DISTINCT(employee_id) FROM employee_territories;
--temos apenas id's únicos na coluna employee_id na territory_id não temos id's únicos.

--Exercicio2
SELECT * FROM employees;
--A Todos os nomes dos empregados;
SELECT first_name FROM employees;
--B Os sobrenomes distintos dos empregrados;
SELECT last_name FROM employees;
--C Empregados que nasceram após 1970;
SELECT first_name,last_name,birth_date FROM employees
WHERE birth_date >= '1971-01-01' ;
--Não temos empregados que nasceram após 1970
--D Empregados que foram contratados em 1993;
SELECT first_name,last_name,hire_date FROM employees
WHERE hire_date >= '1993-01-01' and hire_date <= '1993-12-31' ;
--E Empregados que nasceram entre 1980 e 1985 (inclusos);
SELECT first_name,last_name,birth_date FROM employees
WHERE birth_date >= '1980-01-01' and birth_date <= '1985-12-31' ;
--F Empregados que nasceram em 1963 e foram contratados em 1993;
SELECT first_name,last_name,birth_date,hire_date FROM employees
WHERE birth_date >= '1963-01-01' and birth_date <= '1963-12-31' and hire_date>='1993-01-01' and hire_date<='1993-12-31';
--G Todos os empregrados que reportam o chefe de id 5;
SELECT first_name,last_name,reports_to FROM employees WHERE reports_to=5;
--H Todos os empregados que moram em Seattle ou Kirkland;
SELECT * FROM employees;
SELECT first_name,last_name,city FROM employees WHERE city='Seattle' or city='Kirkland';

--Exercicio3
--Selecione da tabela order_details:
SELECT * FROM order_details;
--A Produtos (product_id) com mais de 50 unidades vendidas;
SELECT product_id,quantity FROM order_details WHERE quantity>50;
--B Produtos com mais de 0.2 de desconto;
SELECT product_id,discount FROM order_details WHERE discount > 0.2;
--Coloquei apenas maior mas mesmo assim consta os iguais.
--C Produtos com 0.05 ou menos de desconto;
SELECT product_id,discount FROM order_details WHERE discount<=0.05;

--Exercicio4
--Selecione da tabels orders:
SELECT * FROM orders;
--A Ordens realizadas antes Setembro de 1996.

SELECT * FROM orders WHERE order_date< '1996-09-01';
--B Ordens enviadas em Setembro de 1996.
SELECT * FROM orders WHERE order_date>= '1996-09-01' and order_date<= '1996-09-30';
--C Ordens que possuam o campo região preenchido.
SELECT * FROM orders WHERE ship_region IS NOT null;
--D As primeiras 5 linhas da tabela, reescrevendo o nome das colunas de data em português.
ALTER TABLE orders RENAME COLUMN order_date TO ordens_data;
ALTER TABLE orders RENAME COLUMN required_date TO requerida_data;
ALTER TABLE orders RENAME COLUMN shipped_date TO expedicao_data;
SELECT * FROM orders limit(5);
--Exercicio5
--Selecione da tabela suppliers:
--A Todos os contatos cujo nome comece com a letra M;
SELECT * FROM suppliers;
SELECT * FROM suppliers WHERE contact_name LIKE 'M%';
--B Todos os contatos que tenham a palavra manager no titulo;
SELECT * FROM suppliers WHERE contact_title LIKE '%Manager%';
--C Todos os contatos que trabalhem com vendas e morem nos países nórdicos.
SELECT * FROM suppliers WHERE contact_title LIKE '%Sales%' and country in ('Sweden','Denmark','Norway','Iceland','Finland');




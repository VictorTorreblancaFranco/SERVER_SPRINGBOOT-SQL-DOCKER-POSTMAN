
CREATE TABLE customer (
    id INT IDENTITY(1,1) PRIMARY KEY,
    dni CHAR(8) NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    state CHAR(1) NOT NULL
);


CREATE TABLE product (  
    id INT IDENTITY(1,1) PRIMARY KEY,  
    name VARCHAR(100) NOT NULL UNIQUE,  
    price DECIMAL(10,2) NOT NULL,  
    stock INT NOT NULL  
);  

CREATE TABLE sale (  
    id INT IDENTITY(1,1) PRIMARY KEY,  
    customer_id INT NOT NULL,  
    product_id INT NOT NULL,  
    quantity INT NOT NULL,  
    sale_date DATE NOT NULL,  
    FOREIGN KEY (customer_id) REFERENCES customer(id),  
    FOREIGN KEY (product_id) REFERENCES product(id)  
);  

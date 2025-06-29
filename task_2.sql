CREATE TABLE IF NOT EXISTS Authors (
    author_id INT,
    author_name VARCHAR(215) NOT NULL,
    PRIMARY KEY (author_id)
);

-- Create table: BOOKS
CREATE TABLE IF NOT EXISTS Books (
    book_id INT,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    PRIMARY KEY (book_id),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create table: CUSTOMERS
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL UNIQUE,
    address TEXT,
    PRIMARY KEY (customer_id)
);

-- Create table: ORDERS
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create table: ORDER_DETAILS
CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INT,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    PRIMARY KEY (orderdetailid),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

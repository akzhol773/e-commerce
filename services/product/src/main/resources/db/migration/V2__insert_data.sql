-- Insert sample data into category table
INSERT INTO category (id, description, name)
VALUES
    (nextval('category_seq'), 'Electronics items', 'Electronics'),
    (nextval('category_seq'), 'Books of various genres', 'Books'),
    (nextval('category_seq'), 'Home and kitchen appliances', 'Home & Kitchen'),
    (nextval('category_seq'), 'Sports and outdoor equipment', 'Sports & Outdoors');

-- Insert sample data into product table
INSERT INTO product (id, description, name, available_quantity, price, category_id)
VALUES
    (nextval('product_seq'), 'Smartphone with 6GB RAM and 128GB storage', 'Smartphone', 50, 699.99, (SELECT id FROM category WHERE name = 'Electronics')),
    (nextval('product_seq'), 'High-quality headphones with noise cancellation', 'Headphones', 100, 199.99, (SELECT id FROM category WHERE name = 'Electronics')),
    (nextval('product_seq'), 'Fiction novel by a bestselling author', 'Fiction Novel', 200, 14.99, (SELECT id FROM category WHERE name = 'Books')),
    (nextval('product_seq'), 'Non-fiction book on personal development', 'Non-fiction Book', 150, 24.99, (SELECT id FROM category WHERE name = 'Books')),
    (nextval('product_seq'), 'Blender with multiple speed settings', 'Blender', 30, 49.99, (SELECT id FROM category WHERE name = 'Home & Kitchen')),
    (nextval('product_seq'), 'Set of stainless steel cooking pots', 'Cooking Pots', 20, 79.99, (SELECT id FROM category WHERE name = 'Home & Kitchen')),
    (nextval('product_seq'), 'Yoga mat with non-slip surface', 'Yoga Mat', 75, 29.99, (SELECT id FROM category WHERE name = 'Sports & Outdoors')),
    (nextval('product_seq'), 'Mountain bike with 21-speed gears', 'Mountain Bike', 10, 499.99, (SELECT id FROM category WHERE name = 'Sports & Outdoors'));

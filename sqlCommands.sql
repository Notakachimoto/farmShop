CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    description TEXT,
    image_url VARCHAR(255)
);
INSERT INTO products (name, category, price, description, image_url) VALUES
    ('Помидор', 'Овощи', 120.50, 'Свежие сочные помидоры, выращенные в экологически чистых условиях. Идеальны для салатов, соусов и запекания.', 'http://localhost:3000/uploads/pomidor.jpg'),
    ('Огурец', 'Овощи', 80.00, 'Хрустящие огурцы с тонкой кожицей. Подходят для свежих салатов, маринования и закусок.', 'http://localhost:3000/uploads/ogurec.jpg'),
    ('Картофель', 'Овощи', 45.90, 'Качественный картофель с плотной текстурой. Универсальный выбор для варки, жарки и пюре.', 'http://localhost:3000/uploads/potato.jpg'),
    ('Баклажан', 'Овощи', 95.00, 'Гладкие баклажаны с насыщенным вкусом. Отлично подходят для гриля, тушения и приготовления икры.', 'http://localhost:3000/uploads/baclajan.jpg'),
    ('Капуста', 'Овощи', 60.00, 'Белокочанная капуста с плотными листьями. Идеальна для борща, салатов и квашения.', 'http://localhost:3000/uploads/kapusta.jpg'),
    ('Кукуруза', 'Овощи', 110.00, 'Сладкая кукуруза в початках. Подходит для варки, гриля и добавления в салаты.', 'http://localhost:3000/uploads/corn.jpg'),
    ('Брокколи', 'Овощи', 180.00, 'Свежая брокколи, богатая витаминами. Отличный выбор для запекания, супов и здорового питания.', 'http://localhost:3000/uploads/brock.jpg'),
    ('Болгарский перец красный', 'Овощи', 140.00, 'Сочный красный болгарский перец с ярким вкусом. Подходит для салатов, фаршировки и тушения.', 'http://localhost:3000/uploads/red-perec.jpg'),
    ('Болгарский перец зелёный', 'Овощи', 130.00, 'Зелёный болгарский перец с лёгкой горчинкой. Используется в салатах, рагу и на гриле.', 'http://localhost:3000/uploads/green-perec.jpg'),
    ('Перец чили', 'Овощи', 200.00, 'Острый перец чили для любителей пикантных блюд. Добавляет жгучесть соусам и маринадам.', 'http://localhost:3000/uploads/red-chili.jpg'),
    ('Лук репчатый', 'Овощи', 50.00, 'Ароматный репчатый лук. Незаменим для супов, жарки и маринования.', 'http://localhost:3000/uploads/look.jpg'),
    ('Чеснок', 'Овощи', 150.00, 'Пряный чеснок с насыщенным ароматом. Подходит для соусов, маринадов и запекания.', 'http://localhost:3000/uploads/chesnok.jpg'),
    ('Морковь', 'Овощи', 55.00, 'Сочная морковь, богатая бета-каротином. Идеальна для супов, салатов и соков.', 'http://localhost:3000/uploads/morkov.jpg');
 create database shopeasy;
use shopeasy;

CREATE TABLE customer_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    address TEXT,
    city VARCHAR(100),
    state VARCHAR(100),
    zip VARCHAR(20),
    country VARCHAR(100),
    billing_same VARCHAR(5),
    billing_address TEXT,
    billing_city VARCHAR(100),
    billing_state VARCHAR(100),
    billing_zip VARCHAR(20),
    billing_country VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

select * from customer_info;

CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    price DECIMAL(10,2),
    image TEXT,
    description TEXT,
    rating DECIMAL(2,1),
    reviews INT,
    stock INT,
    category VARCHAR(100)
);

INSERT INTO products (id, name, price, image, description, rating, reviews, stock, category) VALUES 
(1, 'NVIDIA GeForce RTX 4090', 1599.99, 'https://media.istockphoto.com/id/1484246909/photo/asus-rog-strix-nvidia-geforce-rtx-4090-gpu-24gb-tweak-iii-with-dlss-and-reflex-high-end.jpg?s=612x612&w=0&k=20&c=ywYE1vhwyC6BCvGA-VLAREGMRWRfU_Qwbw1lGa1n7Hc=', 'High-end graphics card', 5, 100, 10, 'electronics'),
(2, 'Smart Watch Fitness Tracker', 100.00, 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Track your fitness and stay connected with this smart watch.', 4.2, 89, 30, 'electronics'),
(3, 'Men\'s Cotton T-Shirt', 20.00, 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Comfortable cotton t-shirt for everyday wear.', 4.0, 45, 100, 'clothing'),
(4, 'Women\'s Running Shoes', 50.00, 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Lightweight running shoes with cushioned soles.', 4.7, 210, 60, 'clothing'),
(5, 'Stainless Steel Water Bottle', 20.00, 'https://images.unsplash.com/photo-1602143407151-7111542de6e8?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Keep your drinks hot or cold for hours with this insulated bottle.', 4.3, 76, 120, 'home'),
(6, 'Non-Stick Cooking Set', 14.99, 'https://images.unsplash.com/photo-1688399104634-61a524f623ed?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bm9uJTIwc3RpY2slMjBwYW58ZW58MHx8MHx8fDA%3D', '10-piece non-stick cookware set for your kitchen.', 4.8, 312, 25, 'home'),
(7, 'Wireless Charging Pad', 29.99, 'https://images.unsplash.com/photo-1606077095660-726118e877fd?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8V2lyZWxlc3MlMjBDaGFyZ2luZyUyMFBhZHxlbnwwfHwwfHx8MA%3D%3D', 'Charge your Qi-enabled devices wirelessly.', 3.9, 42, 75, 'electronics'),
(8, 'Leather Wallet', 49.99, 'https://media.istockphoto.com/id/180756294/photo/wallet.jpg?s=612x612&w=0&k=20&c=sc6I6KsEbiv9Y4BtKji8w5rBYono2X63-ipfhYk6Ytg=', 'Genuine leather wallet with multiple card slots.', 4.4, 68, 40, 'clothing'),
(9, 'RGB Gaming Mouse', 39.99, 'https://images.unsplash.com/photo-1588440573874-54185a266452?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fFJHQiUyMEdBTUlORyUyME1PVVNFfGVufDB8fDB8fHww', 'High-precision RGB gaming mouse with ergonomic design and customizable buttons.', 4.7, 113, 75, 'electronics'),
(10, 'Mechanical Keyboard', 89.99, 'https://images.unsplash.com/photo-1587829741301-dc798b83add3', 'Tactile mechanical keyboard with RGB lighting and programmable keys.', 4.6, 205, 60, 'electronics'),
(11, 'Smartphone Gimbal', 119.99, 'https://images.unsplash.com/photo-1638243292863-3744d6a7e021?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c21hcnRwaG9uZSUyMGdpbWJhbHxlbnwwfHwwfHx8MA%3D%3D', '3-axis handheld gimbal stabilizer for capturing smooth smartphone videos.', 4.8, 98, 40, 'electronics'),
(12, 'Bluetooth Speaker', 49.99, 'https://images.unsplash.com/photo-1598034989845-48532781987e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Ymx1ZXRvb3RoJTIwc3BlYWtlcnxlbnwwfHwwfHx8MA%3D%3D', 'Portable Bluetooth speaker with deep bass and 12-hour battery life.', 4.5, 320, 90, 'electronics'),
(13, 'Smart Home Hub', 79.99, 'https://images.unsplash.com/photo-1728971825338-be9230fd4029?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c21hcnQlMjBob21lJTIwaHVifGVufDB8fDB8fHww', 'Control all your smart devices with a single smart home hub.', 4.3, 76, 55, 'electronics'),
(14, 'Fitness Tracker Band', 59.99, 'https://media.istockphoto.com/id/1211916991/photo/smart-fitness-tracking-and-watch-a-man-using-smart-band-tracking-heart-rate-and-health-data.jpg?s=612x612&w=0&k=20&c=Mna7rHlMQ74mLEIIbUA4C8HKQl36qyx25-rHEj81uL4=', 'Lightweight fitness band with step counter, sleep tracking, and heart rate monitor.', 4.4, 190, 65, 'electronics'),
(15, '1TB External Hard Drive', 64.99, 'https://media.istockphoto.com/id/478203334/photo/western-digital-my-passport-ultra-1-gb-portable-hard-drive.jpg?s=612x612&w=0&k=20&c=SqqSle4tEVkTvy5aZMlRQGG_cDxxM6tdU6aSJ21tXjY=', 'Portable and fast USB 3.0 1TB external hard drive for backups.', 4.6, 230, 80, 'electronics'),
(16, 'Drone with HD Camera', 249.99, 'https://images.unsplash.com/photo-1662348316911-d6aef85f8560?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZHJvbmUlMjB3aXRoJTIwaGQlMjBjYW1lcmF8ZW58MHx8MHx8fDA%3D', 'High-performance drone with 4K camera and 30-minute flight time.', 4.7, 142, 25, 'electronics'),
(17, 'Virtual Reality Headset', 299.99, 'https://images.unsplash.com/photo-1622979135225-d2ba269cf1ac?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dmlydHVhbCUyMHJlYWxpdHklMjBoZWFkc2V0fGVufDB8fDB8fHww', 'Immersive VR headset with wide field of view and motion tracking.', 4.8, 87, 30, 'electronics'),
(18, 'Adjustable Laptop Stand', 34.99, 'https://plus.unsplash.com/premium_photo-1683736986821-e4662912a70d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bGFwdG9wJTIwc3RhbmR8ZW58MHx8MHx8fDA%3D', 'Ergonomic aluminum laptop stand with adjustable height and angle.', 4.5, 144, 70, 'electronics'),
(19, 'LED Desk Lamp', 24.99, 'https://images.unsplash.com/photo-1708513427809-728a7913fc9f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bGVkJTIwZGVzayUyMGxhbXB8ZW58MHx8MHx8fDA%3D', 'Sleek LED desk lamp with touch controls and color temperature adjustment.', 4.6, 187, 90, 'home'),
(20, 'Noise Cancelling Earbuds', 79.99, 'https://images.unsplash.com/photo-1733641839241-6ae7a628971f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Tm9pc2UlMjBDYW5jZWxsaW5nJTIwRWFyYnVkc3xlbnwwfHwwfHx8MA%3D%3D', 'True wireless earbuds with active noise cancellation and charging case.', 4.4, 223, 100, 'electronics'),
(21, 'Laptop Backpack', 59.99, 'https://media.istockphoto.com/id/154005605/photo/backpack-with-a-laptop.jpg?s=612x612&w=0&k=20&c=yLe2mUyGb0tw2PEpmWjqQUkhcHBJdKWf6-PE2Pi9CHU=', 'Durable and waterproof backpack with laptop compartment and USB charging port.', 4.6, 180, 75, 'accessories'),
(22, 'Gaming Chair', 189.99, 'https://media.istockphoto.com/id/1305168473/photo/all-angels-view-of-black-and-yellow-office-chair-isolated-on-white.jpg?s=612x612&w=0&k=20&c=L9EpSYbbVPz453Y_3H7RRSXzlMwYpzTJHra29XHJbJ0=', 'Ergonomic gaming chair with adjustable armrests and lumbar support.', 4.7, 102, 25, 'furniture'),
(23, 'Wireless Keyboard & Mouse Combo', 49.99, 'https://media.istockphoto.com/id/477735633/photo/logitech-mk320-wireless-keyboard-and-mouse.jpg?s=612x612&w=0&k=20&c=I-nbf7Rm6ZmnCg7_vYqWYTAQqs89__tbONK3kMuDcfI=', 'Quiet wireless keyboard and mouse combo with long battery life.', 4.5, 140, 90, 'electronics'),
(24, 'Smart LED Light Bulbs (4-Pack)', 34.99, 'https://images.unsplash.com/photo-1738512509101-ce10c202a9d0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8U21hcnQlMjBMRUQlMjBMaWdodCUyMEJ1bGJzJTIwKDQlMjBQYWNrKXxlbnwwfHwwfHx8MA%3D%3D', 'Color-changing smart LED bulbs compatible with Alexa and Google Assistant.', 4.6, 198, 100, 'home'),
(25, 'Portable Projector', 219.99, 'https://images.unsplash.com/photo-1638154320403-1bc308a01398?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8UG9ydGFibGUlMjBQcm9qZWN0b3J8ZW58MHx8MHx8fDA%3D', 'Compact HD projector for movies and presentations, supports HDMI and USB.', 4.4, 87, 40, 'electronics'),
(26, 'Electric Toothbrush', 49.99, 'https://images.unsplash.com/photo-1559671216-bda69517c47f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8RWxlY3RyaWMlMjBUb290aGJydXNofGVufDB8fDB8fHww', 'Rechargeable electric toothbrush with multiple cleaning modes.', 4.3, 132, 60, 'health'),
(27, 'USB-C Docking Station', 89.99, 'https://media.istockphoto.com/id/1342467393/photo/eu-proposes-standardization-of-charging-cables-for-cell-phones-according-to-the-usb-c-standard.jpg?s=612x612&w=0&k=20&c=UyxthpXUC_CPEUG43vOXiJLfR2W7fz7WtA0VKjp8M-A=', 'Multi-port USB-C hub for laptops with HDMI, Ethernet, and card readers.', 4.5, 120, 45, 'electronics'),
(28, 'Insulated Travel Mug', 24.99, 'https://images.unsplash.com/photo-1550736386-78b14d2601f8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8SW5zdWxhdGVkJTIwVHJhdmVsJTIwTXVnfGVufDB8fDB8fHww', 'Double-wall insulated stainless steel mug for hot and cold drinks.', 4.6, 214, 80, 'kitchen'),
(29, 'Yoga Mat', 29.99, 'https://images.unsplash.com/photo-1637157216470-d92cd2edb2e8?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8WW9nYSUyME1hdHxlbnwwfHwwfHx8MA%3D%3D', 'Non-slip yoga mat made with eco-friendly materials, ideal for workouts.', 4.7, 156, 70, 'fitness'),
(30, 'Smart Thermostat', 149.99, 'https://plus.unsplash.com/premium_photo-1729436833449-225649403fc0?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8U21hcnQlMjBUaGVybW9zdGF0fGVufDB8fDB8fHww', 'WiFi-enabled thermostat to control home temperature remotely.', 4.4, 99, 35, 'home'),
(31, 'Air Purifier', 129.99, 'https://images.unsplash.com/photo-1662454378069-fb8a9c6c0c88?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8QWlyJTIwUHVyaWZpZXJ8ZW58MHx8MHx8fDA%3D', 'Compact air purifier with HEPA filter for clean indoor air.', 4.5, 84, 50, 'home'),
(32, 'Waterproof Bluetooth Earphones', 39.99, 'https://images.unsplash.com/photo-1636091234567-abcdef123456?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8V2F0ZXJwcm9vZiUyMEJsdWV0b290aCUyMEVhcmJvYXJ8ZW58MHx8MHx8fDA%3D', 'Waterproof Bluetooth earphones with high-quality sound and long battery life.', 4.5, 150, 80, 'electronics'),
(33, 'Smart Scale', 49.99, 'https://images.unsplash.com/photo-1601758120660-1c1c1c1c1c1c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8U21hcnQlMjBTY2FsZXxlbnwwfHwwfHx8MA%3D%3D', 'Digital smart scale with body composition analysis.', 4.4, 120, 60, 'health'),
(34, 'Electric Kettle', 39.99, 'https://images.unsplash.com/photo-1601758120660-1c1c1c1c1c1c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8RWxlY3RyaWMlMjBLZXR0bGV8ZW58MHx8MHx8fDA%3D', 'Fast boiling electric kettle with temperature control.', 4.5, 150, 80, 'kitchen'),
(35, 'Portable Blender', 29.99, 'https://images.unsplash.com/photo-1601758120660-1c1c1c1c1c1c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8UG9ydGFibGUgQmxlbmRlcnxlbnwwfHwwfHx8MA%3D%3D', 'Compact portable blender for smoothies and shakes.', 4.6, 200, 90, 'kitchen'),
(36, 'Smartphone Tripod', 19.99, 'https://images.unsplash.com/photo-1601758120660-1c1c1c1c1c1c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8U21hcnQlMjBUcmlwb2R8ZW58MHx8MHx8fDA%3D', 'Adjustable smartphone tripod for stable photography.', 4.3, 110, 75, 'accessories'),
(37, 'Pet Camera', 99.99, 'https://images.unsplash.com/photo-1601758120660-1c1c1c1c1c1c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8UGV0JTIwQ2FtZXJhJTIwQ2Ftc3xlbnwwfHwwfHx8MA%3D%3D', 'Monitor your pets remotely with this smart camera.', 4.5, 95, 40, 'electronics'),
(38, 'Electric Pressure Cooker', 89.99, 'https://images.unsplash.com/photo-1601758120660-1c1c1c1c1c1c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8RWxlY3RyaWMlMjBQcmVzc3VyZSUyMENvb2tlcnxlbnwwfHwwfHx8MA%3D%3D', 'Multi-functional electric pressure cooker for quick meals.', 4.7, 130, 50, 'kitchen'),
(39, 'Smart Door Lock', 149.99, 'https://images.unsplash.com/photo-1601758120660-1c1c1c1c1c1c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8U21hcnQlMjBEb3VyJTIwTG9ja3xlbnwwfHwwfHx8MA%3D%3D', 'Keyless smart door lock with remote access.', 4.8, 70, 30, 'home'),
(40, 'Portable Air Conditioner', 299.99, 'https://images.unsplash.com/photo-1601758120660-1c1c1c1c1c1c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8UG9ydGFibGUgQWlyJTIwQ29vbGVyfGVufDB8fDB8fHww', 'Compact portable air conditioner for cooling small spaces.', 4.5, 60, 20, 'home');


CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customer_info(id)
);

CREATE TABLE order_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

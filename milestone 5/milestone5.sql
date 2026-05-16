
USE food_waste_db;

-- ============================================================
-- SECTION 1: INSERT DATA
-- ============================================================

-- --------------------------------------------------------
-- TABLE 1: food_categories
-- --------------------------------------------------------
INSERT INTO food_categories (category_id, category_name, description) VALUES
(1,  'Cooked',      'Fully prepared hot or cold meals'),
(2,  'Raw',         'Unprocessed fresh produce and meat'),
(3,  'Bakery',      'Breads, pastries, and baked goods'),
(4,  'Dairy',       'Milk, cheese, yogurt, and eggs'),
(5,  'Beverages',   'Juices, water, and non-alcoholic drinks'),
(6,  'Canned',      'Tinned and preserved food items'),
(7,  'Frozen',      'Frozen meals and ingredients'),
(8,  'Snacks',      'Packaged chips, biscuits, and sweets'),
(9,  'Grains',      'Rice, flour, lentils, and pulses'),
(10, 'Condiments',  'Sauces, spices, and dressings');

-- --------------------------------------------------------
-- TABLE 2: users
-- --------------------------------------------------------
INSERT INTO users (user_id, name, email, password, role, phone, created_at, city, area) VALUES
(1,  'Allison Hill',       'donaldgarcia@example.net',    'hashed_password_admin',      'admin',      '03126855092', '2025-09-16 02:49:49', 'Lahore',    'Bahria Town'),
(2,  'Javier Johnson',     'jesseguzman@example.net',     'hashed_password_admin',      'admin',      '03362950628', '2024-09-01 04:39:46', 'Peshawar',  'Johar Town'),
(3,  'Brittany Brown',     'wanda51@example.org',         'hashed_password_admin',      'admin',      '03078901234', '2024-10-14 09:12:00', 'Karachi',   'DHA Phase 2'),
(4,  'Carlos Mendez',      'cmendez@example.com',         'hashed_password_ngo',        'NGO',        '03451122334', '2024-11-20 11:30:00', 'Lahore',    'Gulberg'),
(5,  'Sara Khan',          'sarakhan@example.com',        'hashed_password_ngo',        'NGO',        '03001234567', '2025-01-05 08:00:00', 'Islamabad', 'G-9'),
(6,  'Ahmed Raza',         'ahmedraza@example.net',       'hashed_password_restaurant', 'restaurant', '03219988776', '2025-02-14 14:22:00', 'Lahore',    'Model Town'),
(7,  'Nadia Hussain',      'nadiahussain@example.org',    'hashed_password_restaurant', 'restaurant', '03334455667', '2025-03-01 10:15:00', 'Karachi',   'Clifton'),
(8,  'Usman Tariq',        'usmantariq@example.com',      'hashed_password_restaurant', 'restaurant', '03125566778', '2025-03-18 09:45:00', 'Peshawar',  'Hayatabad'),
(9,  'Maria Fernandez',    'mariafernandez@example.net',  'hashed_password_restaurant', 'restaurant', '03002233445', '2025-04-02 12:00:00', 'Lahore',    'Cavalry Ground'),
(10, 'Omar Sheikh',        'omarsheikh@example.com',      'hashed_password_ngo',        'NGO',        '03456677889', '2025-04-10 07:30:00', 'Islamabad', 'F-10'),
(11, 'Zara Malik',         'zaramalik@example.org',       'hashed_password_restaurant', 'restaurant', '03118899001', '2025-04-22 16:00:00', 'Lahore',    'Johar Town'),
(12, 'Daniel Park',        'danielpark@example.net',      'hashed_password_restaurant', 'restaurant', '03347788990', '2025-05-05 08:30:00', 'Karachi',   'Gulshan-e-Iqbal'),
(13, 'Hina Mirza',         'hinamirza@example.com',       'hashed_password_ngo',        'NGO',        '03201122334', '2025-05-15 11:00:00', 'Lahore',    'Cantt'),
(14, 'Bilal Chaudhry',     'bilalch@example.org',         'hashed_password_restaurant', 'restaurant', '03124455667', '2025-05-28 13:45:00', 'Faisalabad','Peoples Colony'),
(15, 'Ayesha Siddiqui',    'ayeshasid@example.net',       'hashed_password_ngo',        'NGO',        '03455566778', '2025-06-01 09:00:00', 'Rawalpindi','Satellite Town'),
(16, 'Kevin Turner',       'kevinturner@example.com',     'hashed_password_restaurant', 'restaurant', '03336677889', '2025-06-10 14:00:00', 'Karachi',   'North Nazimabad'),
(17, 'Fatima Zaidi',       'fatimazaidi@example.org',     'hashed_password_ngo',        'NGO',        '03117788990', '2025-06-18 10:30:00', 'Lahore',    'Raiwind Road'),
(18, 'Ali Hassan',         'alihassan@example.net',       'hashed_password_restaurant', 'restaurant', '03200011223', '2025-06-25 08:00:00', 'Multan',    'Gulgasht Colony'),
(19, 'Sana Iqbal',         'sanaiqbal@example.com',       'hashed_password_ngo',        'NGO',        '03121122334', '2025-07-03 11:15:00', 'Peshawar',  'University Road'),
(20, 'Hamza Noor',         'hamzanoor@example.org',       'hashed_password_restaurant', 'restaurant', '03452233445', '2025-07-11 09:30:00', 'Islamabad', 'I-8'),
(21, 'Rania Yousuf',       'raniayousuf@example.net',     'hashed_password_ngo',        'NGO',        '03333344556', '2025-07-19 12:45:00', 'Lahore',    'Shadman'),
(22, 'Tariq Mehmood',      'tariqmehmood@example.com',    'hashed_password_restaurant', 'restaurant', '03116655667', '2025-07-28 14:00:00', 'Karachi',   'Korangi'),
(23, 'Amna Butt',          'amnabutt@example.org',        'hashed_password_restaurant', 'restaurant', '03447766778', '2025-08-05 10:00:00', 'Lahore',    'Wapda Town'),
(24, 'Faisal Qureshi',     'faisalq@example.net',         'hashed_password_ngo',        'NGO',        '03338877889', '2025-08-13 08:45:00', 'Faisalabad','Canal Road'),
(25, 'Lubna Riaz',         'lubnariaz@example.com',       'hashed_password_restaurant', 'restaurant', '03119988990', '2025-08-21 13:30:00', 'Islamabad', 'E-11'),
(26, 'Waleed Aslam',       'waleedaslam@example.org',     'hashed_password_ngo',        'NGO',        '03200099112', '2025-08-29 09:00:00', 'Lahore',    'Township'),
(27, 'Saima Nawaz',        'saimanawaz@example.net',      'hashed_password_restaurant', 'restaurant', '03123344556', '2025-09-06 11:30:00', 'Rawalpindi','Chaklala'),
(28, 'Imran Shah',         'imranshah@example.com',       'hashed_password_ngo',        'NGO',        '03454455667', '2025-09-14 14:15:00', 'Karachi',   'PECHS'),
(29, 'Maheen Baig',        'maheenbaig@example.org',      'hashed_password_restaurant', 'restaurant', '03335566778', '2025-09-22 08:30:00', 'Lahore',    'Askari'),
(30, 'Nabeel Farooq',      'nabeelfarooq@example.net',    'hashed_password_ngo',        'NGO',        '03118677889', '2025-09-30 10:45:00', 'Multan',    'New Multan'),
(31, 'Sobia Arshad',       'sobiaarshad@example.com',     'hashed_password_restaurant', 'restaurant', '03201188990', '2025-10-08 09:15:00', 'Peshawar',  'Gulbahar'),
(32, 'Danyal Javed',       'danyaljaved@example.org',     'hashed_password_ngo',        'NGO',        '03122299001', '2025-10-16 12:00:00', 'Islamabad', 'G-11'),
(33, 'Kiran Zahid',        'kiranzahid@example.net',      'hashed_password_restaurant', 'restaurant', '03453300112', '2025-10-24 14:30:00', 'Lahore',    'Bedian Road'),
(34, 'Naveed Gillani',     'naveedgillani@example.com',   'hashed_password_ngo',        'NGO',        '03334411223', '2025-11-01 08:00:00', 'Karachi',   'Orangi Town'),
(35, 'Iqra Akram',         'iqraakram@example.org',       'hashed_password_restaurant', 'restaurant', '03117722334', '2025-11-09 10:30:00', 'Lahore',    'Bhatta Chowk'),
(36, 'Asad Butt',          'asadbutt@example.net',        'hashed_password_ngo',        'NGO',        '03448833445', '2025-11-17 13:15:00', 'Faisalabad','Ghulam Muhammadabad'),
(37, 'Nosheen Akhtar',     'nosheenakhtar@example.com',   'hashed_password_restaurant', 'restaurant', '03339944556', '2025-11-25 09:45:00', 'Islamabad', 'D-12'),
(38, 'Adeel Rehman',       'adeelrehman@example.org',     'hashed_password_ngo',        'NGO',        '03120055667', '2025-12-03 11:00:00', 'Lahore',    'Nishtar Colony'),
(39, 'Maryam Awan',        'maryamawan@example.net',      'hashed_password_restaurant', 'restaurant', '03451166778', '2025-12-11 14:45:00', 'Rawalpindi','Westridge'),
(40, 'Shahid Anwar',       'shahidanwar@example.com',     'hashed_password_ngo',        'NGO',        '03332277889', '2025-12-19 08:15:00', 'Karachi',   'Federal B Area'),
(41, 'Rabia Naqvi',        'rabianaqvi@example.org',      'hashed_password_ngo',        'NGO',        '03115588990', '2025-12-27 10:00:00', 'Lahore',    'Samanabad'),
(42, 'Junaid Mir',         'junaidmir@example.net',       'hashed_password_ngo',        'NGO',        '03202299001', '2026-01-04 13:30:00', 'Islamabad', 'H-13'),
(43, 'Sidra Ghani',        'sidraghani@example.com',      'hashed_password_restaurant', 'restaurant', '03123300112', '2026-01-12 09:00:00', 'Peshawar',  'Dalazak Road'),
(44, 'Usman Babar',        'usmanbabar@example.org',      'hashed_password_ngo',        'NGO',        '03454411223', '2026-01-20 11:45:00', 'Lahore',    'Kot Lakhpat'),
(45, 'Hira Kazmi',         'hirakazmi@example.net',       'hashed_password_restaurant', 'restaurant', '03335522334', '2026-01-28 14:00:00', 'Karachi',   'Malir'),
(46, 'Farhaan Saleem',     'farhaansaleem@example.com',   'hashed_password_ngo',        'NGO',        '03118633445', '2026-02-05 08:30:00', 'Lahore',    'Defence Road'),
(47, 'Anita Chowdhry',     'anitachowdhry@example.org',   'hashed_password_restaurant', 'restaurant', '03449744556', '2026-02-13 10:15:00', 'Faisalabad','Madina Town'),
(48, 'Rizwan Malik',       'rizwanmalik@example.net',     'hashed_password_ngo',        'NGO',        '03330855667', '2026-02-21 13:00:00', 'Islamabad', 'F-8'),
(49, 'Maira Latif',        'mairalatif@example.com',      'hashed_password_ngo',        'NGO',        '03121966778', '2026-03-01 09:30:00', 'Lahore',    'Thokar Niaz Baig'),
(50, 'Zain Ul Abidin',     'zainulabidin@example.org',    'hashed_password_restaurant', 'restaurant', '03452077889', '2026-03-09 11:15:00', 'Karachi',   'Landhi'),
(51, 'Asma Qazi',          'asmaqazi@example.net',        'hashed_password_ngo',        'NGO',        '03333188990', '2026-03-17 14:30:00', 'Lahore',    'Barkat Market'),
(52, 'Tahir Nawaz',        'tahirnawaz@example.com',      'hashed_password_restaurant', 'restaurant', '03116299001', '2026-03-25 08:00:00', 'Multan',    'Shah Rukn-e-Alam'),
(53, 'Nida Farhat',        'nidafarhat@example.org',      'hashed_password_ngo',        'NGO',        '03447300112', '2026-04-02 10:45:00', 'Islamabad', 'I-10'),
(54, 'Kamran Zia',         'kamranzia@example.net',       'hashed_password_restaurant', 'restaurant', '03338411223', '2026-04-10 13:30:00', 'Peshawar',  'Tehkal'),
(55, 'Bushra Iqbal',       'bushraiqbal@example.com',     'hashed_password_ngo',        'NGO',        '03121522334', '2026-04-18 09:00:00', 'Lahore',    'Harbanspura'),
(56, 'Imtiaz Gondal',      'imtiazgondal@example.org',    'hashed_password_restaurant', 'restaurant', '03452633445', '2026-04-26 11:30:00', 'Karachi',   'Bin Qasim'),
(57, 'Lubaba Shoaib',      'lubabashoaib@example.net',    'hashed_password_ngo',        'NGO',        '03333744556', '2026-05-04 14:15:00', 'Lahore',    'Shadbagh'),
(58, 'Arshad Mahmood',     'arshadmahmood@example.com',   'hashed_password_restaurant', 'restaurant', '03116855667', '2026-05-07 08:30:00', 'Faisalabad','Millat Road'),
(59, 'Sadia Khalid',       'sadiakhalid@example.org',     'hashed_password_ngo',        'NGO',        '03447966778', '2026-05-09 10:00:00', 'Islamabad', 'G-13'),
(60, 'Mohsin Ali',         'mohsinali@example.net',       'hashed_password_restaurant', 'restaurant', '03338077889', '2026-05-10 13:45:00', 'Lahore',    'Chungi Amar Sadhu');

-- --------------------------------------------------------
-- TABLE 3: food_listings
-- --------------------------------------------------------
INSERT INTO food_listings (food_id, user_id, food_name, quantity, unit, status, expiry_date, created_at, category_id) VALUES
(1,  9,  'Mixed Salad',        129, 'kg',     'claimed',   '2025-11-15', '2025-11-10 17:38:13', 2),
(2,  12, 'Paneer',             145, 'kg',     'claimed',   '2025-10-26', '2025-10-23 17:50:07', 3),
(3,  7,  'Biryani',            200, 'kg',     'claimed',   '2026-03-30', '2026-03-27 06:16:33', 1),
(4,  8,  'Chapati',            300, 'pieces', 'available', '2026-03-28', '2026-03-23 06:28:54', 3),
(5,  6,  'Dal Chawal',         150, 'kg',     'available', '2026-01-20', '2026-01-14 09:40:22', 1),
(6,  20, 'White Rice',         180, 'kg',     'available', '2026-02-10', '2026-02-05 11:20:00', 9),
(7,  25, 'Mango Juice',         80, 'liters', 'available', '2026-04-15', '2026-04-10 08:00:00', 5),
(8,  33, 'Chicken Karahi',     120, 'kg',     'claimed',   '2026-03-26', '2026-03-23 06:28:54', 1),
(9,  29, 'Milk',               200, 'liters', 'available', '2026-05-20', '2026-05-10 07:00:00', 4),
(10, 35, 'Bread Loaves',       100, 'pieces', 'available', '2026-05-18', '2026-05-12 09:00:00', 3),
(11, 14, 'Lentil Soup',        170, 'kg',     'available', '2026-04-25', '2026-04-20 10:30:00', 1),
(12, 22, 'Yogurt',             130, 'kg',     'available', '2026-05-22', '2026-05-15 08:15:00', 4),
(13, 18, 'Tomato Ketchup',      60, 'bottles','available', '2026-12-01', '2026-05-01 12:00:00', 10),
(14, 31, 'Frozen Peas',        200, 'kg',     'available', '2027-01-01', '2026-04-01 10:00:00', 7),
(15, 43, 'Biscuit Packs',      150, 'boxes',  'available', '2027-03-01', '2026-03-15 11:00:00', 8),
(16, 45, 'Chickpeas (Canned)', 100, 'tins',   'available', '2027-06-01', '2026-04-05 09:30:00', 6),
(17, 47, 'Corn Flour',         250, 'kg',     'available', '2027-02-01', '2026-05-02 08:00:00', 9),
(18, 50, 'Mango Pickle',        45, 'jars',   'available', '2027-01-15', '2026-03-20 14:00:00', 10),
(19, 52, 'Orange Juice',        90, 'liters', 'available', '2026-06-10', '2026-05-08 10:15:00', 5),
(20, 54, 'Frozen Chicken',     300, 'kg',     'available', '2026-12-31', '2026-04-15 09:00:00', 7),
(21, 56, 'Naan',               400, 'pieces', 'available', '2026-05-17', '2026-05-14 07:30:00', 3),
(22, 58, 'Basmati Rice',       500, 'kg',     'available', '2027-04-01', '2026-05-07 06:00:00', 9),
(23, 60, 'Cheese Slices',       80, 'packs',  'available', '2026-06-30', '2026-05-10 11:00:00', 4),
(24, 6,  'Grilled Fish',       110, 'kg',     'available', '2026-05-19', '2026-05-15 13:00:00', 2),
(25, 7,  'Pasta',              140, 'kg',     'available', '2026-05-25', '2026-05-14 09:45:00', 1),
(26, 8,  'Cooked Lentils',     160, 'kg',     'available', '2026-05-20', '2026-05-13 08:00:00', 1),
(27, 9,  'Green Salad',         95, 'kg',     'available', '2026-05-18', '2026-05-12 07:30:00', 2),
(28, 12, 'Macaroni',           130, 'kg',     'available', '2026-05-24', '2026-05-14 10:30:00', 1),
(29, 14, 'Croissants',         200, 'pieces', 'available', '2026-05-17', '2026-05-15 06:00:00', 3),
(30, 16, 'Apple Juice',         70, 'liters', 'available', '2026-06-20', '2026-05-10 09:00:00', 5),
(31, 18, 'Canned Tuna',         60, 'tins',   'available', '2027-08-01', '2026-05-01 11:00:00', 6),
(32, 20, 'Frozen Vegetables',  250, 'kg',     'available', '2027-01-01', '2026-04-20 08:30:00', 7),
(33, 22, 'Chips (Salted)',     300, 'packs',  'available', '2026-11-01', '2026-04-25 14:00:00', 8),
(34, 25, 'Wheat Flour',        400, 'kg',     'available', '2027-03-01', '2026-04-10 07:00:00', 9),
(35, 27, 'Chili Sauce',         55, 'bottles','available', '2027-02-01', '2026-03-28 12:00:00', 10),
(36, 29, 'Lassi',              100, 'liters', 'available', '2026-05-18', '2026-05-14 08:00:00', 4),
(37, 31, 'Halwa Puri',         180, 'kg',     'available', '2026-05-17', '2026-05-13 07:00:00', 1),
(38, 33, 'Seekh Kabab',        120, 'pieces', 'available', '2026-05-18', '2026-05-14 11:30:00', 1),
(39, 35, 'Rusk',               150, 'packs',  'available', '2026-10-01', '2026-04-30 09:30:00', 3),
(40, 37, 'Energy Drink',        80, 'cans',   'available', '2026-09-01', '2026-04-22 13:00:00', 5),
(41, 39, 'Canned Beans',       110, 'tins',   'available', '2027-07-01', '2026-05-03 10:00:00', 6),
(42, 43, 'Ice Cream (Vanilla)', 90, 'liters', 'available', '2026-07-31', '2026-04-18 14:30:00', 7),
(43, 45, 'Wafers',             200, 'packs',  'available', '2026-12-01', '2026-04-28 12:00:00', 8),
(44, 47, 'Semolina',           350, 'kg',     'available', '2027-05-01', '2026-05-05 08:00:00', 9),
(45, 50, 'Mint Chutney',        40, 'jars',   'available', '2026-08-01', '2026-04-12 11:00:00', 10),
(46, 52, 'Dahi Bhalla',        110, 'kg',     'available', '2026-05-19', '2026-05-15 09:30:00', 1),
(47, 54, 'Raw Spinach',        140, 'kg',     'available', '2026-05-20', '2026-05-14 07:00:00', 2),
(48, 56, 'Pita Bread',         250, 'pieces', 'available', '2026-05-18', '2026-05-13 06:30:00', 3),
(49, 58, 'Butter',              60, 'kg',     'available', '2026-06-15', '2026-05-07 09:00:00', 4),
(50, 60, 'Guava Juice',         75, 'liters', 'available', '2026-06-25', '2026-05-10 10:30:00', 5),
(51, 6,  'Pulao',              160, 'kg',     'available', '2026-05-20', '2026-05-15 12:00:00', 1),
(52, 7,  'Raw Potato',         300, 'kg',     'available', '2026-06-30', '2026-05-08 08:00:00', 2),
(53, 8,  'Cake Slices',         90, 'pieces', 'available', '2026-05-18', '2026-05-14 10:00:00', 3),
(54, 9,  'Cream',               55, 'liters', 'available', '2026-05-22', '2026-05-15 07:30:00', 4),
(55, 12, 'Rooh Afza',           50, 'bottles','available', '2026-12-31', '2026-05-01 11:30:00', 5),
(56, 14, 'Sardines (Canned)',   80, 'tins',   'available', '2027-09-01', '2026-04-20 09:00:00', 6),
(57, 16, 'Frozen Paratha',     400, 'pieces', 'available', '2026-12-31', '2026-04-05 07:00:00', 7),
(58, 18, 'Cheetos',            250, 'packs',  'available', '2026-10-15', '2026-04-28 13:00:00', 8),
(59, 20, 'Corn',               200, 'kg',     'available', '2027-01-15', '2026-05-02 08:30:00', 9),
(60, 22, 'Garlic Paste',        45, 'jars',   'available', '2026-09-01', '2026-04-15 12:00:00', 10),
(61, 25, 'Chicken Tikka',      130, 'kg',     'available', '2026-05-19', '2026-05-15 10:00:00', 1),
(62, 27, 'Raw Onion',          200, 'kg',     'available', '2026-06-01', '2026-05-10 08:00:00', 2),
(63, 29, 'Bun',                300, 'pieces', 'available', '2026-05-17', '2026-05-13 06:00:00', 3),
(64, 31, 'Mozzarella',          70, 'kg',     'available', '2026-06-20', '2026-05-08 09:30:00', 4),
(65, 33, 'Pepsi',              120, 'cans',   'available', '2026-12-31', '2026-05-05 14:00:00', 5),
(66, 35, 'Chickpeas (Boiled)', 150, 'kg',     'available', '2026-05-20', '2026-05-14 07:30:00', 9),
(67, 37, 'Samosa',             350, 'pieces', 'available', '2026-05-17', '2026-05-13 08:30:00', 1),
(68, 39, 'Raw Carrot',         180, 'kg',     'available', '2026-06-10', '2026-05-09 07:00:00', 2),
(69, 43, 'Doughnut',           100, 'pieces', 'available', '2026-05-17', '2026-05-14 09:00:00', 3),
(70, 45, 'Paneer (Block)',     110, 'kg',     'available', '2026-06-05', '2026-05-10 10:00:00', 4),
(71, 47, 'Soda Water',          60, 'bottles','available', '2026-11-30', '2026-04-28 13:30:00', 5),
(72, 50, 'Kidney Beans (Can)', 100, 'tins',   'available', '2027-10-01', '2026-04-22 09:00:00', 6),
(73, 52, 'Frozen Burger',      200, 'pieces', 'available', '2026-12-31', '2026-04-10 08:00:00', 7),
(74, 54, 'Choco Biscuits',     200, 'packs',  'available', '2026-09-30', '2026-04-30 12:00:00', 8),
(75, 56, 'Barley',             300, 'kg',     'available', '2027-04-01', '2026-05-05 07:00:00', 9),
(76, 58, 'Tamarind Sauce',      50, 'jars',   'available', '2026-08-15', '2026-04-18 11:00:00', 10),
(77, 60, 'Aloo Gosht',         140, 'kg',     'available', '2026-05-18', '2026-05-14 12:00:00', 1),
(78, 6,  'Fresh Tomatoes',     180, 'kg',     'available', '2026-05-22', '2026-05-15 08:30:00', 2),
(79, 7,  'Croissant',          120, 'pieces', 'available', '2026-05-17', '2026-05-14 06:30:00', 3),
(80, 8,  'Condensed Milk',      40, 'tins',   'available', '2026-12-31', '2026-05-01 10:00:00', 4),
(81, 9,  'Watermelon Juice',    90, 'liters', 'available', '2026-06-15', '2026-05-10 09:30:00', 5),
(82, 12, 'Peas (Canned)',       80, 'tins',   'available', '2027-05-01', '2026-04-25 08:00:00', 6),
(83, 14, 'Frozen Spring Roll', 150, 'pieces', 'available', '2026-12-01', '2026-04-12 07:30:00', 7),
(84, 16, 'Namkeen Mix',        200, 'packs',  'available', '2026-10-31', '2026-04-30 13:30:00', 8),
(85, 18, 'Masoor Dal',         400, 'kg',     'available', '2027-03-01', '2026-05-05 07:00:00', 9);

-- --------------------------------------------------------
-- TABLE 4: claims
-- --------------------------------------------------------
INSERT INTO claims (claim_id, food_id, ngo_id, claim_status, claimed_at, notes) VALUES
(1,  1,  41, 'completed',  '2025-11-11 01:38:13', NULL),
(2,  2,  44, 'cancelled',  '2025-10-23 18:50:07', 'Cold storage needed.'),
(3,  3,  49, 'completed',  '2026-03-27 09:16:33', NULL),
(4,  8,  42, 'cancelled',  '2026-03-23 09:28:54', 'Please pack separately.'),
(5,  5,  28, 'confirmed',  '2026-01-14 10:40:22', NULL),
(6,  6,  32, 'pending',    '2026-02-05 12:20:00', NULL),
(7,  7,  46, 'completed',  '2026-04-10 09:00:00', NULL),
(8,  9,  53, 'pending',    '2026-05-10 08:00:00', NULL),
(9,  10, 57, 'confirmed',  '2026-05-12 10:00:00', 'Early pickup preferred.'),
(10, 11, 59, 'pending',    '2026-04-20 11:30:00', NULL),
(11, 12, 26, 'confirmed',  '2026-05-15 09:15:00', NULL),
(12, 13, 34, 'pending',    '2026-05-01 13:00:00', NULL),
(13, 14, 38, 'completed',  '2026-04-01 11:00:00', NULL),
(14, 15, 40, 'cancelled',  '2026-03-15 12:00:00', 'Wrong quantity.'),
(15, 16, 48, 'confirmed',  '2026-04-05 10:30:00', NULL),
(16, 17, 51, 'pending',    '2026-05-02 09:00:00', NULL),
(17, 18, 55, 'completed',  '2026-03-20 15:00:00', NULL),
(18, 19, 30, 'pending',    '2026-05-08 11:15:00', NULL),
(19, 20, 36, 'confirmed',  '2026-04-15 10:00:00', NULL),
(20, 21, 24, 'pending',    '2026-05-14 08:30:00', NULL),
(21, 22, 21, 'pending',    '2026-05-07 07:00:00', NULL),
(22, 23, 17, 'confirmed',  '2026-05-10 12:00:00', NULL),
(23, 24, 13, 'pending',    '2026-05-15 14:00:00', NULL),
(24, 25, 10, 'pending',    '2026-05-14 10:45:00', NULL),
(25, 26, 5,  'confirmed',  '2026-05-13 09:00:00', NULL),
(26, 27, 15, 'pending',    '2026-05-12 08:30:00', NULL),
(27, 28, 19, 'pending',    '2026-05-14 11:30:00', NULL),
(28, 29, 23, 'confirmed',  '2026-05-15 07:00:00', NULL),
(29, 30, 41, 'pending',    '2026-05-10 10:00:00', NULL),
(30, 31, 44, 'pending',    '2026-05-01 12:00:00', NULL),
(31, 32, 49, 'confirmed',  '2026-04-20 09:30:00', NULL),
(32, 33, 42, 'pending',    '2026-04-25 15:00:00', NULL),
(33, 34, 28, 'confirmed',  '2026-04-10 08:00:00', NULL),
(34, 35, 32, 'pending',    '2026-03-28 13:00:00', NULL),
(35, 36, 46, 'confirmed',  '2026-05-14 09:00:00', NULL),
(36, 37, 53, 'pending',    '2026-05-13 08:00:00', NULL),
(37, 38, 57, 'confirmed',  '2026-05-14 12:30:00', NULL),
(38, 39, 59, 'pending',    '2026-04-30 10:30:00', NULL),
(39, 40, 26, 'pending',    '2026-04-22 14:00:00', NULL),
(40, 41, 34, 'confirmed',  '2026-05-03 11:00:00', NULL),
(41, 42, 38, 'pending',    '2026-04-18 15:30:00', NULL),
(42, 43, 40, 'confirmed',  '2026-04-28 13:00:00', NULL),
(43, 44, 48, 'pending',    '2026-05-05 09:00:00', NULL),
(44, 45, 51, 'confirmed',  '2026-04-12 12:00:00', NULL),
(45, 46, 55, 'pending',    '2026-05-15 10:30:00', NULL),
(46, 47, 30, 'confirmed',  '2026-05-14 08:00:00', NULL),
(47, 48, 36, 'pending',    '2026-05-13 07:30:00', NULL),
(48, 49, 24, 'confirmed',  '2026-05-07 10:00:00', NULL),
(49, 50, 21, 'pending',    '2026-05-10 11:30:00', NULL),
(50, 51, 17, 'confirmed',  '2026-05-15 13:00:00', NULL),
(51, 52, 13, 'pending',    '2026-05-08 09:00:00', NULL),
(52, 53, 10, 'confirmed',  '2026-05-14 11:00:00', NULL),
(53, 54, 5,  'pending',    '2026-05-15 08:30:00', NULL),
(54, 55, 15, 'confirmed',  '2026-05-01 12:30:00', NULL),
(55, 56, 19, 'pending',    '2026-04-20 10:00:00', NULL),
(56, 57, 23, 'confirmed',  '2026-04-05 08:00:00', NULL),
(57, 58, 41, 'pending',    '2026-04-28 14:00:00', NULL),
(58, 59, 44, 'confirmed',  '2026-05-02 09:30:00', NULL),
(59, 60, 49, 'pending',    '2026-04-15 13:00:00', NULL),
(60, 61, 42, 'confirmed',  '2026-05-15 11:00:00', NULL),
(61, 62, 28, 'pending',    '2026-05-10 09:00:00', NULL),
(62, 63, 32, 'confirmed',  '2026-05-13 07:00:00', NULL),
(63, 64, 46, 'pending',    '2026-05-08 10:30:00', NULL),
(64, 65, 53, 'confirmed',  '2026-05-05 15:00:00', NULL),
(65, 66, 57, 'pending',    '2026-05-14 08:30:00', NULL);

-- --------------------------------------------------------
-- TABLE 5: pickup_schedules
-- --------------------------------------------------------
INSERT INTO pickup_schedules (schedule_id, claim_id, scheduled_time, status) VALUES
(1,  1,  '2025-11-11 21:38:13', 'completed'),
(2,  3,  '2026-03-27 22:16:33', 'completed'),
(3,  5,  '2026-01-15 10:00:00', 'confirmed'),
(4,  7,  '2026-04-11 09:00:00', 'completed'),
(5,  9,  '2026-05-13 10:00:00', 'confirmed'),
(6,  11, '2026-05-16 09:15:00', 'confirmed'),
(7,  13, '2026-04-02 11:00:00', 'completed'),
(8,  15, '2026-04-06 10:30:00', 'confirmed'),
(9,  17, '2026-03-21 15:00:00', 'completed'),
(10, 19, '2026-04-16 10:00:00', 'confirmed'),
(11, 22, '2026-05-11 12:00:00', 'confirmed'),
(12, 25, '2026-05-14 09:00:00', 'confirmed'),
(13, 28, '2026-05-16 07:00:00', 'confirmed'),
(14, 31, '2026-04-21 09:30:00', 'confirmed'),
(15, 33, '2026-04-11 08:00:00', 'confirmed'),
(16, 35, '2026-05-15 09:00:00', 'confirmed'),
(17, 37, '2026-05-15 12:30:00', 'confirmed'),
(18, 40, '2026-05-04 11:00:00', 'confirmed'),
(19, 42, '2026-04-29 13:00:00', 'confirmed'),
(20, 44, '2026-04-13 12:00:00', 'confirmed'),
(21, 46, '2026-05-15 08:00:00', 'confirmed'),
(22, 48, '2026-05-08 10:00:00', 'confirmed'),
(23, 50, '2026-05-16 13:00:00', 'confirmed'),
(24, 52, '2026-05-15 11:00:00', 'confirmed'),
(25, 54, '2026-05-02 12:30:00', 'confirmed'),
(26, 56, '2026-04-06 08:00:00', 'confirmed'),
(27, 58, '2026-05-03 09:30:00', 'confirmed'),
(28, 60, '2026-05-16 11:00:00', 'confirmed'),
(29, 62, '2026-05-14 07:00:00', 'confirmed'),
(30, 64, '2026-05-06 15:00:00', 'confirmed'),
(31, 6,  '2026-02-06 12:00:00', 'pending'),
(32, 8,  '2026-05-11 09:00:00', 'pending'),
(33, 10, '2026-04-21 12:00:00', 'pending'),
(34, 12, '2026-05-02 14:00:00', 'pending'),
(35, 16, '2026-05-03 10:00:00', 'pending'),
(36, 18, '2026-05-09 12:00:00', 'pending'),
(37, 20, '2026-05-15 09:00:00', 'pending'),
(38, 21, '2026-05-08 08:00:00', 'pending'),
(39, 23, '2026-05-16 14:30:00', 'pending'),
(40, 24, '2026-05-15 11:00:00', 'pending'),
(41, 26, '2026-05-13 09:00:00', 'pending'),
(42, 27, '2026-05-15 12:00:00', 'pending'),
(43, 29, '2026-05-11 10:30:00', 'pending'),
(44, 30, '2026-05-02 13:00:00', 'pending');

-- --------------------------------------------------------
-- TABLE 6: feedback
-- --------------------------------------------------------
INSERT INTO feedback (feedback_id, claim_id, rating, comment, submitted_at) VALUES
(1,  1,  5, 'Slightly late but food was good.',          '2025-11-12 07:38:13'),
(2,  3,  5, 'Excellent quality, very fresh!',            '2026-03-29 09:16:33'),
(3,  7,  4, 'Good coordination from the restaurant.',    '2026-04-12 10:00:00'),
(4,  13, 5, 'Frozen goods were perfectly packed.',       '2026-04-03 12:00:00'),
(5,  17, 3, 'Delivery was slightly delayed.',            '2026-03-22 16:00:00'),
(6,  9,  4, 'Nice experience overall.',                  '2026-05-14 11:00:00'),
(7,  11, 5, 'Yogurt was fresh and plentiful.',           '2026-05-16 10:00:00'),
(8,  15, 4, 'Canned goods in good condition.',           '2026-04-07 11:00:00'),
(9,  19, 5, 'Frozen chicken was excellent quality.',     '2026-04-17 11:00:00'),
(10, 22, 3, 'Cheese slices had short shelf life.',       '2026-05-12 13:00:00'),
(11, 25, 4, 'Cooked lentils were warm and packed well.', '2026-05-15 10:00:00'),
(12, 28, 5, 'Croissants freshly baked, great!',          '2026-05-17 08:00:00'),
(13, 31, 4, 'Frozen veggies were well sealed.',          '2026-04-22 10:00:00'),
(14, 33, 5, 'Wheat flour in perfect condition.',         '2026-04-12 09:00:00'),
(15, 35, 4, 'Lassi containers were properly sealed.',    '2026-05-15 10:00:00'),
(16, 37, 5, 'Seekh kabab freshly prepared.',             '2026-05-15 13:30:00'),
(17, 40, 4, 'Canned beans in great condition.',          '2026-05-05 12:00:00'),
(18, 42, 5, 'Chips well packaged and not crushed.',      '2026-04-30 14:00:00'),
(19, 44, 3, 'Mint chutney jars were a bit sticky.',      '2026-04-14 13:00:00'),
(20, 46, 5, 'Spinach was fresh and clean.',              '2026-05-15 09:30:00'),
(21, 48, 4, 'Butter delivery was quick.',                '2026-05-08 11:00:00'),
(22, 50, 5, 'Pulao was hot and delicious.',              '2026-05-16 14:00:00'),
(23, 52, 4, 'Cake slices well wrapped.',                 '2026-05-15 12:00:00'),
(24, 54, 5, 'Rooh Afza bottles were sealed properly.',   '2026-05-02 13:30:00'),
(25, 56, 4, 'Frozen paratha in good condition.',         '2026-04-07 09:00:00'),
(26, 58, 5, 'Corn bags were neatly packed.',             '2026-05-03 10:30:00'),
(27, 60, 5, 'Chicken tikka was flavourful.',             '2026-05-16 12:00:00'),
(28, 62, 4, 'Bun packs were fresh.',                     '2026-05-14 08:00:00'),
(29, 64, 5, 'Pepsi cans were all intact.',               '2026-05-06 16:00:00'),
(30, 5,  4, 'Dal chawal was warm on arrival.',           '2026-01-16 11:00:00'),
(31, 2,  2, 'Food was cold and poorly packed.',          '2025-10-25 10:00:00'),
(32, 4,  1, 'Wrong items received.',                     '2026-03-25 08:00:00'),
(33, 14, 2, 'Quantity was less than expected.',          '2026-03-17 09:00:00'),
(34, 29, 4, 'Juice was fresh and well chilled.',         '2026-05-11 11:00:00'),
(35, 43, 3, 'Semolina bags had small tears.',            '2026-05-06 10:00:00');

-- --------------------------------------------------------
-- TABLE 7: claim_logs
-- --------------------------------------------------------
INSERT INTO claim_logs (log_id, claim_id, changed_by, old_status, new_status, changed_at) VALUES
(1,  1,  1, 'pending',   'confirmed',  '2025-11-11 03:14:13'),
(2,  1,  1, 'confirmed', 'completed',  '2025-11-11 04:24:13'),
(3,  2,  1, 'pending',   'confirmed',  '2025-10-23 20:18:07'),
(4,  2,  2, 'confirmed', 'cancelled',  '2025-10-23 21:50:07'),
(5,  3,  1, 'pending',   'confirmed',  '2026-03-27 10:16:33'),
(6,  3,  2, 'confirmed', 'completed',  '2026-03-27 20:16:33'),
(7,  4,  1, 'pending',   'confirmed',  '2026-03-23 10:28:54'),
(8,  4,  2, 'confirmed', 'cancelled',  '2026-03-23 11:28:54'),
(9,  5,  1, 'pending',   'confirmed',  '2026-01-14 11:40:22'),
(10, 6,  1, 'pending',   'confirmed',  '2026-02-05 13:20:00'),
(11, 7,  1, 'pending',   'confirmed',  '2026-04-10 10:00:00'),
(12, 7,  2, 'confirmed', 'completed',  '2026-04-11 09:30:00'),
(13, 8,  1, 'pending',   'confirmed',  '2026-05-10 09:00:00'),
(14, 9,  1, 'pending',   'confirmed',  '2026-05-12 11:00:00'),
(15, 10, 1, 'pending',   'confirmed',  '2026-04-20 12:30:00'),
(16, 11, 1, 'pending',   'confirmed',  '2026-05-15 10:15:00'),
(17, 12, 1, 'pending',   'confirmed',  '2026-05-01 14:00:00'),
(18, 13, 1, 'pending',   'confirmed',  '2026-04-01 12:00:00'),
(19, 13, 2, 'confirmed', 'completed',  '2026-04-02 11:30:00'),
(20, 14, 1, 'pending',   'confirmed',  '2026-03-15 13:00:00'),
(21, 14, 2, 'confirmed', 'cancelled',  '2026-03-15 14:00:00'),
(22, 15, 1, 'pending',   'confirmed',  '2026-04-05 11:30:00'),
(23, 16, 1, 'pending',   'confirmed',  '2026-05-02 10:00:00'),
(24, 17, 1, 'pending',   'confirmed',  '2026-03-20 16:00:00'),
(25, 17, 2, 'confirmed', 'completed',  '2026-03-21 15:30:00'),
(26, 18, 1, 'pending',   'confirmed',  '2026-05-08 12:15:00'),
(27, 19, 1, 'pending',   'confirmed',  '2026-04-15 11:00:00'),
(28, 20, 1, 'pending',   'confirmed',  '2026-05-14 09:30:00'),
(29, 21, 1, 'pending',   'confirmed',  '2026-05-07 08:00:00'),
(30, 22, 1, 'pending',   'confirmed',  '2026-05-10 13:00:00'),
(31, 23, 1, 'pending',   'confirmed',  '2026-05-15 15:00:00'),
(32, 24, 1, 'pending',   'confirmed',  '2026-05-14 11:45:00'),
(33, 25, 1, 'pending',   'confirmed',  '2026-05-13 10:00:00'),
(34, 26, 1, 'pending',   'confirmed',  '2026-05-12 09:30:00'),
(35, 27, 1, 'pending',   'confirmed',  '2026-05-14 12:30:00'),
(36, 28, 1, 'pending',   'confirmed',  '2026-05-15 08:00:00'),
(37, 29, 1, 'pending',   'confirmed',  '2026-05-10 11:00:00'),
(38, 30, 1, 'pending',   'confirmed',  '2026-05-01 13:00:00'),
(39, 31, 1, 'pending',   'confirmed',  '2026-04-20 10:30:00'),
(40, 32, 1, 'pending',   'confirmed',  '2026-04-25 16:00:00'),
(41, 33, 1, 'pending',   'confirmed',  '2026-04-10 09:00:00'),
(42, 34, 1, 'pending',   'confirmed',  '2026-03-28 14:00:00'),
(43, 35, 1, 'pending',   'confirmed',  '2026-05-14 10:00:00'),
(44, 36, 1, 'pending',   'confirmed',  '2026-05-13 09:00:00'),
(45, 37, 1, 'pending',   'confirmed',  '2026-05-14 13:30:00'),
(46, 38, 1, 'pending',   'confirmed',  '2026-04-30 11:30:00'),
(47, 39, 1, 'pending',   'confirmed',  '2026-04-22 15:00:00'),
(48, 40, 1, 'pending',   'confirmed',  '2026-05-03 12:00:00'),
(49, 41, 1, 'pending',   'confirmed',  '2026-04-18 16:30:00'),
(50, 42, 1, 'pending',   'confirmed',  '2026-04-28 14:00:00'),
(51, 43, 1, 'pending',   'confirmed',  '2026-05-05 10:00:00'),
(52, 44, 1, 'pending',   'confirmed',  '2026-04-12 13:00:00'),
(53, 45, 1, 'pending',   'confirmed',  '2026-05-15 11:30:00'),
(54, 46, 1, 'pending',   'confirmed',  '2026-05-14 09:00:00'),
(55, 47, 1, 'pending',   'confirmed',  '2026-05-13 08:30:00'),
(56, 48, 1, 'pending',   'confirmed',  '2026-05-07 11:00:00'),
(57, 49, 1, 'pending',   'confirmed',  '2026-05-10 12:30:00'),
(58, 50, 1, 'pending',   'confirmed',  '2026-05-15 14:00:00'),
(59, 51, 1, 'pending',   'confirmed',  '2026-05-08 10:00:00'),
(60, 52, 1, 'pending',   'confirmed',  '2026-05-14 12:00:00'),
(61, 53, 1, 'pending',   'confirmed',  '2026-05-15 09:30:00'),
(62, 54, 1, 'pending',   'confirmed',  '2026-05-01 13:30:00'),
(63, 55, 1, 'pending',   'confirmed',  '2026-04-20 11:00:00'),
(64, 56, 1, 'pending',   'confirmed',  '2026-04-05 09:00:00'),
(65, 57, 1, 'pending',   'confirmed',  '2026-04-28 15:00:00'),
(66, 58, 1, 'pending',   'confirmed',  '2026-05-02 10:30:00'),
(67, 59, 1, 'pending',   'confirmed',  '2026-04-15 14:00:00'),
(68, 60, 1, 'pending',   'confirmed',  '2026-05-15 12:00:00'),
(69, 61, 1, 'pending',   'confirmed',  '2026-05-10 10:00:00'),
(70, 62, 1, 'pending',   'confirmed',  '2026-05-13 08:00:00'),
(71, 63, 1, 'pending',   'confirmed',  '2026-05-08 11:30:00'),
(72, 64, 1, 'pending',   'confirmed',  '2026-05-05 16:00:00'),
(73, 65, 1, 'pending',   'confirmed',  '2026-05-14 09:30:00'),
(74, 5,  2, 'confirmed', 'completed',  '2026-01-15 11:00:00'),
(75, 9,  2, 'confirmed', 'completed',  '2026-05-13 11:00:00'),
(76, 11, 2, 'confirmed', 'completed',  '2026-05-16 10:30:00'),
(77, 15, 2, 'confirmed', 'completed',  '2026-04-06 11:30:00'),
(78, 19, 2, 'confirmed', 'completed',  '2026-04-16 11:00:00'),
(79, 22, 2, 'confirmed', 'completed',  '2026-05-11 14:00:00'),
(80, 25, 2, 'confirmed', 'completed',  '2026-05-14 10:30:00'),
(81, 28, 2, 'confirmed', 'completed',  '2026-05-16 09:00:00'),
(82, 31, 2, 'confirmed', 'completed',  '2026-04-21 11:00:00'),
(83, 33, 2, 'confirmed', 'completed',  '2026-04-11 10:00:00'),
(84, 35, 2, 'confirmed', 'completed',  '2026-05-15 11:00:00'),
(85, 37, 2, 'confirmed', 'completed',  '2026-05-15 14:00:00'),
(86, 40, 2, 'confirmed', 'completed',  '2026-05-04 13:00:00'),
(87, 42, 2, 'confirmed', 'completed',  '2026-04-29 15:00:00'),
(88, 44, 2, 'confirmed', 'completed',  '2026-04-13 14:00:00'),
(89, 46, 2, 'confirmed', 'completed',  '2026-05-15 10:00:00'),
(90, 48, 2, 'confirmed', 'completed',  '2026-05-08 12:00:00'),
(91, 50, 2, 'confirmed', 'completed',  '2026-05-16 15:00:00'),
(92, 52, 2, 'confirmed', 'completed',  '2026-05-15 13:00:00'),
(93, 54, 2, 'confirmed', 'completed',  '2026-05-02 14:30:00'),
(94, 56, 2, 'confirmed', 'completed',  '2026-04-06 10:00:00'),
(95, 58, 2, 'confirmed', 'completed',  '2026-05-03 11:30:00'),
(96, 60, 2, 'confirmed', 'completed',  '2026-05-16 13:00:00'),
(97, 62, 2, 'confirmed', 'completed',  '2026-05-14 09:00:00'),
(98, 64, 2, 'confirmed', 'completed',  '2026-05-06 17:00:00'),
(99, 6,  2, 'confirmed', 'cancelled',  '2026-02-07 09:00:00'),
(100,10, 2, 'confirmed', 'cancelled',  '2026-04-22 09:00:00'),
(101,12, 2, 'confirmed', 'cancelled',  '2026-05-03 10:00:00');


-- ============================================================
-- SECTION 2: UPDATE
-- ============================================================

-- Update 1: Mark a pickup schedule as completed
UPDATE pickup_schedules
SET status = 'completed'
WHERE claim_id = 9;




-- ============================================================
-- SECTION 3: DELETE
-- ============================================================

-- Delete 1: Remove a bad rating feedback entry
DELETE FROM feedback
WHERE rating = 1
AND claim_id = 4;



-- ============================================================
-- SECTION 4: VALIDATION QUERIES
-- ============================================================

-- ── Step 1: Count rows in each table ──

SELECT COUNT(*) AS total_food_categories  FROM food_categories;
SELECT COUNT(*) AS total_users            FROM users;
SELECT COUNT(*) AS total_food_listings    FROM food_listings;
SELECT COUNT(*) AS total_claims           FROM claims;
SELECT COUNT(*) AS total_pickup_schedules FROM pickup_schedules;
SELECT COUNT(*) AS total_feedback         FROM feedback;
SELECT COUNT(*) AS total_claim_logs       FROM claim_logs;

-- ── Step 2: NULL checks on important columns ──

-- Check users table
SELECT * FROM users
WHERE name IS NULL OR email IS NULL OR role IS NULL;

-- Check food_listings table
SELECT * FROM food_listings
WHERE food_name IS NULL OR quantity IS NULL OR user_id IS NULL;

-- Check claims table
SELECT * FROM claims
WHERE food_id IS NULL OR ngo_id IS NULL;

-- Check feedback table
SELECT * FROM feedback
WHERE rating IS NULL;

-- Check claim_logs table
SELECT * FROM claim_logs
WHERE new_status IS NULL OR changed_by IS NULL;

-- ── Step 3: FK integrity checks ──

-- Are all food_listing user_ids valid?
SELECT * FROM food_listings
WHERE user_id NOT IN (SELECT user_id FROM users);

-- Are all food_listing category_ids valid?
SELECT * FROM food_listings
WHERE category_id NOT IN (SELECT category_id FROM food_categories);

-- Are all claim food_ids valid?
SELECT * FROM claims
WHERE food_id NOT IN (SELECT food_id FROM food_listings);

-- Are all claim ngo_ids valid users?
SELECT * FROM claims
WHERE ngo_id NOT IN (SELECT user_id FROM users);

-- Are all pickup schedule claim_ids valid?
SELECT * FROM pickup_schedules
WHERE claim_id NOT IN (SELECT claim_id FROM claims);

-- Are all feedback claim_ids valid?
SELECT * FROM feedback
WHERE claim_id NOT IN (SELECT claim_id FROM claims);

-- Are all claim_log claim_ids valid?
SELECT * FROM claim_logs
WHERE claim_id NOT IN (SELECT claim_id FROM claims);

-- ── Step 4: JOIN check to confirm data is linked correctly ──

-- Show food name, NGO name, claim status, and rating together
SELECT
    c.claim_id,
    fl.food_name,
    u.name        AS ngo_name,
    c.claim_status,
    f.rating,
    f.comment
FROM claims c
JOIN food_listings fl ON c.food_id  = fl.food_id
JOIN users         u  ON c.ngo_id   = u.user_id
LEFT JOIN feedback f  ON f.claim_id = c.claim_id
WHERE c.claim_status = 'completed'
ORDER BY c.claim_id;

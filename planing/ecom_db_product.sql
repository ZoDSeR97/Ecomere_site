-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ecom_db
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `category` varchar(45) NOT NULL,
  `img` text NOT NULL,
  `price` double NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'WD 2TB Elements Portable External Hard Drive - USB 3.0 ','USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system','electronics','https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg',64,'2023-03-30 22:11:39','2023-03-30 22:11:39'),(2,'SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s','Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, making it ideal for typical PC workloads The perfect balance of performance and reliability Read/write speeds of up to 535MB/s/450MB/s (Based on internal testing; Performance may vary depending upon drive capacity, host device, OS and application.)','electronics','https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg',109,'2023-03-30 22:11:39','2023-03-30 22:11:39'),(3,'Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5','3D NAND flash are applied to deliver high transfer speeds Remarkable transfer speeds that enable faster bootup and improved overall system performance. The advanced SLC Cache Technology allows performance boost and longer lifespan 7mm slim design suitable for Ultrabooks and Ultra-slim notebooks. Supports TRIM command, Garbage Collection technology, RAID, and ECC (Error Checking & Correction) to provide the optimized performance and enhanced reliability.','electronics','https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg',109,'2023-03-30 22:11:39','2023-03-30 22:11:39'),(4,'WD 4TB Gaming Drive Works with Playstation 4 Portable External Hard Drive','Expand your PS4 gaming experience, Play anywhere Fast and easy, setup Sleek design with high capacity, 3-year manufacturer\'s limited warranty','electronics','https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg',114,'2023-03-30 22:11:39','2023-03-30 22:11:39'),(5,'Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin','21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz','electronics','https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg',599,'2023-03-30 22:11:39','2023-03-30 22:11:39'),(6,'Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor (LC49HG90DMNXZA) – Super Ultrawide Screen QLED ','49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR with dual 27 inch screen side by side QUANTUM DOT (QLED) TECHNOLOGY, HDR support and factory calibration provides stunningly realistic and accurate color and contrast 144HZ HIGH REFRESH RATE and 1ms ultra fast response time work to eliminate motion blur, ghosting, and reduce input lag','electronics','https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg',999.99,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(7,'John Hardy Women\'s Legends Naga Gold & Silver Dragon Station Chain Bracelet','From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean\'s pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.','jewelery','https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg',695,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(8,'Solid Gold Petite Micropave ','Satisfaction Guaranteed. Return or exchange any order within 30 days.Designed and sold by Hafeez Center in the United States. Satisfaction Guaranteed. Return or exchange any order within 30 days.','jewelery','https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg',168,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(9,'White Gold Plated Princess','Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to spoil your love more for Engagement, Wedding, Anniversary, Valentine\'s Day...','jewelery','https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg',9.99,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(10,'Pierced Owl Rose Gold Plated Stainless Steel Double','Rose Gold Plated Double Flared Tunnel Plug Earrings. Made of 316L Stainless Steel','jewelery','https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg',10.99,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(11,'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops','Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday','men\'s clothing','https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',109.95,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(12,'Mens Casual Premium Slim Fit T-Shirts ','Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.','men\'s clothing','https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',22.3,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(13,'Mens Cotton Jacket','great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.','men\'s clothing','https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg',55.99,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(14,'Mens Casual Slim Fit','The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.','men\'s clothing','https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg',15.99,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(15,'BIYLACLESEN Women\'s 3-in-1 Snowboard Jacket Winter Coats','Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in cold weather. Zippered Pockets: 2 Zippered Hand Pockets, 2 Zippered Pockets on Chest (enough to keep cards or keys)and 1 Hidden Pocket Inside.Zippered Hand Pockets and Hidden Pocket keep your things secure. Humanized Design: Adjustable and Detachable Hood and Adjustable cuff to prevent the wind and water,for a comfortable fit. 3 in 1 Detachable Design provide more convenience, you can separate the coat and inner as needed, or wear it together. It is suitable for different season and help you adapt to different climates','women\'s clothing','https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg',56.99,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(16,'Lock and Love Women\'s Removable Hooded Faux Leather Moto Biker Jacket','100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides, HAND WASH ONLY / DO NOT BLEACH / LINE DRY / DO NOT IRON','women\'s clothing','https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg',29.95,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(17,'Rain Jacket Women Windbreaker Striped Climbing Raincoats','Lightweight perfet for trip or casual wear---Long sleeve with hooded, adjustable drawstring waist design. Button and zipper front closure raincoat, fully stripes Lined and The Raincoat has 2 side pockets are a good size to hold all kinds of things, it covers the hips, and the hood is generous but doesn\'t overdo it.Attached Cotton Lined Hood with Adjustable Drawstrings give it a real styled look.','women\'s clothing','https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg',39.99,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(18,'MBJ Women\'s Solid Short Sleeve Boat Neck V ','95% RAYON 5% SPANDEX, Made in USA or Imported, Do Not Bleach, Lightweight fabric with great stretch for comfort, Ribbed on sleeves and neckline / Double stitching on bottom hem','women\'s clothing','https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg',9.85,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(19,'Opna Women\'s Short Sleeve Moisture','100% Polyester, Machine wash, 100% cationic polyester interlock, Machine Wash & Pre Shrunk for a Great Fit, Lightweight, roomy and highly breathable with moisture wicking fabric which helps to keep moisture away, Soft Lightweight Fabric with comfortable V-neck collar and a slimmer fit, delivers a sleek, more feminine silhouette and Added Comfort','women\'s clothing','https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg',7.95,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(20,'DANVOUY Womens T Shirt Casual Cotton Short','95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print,V-Neck,Fashion Tees, The fabric is soft and has some stretch., Occasion: Casual/Office/Beach/School/Home/Street. Season: Spring,Summer,Autumn,Winter.','women\'s clothing','https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg',12.99,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(21,'iPhone 9','An apple mobile which is nothing like apple','smartphones','https://i.dummyjson.com/data/products/1/thumbnail.jpg',549,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(22,'iPhone X','SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...','smartphones','https://i.dummyjson.com/data/products/2/thumbnail.jpg',899,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(23,'Samsung Universe 9','Samsung\'s new variant which goes beyond Galaxy to the Universe','smartphones','https://i.dummyjson.com/data/products/3/thumbnail.jpg',1249,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(24,'OPPOF19','OPPO F19 is officially announced on April 2021.','smartphones','https://i.dummyjson.com/data/products/4/thumbnail.jpg',280,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(25,'Huawei P30','Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.','smartphones','https://i.dummyjson.com/data/products/5/thumbnail.jpg',499,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(26,'MacBook Pro','MacBook Pro 2021 with mini-LED display may launch between September, November','laptops','https://i.dummyjson.com/data/products/6/thumbnail.png',1749,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(27,'Samsung Galaxy Book','Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched','laptops','https://i.dummyjson.com/data/products/7/thumbnail.jpg',1499,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(28,'Microsoft Surface Laptop 4','Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.','laptops','https://i.dummyjson.com/data/products/8/thumbnail.jpg',1499,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(29,'Infinix INBOOK','Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty','laptops','https://i.dummyjson.com/data/products/9/thumbnail.jpg',1099,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(30,'HP Pavilion 15-DK1056WM','HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10','laptops','https://i.dummyjson.com/data/products/10/thumbnail.jpeg',1099,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(31,'perfume Oil','Mega Discount, Impression of Acqua Di Gio by GiorgioArmani concentrated attar perfume Oil','fragrances','https://i.dummyjson.com/data/products/11/thumbnail.jpg',13,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(32,'Brown Perfume','Royal_Mirage Sport Brown Perfume for Men & Women - 120ml','fragrances','https://i.dummyjson.com/data/products/12/thumbnail.jpg',40,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(33,'Fog Scent Xpressio Perfume','Product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men','fragrances','https://i.dummyjson.com/data/products/13/thumbnail.webp',13,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(34,'Non-Alcoholic Concentrated Perfume Oil','Original Al Munakh® by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil','fragrances','https://i.dummyjson.com/data/products/14/thumbnail.jpg',120,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(35,'Eau De Perfume Spray','Genuine  Al-Rehab spray perfume from UAE/Saudi Arabia/Yemen High Quality','fragrances','https://i.dummyjson.com/data/products/15/thumbnail.jpg',30,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(36,'Hyaluronic Acid Serum','L\'OrÃ©al Paris introduces Hyaluron Expert Replumping Serum formulated with 1.5% Hyaluronic Acid','skincare','https://i.dummyjson.com/data/products/16/thumbnail.jpg',19,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(37,'Tree Oil 30ml','Tea tree oil contains a number of compounds, including terpinen-4-ol, that have been shown to kill certain bacteria,','skincare','https://i.dummyjson.com/data/products/17/thumbnail.jpg',12,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(38,'Oil Free Moisturizer 100ml','Dermive Oil Free Moisturizer with SPF 20 is specifically formulated with ceramides, hyaluronic acid & sunscreen.','skincare','https://i.dummyjson.com/data/products/18/thumbnail.jpg',40,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(39,'Skin Beauty Serum.','Product name: rorec collagen hyaluronic acid white face serum riceNet weight: 15 m','skincare','https://i.dummyjson.com/data/products/19/thumbnail.jpg',46,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(40,'Freckle Treatment Cream- 15gm','Fair & Clear is Pakistan\'s only pure Freckle cream which helpsfade Freckles, Darkspots and pigments. Mercury level is 0%, so there are no side effects.','skincare','https://i.dummyjson.com/data/products/20/thumbnail.jpg',70,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(41,'- Daal Masoor 500 grams','Fine quality Branded Product Keep in a cool and dry place','groceries','https://i.dummyjson.com/data/products/21/thumbnail.png',20,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(42,'Elbow Macaroni - 400 gm','Product details of Bake Parlor Big Elbow Macaroni - 400 gm','groceries','https://i.dummyjson.com/data/products/22/thumbnail.jpg',14,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(43,'Orange Essence Food Flavou','Specifications of Orange Essence Food Flavour For Cakes and Baking Food Item','groceries','https://i.dummyjson.com/data/products/23/thumbnail.jpg',14,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(44,'cereals muesli fruit nuts','original fauji cereal muesli 250gm box pack original fauji cereals muesli fruit nuts flakes breakfast cereal break fast faujicereals cerels cerel foji fouji','groceries','https://i.dummyjson.com/data/products/24/thumbnail.jpg',46,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(45,'Gulab Powder 50 Gram','Dry Rose Flower Powder Gulab Powder 50 Gram • Treats Wounds','groceries','https://i.dummyjson.com/data/products/25/thumbnail.jpg',70,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(46,'Plant Hanger For Home','Boho Decor Plant Hanger For Home Wall Decoration Macrame Wall Hanging Shelf','home-decoration','https://i.dummyjson.com/data/products/26/thumbnail.jpg',41,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(47,'Flying Wooden Bird','Package Include 6 Birds with Adhesive Tape Shape: 3D Shaped Wooden Birds Material: Wooden MDF, Laminated 3.5mm','home-decoration','https://i.dummyjson.com/data/products/27/thumbnail.webp',51,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(48,'3D Embellishment Art Lamp','3D led lamp sticker Wall sticker 3d wall art light on/off button  cell operated (included)','home-decoration','https://i.dummyjson.com/data/products/28/thumbnail.jpg',20,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(49,'Handcraft Chinese style','Handcraft Chinese style art luxury palace hotel villa mansion home decor ceramic vase with brass fruit plate','home-decoration','https://i.dummyjson.com/data/products/29/thumbnail.webp',60,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(50,'Key Holder','Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality','home-decoration','https://i.dummyjson.com/data/products/30/thumbnail.jpg',30,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(51,'Mornadi Velvet Bed','Mornadi Velvet Bed Base with Headboard Slats Support Classic Style Bedroom Furniture Bed Set','furniture','https://i.dummyjson.com/data/products/31/thumbnail.jpg',40,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(52,'Sofa for Coffe Cafe','Ratttan Outdoor furniture Set Waterproof  Rattan Sofa for Coffe Cafe','furniture','https://i.dummyjson.com/data/products/32/thumbnail.jpg',50,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(53,'3 Tier Corner Shelves','3 Tier Corner Shelves | 3 PCs Wall Mount Kitchen Shelf | Floating Bedroom Shelf','furniture','https://i.dummyjson.com/data/products/33/thumbnail.jpg',700,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(54,'3 DOOR PORTABLE','Material: Stainless Steel and Fabric  Item Size: 110 cm x 45 cm x 175 cm Package Contents: 1 Storage Wardrobe','furniture','https://i.dummyjson.com/data/products/35/thumbnail.jpg',41,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(55,'Sleeve Shirt Womens','Cotton Solid Color Professional Wear Sleeve Shirt Womens Work Blouses Wholesale Clothing Casual Plain Custom Top OEM Customized','tops','https://i.dummyjson.com/data/products/36/thumbnail.jpg',90,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(56,'ank Tops for Womens/Girls','PACK OF 3 CAMISOLES ,VERY COMFORTABLE SOFT COTTON STUFF, COMFORTABLE IN ALL FOUR SEASONS','tops','https://i.dummyjson.com/data/products/37/thumbnail.jpg',50,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(57,'sublimation plain kids tank','sublimation plain kids tank tops wholesale','tops','https://i.dummyjson.com/data/products/38/thumbnail.jpg',100,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(58,'Women Sweaters Wool','2021 Custom Winter Fall Zebra Knit Crop Top Women Sweaters Wool Mohair Cos Customize Crew Neck Women\' S Crop Top Sweater','tops','https://i.dummyjson.com/data/products/39/thumbnail.jpg',600,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(59,'women winter clothes','women winter clothes thick fleece hoodie top with sweat pantjogger women sweatsuit set joggers pants two piece pants set','tops','https://i.dummyjson.com/data/products/40/thumbnail.jpg',57,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(60,'NIGHT SUIT','NIGHT SUIT RED MICKY MOUSE..  For Girls. Fantastic Suits.','womens-dresses','https://i.dummyjson.com/data/products/41/thumbnail.webp',55,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(61,'Stiched Kurta plus trouser','FABRIC: LILEIN CHEST: 21 LENGHT: 37 TROUSER: (38) :ARABIC LILEIN','womens-dresses','https://i.dummyjson.com/data/products/42/thumbnail.jpg',80,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(62,'frock gold printed','Ghazi fabric long frock gold printed ready to wear stitched collection (G992)','womens-dresses','https://i.dummyjson.com/data/products/43/thumbnail.jpg',600,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(63,'Ladies Multicolored Dress','This classy shirt for women gives you a gorgeous look on everyday wear and specially for semi-casual wears.','womens-dresses','https://i.dummyjson.com/data/products/44/thumbnail.jpg',79,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(64,'Malai Maxi Dress','Ready to wear, Unique design according to modern standard fashion, Best fitting ,Imported stuff','womens-dresses','https://i.dummyjson.com/data/products/45/thumbnail.jpg',50,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(65,'women\'s shoes','Close: Lace, Style with bottom: Increased inside, Sole Material: Rubber','womens-shoes','https://i.dummyjson.com/data/products/46/thumbnail.jpg',40,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(66,'Sneaker shoes','Synthetic Leather Casual Sneaker shoes for Women/girls Sneakers For Women','womens-shoes','https://i.dummyjson.com/data/products/47/thumbnail.jpeg',120,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(67,'Women Strip Heel','Features: Flip-flops, Mid Heel, Comfortable, Striped Heel, Antiskid, Striped','womens-shoes','https://i.dummyjson.com/data/products/48/thumbnail.jpg',40,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(68,'Chappals & Shoe Ladies Metallic','Womens Chappals & Shoe Ladies Metallic Tong Thong Sandal Flat Summer 2020 Maasai Sandals','womens-shoes','https://i.dummyjson.com/data/products/49/thumbnail.jpg',23,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(69,'Women Shoes','2020 New Arrivals Genuine Leather Fashion Trend Platform Summer Women Shoes','womens-shoes','https://i.dummyjson.com/data/products/50/thumbnail.jpg',36,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(70,'half sleeves T shirts','Many store is creating new designs and trend every month and every year. Daraz.pk have a beautiful range of men fashion brands','mens-shirts','https://i.dummyjson.com/data/products/51/thumbnail.jpg',23,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(71,'FREE FIRE T Shirt','quality and professional print - It doesn\'t just look high quality, it is high quality.','mens-shirts','https://i.dummyjson.com/data/products/52/thumbnail.jpg',10,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(72,'printed high quality T shirts','Brand: vintage Apparel ,Export quality','mens-shirts','https://i.dummyjson.com/data/products/53/thumbnail.jpg',35,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(73,'Pubg Printed Graphic T-Shirt','Product Description Features: 100% Ultra soft Polyester Jersey. Vibrant & colorful printing on front. Feels soft as cotton without ever cracking','mens-shirts','https://i.dummyjson.com/data/products/54/thumbnail.jpg',46,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(74,'Money Heist Printed Summer T Shirts','Fabric Jercy, Size: M & L Wear Stylish Dual Stiched','mens-shirts','https://i.dummyjson.com/data/products/55/thumbnail.jpg',66,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(75,'Sneakers Joggers Shoes','Gender: Men , Colors: Same as DisplayedCondition: 100% Brand New','mens-shoes','https://i.dummyjson.com/data/products/56/thumbnail.jpg',40,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(76,'Loafers for men','Men Shoes - Loafers for men - Rubber Shoes - Nylon Shoes - Shoes for men - Moccassion - Pure Nylon (Rubber) Expot Quality.','mens-shoes','https://i.dummyjson.com/data/products/57/thumbnail.jpg',47,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(77,'formal offices shoes','Pattern Type: Solid, Material: PU, Toe Shape: Pointed Toe ,Outsole Material: Rubber','mens-shoes','https://i.dummyjson.com/data/products/58/thumbnail.jpg',57,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(78,'Spring and summershoes','Comfortable stretch cloth, lightweight body; ,rubber sole, anti-skid wear;','mens-shoes','https://i.dummyjson.com/data/products/59/thumbnail.jpg',20,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(79,'Stylish Casual Jeans Shoes','High Quality ,Stylish design ,Comfortable wear ,FAshion ,Durable','mens-shoes','https://i.dummyjson.com/data/products/60/thumbnail.jpg',58,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(80,'Leather Straps Wristwatch','Style:Sport ,Clasp:Buckles ,Water Resistance Depth:3Bar','mens-watches','https://i.dummyjson.com/data/products/61/thumbnail.jpg',120,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(81,'Waterproof Leather Brand Watch','Watch Crown With Environmental IPS Bronze Electroplating; Display system of 12 hours','mens-watches','https://i.dummyjson.com/data/products/62/thumbnail.jpg',46,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(82,'Royal Blue Premium Watch','Men Silver Chain Royal Blue Premium Watch Latest Analog Watch','mens-watches','https://i.dummyjson.com/data/products/63/thumbnail.webp',50,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(83,'Leather Strap Skeleton Watch','Leather Strap Skeleton Watch for Men - Stylish and Latest Design','mens-watches','https://i.dummyjson.com/data/products/64/thumbnail.jpg',46,'2023-03-30 22:11:40','2023-03-30 22:11:40'),(84,'Stainless Steel Wrist Watch','Stylish Watch For Man (Luxury) Classy Men\'s Stainless Steel Wrist Watch - Box Packed','mens-watches','https://i.dummyjson.com/data/products/65/thumbnail.webp',47,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(85,'Steel Analog Couple Watches','Elegant design, Stylish ,Unique & Trendy,Comfortable wear','womens-watches','https://i.dummyjson.com/data/products/66/thumbnail.jpg',35,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(86,'Fashion Magnetic Wrist Watch','Buy this awesome  The product is originally manufactured by the company and it\'s a top selling product with a very reasonable','womens-watches','https://i.dummyjson.com/data/products/67/thumbnail.jpg',60,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(87,'Stylish Luxury Digital Watch','Stylish Luxury Digital Watch For Girls / Women - Led Smart Ladies Watches For Girls','womens-watches','https://i.dummyjson.com/data/products/68/thumbnail.webp',57,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(88,'Golden Watch Pearls Bracelet Watch','Product details of Golden Watch Pearls Bracelet Watch For Girls - Golden Chain Ladies Bracelate Watch for Women','womens-watches','https://i.dummyjson.com/data/products/69/thumbnail.jpg',47,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(89,'Stainless Steel Women','Fashion Skmei 1830 Shell Dial Stainless Steel Women Wrist Watch Lady Bracelet Watch Quartz Watches Ladies','womens-watches','https://i.dummyjson.com/data/products/70/thumbnail.jpg',35,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(90,'Women Shoulder Bags','LouisWill Women Shoulder Bags Long Clutches Cross Body Bags Phone Bags PU Leather Hand Bags Large Capacity Card Holders Zipper Coin Purses Fashion Crossbody Bags for Girls Ladies','womens-bags','https://i.dummyjson.com/data/products/71/thumbnail.jpg',46,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(91,'Handbag For Girls','This fashion is designed to add a charming effect to your casual outfit. This Bag is made of synthetic leather.','womens-bags','https://i.dummyjson.com/data/products/72/thumbnail.webp',23,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(92,'Fancy hand clutch','This fashion is designed to add a charming effect to your casual outfit. This Bag is made of synthetic leather.','womens-bags','https://i.dummyjson.com/data/products/73/thumbnail.jpg',44,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(93,'Leather Hand Bag','It features an attractive design that makes it a must have accessory in your collection. We sell different kind of bags for boys, kids, women, girls and also for unisex.','womens-bags','https://i.dummyjson.com/data/products/74/thumbnail.jpg',57,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(94,'Seven Pocket Women Bag','Seven Pocket Women Bag Handbags Lady Shoulder Crossbody Bag Female Purse Seven Pocket Bag','womens-bags','https://i.dummyjson.com/data/products/75/thumbnail.jpg',68,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(95,'Silver Ring Set Women','Jewelry Type:RingsCertificate Type:NonePlating:Silver PlatedShapeattern:noneStyle:CLASSICReligious','womens-jewellery','https://i.dummyjson.com/data/products/76/thumbnail.jpg',70,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(96,'Rose Ring','Brand: The Greetings Flower Colour: RedRing Colour: GoldenSize: Adjustable','womens-jewellery','https://i.dummyjson.com/data/products/77/thumbnail.jpg',100,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(97,'Rhinestone Korean Style Open Rings','Fashion Jewellery 3Pcs Adjustable Pearl Rhinestone Korean Style Open Rings For Women','womens-jewellery','https://i.dummyjson.com/data/products/78/thumbnail.jpg',30,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(98,'Elegant Female Pearl Earrings','Elegant Female Pearl Earrings Set Zircon Pearl Earings Women Party Accessories 9 Pairs/Set','womens-jewellery','https://i.dummyjson.com/data/products/79/thumbnail.jpg',30,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(99,'Chain Pin Tassel Earrings','Pair Of Ear Cuff Butterfly Long Chain Pin Tassel Earrings - Silver ( Long Life Quality Product)','womens-jewellery','https://i.dummyjson.com/data/products/80/thumbnail.jpg',45,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(100,'Round Silver Frame Sun Glasses','A pair of sunglasses can protect your eyes from being hurt. For car driving, vacation travel, outdoor activities, social gatherings,','sunglasses','https://i.dummyjson.com/data/products/81/thumbnail.jpg',19,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(101,'Kabir Singh Square Sunglass','Orignal Metal Kabir Singh design 2020 Sunglasses Men Brand Designer Sun Glasses Kabir Singh Square Sunglass','sunglasses','https://i.dummyjson.com/data/products/82/thumbnail.jpg',50,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(102,'Wiley X Night Vision Yellow Glasses','Wiley X Night Vision Yellow Glasses for Riders - Night Vision Anti Fog Driving Glasses - Free Night Glass Cover - Shield Eyes From Dust and Virus- For Night Sport Matches','sunglasses','https://i.dummyjson.com/data/products/83/thumbnail.jpg',30,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(103,'Square Sunglasses','Fashion Oversized Square Sunglasses Retro Gradient Big Frame Sunglasses For Women One Piece Gafas Shade Mirror Clear Lens 17059','sunglasses','https://i.dummyjson.com/data/products/84/thumbnail.jpg',28,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(104,'LouisWill Men Sunglasses','LouisWill Men Sunglasses Polarized Sunglasses UV400 Sunglasses Day Night Dual Use Safety Driving Night Vision Eyewear AL-MG Frame Sun Glasses with Free Box for Drivers','sunglasses','https://i.dummyjson.com/data/products/85/thumbnail.jpg',50,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(105,'Bluetooth Aux','Bluetooth Aux Bluetooth Car Aux Car Bluetooth Transmitter Aux Audio Receiver Handfree Car Bluetooth Music Receiver Universal 3.5mm Streaming A2DP Wireless Auto AUX Audio Adapter With Mic For Phone MP3','automotive','https://i.dummyjson.com/data/products/86/thumbnail.jpg',25,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(106,'t Temperature Controller Incubator Controller','Both Heat and Cool Purpose, Temperature control range; -50 to +110, Temperature measurement accuracy; 0.1, Control accuracy; 0.1','automotive','https://i.dummyjson.com/data/products/87/thumbnail.jpg',40,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(107,'TC Reusable Silicone Magic Washing Gloves','TC Reusable Silicone Magic Washing Gloves with Scrubber, Cleaning Brush Scrubber Gloves Heat Resistant Pair for Cleaning of Kitchen, Dishes, Vegetables and Fruits, Bathroom, Car Wash, Pet Care and Multipurpose','automotive','https://i.dummyjson.com/data/products/88/thumbnail.jpg',29,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(108,'Qualcomm original Car Charger','best Quality CHarger , Highly Recommended to all best Quality CHarger , Highly Recommended to all','automotive','https://i.dummyjson.com/data/products/89/thumbnail.jpg',40,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(109,'Cycle Bike Glow','Universal fitment and easy to install no special wires, can be easily installed and removed. Fits most standard tyre air stem valves of road, mountain bicycles, motocycles and cars.Bright led will turn on w','automotive','https://i.dummyjson.com/data/products/90/thumbnail.jpg',35,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(110,'Black Motorbike','Engine Type:Wet sump, Single Cylinder, Four Stroke, Two Valves, Air Cooled with SOHC (Single Over Head Cam) Chain Drive Bore & Stroke:47.0 x 49.5 MM','motorcycle','https://i.dummyjson.com/data/products/91/thumbnail.jpg',569,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(111,'HOT SALE IN EUROPE electric racing motorcycle','HOT SALE IN EUROPE electric racing motorcycle electric motorcycle for sale adult electric motorcycles','motorcycle','https://i.dummyjson.com/data/products/92/thumbnail.jpg',920,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(112,'Automatic Motor Gas Motorcycles','150cc 4-Stroke Motorcycle Automatic Motor Gas Motorcycles Scooter motorcycles 150cc scooter','motorcycle','https://i.dummyjson.com/data/products/93/thumbnail.jpg',1050,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(113,'new arrivals Fashion motocross goggles','new arrivals Fashion motocross goggles motorcycle motocross racing motorcycle','motorcycle','https://i.dummyjson.com/data/products/94/thumbnail.webp',900,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(114,'Wholesale cargo lashing Belt','Wholesale cargo lashing Belt Tie Down end Ratchet strap customized strap 25mm motorcycle 1500kgs with rubber handle','motorcycle','https://i.dummyjson.com/data/products/95/thumbnail.jpg',930,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(115,'lighting ceiling kitchen','Wholesale slim hanging decorative kid room lighting ceiling kitchen chandeliers pendant light modern','lighting','https://i.dummyjson.com/data/products/96/thumbnail.jpg',30,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(116,'Metal Ceramic Flower','Metal Ceramic Flower Chandelier Home Lighting American Vintage Hanging Lighting Pendant Lamp','lighting','https://i.dummyjson.com/data/products/97/thumbnail.jpg',35,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(117,'3 lights lndenpant kitchen islang','3 lights lndenpant kitchen islang dining room pendant rice paper chandelier contemporary led pendant light modern chandelier','lighting','https://i.dummyjson.com/data/products/98/thumbnail.jpg',34,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(118,'American Vintage Wood Pendant Light','American Vintage Wood Pendant Light Farmhouse Antique Hanging Lamp Lampara Colgante','lighting','https://i.dummyjson.com/data/products/99/thumbnail.jpg',46,'2023-03-30 22:11:41','2023-03-30 22:11:41'),(119,'Crystal chandelier maria theresa for 12 light','Crystal chandelier maria theresa for 12 light','lighting','https://i.dummyjson.com/data/products/100/thumbnail.jpg',47,'2023-03-30 22:11:41','2023-03-30 22:11:41');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-30 22:23:58

-- Database: `stock`

-- Table structure for table `brands`
CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(20) NOT NULL,
  `brand_active` varchar(20) NOT NULL,
  `brand_status` varchar(20) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_active`, `brand_status`) VALUES
(7, 'Sharp LED 62\'', '30', '2'),
(8, 'Sharp LED 32\'', '0', '2'),
(9, 'mimi', '1', '2'),
(10, 'Panasonic', '1', '1'),
(11, 'Aucma ', '1', '1'),
(12, 'Honda', '1', '1'),
(13, 'LG', '1', '1'),
(14, 'Iphone', '1', '1'),
(15, 'Samsung Android', '1', '1'),
(16, 'Huawei Android', '1', '1'),
(17, 'Blackberry ', '2', '1');

-- Table structure for table `categories`
CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_name` varchar(20) NOT NULL,
  `categories_active` varchar(20) NOT NULL,
  `categories_status` int(11) NOT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_active`, `categories_status`) VALUES
(3, 'TV', '1', 1),
(4, 'Smartphones', '1', 1),
(5, 'Refrigerator', '1', 1),
(6, 'Fan', '1', 1),
(7, 'DVD Player', '1', 1);

-- Table structure for table `orders`
CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_contact` varchar(50) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `due` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `orders` (`order_id`, `order_date`, `client_name`, `client_contact`, `sub_total`, `vat`, `total_amount`, `discount`, `grand_total`, `paid`, `due`, `payment_type`, `payment_status`, `order_status`) VALUES
(7, '2020-08-12', 'Davies Kiprono', '0704988935', 24, 3, 27, 0, 27, 24, 3, '1', '1', 1),
(8, '2020-08-05', 'Kiprono Davies', '0704988935', 0, 0, 0, 0, 0, 200, -200, '3', '1', 1);

-- Table structure for table `order_item`
CREATE TABLE `order_item` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `order_item_status` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `order_item` (`order_id`, `product_id`, `quantity`, `rate`, `total`, `order_item_status`) VALUES
(1, '245432ws', 12, 22, 233, 1),
(6, '6', 1, 2, 2, 2),
(7, '7', 2, 12, 24, 1),
(8, '10', 1, 0, 0, 1);

-- Table structure for table `product`
CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(20) NOT NULL,
  `product_image` varchar(50) NOT NULL,
  `brand_id` varchar(50) NOT NULL,
  `categories_id` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `active` varchar(20) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `brand_id`, `categories_id`, `quantity`, `rate`, `active`, `status`) VALUES
(8, 'Samsung Android Phon', '../assests/images/stock/12208836205f44ba4a6de9b.jp', '15', '4', 10, 0, '1', 1),
(9, 'Huawei SmartPhones', '../assests/images/stock/19334479825f44ba682f732.jp', '16', '4', 19, 0, '1', 1),
(10, 'LG Fans', '../assests/images/stock/11973810025f44ba87a7e6c.jp', '13', '6', 6, 0, '1', 1),
(11, 'Refrigerator', '../assests/images/stock/14880013955f44bab20e258.jp', '13', '5', 4, 0, '1', 1),
(12, 'Ultra HD DVD player', '../assests/images/stock/7115619205f44badf13322.jpg', '10', '7', 12, 2, '1', 1);

-- Table structure for table `users`
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(3, 'root', 'root');

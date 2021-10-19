CREATE TABLE `account_list` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `account_type` int NOT NULL,
  `bank` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `account_type_code` varchar(255) NOT NULL,
  `is_default` varchar(255),
  `created_at` datetime
);

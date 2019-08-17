DELETE FROM `oc_attribute`;
INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
	(36, 4, 1),
	(20, 4, 0),
	(22, 4, 0),
	(19, 4, 0),
	(18, 4, 0),
	(17, 4, 0),
	(16, 4, 0),
	(14, 4, 0),
	(13, 4, 0),
	(12, 4, 0),
	(37, 4, 0),
	(34, 4, 3),
	(35, 4, 2),
	(33, 4, 0);

DELETE FROM `oc_attribute_description`;
INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
	(34, 1, 'Цвет'),
	(34, 2, 'Color'),
	(35, 1, 'Сезон'),
	(35, 2, 'Season'),
	(36, 2, 'Gender'),
	(36, 1, 'Пол'),
	(37, 1, 'Размеры'),
	(37, 2, 'Sizes');

DELETE FROM `oc_attribute_group`;
INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
	(4, 1);

DELETE FROM `oc_attribute_group_description`;
INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
	(4, 1, 'Общие');

DELETE FROM `oc_banner_image`;
INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
	(79, 7, 1, 'banner1', '', 'catalog/revolution/demo_tovars/shoes/banner_1.jpg', 0),
	(99, 7, 2, 'banner1', '', 'catalog/revolution/demo_tovars/shoes/banner_1.jpg', 0);

DELETE FROM `oc_category`;
INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `image2`, `category_icontype`, `category_icon`, `category_image`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `noindex`) VALUES
	(11, '', 0, 'catalog/revolution/demo_tovars/shoes/adidas/10/3.jpg', 0, 'fa none', 'catalog/revolution/demo_tovars/shoes/shoes_man.png', 1, 2, 0, 1, '2009-01-03 21:08:57', '2018-11-02 19:48:04', 1),
	(33, '', 0, 'catalog/revolution/demo_tovars/shoes/adidas/11/4.jpg', 0, 'fa none', 'catalog/revolution/demo_tovars/shoes/shoes_wooman.png', 1, 2, 1, 1, '2009-01-05 21:49:15', '2018-11-02 19:52:43', 1),
	(77, '', 0, 'catalog/revolution/demo_tovars/shoes/bags/2.jpg', 0, 'fa none', 'catalog/revolution/demo_tovars/shoes/bag_all.png', 1, 2, 2, 1, '2009-01-05 21:49:43', '2018-11-02 19:52:21', 1),
	(112, 'catalog/revolution/demo_tovars/shoes/logo/adidas.jpg', 11, '', 1, 'fa none', '', 0, 1, 0, 1, '2009-02-03 14:17:34', '2018-10-29 20:31:56', 1),
	(111, 'catalog/revolution/demo_tovars/shoes/logo/asics.jpg', 11, '', 1, 'fa none', '', 0, 1, 1, 1, '2009-02-03 14:17:55', '2018-10-29 20:32:06', 1),
	(116, 'catalog/revolution/demo_tovars/shoes/logo/bslenciaga.jpg', 11, '', 1, 'fa none', '', 0, 1, 2, 1, '2009-02-03 14:18:11', '2018-10-29 20:32:16', 1),
	(114, 'catalog/revolution/demo_tovars/shoes/logo/converse.jpg', 11, '', 1, 'fa none', '', 0, 1, 3, 1, '2010-09-17 10:06:48', '2018-10-29 20:32:26', 1),
	(113, 'catalog/revolution/demo_tovars/shoes/logo/new_balance.jpg', 11, '', 1, 'fa none', '', 0, 1, 4, 1, '2010-09-17 10:07:13', '2018-10-29 20:32:38', 1),
	(128, 'catalog/revolution/demo_tovars/shoes/logo/nike.jpg', 11, '', 1, 'fa none', '', 0, 1, 5, 1, '2010-09-18 14:03:39', '2018-10-29 20:32:48', 1),
	(337, 'catalog/revolution/demo_tovars/shoes/logo/adidas.jpg', 33, '', 1, 'fa none', '', 0, 1, 0, 1, '2010-09-24 18:29:16', '2018-10-29 20:33:56', 1),
	(341, 'catalog/revolution/demo_tovars/shoes/logo/alexander_mcqueen.jpg', 33, '', 1, 'fa none', '', 0, 1, 1, 0, '2010-09-24 18:29:31', '2018-10-29 20:39:03', 1),
	(331, 'catalog/revolution/demo_tovars/shoes/logo/asics.jpg', 33, '', 1, 'fa none', '', 0, 1, 2, 1, '2010-11-07 11:13:16', '2018-10-29 20:34:15', 1),
	(332, 'catalog/revolution/demo_tovars/shoes/logo/bslenciaga.jpg', 33, '', 1, 'fa none', '', 0, 1, 3, 1, '2010-11-07 11:13:33', '2018-10-29 20:34:27', 1),
	(343, 'catalog/revolution/demo_tovars/shoes/logo/converse.jpg', 33, '', 1, 'fa none', '', 0, 1, 4, 1, '2010-11-07 11:14:04', '2018-10-29 20:34:37', 1),
	(3371, 'catalog/revolution/demo_tovars/shoes/logo/nike.jpg', 33, '', 1, 'fa none', '', 0, 1, 7, 1, '2010-11-07 11:14:23', '2018-10-29 20:42:02', 1),
	(338, 'catalog/revolution/demo_tovars/shoes/logo/new_balance.jpg', 33, '', 1, 'fa none', '', 0, 1, 6, 1, '2010-11-07 11:14:38', '2018-10-29 20:41:55', 1),
	(3355, 'catalog/revolution/demo_tovars/shoes/logo/puma.jpg', 33, '', 1, 'fa none', '', 0, 1, 8, 1, '2010-11-07 11:16:09', '2018-10-29 20:42:18', 1),
	(447, 'catalog/revolution/demo_tovars/shoes/bags/xd_design_bobby.jpg', 77, '', 1, 'fa none', '', 0, 1, 0, 1, '2016-05-30 22:41:03', '2018-10-30 00:52:00', 1),
	(441, 'catalog/revolution/demo_tovars/shoes/bags/swiss_gear.jpg', 77, '', 1, 'fa none', '', 0, 1, 1, 1, '2016-05-30 22:41:03', '2018-10-30 00:52:09', 1),
	(11900211, 'catalog/revolution/demo_tovars/shoes/logo/puma.jpg', 11, '', 0, 'fa none', 'no_image.png', 0, 1, 6, 1, '2018-10-24 19:34:32', '2018-10-29 20:32:59', 1),
	(11900212, 'catalog/revolution/demo_tovars/shoes/logo/reebok.jpg', 11, '', 0, 'fa none', 'no_image.png', 0, 1, 7, 1, '2018-10-24 19:35:47', '2018-10-29 20:33:11', 1),
	(11900213, 'catalog/revolution/demo_tovars/shoes/logo/under_armour.jpg', 11, '', 0, 'fa none', 'no_image.png', 0, 1, 8, 1, '2018-10-24 19:36:53', '2018-10-29 20:33:20', 1),
	(11900214, 'catalog/revolution/demo_tovars/shoes/logo/vans.jpg', 11, '', 0, 'fa none', 'no_image.png', 0, 1, 9, 1, '2018-10-24 19:40:57', '2018-10-29 20:33:31', 1),
	(11900215, 'catalog/revolution/demo_tovars/shoes/logo/y3.jpg', 11, '', 0, 'fa none', 'no_image.png', 0, 1, 10, 1, '2018-10-24 19:42:25', '2018-10-29 20:33:43', 1),
	(11900216, 'catalog/revolution/demo_tovars/shoes/logo/reebok.jpg', 33, '', 0, 'fa none', 'no_image.png', 0, 1, 9, 1, '2018-10-24 19:56:38', '2018-10-29 20:42:25', 1),
	(11900217, 'catalog/revolution/demo_tovars/shoes/logo/vans.jpg', 33, '', 0, 'fa none', 'no_image.png', 0, 1, 10, 1, '2018-10-24 19:57:21', '2018-10-29 20:42:39', 1),
	(11900218, 'catalog/revolution/demo_tovars/shoes/logo/y3.jpg', 33, '', 0, 'fa none', 'no_image.png', 0, 1, 11, 1, '2018-10-24 19:58:37', '2018-10-29 20:42:45', 1),
	(11900219, 'catalog/revolution/demo_tovars/shoes/logo/fila.jpg', 33, '', 0, 'fa none', 'no_image.png', 0, 1, 5, 1, '2018-10-24 19:59:23', '2018-10-29 20:41:42', 1);

DELETE FROM `oc_category_description`;
INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `meta_h1`) VALUES
	(11, 2, 'Men\'s shoes', '', '', '', '', ''),
	(11, 1, 'Мужские кроссовки', '', '', '', '', ''),
	(33, 2, 'Woomen\'s shoes', '', '', '', '', ''),
	(33, 1, 'Женские кроссовки', '', '', '', '', ''),
	(116, 1, 'Balenciaga', '', '', '', '', ''),
	(116, 2, 'Balenciaga', '', '', '', '', ''),
	(337, 2, 'Adidas', '', '', '', '', ''),
	(337, 1, 'Adidas', '', '', '', '', ''),
	(331, 2, 'Asics', '', '', '', '', ''),
	(331, 1, 'Asics', '', '', '', '', ''),
	(332, 2, 'Balenciaga', '', '', '', '', ''),
	(343, 2, 'Converse', '', '', '', '', ''),
	(343, 1, 'Converse', '', '', '', '', ''),
	(3371, 2, 'Nike', '', '', '', '', ''),
	(3371, 1, 'Nike', '', '', '', '', ''),
	(338, 2, 'New Balance', '', '', '', '', ''),
	(338, 1, 'New Balance', '', '', '', '', ''),
	(3355, 2, 'Puma', '', '', '', '', ''),
	(3355, 1, 'Puma', '', '', '', '', ''),
	(113, 2, 'New Balance', '', '', '', '', ''),
	(113, 1, 'New Balance', '', '', '', '', ''),
	(447, 2, 'XD Design Bobby', '', '', '', '', ''),
	(441, 2, 'Swiss Gear', '', '', '', '', ''),
	(112, 2, 'Adidas', '', '', '', '', ''),
	(112, 1, 'Adidas', '', '', '', '', ''),
	(111, 2, 'Asics', '', '', '', '', ''),
	(77, 1, 'Рюкзаки', '', '', '', '', ''),
	(111, 1, 'Asics', '', '', '', '', ''),
	(114, 2, 'Converse', '', '', '', '', ''),
	(114, 1, 'Converse', '', '', '', '', ''),
	(77, 2, 'Bags', '', '', '', '', ''),
	(341, 1, 'Alexander McQueen', '', '', '', '', ''),
	(341, 2, 'Alexander McQueen', '', '', '', '', ''),
	(128, 2, 'Nike', '', '', '', '', ''),
	(128, 1, 'Nike', '', '', '', '', ''),
	(11900211, 2, 'Puma', '', '', '', '', ''),
	(11900211, 1, 'Puma', '', '', '', '', ''),
	(11900212, 2, 'Reebok', '', '', '', '', ''),
	(11900212, 1, 'Reebok', '', '', '', '', ''),
	(11900213, 2, 'Under Armor', '', '', '', '', ''),
	(11900213, 1, 'Under Armour', '', '', '', '', ''),
	(11900214, 2, 'VANS', '', '', '', '', ''),
	(11900214, 1, 'VANS', '', '', '', '', ''),
	(11900215, 2, 'Y-3', '', '', '', '', ''),
	(11900215, 1, 'Y-3', '', '', '', '', ''),
	(332, 1, 'Balenciaga', '', '', '', '', ''),
	(11900216, 2, 'Reebok', '', '', '', '', ''),
	(11900216, 1, 'Reebok', '', '', '', '', ''),
	(11900217, 1, 'VANS', '', '', '', '', ''),
	(11900217, 2, 'VANS', '', '', '', '', ''),
	(11900218, 2, 'Y-3', '', '', '', '', ''),
	(11900218, 1, 'Y-3', '', '', '', '', ''),
	(11900219, 1, 'FILA', '', '', '', '', ''),
	(11900219, 2, 'FILA', '', '', '', '', ''),
	(447, 1, 'XD Design Bobby', '', '', '', '', ''),
	(441, 1, 'Swiss Gear', '', '', '', '', '');

DELETE FROM `oc_category_path`;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
	(11, 11, 0),
	(112, 11, 0),
	(112, 112, 1),
	(111, 11, 0),
	(111, 111, 1),
	(116, 11, 0),
	(116, 116, 1),
	(114, 11, 0),
	(114, 114, 1),
	(113, 11, 0),
	(113, 113, 1),
	(128, 11, 0),
	(128, 128, 1),
	(33, 33, 0),
	(337, 33, 0),
	(337, 337, 1),
	(341, 33, 0),
	(341, 341, 1),
	(331, 33, 0),
	(331, 331, 1),
	(332, 33, 0),
	(332, 332, 1),
	(343, 33, 0),
	(343, 343, 1),
	(3371, 33, 0),
	(3371, 3371, 1),
	(338, 33, 0),
	(338, 338, 1),
	(3355, 33, 0),
	(3355, 3355, 1),
	(77, 77, 0),
	(447, 77, 0),
	(447, 447, 1),
	(441, 77, 0),
	(441, 441, 1),
	(11900219, 11900219, 1),
	(11900219, 33, 0),
	(11900218, 11900218, 1),
	(11900218, 33, 0),
	(11900217, 11900217, 1),
	(11900217, 33, 0),
	(11900216, 11900216, 1),
	(11900216, 33, 0),
	(11900215, 11900215, 1),
	(11900215, 11, 0),
	(11900214, 11900214, 1),
	(11900214, 11, 0),
	(11900213, 11900213, 1),
	(11900213, 11, 0),
	(11900212, 11900212, 1),
	(11900212, 11, 0),
	(11900211, 11900211, 1),
	(11900211, 11, 0);

DELETE FROM `oc_category_to_layout`;
INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
	(11, 0, 0),
	(33, 0, 0),
	(77, 0, 0),
	(112, 0, 0),
	(111, 0, 0),
	(116, 0, 0),
	(114, 0, 0),
	(113, 0, 0),
	(128, 0, 0),
	(11900211, 0, 0),
	(11900212, 0, 0),
	(11900213, 0, 0),
	(11900214, 0, 0),
	(11900215, 0, 0),
	(337, 0, 0),
	(341, 0, 0),
	(331, 0, 0),
	(332, 0, 0),
	(343, 0, 0),
	(3371, 0, 0),
	(338, 0, 0),
	(3355, 0, 0),
	(11900216, 0, 0),
	(11900217, 0, 0),
	(11900218, 0, 0),
	(11900219, 0, 0),
	(447, 0, 0),
	(441, 0, 0);

DELETE FROM `oc_category_to_store`;
INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
	(11, 0),
	(33, 0),
	(77, 0),
	(111, 0),
	(112, 0),
	(113, 0),
	(114, 0),
	(116, 0),
	(128, 0),
	(331, 0),
	(332, 0),
	(337, 0),
	(338, 0),
	(341, 0),
	(343, 0),
	(441, 0),
	(447, 0),
	(3355, 0),
	(3371, 0),
	(11900211, 0),
	(11900212, 0),
	(11900213, 0),
	(11900214, 0),
	(11900215, 0),
	(11900216, 0),
	(11900217, 0),
	(11900218, 0),
	(11900219, 0);

DELETE FROM `oc_currency`;
INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
	(1, 'Рубль', 'RUB', '', ' ₽', '0', 1.00000000, 1, '2018-11-01 14:07:02'),
	(2, 'US Dollar', 'USD', ' $', '', '2', 0.01730000, 1, '2017-10-02 09:23:13'),
	(3, 'Euro', 'EUR', '', ' €', '2', 0.01470000, 1, '2017-10-02 09:23:13');

DELETE FROM `oc_extension`;
INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
	(31, 'payment', 'revpay1'),
	(2, 'total', 'shipping'),
	(3, 'total', 'sub_total'),
	(4, 'total', 'tax'),
	(5, 'total', 'total'),
	(6, 'module', 'banner'),
	(7, 'module', 'carousel'),
	(8, 'total', 'credit'),
	(30, 'shipping', 'revship2'),
	(10, 'total', 'handling'),
	(11, 'total', 'low_order_fee'),
	(12, 'total', 'coupon'),
	(13, 'module', 'category'),
	(14, 'module', 'account'),
	(15, 'total', 'reward'),
	(16, 'total', 'voucher'),
	(18, 'module', 'featured'),
	(19, 'module', 'slideshow'),
	(20, 'theme', 'revolution'),
	(21, 'shipping', 'pickup'),
	(32, 'payment', 'revpay2'),
	(33, 'dashboard', 'activity'),
	(34, 'dashboard', 'sale'),
	(35, 'dashboard', 'recent'),
	(36, 'dashboard', 'order'),
	(37, 'dashboard', 'online'),
	(38, 'dashboard', 'map'),
	(39, 'dashboard', 'customer'),
	(40, 'dashboard', 'chart'),
	(41, 'theme', 'theme_default');

DELETE FROM `oc_information`;
INSERT INTO `oc_information` (`information_id`, `bottom`, `top`, `top2`, `sort_order`, `status`, `noindex`) VALUES
	(3, 1, 1, 0, 2, 1, 1),
	(4, 1, 1, 0, 1, 1, 1),
	(5, 1, 1, 0, 3, 1, 1),
	(7, 0, 0, 0, 0, 1, 1);

DELETE FROM `oc_information_description`;
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `meta_h1`) VALUES
	(5, 2, 'Warranty', '&lt;p&gt;Warranty&lt;/p&gt;', '', '', '', ''),
	(7, 1, 'Политика конфиденциальности', '&lt;p&gt;Политика конфиденциальности интернет-магазина...&lt;/p&gt;', '', '', '', ''),
	(4, 1, 'О магазине', '&lt;p&gt;&lt;span style=&quot;font-family:roboto&quot;&gt;Повседневная практика показывает, что консультация с широким активом в значительной степени обуславливает создание существенных финансовых и административных условий. Разнообразный и богатый опыт укрепление и развитие структуры играет важную роль в формировании новых предложений. Равным образом рамки и место обучения кадров влечет за собой процесс внедрения и модернизации систем массового участия.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family:roboto&quot;&gt;Таким образом дальнейшее развитие различных форм деятельности требуют от нас анализа новых предложений. Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности играет важную роль в формировании систем массового участия. Задача организации, в особенности же укрепление и развитие структуры играет важную роль в формировании направлений прогрессивного развития.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family:roboto&quot;&gt;Товарищи! новая модель организационной деятельности влечет за собой процесс внедрения и модернизации новых предложений. Повседневная практика показывает, что начало повседневной работы по формированию позиции способствует подготовки и реализации существенных финансовых и административных условий. Таким образом укрепление и развитие структуры представляет собой интересный эксперимент проверки форм развития. С другой стороны начало повседневной работы по формированию позиции требуют определения и уточнения систем массового участия. Разнообразный и богатый опыт укрепление и развитие структуры требуют от нас анализа системы обучения кадров, соответствует насущным потребностям. Не следует, однако забывать, что консультация с широким активом позволяет выполнять важные задания по разработке позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/p&gt;', '', '', '', ''),
	(4, 2, 'About shop', '&lt;p&gt;About shop&lt;/p&gt;', '', '', '', ''),
	(5, 1, 'Гарантия', '&lt;p&gt;&lt;span style=&quot;font-family:roboto&quot;&gt;Гарантия описание.&lt;/span&gt;&lt;/p&gt;', '', '', '', ''),
	(7, 2, 'Privacy policy', '&lt;p&gt;Privacy policy&lt;/p&gt;', '', '', '', ''),
	(3, 2, 'Shipping and payment', '&lt;p&gt;Shipping and payment&lt;/p&gt;', '', '', '', ''),
	(3, 1, 'Доставка и оплата', '&lt;p&gt;&lt;span style=&quot;color:rgb(51, 51, 51); font-family:roboto; font-size:14px&quot;&gt;Доставка и оплата описание.&lt;/span&gt;&lt;/p&gt;', '', '', '', '');

DELETE FROM `oc_information_to_layout`;
INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
	(7, 0, 0),
	(4, 0, 0),
	(3, 0, 0),
	(5, 0, 0);

DELETE FROM `oc_information_to_store`;
INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
	(3, 0),
	(4, 0),
	(5, 0),
	(7, 0);

DELETE FROM `oc_layout_module`;
INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
	(2, 4, '0', 'content_top', 0),
	(3, 4, '0', 'content_top', 1),
	(20, 5, '0', 'column_left', 2),
	(69, 10, 'affiliate', 'column_right', 1),
	(68, 6, 'account', 'column_right', 1);
	
DELETE FROM `oc_layout_route`;
INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
	(38, 6, 0, 'account/%'),
	(17, 10, 0, 'affiliate/%'),
	(44, 3, 0, 'product/category'),
	(42, 1, 0, 'common/home'),
	(20, 2, 0, 'product/product'),
	(24, 11, 0, 'information/information'),
	(23, 7, 0, 'checkout/%'),
	(31, 8, 0, 'information/contact'),
	(32, 9, 0, 'information/sitemap'),
	(34, 4, 0, ''),
	(45, 5, 0, 'product/manufacturer'),
	(52, 12, 0, 'product/compare'),
	(53, 13, 0, 'product/search'),
	(54, 6, 0, 'revolution/account/%');

DELETE FROM `oc_location`;
INSERT INTO `oc_location` (`location_id`, `name`, `address`, `telephone`, `fax`, `geocode`, `image`, `open`, `comment`) VALUES
	(1, 'Shoes на Никольской', 'ул. Никольская, д. 25', '+7 (965) 22-33-44', '', '', '', 'с 09ºº до 17ºº', 'суббота с 10ºº до 14ºº, воскресенье - выходной'),
	(2, 'Shoes на Кожевнической', 'ул. Кожевническая, 7с1', '+7 (965) 22-22-77', '', '', '', 'с 10ºº до 16ºº', '');

DELETE FROM `oc_manufacturer`;
INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`, `noindex`) VALUES
	(33, 'Adidas', 'catalog/revolution/demo_tovars/shoes/logo/adidas.jpg', 0, 1),
	(55, 'Asics', 'catalog/revolution/demo_tovars/shoes/logo/asics.jpg', 2, 1),
	(54, 'Alexander McQueen', 'catalog/revolution/demo_tovars/shoes/logo/alexander_mcqueen.jpg', 1, 1),
	(56, 'Balenciaga', 'catalog/revolution/demo_tovars/shoes/logo/bslenciaga.jpg', 3, 1),
	(57, 'Converse', 'catalog/revolution/demo_tovars/shoes/logo/converse.jpg', 4, 1),
	(58, 'New Balance', 'catalog/revolution/demo_tovars/shoes/logo/new_balance.jpg', 5, 1),
	(59, 'Nike', 'catalog/revolution/demo_tovars/shoes/logo/nike.jpg', 6, 1),
	(60, 'Puma', 'catalog/revolution/demo_tovars/shoes/logo/puma.jpg', 7, 1),
	(61, 'Reebok', 'catalog/revolution/demo_tovars/shoes/logo/reebok.jpg', 8, 1),
	(62, 'Under Armour', 'catalog/revolution/demo_tovars/shoes/logo/under_armour.jpg', 9, 1),
	(63, 'VANS', 'catalog/revolution/demo_tovars/shoes/logo/vans.jpg', 10, 1),
	(64, 'Y-3', 'catalog/revolution/demo_tovars/shoes/logo/y3.jpg', 11, 1),
	(65, 'Fila', 'catalog/revolution/demo_tovars/shoes/logo/fila.jpg', 12, 1);

DELETE FROM `oc_manufacturer_description`;
INSERT INTO `oc_manufacturer_description` (`manufacturer_id`, `language_id`, `description`, `description3`, `meta_description`, `meta_keyword`, `meta_title`, `meta_h1`) VALUES
	(33, 2, 'Adidas', '', '', 'Adidas', '', ''),
	(57, 2, 'Converse', '', '', 'Converse', '', ''),
	(54, 1, 'Alexander McQueen', '', '', 'Alexander McQueen', '', ''),
	(54, 2, 'Alexander McQueen', '', '', 'Alexander McQueen', '', ''),
	(55, 2, 'Asics', '', '', 'Asics', '', ''),
	(55, 1, 'Asics', '', '', 'Asics', '', ''),
	(56, 2, 'Balenciaga', '', '', 'Balenciaga', '', ''),
	(56, 1, 'Balenciaga', '', '', 'Balenciaga', '', ''),
	(33, 1, 'Adidas', '', '', 'Adidas', '', ''),
	(57, 1, 'Converse', '', '', 'Converse', '', ''),
	(58, 2, 'New Balance', '', '', 'New Balance', '', ''),
	(58, 1, 'New Balance', '', '', 'New Balance', '', ''),
	(59, 2, 'Nike', '', '', 'Nike', '', ''),
	(59, 1, 'Nike', '', '', 'Nike', '', ''),
	(60, 2, 'Puma', '', '', 'Puma', '', ''),
	(60, 1, 'Puma', '', '', 'Puma', '', ''),
	(61, 2, 'Reebok', '', '', 'Reebok', '', ''),
	(61, 1, 'Reebok', '', '', 'Reebok', '', ''),
	(62, 2, 'Under Armour', '', '', 'Under Armour', '', ''),
	(62, 1, 'Under Armour', '', '', 'Under Armour', '', ''),
	(63, 2, 'VANS', '', '', 'VANS', '', ''),
	(63, 1, 'VANS', '', '', 'VANS', '', ''),
	(64, 2, 'Y-3', '', '', 'Y-3', '', ''),
	(64, 1, 'Y-3', '', '', 'Y-3', '', ''),
	(65, 2, 'Fila', '', '', 'Fila', '', ''),
	(65, 1, 'Fila', '', '', 'Fila', '', '');

DELETE FROM `oc_manufacturer_to_store`;
INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
	(33, 0),
	(55, 0),
	(56, 0),
	(57, 0),
	(58, 0),
	(59, 0),
	(60, 0),
	(61, 0),
	(62, 0),
	(63, 0),
	(64, 0),
	(65, 0);

DELETE FROM `oc_module`;
INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
	(30, 'Category', 'banner', '{"name":"Category","banner_id":"6","width":"300","height":"180","status":"1"}'),
	(29, 'Home Page', 'carousel', '{"name":"Home Page","banner_id":"8","width":"130","height":"100","status":"1"}'),
	(28, 'Home Page', 'featured', '{"name":"Home Page","product":["418"],"limit":"4","width":"228","height":"228","status":"1"}'),
	(27, 'Home Page', 'slideshow', '{"name":"Home Page","banner_id":"7","width":"1140","height":"380","status":"1"}'),
	(31, 'Banner 1', 'banner', '{"name":"Banner 1","banner_id":"6","width":"182","height":"182","status":"1"}');

DELETE FROM `oc_option`;
INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`, `opt_image`) VALUES
	(18, 'radio', 0, 0),
	(19, 'radio', 2, 1);

DELETE FROM `oc_option_description`;
INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
	(18, 1, 'Размер'),
	(18, 2, 'Size'),
	(19, 1, 'Другие цвета'),
	(19, 2, 'Other colors');

DELETE FROM `oc_option_value`;
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
	(87, 18, '', 1),
	(88, 18, '', 2),
	(89, 18, '', 3),
	(90, 18, '', 4),
	(91, 18, '', 5),
	(92, 18, '', 6),
	(93, 18, '', 7),
	(94, 18, '', 8),
	(95, 18, '', 9),
	(97, 19, 'catalog/revolution/colors/krasniy.png', 2),
	(96, 19, 'catalog/revolution/colors/siniy.png', 1);

DELETE FROM `oc_option_value_description`;
INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
	(87, 1, 18, '37'),
	(87, 2, 18, '37'),
	(88, 1, 18, '38'),
	(88, 2, 18, '38'),
	(89, 1, 18, '39'),
	(89, 2, 18, '39'),
	(90, 1, 18, '40'),
	(90, 2, 18, '40'),
	(91, 1, 18, '41'),
	(91, 2, 18, '41'),
	(92, 1, 18, '42'),
	(92, 2, 18, '42'),
	(93, 1, 18, '43'),
	(93, 2, 18, '43'),
	(94, 1, 18, '44'),
	(94, 2, 18, '44'),
	(95, 1, 18, '45'),
	(95, 2, 18, '45'),
	(97, 1, 19, 'Красный'),
	(96, 2, 19, 'Blue'),
	(96, 1, 19, 'Синий'),
	(97, 2, 19, 'Red');

DELETE FROM `oc_product`;
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `options_buy`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`, `noindex`) VALUES
	(442, 'CON-CT10', '', '', '', '', '', '', '', 16, 5, 'catalog/revolution/demo_tovars/shoes/converse/2/1.jpg', 57, 1, 0, 2600.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 10, '2018-10-30 21:09:59', '2018-11-01 14:21:50', 1),
	(441, 'CON-CT2', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/converse/1/1.jpg', 57, 1, 0, 2700.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 25, '2018-10-30 20:53:29', '2018-11-01 03:29:11', 1),
	(440, 'AGLyte3WPB', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/asics/3/1.jpg', 55, 1, 0, 7900.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 108, '2018-10-30 01:17:01', '2018-11-01 23:35:41', 1),
	(439, 'AGelLVP', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/asics/2/1.jpg', 55, 1, 0, 5490.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 13, '2018-10-30 01:10:59', '2018-11-01 03:30:14', 1),
	(438, 'AGelLV', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/asics/1/1.jpg', 55, 1, 0, 5490.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2018-10-30 01:04:01', '2018-11-01 03:30:04', 1),
	(437, 'AD-NMD', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/adidas/12/1.jpg', 33, 1, 0, 6500.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 1, '2018-10-29 19:32:16', '2018-10-29 19:36:21', 1),
	(436, 'ZX700-2', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/adidas/11/1.jpg', 33, 1, 0, 5700.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 9, '2018-10-29 19:19:36', '2018-11-02 20:13:13', 1),
	(434, 'AD-RS-4', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/adidas/9/1.jpg', 33, 1, 0, 5490.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2018-10-28 18:49:41', '2018-10-28 18:58:47', 1),
	(435, 'AD-ZX700-4', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/adidas/10/1.jpg', 33, 1, 0, 5700.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 15, '2018-10-29 19:13:40', '2018-11-02 20:12:40', 1),
	(433, 'AD-RS-3', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/adidas/8/1.jpg', 33, 1, 0, 4990.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2018-10-28 18:42:51', '2018-10-28 18:58:53', 1),
	(432, 'AD-ORIG-ST-1', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/adidas/7/1.jpg', 33, 1, 0, 3990.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 18, '2018-10-28 18:36:49', '2018-10-31 01:57:05', 1),
	(431, 'RBRed', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/adidas/6/1.jpg', 33, 1, 0, 6900.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 1, '2018-10-28 18:28:58', '2018-11-02 01:36:40', 1),
	(430, 'EQT-93', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/adidas/5/1.jpg', 33, 1, 0, 4900.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2018-10-28 18:13:41', '2018-11-02 01:36:30', 1),
	(427, 'AD-SPE-8', '', '', '', '', '', '', '', 8, 5, 'catalog/revolution/demo_tovars/shoes/adidas/2/1.jpg', 33, 1, 0, 4490.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 2, '2018-10-28 00:12:20', '2018-10-28 18:58:35', 1),
	(428, 'Tiger-Camo', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/adidas/3/1.jpg', 33, 1, 0, 4790.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 9, '2018-10-28 00:19:54', '2018-10-28 18:58:58', 1),
	(429, 'AD-NMD-1', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/adidas/4/1.jpg', 33, 1, 0, 5200.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 0, '2018-10-28 17:48:08', '2018-11-02 01:36:46', 1),
	(426, 'AD-SPE-6', '', '', '', '', '', '', '', 10, 5, 'catalog/revolution/demo_tovars/shoes/adidas/1/1.jpg', 33, 1, 0, 4490.0000, 0, 0, '2018-10-27', 0.00, 1, 0.00, 0.00, 0.00, 1, 0, 1, 1, 1, 14, '2018-10-27 23:27:44', '2018-10-28 18:58:30', 1),
	(443, '7611b', '', '', '', '', '', '', '', 18, 5, 'catalog/revolution/demo_tovars/shoes/bags/1.jpg', 0, 1, 0, 3500.0000, 0, 0, '2018-11-01', 0.00, 1, 0.00, 0.00, 0.00, 1, 1, 1, 1, 1, 17, '2018-11-01 21:00:55', '2018-11-01 22:36:38', 1);

DELETE FROM `oc_product_attribute`;
INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
	(442, 35, 2, 'Spring-summer'),
	(441, 34, 1, 'Черный'),
	(441, 34, 2, 'Black'),
	(440, 34, 2, 'Brown'),
	(440, 35, 1, 'Весна-лето'),
	(442, 35, 1, 'Весна-лето'),
	(439, 35, 1, 'Лето'),
	(439, 35, 2, 'Summer'),
	(439, 37, 1, '41, 43, 44'),
	(439, 37, 2, '41, 43, 44'),
	(438, 35, 1, 'Лето'),
	(438, 35, 2, 'Summer'),
	(438, 37, 1, '41, 42, 43, 44, 45'),
	(438, 37, 2, '41, 42, 43, 44, 45'),
	(436, 35, 2, 'Spring-summer'),
	(436, 35, 1, 'Весна-лето'),
	(436, 34, 2, 'Red'),
	(435, 35, 2, 'Spring-summer'),
	(435, 35, 1, 'Весна-лето'),
	(434, 37, 2, '40, 41, 43'),
	(434, 37, 1, '40, 41, 43'),
	(434, 35, 2, 'Spring-summer'),
	(434, 35, 1, 'Весна-лето'),
	(432, 34, 1, 'Белый'),
	(433, 34, 1, 'Красный'),
	(433, 34, 2, 'Red'),
	(433, 35, 1, 'Весна-лето'),
	(431, 37, 2, '40, 43, 44, 45'),
	(431, 37, 1, '40, 43, 44, 45'),
	(431, 35, 2, 'Spring-summer'),
	(428, 37, 1, '41, 44'),
	(428, 37, 2, '41, 44'),
	(428, 34, 1, 'Серый'),
	(428, 34, 2, 'Grey'),
	(428, 35, 1, 'Весна-лето'),
	(428, 35, 2, 'Spring-summer'),
	(426, 34, 1, 'Синий'),
	(430, 37, 1, '42, 43, 44'),
	(430, 35, 2, 'Summer'),
	(432, 35, 1, 'Лето'),
	(432, 35, 2, 'Summer'),
	(432, 37, 1, '38, 39, 40, 41, 42, 43'),
	(429, 34, 1, 'Чёрный'),
	(429, 34, 2, 'Black'),
	(429, 35, 1, 'Весна-лето'),
	(429, 35, 2, 'Spring-summer'),
	(442, 34, 1, 'Серый'),
	(442, 34, 2, 'Grey'),
	(441, 35, 1, 'Весна-лето'),
	(441, 35, 2, 'Spring-summer'),
	(441, 37, 1, '37, 38, 39, 40, 41'),
	(441, 37, 2, '37, 38, 39, 40, 41'),
	(440, 34, 1, 'Коричневый'),
	(439, 34, 2, 'Blue'),
	(439, 34, 1, 'Синий'),
	(438, 34, 1, 'Синий'),
	(438, 34, 2, 'Blue'),
	(437, 37, 2, '40, 41, 42, 43, 44, 45'),
	(437, 34, 1, 'Белый'),
	(437, 34, 2, 'White'),
	(437, 35, 1, 'Весна-лето'),
	(436, 34, 1, 'Красный'),
	(437, 37, 1, '40, 41, 42, 43, 44, 45'),
	(437, 35, 2, 'Spring-summer'),
	(435, 34, 2, 'Blue'),
	(434, 34, 2, 'Black, Blue, Red, White'),
	(434, 34, 1, ''),
	(435, 34, 1, 'Синий'),
	(433, 35, 2, 'Spring-summer'),
	(433, 37, 1, '42, 43, 44, 45'),
	(433, 37, 2, '42, 43, 44, 45'),
	(432, 37, 2, '38, 39, 40, 41, 42, 43'),
	(431, 35, 1, 'Весна-лето'),
	(432, 34, 2, 'White'),
	(430, 37, 2, '42, 43, 44'),
	(426, 34, 2, 'Blue'),
	(427, 37, 2, '41, 42, 43, 44'),
	(427, 34, 1, 'Серый'),
	(427, 34, 2, 'Grey'),
	(427, 35, 1, 'Весна-лето'),
	(427, 35, 2, 'Spring-summer'),
	(427, 37, 1, '41, 42, 43, 44'),
	(426, 35, 1, 'Весна-лето'),
	(426, 35, 2, 'Spring-summer'),
	(426, 37, 1, '40, 41, 44'),
	(426, 37, 2, '40, 41, 44'),
	(442, 37, 1, '37, 38, 41, 45'),
	(442, 37, 2, '37, 38, 41, 45'),
	(431, 34, 2, 'Red'),
	(431, 34, 1, 'Красный'),
	(440, 35, 2, 'Spring-summer'),
	(440, 37, 1, '40, 42'),
	(440, 37, 2, '40, 42'),
	(430, 35, 1, 'Лето'),
	(430, 34, 2, 'White'),
	(430, 34, 1, 'Белый'),
	(429, 37, 1, '40, 41, 42, 43, 44'),
	(429, 37, 2, '40, 41, 42, 43, 44'),
	(435, 37, 1, '39, 40, 41, 43'),
	(435, 37, 2, '39, 40, 41, 43'),
	(436, 37, 1, '40, 41'),
	(436, 37, 2, '40, 41');

DELETE FROM `oc_product_description`;
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `short_description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `meta_h1`) VALUES
	(441, 2, 'Converse All Stars Chuck Taylor Hi Black', '&lt;p&gt;Chuck Taylor All Star High Top cult sneakers with a classic silhouette and the famous star ankle logo are a tribute to our heritage. Light canvas and flat laces are symbols of corporate design. The sole is replaced by a more durable. The OrthoLite cushioning insole brings comfort to a new level.&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;Lace-up sneakers with high berets and classic All Star ankle patch&lt;/li&gt;	&lt;li&gt;OrthoLite insole for cushioning&lt;/li&gt;	&lt;li&gt;Medial grommets for ventilation&lt;/li&gt;	&lt;li&gt;Canvas upper for flexibility and comfort&lt;/li&gt;&lt;/ul&gt;', '', '', '', 'Converse All Stars Chuck Taylor Hi Black', '', ''),
	(439, 2, 'Asics Gel-Lyte V &quot;Planet Pack&quot;', '&lt;ul&gt;	&lt;li&gt;Top of textile and suede&lt;/li&gt;	&lt;li&gt;Perforated parts&lt;/li&gt;	&lt;li&gt;Outsole Material: Rubber&lt;/li&gt;	&lt;li&gt;EVA outsole with natural rubber tread&lt;/li&gt;	&lt;li&gt;GEL depreciation technology&lt;/li&gt;	&lt;li&gt;Neoprene inside sock fits leg&lt;/li&gt;&lt;/ul&gt;', '', '', '', 'Asics Gel-Lyte V &quot;Planet Pack&quot;', '', ''),
	(440, 1, 'Asics Gel Lyte III Workwear Pack Brown', '&lt;ul&gt;	&lt;li&gt;Вверх из текстиля и замши&amp;nbsp;&lt;/li&gt;	&lt;li&gt;Перфорированные детали&lt;/li&gt;	&lt;li&gt;Материал подошвы: Резина&lt;/li&gt;	&lt;li&gt;Подошва из EVA с протектором из натуральной резины&lt;/li&gt;	&lt;li&gt;Технология амортизации GEL&lt;/li&gt;	&lt;li&gt;Внутренний носок из неопрена плотно облегает ногу&lt;/li&gt;&lt;/ul&gt;', '', '', '', 'Asics Gel Lyte III Workwear Pack Brown', '', ''),
	(438, 2, 'Asics Gel Lyte V &quot;Christmas Pack&quot;', '&lt;ul&gt;	&lt;li&gt;Top of textile and suede&lt;/li&gt;	&lt;li&gt;Perforated parts&lt;/li&gt;	&lt;li&gt;Outsole Material: Rubber&lt;/li&gt;	&lt;li&gt;EVA outsole with natural rubber tread&lt;/li&gt;	&lt;li&gt;GEL depreciation technology&lt;/li&gt;	&lt;li&gt;Neoprene inside sock fits leg&lt;/li&gt;&lt;/ul&gt;', '', '', '', 'Asics Gel Lyte V &quot;Christmas Pack&quot;', '', ''),
	(437, 2, 'Pharrell Williams x Adidas NMD Human Race White', '', '', '', '', 'Pharrell Williams x Adidas NMD Human Race White', '', ''),
	(437, 1, 'Pharrell Williams x Adidas NMD Human Race White', '&lt;p&gt;Линейка Adidas NMD вдохновлена будущим и учитывает опыт прошлого – эти кроссовки впитали лучшие идеи беговых моделей Adidas за всю историю культового бренда. Технологичная тканевая основа и подошва из амортизирующего легкого материала делают модель практически невесомой, гибкой и максимально устойчивой. Кроссовки NMD идеально вписываются в ритм городской жизни, привнося комфорт и легкость в ваши передвижения.&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;Особенное удобство ношения придает верх из инновационного «дышащего» эластичного материала Primeknit, подстраивающегося под форму стопы&lt;/li&gt;	&lt;li&gt;Минимизировать нагрузку на ноги при ходьбе или беге позволяет амортизирующая подошва Boost, сохраняющая свои функции даже при резких скачках температуры и при любых погодных условиях.&lt;/li&gt;	&lt;li&gt;Защиту от скольжений ноги в кроссовке обеспечивает специальная вставка в области пятки.&lt;/li&gt;	&lt;li&gt;Устойчивость подошвы сохраняется за счет специального рельефа для повышенной цепкости с поверхностью.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Баланс качества проверенных технологий и инновационного дизайна – формула успеха кроссовок Adidas NMD.&lt;/p&gt;', '', '', '', 'Pharrell Williams x Adidas NMD Human Race White', '', ''),
	(436, 2, 'Adidas Originals ZX 700 Burgundy', '', '', '', '', 'Adidas Originals ZX 700 Burgundy', '', ''),
	(436, 1, 'Adidas Originals ZX 700 Burgundy', '&lt;p&gt;Синие мужские кроссовки Adidas представляют собой реинкарнацию классической модели, созданной еще в 1979 году. В новой коллекции давно полюбившиеся ценителям уличного стиля кроссовки сохранили традиционный силуэт, но предстали в слегка модернизированном варианте: с верхом из натуральной замши и вкраплениями золотистых элементов.&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;Основа из мягкой натуральной замши как знак качества.&lt;/li&gt;	&lt;li&gt;Оригинальный дизайн с неотъемлемой атрибутикой бренда из трех полосок, также подкладка и поддерживающая вставка из искусственной кожи на пятке.&lt;/li&gt;	&lt;li&gt;Подошва из высококачественной резины как гарантия долгого срока службы кроссовок.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Кроссовки созданы для приверженцев легендарного бренда Adidas, которые обладают отменным вкусом и предпочитают следовать законам яркой уличной моды.&lt;/p&gt;', '', '', '', 'Adidas Originals ZX 700 Burgundy', '', ''),
	(433, 1, 'Raf Simons x Adidas Ozweego 2 Red', '', '', '', '', 'Raf Simons x Adidas Ozweego 2 Red', '', ''),
	(433, 2, 'Raf Simons x Adidas Ozweego 2 Red', '', '', '', '', 'Raf Simons x Adidas Ozweego 2 Red', '', ''),
	(432, 1, 'Adidas Stan Smith Vintage OG', '', '', '', '', 'Adidas Stan Smith Vintage OG', '', ''),
	(432, 2, 'Adidas Stan Smith Vintage OG', '', '', '', '', 'Adidas Stan Smith Vintage OG', '', ''),
	(435, 1, 'Adidas Original ZX 700 Navy', '&lt;p&gt;Синие мужские кроссовки Adidas представляют собой реинкарнацию классической модели, созданной еще в 1979 году. В новой коллекции давно полюбившиеся ценителям уличного стиля кроссовки сохранили традиционный силуэт, но предстали в слегка модернизированном варианте: с верхом из натуральной замши и вкраплениями золотистых элементов.&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;Основа из мягкой натуральной замши как знак качества.&lt;/li&gt;	&lt;li&gt;Оригинальный дизайн с неотъемлемой атрибутикой бренда из трех полосок, также подкладка и поддерживающая вставка из искусственной кожи на пятке.&lt;/li&gt;	&lt;li&gt;Подошва из высококачественной резины как гарантия долгого срока службы кроссовок.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Кроссовки созданы для приверженцев легендарного бренда Adidas, которые обладают отменным вкусом и предпочитают следовать законам яркой уличной моды.&lt;/p&gt;', '', '', '', 'Adidas Original ZX 700 Navy', '', ''),
	(431, 2, 'Adidas Iniki Runner Boost Red', '', '', '', '', 'Adidas Iniki Runner Boost Red', '', ''),
	(434, 2, 'Raf Simons x Adidas Ozweego 2 Black/Red/Blue', '', '', '', '', 'Raf Simons x Adidas Ozweego 2 Black/Red/Blue', '', ''),
	(430, 2, 'Adidas EQT Running Support \' 93 Tech Beige', '', '', '', '', 'Adidas EQT Running Support \' 93 Tech Beige', '', ''),
	(435, 2, 'Adidas Original ZX 700 Navy', '', '', '', '', 'Adidas Original ZX 700 Navy', '', ''),
	(429, 2, 'Adidas NMD R1 Primeknit Original Black', '', '', '', '', 'Adidas NMD R1 Primeknit Original Black', '', ''),
	(434, 1, 'Raf Simons x Adidas Ozweego 2 Black/Red/Blue', '&lt;ul&gt;	&lt;li&gt;Спортивный силуэт с оригинальным декором.&lt;/li&gt;	&lt;li&gt;Удачное сочетание гладкой натуральной кожи, мягкой замши и сетчатого текстиля.&lt;/li&gt;	&lt;li&gt;Мягкий удобный язычок обеспечивает плотное прилегание обуви к ступне.&lt;/li&gt;	&lt;li&gt;Резиновая подошва отличается высокой износостойкостью и гибкостью.&lt;/li&gt;&lt;/ul&gt;', '', '', '', 'Raf Simons x Adidas Ozweego 2 Black/Red/Blue', '', ''),
	(427, 1, 'Adidas Spezial Grey &amp; Gum', '&lt;p&gt;Серые мужские кроссовки Adidas Spezial представляют собой реинкарнацию классической модели, созданной еще в 1979 году. В новой коллекции давно полюбившиеся ценителям уличного стиля кроссовки сохранили традиционный силуэт, но предстали в слегка модернизированном варианте: с верхом из натуральной замши и вкраплениями золотистых элементов.&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;Основа из мягкой натуральной замши как знак качества.&lt;/li&gt;	&lt;li&gt;Оригинальный дизайн с неотъемлемой атрибутикой бренда из трех полосок, также подкладка и поддерживающая вставка из искусственной кожи на пятке.&lt;/li&gt;	&lt;li&gt;Подошва из высококачественной резины как гарантия долгого срока службы кроссовок.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Кроссовки Spezial созданы для приверженцев легендарного бренда Adidas, которые обладают отменным вкусом и предпочитают следовать законам яркой уличной моды.&lt;/p&gt;', '', '', '', 'Adidas Spezial Grey &amp; Gum', '', ''),
	(428, 2, 'Undefeated x Adidas Prophere Tiger Camo', '', '', '', '', 'Undefeated x Adidas Prophere Tiger Camo', '', ''),
	(428, 1, 'Undefeated x Adidas Prophere Tiger Camo', '', '', '', '', 'Undefeated x Adidas Prophere Tiger Camo', '', ''),
	(427, 2, 'Adidas Spezial Grey &amp; Gum', '', '', '', '', 'Adidas Spezial Grey &amp; Gum', '', ''),
	(426, 1, 'Adidas Spezial Dark Navy &amp; Argentina Blue', '&lt;p&gt;Синие мужские кроссовки Adidas Spezial представляют собой реинкарнацию классической модели, созданной еще в 1979 году. В новой коллекции давно полюбившиеся ценителям уличного стиля кроссовки сохранили традиционный силуэт, но предстали в слегка модернизированном варианте: с верхом из натуральной замши и вкраплениями золотистых элементов.&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;Основа из мягкой натуральной замши как знак качества.&lt;/li&gt;	&lt;li&gt;Оригинальный дизайн с неотъемлемой атрибутикой бренда из трех полосок, также подкладка и поддерживающая вставка из искусственной кожи на пятке.&lt;/li&gt;	&lt;li&gt;Подошва из высококачественной резины как гарантия долгого срока службы кроссовок.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Кроссовки Spezial созданы для приверженцев легендарного бренда Adidas, которые обладают отменным вкусом и предпочитают следовать законам яркой уличной моды.&lt;/p&gt;', '', '', '', 'Adidas Spezial Dark Navy &amp; Argentina Blue', '', ''),
	(429, 1, 'Adidas NMD R1 Primeknit Original Black', '&lt;p&gt;Линейка Adidas NMD вдохновлена будущим и учитывает опыт прошлого – эти кроссовки впитали лучшие идеи беговых моделей Adidas за всю историю культового бренда.&lt;/p&gt;&lt;p&gt;Технологичная тканевая основа и подошва из амортизирующего легкого материала делают модель практически невесомой, гибкой и максимально устойчивой. Кроссовки NMD идеально вписываются в ритм городской жизни, привнося комфорт и легкость в ваши передвижения.&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;Особенное удобство ношения придает верх из инновационного «дышащего» эластичного материала Primeknit, подстраивающегося под форму стопы&lt;/li&gt;	&lt;li&gt;Минимизировать нагрузку на ноги при ходьбе или беге позволяет амортизирующая подошва Boost, сохраняющая свои функции даже при резких скачках температуры и при любых погодных условиях.&lt;/li&gt;	&lt;li&gt;Защиту от скольжений ноги в кроссовке обеспечивает специальная вставка в области пятки.&lt;/li&gt;	&lt;li&gt;Устойчивость подошвы сохраняется за счет специального рельефа для повышенной цепкости с поверхностью.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Баланс качества проверенных технологий и инновационного дизайна – формула успеха кроссовок Adidas NMD.&lt;/p&gt;', '', '', '', 'Adidas NMD R1 Primeknit Original Black', '', ''),
	(426, 2, 'Adidas Spezial Dark Navy &amp; Argentina Blue', '', '', '', '', 'Adidas Spezial Dark Navy &amp; Argentina Blue', '', ''),
	(442, 1, 'Converse All Stars Chuck Taylor Low Grey', '&lt;p&gt;Кеды Chuck Taylor All Star Low Top — первый образец непринужденного стиля, с классическим холщовым верхом и культовым силуэтом. Подошва заменена на более прочную. Амортизирующая стелька OrthoLite поднимает комфорт на новый уровень.&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;Кеды со шнуровкой и с низкими берцами&lt;/li&gt;	&lt;li&gt;Стелька OrthoLite для амортизации&lt;/li&gt;	&lt;li&gt;Медиальные люверсы для вентиляции&lt;/li&gt;	&lt;li&gt;Холщовый верх&lt;/li&gt;&lt;/ul&gt;', '', '', '', 'Converse All Stars Chuck Taylor Low Grey', '', ''),
	(438, 1, 'Asics Gel Lyte V &quot;Christmas Pack&quot;', '&lt;ul&gt;	&lt;li&gt;Вверх из текстиля и замши&amp;nbsp;&lt;/li&gt;	&lt;li&gt;Перфорированные детали&lt;/li&gt;	&lt;li&gt;Материал подошвы: Резина&lt;/li&gt;	&lt;li&gt;Подошва из EVA с протектором из натуральной резины&lt;/li&gt;	&lt;li&gt;Технология амортизации GEL&lt;/li&gt;	&lt;li&gt;Внутренний носок из неопрена плотно облегает ногу&lt;/li&gt;&lt;/ul&gt;', '', '', '', 'Asics Gel Lyte V &quot;Christmas Pack&quot;', '', ''),
	(439, 1, 'Asics Gel-Lyte V &quot;Planet Pack&quot;', '&lt;ul&gt;	&lt;li&gt;Вверх из текстиля и замши&amp;nbsp;&lt;/li&gt;	&lt;li&gt;Перфорированные детали&lt;/li&gt;	&lt;li&gt;Материал подошвы: Резина&lt;/li&gt;	&lt;li&gt;Подошва из EVA с протектором из натуральной резины&lt;/li&gt;	&lt;li&gt;Технология амортизации GEL&lt;/li&gt;	&lt;li&gt;Внутренний носок из неопрена плотно облегает ногу&lt;/li&gt;&lt;/ul&gt;', '', '', '', 'Asics Gel-Lyte V &quot;Planet Pack&quot;', '', ''),
	(440, 2, 'Asics Gel Lyte III Workwear Pack Brown', '&lt;ul&gt;	&lt;li&gt;Top of textile and suede&lt;/li&gt;	&lt;li&gt;Perforated parts&lt;/li&gt;	&lt;li&gt;Outsole Material: Rubber&lt;/li&gt;	&lt;li&gt;EVA outsole with natural rubber tread&lt;/li&gt;	&lt;li&gt;GEL depreciation technology&lt;/li&gt;	&lt;li&gt;Neoprene inside sock fits leg&lt;/li&gt;&lt;/ul&gt;', '', '', '', 'Asics Gel Lyte III Workwear Pack Brown', '', ''),
	(442, 2, 'Converse All Stars Chuck Taylor Low Grey', '&lt;p&gt;Sneakers Chuck Taylor All Star Low Top - the first example of a casual style, with a classic canvas top and iconic silhouette. The sole is replaced by a more durable. The OrthoLite cushioning insole brings comfort to a new level.&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;Sneakers with low lacing&lt;/li&gt;	&lt;li&gt;OrthoLite insole for cushioning&lt;/li&gt;	&lt;li&gt;Medial grommets for ventilation&lt;/li&gt;	&lt;li&gt;Canvas top&lt;/li&gt;&lt;/ul&gt;', '', '', '', 'Converse All Stars Chuck Taylor Low Grey', '', ''),
	(441, 1, 'Converse All Stars Chuck Taylor Hi Black', '&lt;p&gt;Культовые кеды Chuck Taylor All Star High Top с классическим силуэтом и знаменитой эмблемой в виде звезды на щиколотке — это дань уважения нашему наследию. Легкая холщовая ткань и плоские шнурки — символы фирменного дизайна. Подошва заменена на более прочную. Амортизирующая стелька OrthoLite поднимает комфорт на новый уровень.&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;Кеды со шнуровкой, с высокими берцами и с классической нашивкой All Star на щиколотке&lt;/li&gt;	&lt;li&gt;Стелька OrthoLite для амортизации&lt;/li&gt;	&lt;li&gt;Медиальные люверсы для вентиляции&lt;/li&gt;	&lt;li&gt;Холщовый верх для гибкости и комфорта&lt;/li&gt;&lt;/ul&gt;', '', '', '', 'Converse All Stars Chuck Taylor Hi Black', '', ''),
	(431, 1, 'Adidas Iniki Runner Boost Red', '&lt;ul&gt;	&lt;li&gt;Классический спортивный силуэт с оригинальным декором.&lt;/li&gt;	&lt;li&gt;Удачное сочетание гладкой натуральной кожи, мягкой замши и сетчатого текстиля.&lt;/li&gt;	&lt;li&gt;Мягкий удобный язычок обеспечивает плотное прилегание обуви к ступне.&lt;/li&gt;	&lt;li&gt;Резиновая подошва отличается высокой износостойкостью и гибкостью.&lt;/li&gt;&lt;/ul&gt;', '', '', '', 'Adidas Iniki Runner Boost Red', '', ''),
	(430, 1, 'Adidas EQT Running Support \' 93 Tech Beige', '&lt;p&gt;Согласно слогану, кроссовки EQT GUIDANCE 93 – лучшие из всей коллекции Adidas. И хотя с момента их выпуска прошло более 20 лет, а компания выпустила немало новых моделей, тем не менее, эта серия продолжает пользоваться большим спросом как у спортсменов, так и у ценителей спортивного стиля в одежде.&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;Классический спортивный силуэт с оригинальным декором.&lt;/li&gt;	&lt;li&gt;Удачное сочетание гладкой натуральной кожи, мягкой замши и сетчатого текстиля.&lt;/li&gt;	&lt;li&gt;Мягкий удобный язычок обеспечивает плотное прилегание обуви к ступне.&lt;/li&gt;	&lt;li&gt;Резиновая подошва отличается высокой износостойкостью и гибкостью.&lt;/li&gt;	&lt;li&gt;Дополнительную поддержку придает технология TORSION® SYSTEM 90, интегрированная в подошву.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Кроссовки EQT GUIDANCE 93 не только удобные и прочные, но еще и отличаются привлекательным дизайном. В линейке представлено столько различных расцветок, от однотонной классики до ярких сочетаний, что каждый найдет себе модель по душе.&lt;/p&gt;', '', '', '', 'Adidas EQT Running Support \' 93 Tech Beige', '', ''),
	(443, 1, 'Рюкзак синий SWISSWIN 7611 900-blue 32L', '&lt;p&gt;Размеры: 46 см (высота) х 30 см (ширина) х 20 см (толщина)&lt;/p&gt;&lt;p&gt;Объём: 32 л.&lt;/p&gt;&lt;p&gt;Цвет: синий&lt;/p&gt;&lt;p&gt;Материал: полиэстер 900D&lt;/p&gt;&lt;p&gt;Отделение для ноутбука: диагональ до 15.6’&lt;/p&gt;&lt;p&gt;Боковые компрессионные ремни: есть&lt;/p&gt;&lt;p&gt;Плечевые ремни: Регулируемые плечевые ремни с петлёй для очков и сетчатым кармашком для мелких предметов&lt;/p&gt;&lt;p&gt;Внешний карман на молнии с органайзером: раздельные кармашки для ручек, карандашей, мобильного телефона и CD-дисков.&lt;/p&gt;&lt;p&gt;2 боковых кармана: сеточка&lt;/p&gt;&lt;p&gt;Отверстие для провода наушников: Выход под наушники&lt;/p&gt;&lt;p&gt;Система циркуляции воздуха AirFlow: Мягкая вставка для спины обеспечивает циркуляцию воздуха для максимального комфорта и удобства. Система AIRFLOW.&lt;/p&gt;&lt;p&gt;Производитель: Group III International Ltd., Китай, по лицензии SWISSWIN&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', 'Рюкзак синий SWISSWIN 7611b', '', ''),
	(443, 2, 'Bag SWISSWIN 7611 Blue', '&lt;p&gt;Dimensions: 46 cm (height) x 30 cm (width) x 20 cm (thickness)&lt;/p&gt;&lt;p&gt;Volume: 32 liters.&lt;/p&gt;&lt;p&gt;Color: blue&lt;/p&gt;&lt;p&gt;Material: 900D polyester&lt;/p&gt;&lt;p&gt;Laptop compartment: up to 15.6 ’&lt;/p&gt;&lt;p&gt;Side compression belts: yes&lt;/p&gt;&lt;p&gt;Shoulder straps: Adjustable shoulder straps with eyeglass loop and mesh pocket for small items&lt;/p&gt;&lt;p&gt;External zipper pocket with organizer: separate pockets for pens, pencils, mobile phones and CDs.&lt;/p&gt;&lt;p&gt;2 side pockets: mesh&lt;/p&gt;&lt;p&gt;Headphone wire hole: Headphone output&lt;/p&gt;&lt;p&gt;AirFlow Air Circulation System: Soft back insert provides air circulation for maximum comfort and convenience. AIRFLOW system.&lt;/p&gt;&lt;p&gt;Manufacturer: Group III International Ltd., China, under license from SWISSWIN&lt;/p&gt;', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '', 'Bag SWISSWIN 7611 Blue', '', '');

DELETE FROM `oc_product_discount`;

DELETE FROM `oc_product_image`;
INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`, `video`) VALUES
	(2390, 431, 'catalog/revolution/demo_tovars/shoes/adidas/6/4.jpg', 3, ''),
	(2387, 430, 'catalog/revolution/demo_tovars/shoes/adidas/5/4.jpg', 3, ''),
	(2386, 430, 'catalog/revolution/demo_tovars/shoes/adidas/5/3.jpg', 2, ''),
	(2394, 429, 'catalog/revolution/demo_tovars/shoes/adidas/4/5.jpg', 4, ''),
	(2393, 429, 'catalog/revolution/demo_tovars/shoes/adidas/4/4.jpg', 3, ''),
	(2392, 429, 'catalog/revolution/demo_tovars/shoes/adidas/4/3.jpg', 2, ''),
	(2391, 429, 'catalog/revolution/demo_tovars/shoes/adidas/4/2.jpg', 1, ''),
	(368, 427, 'catalog/revolution/demo_tovars/shoes/adidas/2/5.jpg', 4, ''),
	(367, 427, 'catalog/revolution/demo_tovars/shoes/adidas/2/4.jpg', 3, ''),
	(366, 427, 'catalog/revolution/demo_tovars/shoes/adidas/2/3.jpg', 2, ''),
	(365, 427, 'catalog/revolution/demo_tovars/shoes/adidas/2/2.jpg', 1, ''),
	(364, 426, 'catalog/revolution/demo_tovars/shoes/adidas/1/6.jpg', 5, ''),
	(363, 426, 'catalog/revolution/demo_tovars/shoes/adidas/1/5.jpg', 4, ''),
	(362, 426, 'catalog/revolution/demo_tovars/shoes/adidas/1/4.jpg', 3, ''),
	(361, 426, 'catalog/revolution/demo_tovars/shoes/adidas/1/3.jpg', 2, ''),
	(360, 426, 'catalog/revolution/demo_tovars/shoes/adidas/1/2.jpg', 1, ''),
	(2385, 430, 'catalog/revolution/demo_tovars/shoes/adidas/5/2.jpg', 1, ''),
	(2389, 431, 'catalog/revolution/demo_tovars/shoes/adidas/6/3.jpg', 2, ''),
	(2388, 431, 'catalog/revolution/demo_tovars/shoes/adidas/6/2.jpg', 1, ''),
	(449, 432, 'catalog/revolution/demo_tovars/shoes/adidas/7/6.jpg', 5, ''),
	(448, 432, 'catalog/revolution/demo_tovars/shoes/adidas/7/5.jpg', 4, ''),
	(447, 432, 'catalog/revolution/demo_tovars/shoes/adidas/7/4.jpg', 3, ''),
	(445, 432, 'catalog/revolution/demo_tovars/shoes/adidas/7/2.jpg', 1, ''),
	(446, 432, 'catalog/revolution/demo_tovars/shoes/adidas/7/3.jpg', 2, ''),
	(2410, 436, 'catalog/revolution/demo_tovars/shoes/adidas/11/5.jpg', 4, ''),
	(375, 433, 'catalog/revolution/demo_tovars/shoes/adidas/8/2.jpg', 1, ''),
	(376, 433, 'catalog/revolution/demo_tovars/shoes/adidas/8/3.jpg', 2, ''),
	(374, 434, 'catalog/revolution/demo_tovars/shoes/adidas/9/3.jpg', 1, ''),
	(2406, 435, 'catalog/revolution/demo_tovars/shoes/adidas/10/5.jpg', 4, ''),
	(2405, 435, 'catalog/revolution/demo_tovars/shoes/adidas/10/4.jpg', 3, ''),
	(2404, 435, 'catalog/revolution/demo_tovars/shoes/adidas/10/3.jpg', 2, ''),
	(2403, 435, 'catalog/revolution/demo_tovars/shoes/adidas/10/2.jpg', 1, ''),
	(2409, 436, 'catalog/revolution/demo_tovars/shoes/adidas/11/4.jpg', 3, ''),
	(2408, 436, 'catalog/revolution/demo_tovars/shoes/adidas/11/3.jpg', 2, ''),
	(2407, 436, 'catalog/revolution/demo_tovars/shoes/adidas/11/2.jpg', 1, ''),
	(461, 439, 'catalog/revolution/demo_tovars/shoes/asics/2/3.jpg', 2, ''),
	(405, 437, 'catalog/revolution/demo_tovars/shoes/adidas/12/4.jpg', 3, ''),
	(404, 437, 'catalog/revolution/demo_tovars/shoes/adidas/12/3.jpg', 2, ''),
	(403, 437, 'catalog/revolution/demo_tovars/shoes/adidas/12/2.jpg', 1, ''),
	(460, 439, 'catalog/revolution/demo_tovars/shoes/asics/2/2.jpg', 1, ''),
	(458, 438, 'catalog/revolution/demo_tovars/shoes/asics/1/2.jpg', 1, ''),
	(459, 438, 'catalog/revolution/demo_tovars/shoes/asics/1/3.jpg', 2, ''),
	(2381, 440, 'catalog/revolution/demo_tovars/shoes/video.jpg', 4, 'https://www.youtube.com/watch?v=lNbOyT0Vrus'),
	(2380, 440, 'catalog/revolution/demo_tovars/shoes/asics/3/4.jpg', 3, ''),
	(2379, 440, 'catalog/revolution/demo_tovars/shoes/asics/3/3.jpg', 2, ''),
	(2378, 440, 'catalog/revolution/demo_tovars/shoes/asics/3/2.jpg', 1, ''),
	(2352, 442, 'catalog/revolution/demo_tovars/shoes/converse/2/2.jpg', 1, ''),
	(452, 441, 'catalog/revolution/demo_tovars/shoes/converse/1/2.jpg', 1, ''),
	(2376, 443, 'catalog/revolution/demo_tovars/shoes/bags/2.jpg', 1, ''),
	(2377, 443, 'catalog/revolution/demo_tovars/shoes/bags/2.jpg', 2, 'https://www.youtube.com/watch?v=YzX0JEdI1PA');

DELETE FROM `oc_product_option`;
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
	(54, 427, 18, '', 1),
	(53, 426, 18, '', 1),
	(55, 428, 18, '', 1),
	(56, 429, 18, '', 1),
	(57, 430, 18, '', 1),
	(58, 431, 18, '', 1),
	(59, 432, 18, '', 1),
	(60, 433, 18, '', 1),
	(61, 434, 18, '', 1),
	(227, 435, 19, '', 0),
	(63, 436, 18, '', 1),
	(64, 437, 18, '', 1),
	(65, 438, 18, '', 1),
	(66, 439, 18, '', 1),
	(67, 440, 18, '', 1),
	(68, 441, 18, '', 1),
	(69, 442, 18, '', 1),
	(62, 435, 18, '', 1),
	(228, 436, 19, '', 0);

DELETE FROM `oc_product_option_value`;
INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`, `opt_image`, `model`) VALUES
	(115, 53, 426, 18, 94, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-SPE-6-44'),
	(114, 53, 426, 18, 91, 5, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-SPE-6-41'),
	(113, 53, 426, 18, 90, 3, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-SPE-6-40'),
	(119, 54, 427, 18, 94, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-SPE-8-44'),
	(116, 54, 427, 18, 91, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-SPE-8-41'),
	(117, 54, 427, 18, 92, 3, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-SPE-8-42'),
	(118, 54, 427, 18, 93, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-SPE-8-43'),
	(121, 55, 428, 18, 94, 7, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'Tiger-Camo-44'),
	(120, 55, 428, 18, 91, 3, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'Tiger-Camo-41'),
	(128, 56, 429, 18, 94, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-NMD-1-44'),
	(127, 56, 429, 18, 93, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-NMD-1-43'),
	(126, 56, 429, 18, 92, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-NMD-1-42'),
	(125, 56, 429, 18, 91, 3, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-NMD-1-41'),
	(124, 56, 429, 18, 90, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-NMD-1-40'),
	(137, 58, 431, 18, 95, 1, 0, 200.0000, '+', 0, '+', 0.00, '+', '', 'RBRed-45'),
	(136, 58, 431, 18, 94, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'RBRed-44'),
	(133, 57, 430, 18, 94, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'EQT-93-44'),
	(132, 57, 430, 18, 93, 3, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'EQT-93-43'),
	(131, 57, 430, 18, 92, 5, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'EQT-93-42'),
	(135, 58, 431, 18, 93, 5, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'RBRed-43'),
	(134, 58, 431, 18, 90, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'RBRed-40'),
	(143, 59, 432, 18, 93, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-ORIG-ST-1-43'),
	(142, 59, 432, 18, 92, 3, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-ORIG-ST-1-42'),
	(141, 59, 432, 18, 91, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-ORIG-ST-1-41'),
	(140, 59, 432, 18, 90, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-ORIG-ST-1-40'),
	(139, 59, 432, 18, 89, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-ORIG-ST-1-39'),
	(138, 59, 432, 18, 88, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-ORIG-ST-1-38'),
	(147, 60, 433, 18, 95, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-RS-3-45'),
	(146, 60, 433, 18, 94, 3, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-RS-3-44'),
	(145, 60, 433, 18, 93, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-RS-3-43'),
	(144, 60, 433, 18, 92, 4, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-RS-3-42'),
	(149, 61, 434, 18, 91, 5, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-RS-4-41'),
	(150, 61, 434, 18, 93, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-RS-4-43'),
	(193, 227, 435, 19, 97, 10, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'http://shoes.oc-mod.ru/adidas_originals_zx_700_burgundy'),
	(148, 61, 434, 18, 90, 3, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-RS-4-40'),
	(155, 62, 435, 18, 93, 4, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'ZX700-4-43'),
	(154, 62, 435, 18, 91, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'ZX700-4-41'),
	(163, 64, 437, 18, 92, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-NMD-42'),
	(161, 64, 437, 18, 91, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-NMD-41'),
	(158, 63, 436, 18, 91, 6, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'ZX700-2-41'),
	(157, 63, 436, 18, 90, 4, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'ZX700-2-40'),
	(160, 64, 437, 18, 90, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-NMD-40'),
	(164, 64, 437, 18, 93, 3, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-NMD-43'),
	(165, 64, 437, 18, 94, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-NMD-44'),
	(166, 64, 437, 18, 95, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AD-NMD-45'),
	(173, 65, 438, 18, 95, 1, 0, 200.0000, '+', 0, '+', 0.00, '+', '', 'AGelLV-45'),
	(172, 65, 438, 18, 94, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AGelLV-44'),
	(171, 65, 438, 18, 93, 3, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AGelLV-43'),
	(170, 65, 438, 18, 92, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AGelLV-42'),
	(168, 65, 438, 18, 91, 3, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AGelLV-41'),
	(188, 68, 441, 18, 91, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'CON-CT2-41'),
	(187, 68, 441, 18, 90, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'CON-CT2-40'),
	(177, 66, 439, 18, 94, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AGelLVP-44'),
	(176, 66, 439, 18, 93, 3, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AGelLVP-43'),
	(174, 66, 439, 18, 91, 6, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AGelLVP-41'),
	(183, 67, 440, 18, 92, 4, 0, 200.0000, '+', 0, '+', 0.00, '+', '', 'AGLyte3WPB-42'),
	(181, 67, 440, 18, 90, 6, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'AGLyte3WPB-40'),
	(186, 68, 441, 18, 89, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'CON-CT2-39'),
	(185, 68, 441, 18, 88, 4, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'CON-CT2-38'),
	(184, 68, 441, 18, 87, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'CON-CT2-37'),
	(192, 69, 442, 18, 95, 6, 0, 300.0000, '+', 0, '+', 0.00, '+', '', 'CON-CT10-45'),
	(191, 69, 442, 18, 91, 1, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'CON-CT10-41'),
	(190, 69, 442, 18, 88, 5, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'CON-CT10-38'),
	(189, 69, 442, 18, 87, 4, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'CON-CT10-37'),
	(152, 62, 435, 18, 89, 3, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'ZX700-4-39'),
	(153, 62, 435, 18, 90, 2, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'ZX700-4-40'),
	(194, 228, 436, 19, 96, 10, 0, 0.0000, '+', 0, '+', 0.00, '+', '', 'http://shoes.oc-mod.ru/adidas_original_zx_700_navy');

DELETE FROM `oc_product_related`;

DELETE FROM `oc_product_reward`;

DELETE FROM `oc_product_special`;
INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
	(46, 439, 1, 0, 3500.0000, '2018-10-01', '2025-10-01'),
	(454, 436, 1, 0, 5300.0000, '2018-10-01', '2025-10-01'),
	(449, 440, 1, 0, 3790.0000, '2018-10-01', '2025-10-01'),
	(453, 435, 1, 0, 5300.0000, '2018-10-01', '2025-10-01'),
	(440, 442, 1, 0, 2290.0000, '2018-10-01', '2025-10-01'),
	(450, 431, 1, 0, 6490.0000, '2018-10-01', '2025-10-01'),
	(448, 443, 1, 0, 2900.0000, '2018-10-01', '2025-10-01');

DELETE FROM `oc_product_to_category`;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`, `main_category`) VALUES
	(442, 11, 0),
	(441, 114, 1),
	(442, 114, 1),
	(441, 11, 0),
	(440, 11, 0),
	(440, 111, 1),
	(439, 11, 0),
	(438, 11, 0),
	(439, 111, 1),
	(438, 111, 1),
	(437, 112, 1),
	(437, 11, 0),
	(436, 11, 0),
	(436, 112, 1),
	(435, 112, 1),
	(435, 11, 0),
	(433, 112, 1),
	(428, 112, 1),
	(432, 112, 1),
	(434, 112, 1),
	(426, 112, 1),
	(427, 112, 1),
	(431, 112, 1),
	(429, 11, 0),
	(434, 11, 0),
	(430, 112, 1),
	(432, 11, 0),
	(433, 11, 0),
	(427, 11, 0),
	(430, 11, 0),
	(429, 112, 1),
	(428, 11, 0),
	(431, 11, 0),
	(426, 11, 0),
	(443, 77, 0),
	(443, 441, 1);

DELETE FROM `oc_product_to_download`;

DELETE FROM `oc_product_to_layout`;
INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
	(442, 0, 0),
	(441, 0, 0),
	(440, 0, 0),
	(439, 0, 0),
	(438, 0, 0),
	(437, 0, 0),
	(436, 0, 0),
	(435, 0, 0),
	(434, 0, 0),
	(433, 0, 0),
	(432, 0, 0),
	(431, 0, 0),
	(430, 0, 0),
	(429, 0, 0),
	(428, 0, 0),
	(427, 0, 0),
	(426, 0, 0),
	(443, 0, 0);

DELETE FROM `oc_product_to_store`;
INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
	(426, 0),
	(427, 0),
	(428, 0),
	(429, 0),
	(430, 0),
	(431, 0),
	(432, 0),
	(433, 0),
	(434, 0),
	(435, 0),
	(436, 0),
	(437, 0),
	(438, 0),
	(439, 0),
	(440, 0),
	(441, 0),
	(442, 0),
	(443, 0);

DELETE FROM `oc_product_tab`;

DELETE FROM `oc_product_tab_desc`;

DELETE FROM `oc_revblog`;
INSERT INTO `oc_revblog` (`revblog_id`, `image`, `date_added`, `date_modified`, `date_available`, `sort_order`, `status`) VALUES
	(7, '', '2016-05-31 22:49:43', '2018-11-01 21:52:53', '2016-05-05', 0, 1),
	(8, 'catalog/revolution/akcia.jpg', '2016-05-31 22:57:47', '2018-11-01 21:50:50', '2016-05-10', 1, 1),
	(9, 'catalog/revolution/demo_tovars/shoes/logo/asics.jpg', '2016-05-31 23:02:29', '2018-11-01 21:59:57', '2016-05-31', 2, 1),
	(10, 'catalog/revolution/demo_tovars/shoes/adidas/10/2.jpg', '2016-05-31 23:09:52', '2018-11-01 23:32:24', '2016-05-31', 3, 1);

DELETE FROM `oc_revblog_category`;
INSERT INTO `oc_revblog_category` (`category_id`, `image`, `parent_id`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
	(3, '', 0, 1, 1, '2016-11-18 23:05:48', '2018-11-01 22:00:58');

DELETE FROM `oc_revblog_category_description`;
INSERT INTO `oc_revblog_category_description` (`category_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
	(3, 1, 'Блог', '', 'Блог', '', ''),
	(3, 2, 'Blog', '', 'Blog', '', '');

DELETE FROM `oc_revblog_category_path`;
INSERT INTO `oc_revblog_category_path` (`category_id`, `path_id`, `level`) VALUES
	(3, 3, 0);

DELETE FROM `oc_revblog_category_to_layout`;
INSERT INTO `oc_revblog_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
	(3, 0, 0);

DELETE FROM `oc_revblog_category_to_store`;
INSERT INTO `oc_revblog_category_to_store` (`category_id`, `store_id`) VALUES
	(3, 0);

DELETE FROM `oc_revblog_description`;
INSERT INTO `oc_revblog_description` (`revblog_id`, `language_id`, `title`, `title_pr`, `title_products`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
	(7, 1, 'Новость один', 'Рекомендуемые товары', '', '&lt;div&gt;&lt;font face=&quot;Roboto&quot;&gt;Товарищи! постоянный количественный рост и сфера нашей активности обеспечивает широкому кругу (специалистов) участие в формировании систем массового участия. Равным образом укрепление и развитие структуры требуют определения и уточнения системы обучения кадров, соответствует насущным потребностям. Разнообразный и богатый опыт начало повседневной работы по формированию позиции позволяет оценить значение систем массового участия. Задача организации, в особенности же постоянный количественный рост и сфера нашей активности способствует подготовки и реализации системы обучения кадров, соответствует насущным потребностям. С другой стороны рамки и место обучения кадров способствует подготовки и реализации направлений прогрессивного развития. Идейные соображения высшего порядка, а также сложившаяся структура организации в значительной степени обуславливает создание дальнейших направлений развития.&lt;/font&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;Разнообразный и богатый опыт постоянное информационно-пропагандистское обеспечение нашей деятельности требуют от нас анализа дальнейших направлений развития. Задача организации, в особенности же дальнейшее развитие различных форм деятельности способствует подготовки и реализации соответствующий условий активизации.&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;span style=&quot;font-family: Roboto;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div&gt;&lt;font face=&quot;Roboto&quot;&gt;Значимость этих проблем настолько очевидна, что реализация намеченных плановых заданий влечет за собой процесс внедрения и модернизации форм развития. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности представляет собой интересный эксперимент проверки позиций, занимаемых участниками в отношении поставленных задач. С другой стороны укрепление и развитие структуры позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности обеспечивает широкому кругу (специалистов) участие в формировании дальнейших направлений развития. Таким образом дальнейшее развитие различных форм деятельности требуют определения и уточнения позиций, занимаемых участниками в отношении поставленных задач.&lt;/font&gt;&lt;/div&gt;', 'Новость один', 'data_revblog_meta_description', 'data_revblog_meta_keyword'),
	(7, 2, 'News one', 'Recommended products', '', '&lt;p&gt;Comrades! The constant quantitative growth and the scope of our activity ensures a wide range of (specialists) participation in the formation of mass participation systems. Equally, the strengthening and development of the structure requires the definition and clarification of the system of personnel training, which meets urgent needs. The diverse and rich experience of the beginning of the daily work on the formation of the position allows us to estimate the value of mass participation systems. The task of the organization, especially the constant quantitative growth and the scope of our activity contributes to the preparation and implementation of a personnel training system, meets urgent needs. On the other hand, the framework and place of personnel training contributes to the preparation and implementation of areas of progressive development. Ideological considerations of a higher order, as well as the existing structure of the organization largely determines the creation of further directions of development.&lt;/p&gt;&lt;p&gt;Diverse and rich experience, constant information and propaganda support of our activity requires us to analyze further directions of development. The task of the organization, especially the further development of various forms of activity contributes to the preparation and implementation of the appropriate activation conditions.&lt;/p&gt;&lt;p&gt;The significance of these problems is so obvious that the implementation of the planned targets entails the process of implementation and modernization of development forms. Likewise, the ongoing outreach of our activities is an interesting experiment in verifying the positions held by participants in relation to the tasks set. On the other hand, the strengthening and development of the structure allows us to estimate the value of the positions held by the participants in relation to the tasks set. The significance of these problems is so obvious that the new model of organizational activity provides a wide range of (specialists) participation in shaping future directions of development. Thus, the further development of various forms of activity requires the definition and clarification of the positions held by the participants in relation to the tasks set.&lt;/p&gt;', 'News one', '', ''),
	(8, 1, 'Новость два', 'Товары к новости два', '', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; line-height: 20px;&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;Roboto&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Задача организации, в особенности же рамки и место обучения кадров позволяет выполнять важные задания по разработке системы обучения кадров, соответствует насущным потребностям. Повседневная практика показывает, что рамки и место обучения кадров влечет за собой процесс внедрения и модернизации соответствующий условий активизации. Задача организации, в особенности же начало повседневной работы по формированию позиции требуют определения и уточнения существенных финансовых и административных условий.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; line-height: 20px;&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;Roboto&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Идейные соображения высшего порядка, а также новая модель организационной деятельности требуют определения и уточнения модели развития. Задача организации, в особенности же новая модель организационной деятельности способствует подготовки и реализации направлений прогрессивного развития. Равным образом постоянный количественный рост и сфера нашей активности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Товарищи! дальнейшее развитие различных форм деятельности обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач. Товарищи! рамки и место обучения кадров в значительной степени обуславливает создание новых предложений. Товарищи! сложившаяся структура организации играет важную роль в формировании дальнейших направлений развития.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; line-height: 20px;&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;Roboto&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Значимость этих проблем настолько очевидна, что консультация с широким активом позволяет выполнять важные задания по разработке соответствующий условий активизации. Повседневная практика показывает, что дальнейшее развитие различных форм деятельности позволяет выполнять важные задания по разработке существенных финансовых и административных условий. Таким образом новая модель организационной деятельности требуют от нас анализа новых предложений. С другой стороны дальнейшее развитие различных форм деятельности требуют от нас анализа существенных финансовых и административных условий. Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности представляет собой интересный эксперимент проверки дальнейших направлений развития. Товарищи! консультация с широким активом позволяет выполнять важные задания по разработке модели развития.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;', 'Новость два', 'data_revblog_meta_description', 'data_revblog_meta_keyword'),
	(8, 2, 'News two', 'Goods to news two', '', '&lt;p&gt;The task of organizing, especially the framework and place of personnel training, allows you to perform important tasks in developing a personnel training system that meets urgent needs. Everyday practice shows that the framework and place of personnel training entails the process of implementation and modernization of the corresponding activation conditions. The task of the organization, especially the beginning of the daily work on the formation of the position requires the definition and clarification of significant financial and administrative conditions.&lt;/p&gt;&lt;p&gt;Ideological considerations of a higher order, as well as a new model of organizational activity, require the definition and refinement of a development model. The task of the organization, especially the new model of organizational activity contributes to the preparation and implementation of areas of progressive development. Similarly, constant quantitative growth and the scope of our activity contributes to the preparation and implementation of the positions held by the participants in relation to the tasks set. Comrades! The further development of various forms of activity ensures a wide range of (specialists) participation in the formation of positions held by participants in relation to the tasks set. Comrades! the frame and place of personnel training largely determines the creation of new proposals. Comrades! The established structure of the organization plays an important role in shaping the future directions of development.&lt;/p&gt;&lt;p&gt;The significance of these problems is so obvious that consultation with a broad asset allows you to perform important tasks on developing appropriate activation conditions. Daily practice shows that the further development of various forms of activity allows you to perform important tasks on the development of substantial financial and administrative conditions. Thus, a new model of organizational activity requires us to analyze new proposals. On the other hand, the further development of various forms of activity requires us to analyze the essential financial and administrative conditions. Ideological considerations of a higher order, as well as the further development of various forms of activity, is an interesting experiment to test future directions of development. Comrades! consultation with a broad asset allows you to perform important tasks on the development of a development model.&lt;/p&gt;', 'News two', '', ''),
	(9, 2, 'News three', 'Promotion on Asics', '', '&lt;p&gt;It should not, however, be forgotten that the further development of various forms of activity contributes to the preparation and implementation of participatory systems. The significance of these problems is so obvious that the constant outreach of our activities contributes to the preparation and implementation of forms of development.&lt;/p&gt;&lt;p&gt;A diverse and rich experience of a new model of organizational activity plays an important role in shaping the future directions of development. Everyday practice shows that the further development of various forms of activity largely determines the creation of areas of progressive development. Thus, the constant information and propaganda support of our activities contributes to the preparation and implementation of substantial financial and administrative conditions. The significance of these problems is so obvious that the further development of various forms of activity contributes to the preparation and implementation of the positions held by the participants in relation to the tasks set.&lt;/p&gt;&lt;p&gt;We should not, however, forget that the current structure of the organization allows you to perform important tasks on the development of forms of development. Comrades! the framework and place of personnel training contributes to the preparation and implementation of new proposals. The diverse and rich experience of the new model of organizational activity allows you to perform important tasks for the development of mass participation systems. The task of the organization, especially the new model of organizational activity provides a wide range of (specialists) participation in the formation of the positions held by the participants in relation to the tasks set.&lt;/p&gt;&lt;p&gt;Comrades! The framework and location of personnel training is an interesting experiment in testing participatory systems. Comrades! Constant information and propaganda support of our activity allows us to estimate the value of the system of personnel training, it corresponds to urgent needs. On the other hand, the constant quantitative growth and the scope of our activity entail the process of introducing and modernizing the positions held by the participants in relation to the tasks set.&lt;/p&gt;', 'News three', '', ''),
	(10, 2, 'News four', 'You will be interested', '', '&lt;p&gt;The diverse and rich experience of the new model of organizational activity largely determines the creation of positions held by the participants in relation to the tasks set. The task of the organization, especially the same framework and place of personnel training, largely determines the creation of new proposals. The task of the organization, especially consultation with a broad asset, requires us to analyze areas of progressive development.&lt;/p&gt;&lt;p&gt;Ideological considerations of a higher order, as well as the further development of various forms of activity, play an important role in shaping the appropriate activation conditions. Comrades! Constant informational and propaganda support of our activity allows us to estimate the value of the directions of progressive development. On the other hand, the further development of various forms of activity is an interesting experiment checking new proposals. Thus, constant information and propaganda support of our activity contributes to the preparation and implementation of a development model. The significance of these problems is so obvious that the strengthening and development of the structure requires us to analyze the systems of mass participation.&lt;/p&gt;&lt;p&gt;The task of the organization, especially the new model of organizational activity requires the definition and clarification of systems of mass participation. Thus, constant information and propaganda support of our activity entails the process of introducing and modernizing new offers. Daily practice shows that the constant quantitative growth and the scope of our activity contributes to the preparation and implementation of substantial financial and administrative conditions. Routine practice shows that the strengthening and development of the structure is an interesting experiment to test the essential financial and administrative conditions. Comrades! strengthening and development of the structure allows us to estimate the value of the corresponding activation conditions. Everyday practice shows that the new model of organizational activity is an interesting experiment to test areas of progressive development.&lt;/p&gt;&lt;p&gt;Equally, the implementation of the planned targets allows to evaluate the value of forms of development. Thus, the implementation of the planned targets allows to evaluate the value of development forms.&lt;/p&gt;', 'News four', '', ''),
	(10, 1, 'Новость четыре', 'Вам будет это интересно', '', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; line-height: 20px;&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;Roboto&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Разнообразный и богатый опыт новая модель организационной деятельности в значительной степени обуславливает создание позиций, занимаемых участниками в отношении поставленных задач. Задача организации, в особенности же рамки и место обучения кадров в значительной степени обуславливает создание новых предложений. Задача организации, в особенности же консультация с широким активом требуют от нас анализа направлений прогрессивного развития.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; line-height: 20px;&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;Roboto&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности играет важную роль в формировании соответствующий условий активизации. Товарищи! постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение направлений прогрессивного развития. С другой стороны дальнейшее развитие различных форм деятельности представляет собой интересный эксперимент проверки новых предложений. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности способствует подготовки и реализации модели развития. Значимость этих проблем настолько очевидна, что укрепление и развитие структуры требуют от нас анализа систем массового участия.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; line-height: 20px;&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;Roboto&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Задача организации, в особенности же новая модель организационной деятельности требуют определения и уточнения систем массового участия. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации новых предложений. Повседневная практика показывает, что постоянный количественный рост и сфера нашей активности способствует подготовки и реализации существенных финансовых и административных условий. Повседневная практика показывает, что укрепление и развитие структуры представляет собой интересный эксперимент проверки существенных финансовых и административных условий. Товарищи! укрепление и развитие структуры позволяет оценить значение соответствующий условий активизации. Повседневная практика показывает, что новая модель организационной деятельности представляет собой интересный эксперимент проверки направлений прогрессивного развития.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; line-height: 20px;&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;Roboto&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Равным образом реализация намеченных плановых заданий позволяет оценить значение форм развития. Таким образом реализация намеченных плановых заданий позволяет оценить значение форм развития.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;', 'Новость четыре', 'data_revblog_meta_description', 'data_revblog_meta_keyword'),
	(9, 1, 'Новость три', 'Акция на Asics', '', '&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; line-height: 20px;&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;Roboto&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не следует, однако забывать, что дальнейшее развитие различных форм деятельности способствует подготовки и реализации систем массового участия. Значимость этих проблем настолько очевидна, что постоянное информационно-пропагандистское обеспечение нашей деятельности способствует подготовки и реализации форм развития.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; line-height: 20px;&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;Roboto&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Разнообразный и богатый опыт новая модель организационной деятельности играет важную роль в формировании дальнейших направлений развития. Повседневная практика показывает, что дальнейшее развитие различных форм деятельности в значительной степени обуславливает создание направлений прогрессивного развития. Таким образом постоянное информационно-пропагандистское обеспечение нашей деятельности способствует подготовки и реализации существенных финансовых и административных условий. Значимость этих проблем настолько очевидна, что дальнейшее развитие различных форм деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; line-height: 20px;&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;Roboto&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Не следует, однако забывать, что сложившаяся структура организации позволяет выполнять важные задания по разработке форм развития. Товарищи! рамки и место обучения кадров способствует подготовки и реализации новых предложений. Разнообразный и богатый опыт новая модель организационной деятельности позволяет выполнять важные задания по разработке систем массового участия. Задача организации, в особенности же новая модель организационной деятельности обеспечивает широкому кругу (специалистов) участие в формировании позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p class=&quot;text-justify&quot; style=&quot;margin-bottom: 10px; line-height: 20px;&quot;&gt;&lt;font color=&quot;#333333&quot; face=&quot;Roboto&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Товарищи! рамки и место обучения кадров представляет собой интересный эксперимент проверки систем массового участия. Товарищи! постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение системы обучения кадров, соответствует насущным потребностям. С другой стороны постоянный количественный рост и сфера нашей активности влечет за собой процесс внедрения и модернизации позиций, занимаемых участниками в отношении поставленных задач.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;', 'Новость три', 'data_revblog_meta_description', 'data_revblog_meta_keyword');

DELETE FROM `oc_revblog_images`;
INSERT INTO `oc_revblog_images` (`image_id`, `revblog_id`, `image`, `sort_order`) VALUES
	(22, 10, 'catalog/revolution/demo_tovars/shoes/adidas/10/5.jpg', 4),
	(20, 10, 'catalog/revolution/demo_tovars/shoes/adidas/10/2.jpg', 2),
	(21, 10, 'catalog/revolution/demo_tovars/shoes/adidas/10/3.jpg', 3),
	(19, 10, 'catalog/revolution/demo_tovars/shoes/adidas/10/1.jpg', 1),
	(18, 10, 'catalog/revolution/demo_tovars/shoes/logo/adidas.jpg', 0);

DELETE FROM `oc_revblog_product`;
INSERT INTO `oc_revblog_product` (`revblog_id`, `product_id`) VALUES
	(7, 429),
	(7, 430),
	(7, 431),
	(8, 435),
	(8, 436),
	(9, 440),
	(10, 435);

DELETE FROM `oc_revblog_to_category`;
INSERT INTO `oc_revblog_to_category` (`revblog_id`, `category_id`, `main_category`) VALUES
	(7, 3, 1),
	(9, 3, 1),
	(8, 3, 1),
	(10, 3, 1);

DELETE FROM `oc_revblog_to_layout`;
INSERT INTO `oc_revblog_to_layout` (`revblog_id`, `store_id`, `layout_id`) VALUES
	(7, 0, 0),
	(8, 0, 0),
	(9, 0, 0),
	(10, 0, 0);

DELETE FROM `oc_revblog_to_store`;
INSERT INTO `oc_revblog_to_store` (`revblog_id`, `store_id`) VALUES
	(7, 0),
	(8, 0),
	(9, 0),
	(10, 0);
	
DELETE FROM `oc_review`;
INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `answer`, `answer_from`, `rating`, `status`, `date_added`, `date_modified`) VALUES
	(1, 0, 0, 'Василий', 'Заказывал в магазине уже 5 раз. Все нравиться, ребята молодцы, так держать. Всем рекомендую! Дружелюбный персонал подсказал че каво, куда и как. Подарили мне купоны на скидку как постоянному покупашке.', '', '', 5, 1, '2016-05-10 00:00:00', '2016-05-31 22:44:21'),
	(2, 0, 0, 'Марина', 'Не следует, однако забывать, что рамки и место обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании новых предложений. Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности требуют от нас анализа новых предложений.', '', 'Администратор', 3, 1, '2016-05-12 00:00:00', '2018-11-01 19:56:35'),
	(3, 0, 0, 'Анатолий', 'Разнообразный и богатый опыт постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет выполнять важные задания по разработке новых предложений. Идейные соображения высшего порядка, а также рамки и место обучения кадров в значительной степени обуславливает создание новых предложений. Повседневная практика показывает, что дальнейшее развитие различных форм деятельности позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач. Значимость этих проблем настолько очевидна, что сложившаяся структура организации позволяет выполнять важные задания по разработке соответствующий условий активизации.', '', '', 1, 1, '2016-05-15 00:00:00', '0000-00-00 00:00:00'),
	(4, 0, 0, 'Иванов Вася', 'Задача организации, в особенности же постоянное информационно-пропагандистское обеспечение нашей деятельности влечет за собой процесс внедрения и модернизации направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что начало повседневной работы по формированию позиции требуют от нас анализа систем массового участия. Равным образом начало повседневной работы по формированию позиции требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач. Задача организации, в особенности же реализация намеченных плановых заданий позволяет выполнять важные задания по разработке соответствующий условий активизации. С другой стороны реализация намеченных плановых заданий влечет за собой процесс внедрения и модернизации соответствующий условий активизации.', '', '', 5, 1, '2016-05-31 00:00:00', '0000-00-00 00:00:00'),
	(5, 440, 0, 'Маша', 'Кроссовки понравились, из-за того, что иногда не совпадают по размеру, заказывала три пары разных моделей asics, сомнений в оригинальности данной пары не возникло, не взяла только потому, что размер был заказан больше чем надо, снимать не хотелось, красивые, мягкие и удобные, мое мнение, что брать надо свой размер, будут деньги, закажу еще раз. По весу показались тяжелее, чем sonoma, но меня это ни разу не пугает, с удовольствием попробую эту модель.', 'Маша, спасибо за отзыв. Носите кроссовки с удовольствием.', 'Никита', 4, 1, '2018-11-01 19:43:03', '2018-11-01 19:44:12'),
	(6, 440, 0, 'Валера', 'Кроссовки соответствуют описанию, нужно брать на размер больше, больше подойдёт для занятий бегом на улице/стадионе, в зале жарко в них.', '', 'Администратор', 3, 1, '2018-11-01 19:45:36', '2018-11-01 19:45:45');

DELETE FROM `oc_revpopupphones`;

DELETE FROM `oc_revsubscribe`;

DELETE FROM `oc_tabs`;
INSERT INTO `oc_tabs` (`tab_id`, `products`, `categories`, `manufactures`, `ingore_products`, `stores`, `allproducts`, `status`, `sort_order`, `date_added`) VALUES
	(1, '', '["33","11"]', '', '', '["0"]', 0, 1, 1, '2018-11-01 20:07:12'),
	(2, '["443"]', '', '', '', '["0"]', 0, 1, 1, '2018-11-01 21:23:55');
	
DELETE FROM `oc_tabs_description`;
INSERT INTO `oc_tabs_description` (`tab_id`, `language_id`, `title`, `description`) VALUES
	(2, 1, 'Доставка и оплата', '&lt;p&gt;Доставка и оплата, описание вкладки.&lt;/p&gt;&lt;p&gt;С другой стороны укрепление и развитие структуры требуют определения и уточнения направлений прогрессивного развития. Разнообразный и богатый опыт сложившаяся структура организации способствует подготовки и реализации направлений прогрессивного развития. Значимость этих проблем настолько очевидна, что рамки и место обучения кадров позволяет выполнять важные задания по разработке систем массового участия. Таким образом реализация намеченных плановых заданий влечет за собой процесс внедрения и модернизации соответствующий условий активизации.&lt;/p&gt;&lt;p&gt;Таким образом укрепление и развитие структуры представляет собой интересный эксперимент проверки систем массового участия. Товарищи! постоянное информационно-пропагандистское обеспечение нашей деятельности играет важную роль в формировании позиций, занимаемых участниками в отношении поставленных задач. Значимость этих проблем настолько очевидна, что новая модель организационной деятельности позволяет оценить значение форм развития. Товарищи! укрепление и развитие структуры позволяет оценить значение форм развития. Повседневная практика показывает, что постоянный количественный рост и сфера нашей активности требуют определения и уточнения существенных финансовых и административных условий. Разнообразный и богатый опыт начало повседневной работы по формированию позиции обеспечивает широкому кругу (специалистов) участие в формировании новых предложений.&lt;/p&gt;'),
	(1, 1, 'Таблица размеров', '&lt;table class=&quot;table table-revolution table-hover text-center&quot;&gt;\r\n	&lt;thead class=&quot;thead-inverse&quot;&gt;\r\n		&lt;tr&gt;\r\n				&lt;td width=&quot;\'11%\'&quot;&gt;Российский размер&lt;/td&gt;\r\n				&lt;td width=&quot;\'11%\'&quot;&gt;Длина стопы, в см&lt;/td&gt;\r\n				&lt;td width=&quot;\'11%\'&quot;&gt;Размер производителя&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/thead&gt;&lt;thead&gt;\r\n	&lt;/thead&gt;&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;38&lt;/td&gt;\r\n				&lt;td&gt;24&lt;/td&gt;\r\n				&lt;td&gt;38&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;39&lt;/td&gt;\r\n				&lt;td&gt;24,5-25&lt;/td&gt;\r\n				&lt;td&gt;39&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;40&lt;/td&gt;\r\n				&lt;td&gt;25-26&lt;/td&gt;\r\n				&lt;td&gt;40&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;41&lt;/td&gt;\r\n				&lt;td&gt;26,5-26,5&lt;/td&gt;\r\n				&lt;td&gt;41&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;42&lt;/td&gt;\r\n				&lt;td&gt;26,5-27&lt;/td&gt;\r\n				&lt;td&gt;42&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;43&lt;/td&gt;\r\n				&lt;td&gt;27-27,5&lt;/td&gt;\r\n				&lt;td&gt;43&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;44&lt;/td&gt;\r\n				&lt;td&gt;28-28,5&lt;/td&gt;\r\n				&lt;td&gt;44&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;45&lt;/td&gt;\r\n				&lt;td&gt;28,5-29&lt;/td&gt;\r\n				&lt;td&gt;45&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;'),
	(1, 2, 'Size table', '&lt;table class=&quot;table table-revolution table-hover text-center&quot;&gt;\r\n	&lt;thead class=&quot;thead-inverse&quot;&gt;\r\n		&lt;tr&gt;\r\n				&lt;td width=&quot;\'11%\'&quot;&gt;Russian size&lt;/td&gt;\r\n				&lt;td width=&quot;\'11%\'&quot;&gt;Length of foot, cm&lt;/td&gt;\r\n				&lt;td width=&quot;\'11%\'&quot;&gt;Manufacturer size&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/thead&gt;&lt;thead&gt;\r\n	&lt;/thead&gt;&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;38&lt;/td&gt;\r\n				&lt;td&gt;24&lt;/td&gt;\r\n				&lt;td&gt;38&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;39&lt;/td&gt;\r\n				&lt;td&gt;24,5-25&lt;/td&gt;\r\n				&lt;td&gt;39&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;40&lt;/td&gt;\r\n				&lt;td&gt;25-26&lt;/td&gt;\r\n				&lt;td&gt;40&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;41&lt;/td&gt;\r\n				&lt;td&gt;26,5-26,5&lt;/td&gt;\r\n				&lt;td&gt;41&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;42&lt;/td&gt;\r\n				&lt;td&gt;26,5-27&lt;/td&gt;\r\n				&lt;td&gt;42&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;43&lt;/td&gt;\r\n				&lt;td&gt;27-27,5&lt;/td&gt;\r\n				&lt;td&gt;43&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;44&lt;/td&gt;\r\n				&lt;td&gt;28-28,5&lt;/td&gt;\r\n				&lt;td&gt;44&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n				&lt;td&gt;45&lt;/td&gt;\r\n				&lt;td&gt;28,5-29&lt;/td&gt;\r\n				&lt;td&gt;45&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;'),
	(2, 2, 'Shipping and payment', '&lt;p&gt;Shipping and payment description tab.&lt;br&gt;&lt;/p&gt;');

DELETE FROM `oc_textblocks`;
INSERT INTO `oc_textblocks` (`tb_id`, `products`, `categories`, `manufactures`, `ingore_products`, `icontype`, `image`, `icon`, `stores`, `allproducts`, `status`, `checkbox`, `sort_order`, `text_block_cols`) VALUES
	(1, '["443"]', '', '', '', 0, 'catalog/revolution/demo_tovars/shoes/bags/warranty.png', 'fa none', '["0"]', 0, 1, 1, 1, ''),
	(2, '["443"]', '', '', '', 0, 'catalog/revolution/demo_tovars/shoes/bags/delivery.png', 'fa none', '["0"]', 0, 1, 1, 2, '');

DELETE FROM `oc_textblocks_description`;
INSERT INTO `oc_textblocks_description` (`tb_id`, `language_id`, `title`, `description`, `href`) VALUES
	(1, 1, '100% оригал', 'Все наши товары сертифицированы', 'garantiya'),
	(1, 2, '100% original', 'All our products are certified', 'garantiya'),
	(2, 1, 'Доставка в срок', 'Быстрая доставка курьером до квартиры', 'dostavka_i_oplata'),
	(2, 2, 'Delivery', 'Fast delivery by courier to the apartment', 'dostavka_i_oplata');

DELETE FROM `oc_revanswers`;
INSERT INTO `oc_revanswers` (`answer_id`, `product_id`, `customer_id`, `author`, `text`, `answer`, `answer_from`, `status`, `date_added`) VALUES
	(12, 440, 0, 'Иван', 'Добрый день! Это оригинал? Подошва какая? Как защищает от нагрузок? Никаких описании нет, производитель Вьетнам, это не подделка?', 'Здравствуйте.\r\nОригинал. Облегченная подошва станут отличным решением для целого ряда активностей.', 'Администратор', 1, '2018-10-25 00:00:00');

DELETE FROM `oc_revcheckoutcustomfield`;
INSERT INTO `oc_revcheckoutcustomfield` (`custom_field_id`, `type`, `value`, `mask`, `location`, `status`, `sort_order`) VALUES
	(1, 'textarea', '', '', 'address', 1, 1),
	(2, 'select', '', '', 'address', 1, 2),
	(3, 'select', '', '', 'address', 1, 1);

DELETE FROM `oc_revcheckoutcustomfield_customer_group`;
INSERT INTO `oc_revcheckoutcustomfield_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES
	(1, 1, 1),
	(2, 1, 0),
	(3, 1, 0);

DELETE FROM `oc_revcheckoutcustomfield_description`;
INSERT INTO `oc_revcheckoutcustomfield_description` (`custom_field_id`, `language_id`, `name`) VALUES
	(1, 1, 'Адрес доставки'),
	(3, 1, 'Из магазина по адресу'),
	(3, 2, 'From the store'),
	(2, 1, 'Время доставки'),
	(1, 2, 'Delivery address'),
	(2, 2, 'Time of delivery');

DELETE FROM `oc_revcheckoutcustomfield_shipping_code`;
INSERT INTO `oc_revcheckoutcustomfield_shipping_code` (`custom_field_id`, `shipping_code`) VALUES
	(3, 'pickup.pickup'),
	(1, 'revship2.revship2'),
	(2, 'revship2.revship2');
	
DELETE FROM `oc_revcheckoutcustomfield_value`;
INSERT INTO `oc_revcheckoutcustomfield_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES
	(1, 2, 1),
	(2, 2, 2),
	(3, 2, 3),
	(4, 3, 1),
	(5, 3, 2);

DELETE FROM `oc_revcheckoutcustomfield_value_description`;
INSERT INTO `oc_revcheckoutcustomfield_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES
	(1, 2, 2, 'from 10:00 to 14:00'),
	(1, 1, 2, 'с 10:00 до 14:00'),
	(2, 2, 2, 'from 15:00 to 19:00'),
	(2, 1, 2, 'с 15:00 до 19:00'),
	(3, 2, 2, 'from 19:00 to 23:00'),
	(3, 1, 2, 'с 19:00 до 23:00'),
	(4, 1, 3, 'ул. Никольская, д. 25'),
	(4, 2, 3, 'st. Nikolskaya 25'),
	(5, 1, 3, 'ул. Кожевническая, 7с1'),
	(5, 2, 3, 'st. Kozhevnicheskaya, 7s1');

UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'tax_status';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_product_count';
UPDATE `oc_setting` SET `value` = 'catalog/revolution/demo_tovars/shoes/shoes_ico.png' WHERE `key` = 'config_icon';
UPDATE `oc_setting` SET `value` = 'catalog/revolution/logo.svg' WHERE `key` = 'config_logo';
UPDATE `oc_setting` SET `value` = '1' WHERE `key` = 'config_stock_display';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_tax';
UPDATE `oc_setting` SET `value` = '+7 (965) 222-33-44' WHERE `key` = 'config_telephone';
UPDATE `oc_setting` SET `value` = 'info@shoes.oc-mod.ru' WHERE `key` = 'config_email';
UPDATE `oc_setting` SET `value` = 'г. Москва, ул. Никольская, д. 25' WHERE `key` = 'config_address';
UPDATE `oc_setting` SET `value` = 'Интернет-магазин кроссовок' WHERE `key` = 'config_name';
UPDATE `oc_setting` SET `value` = 'Интернет-магазин кроссовок' WHERE `key` = 'config_meta_title';
UPDATE `oc_setting` SET `value` = 'revolution' WHERE `key` = 'config_theme';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_stock_warning';
UPDATE `oc_setting` SET `value` = '1' WHERE `key` = 'config_cart_weight';
UPDATE `oc_setting` SET `value` = 'ru-ru' WHERE `key` = 'config_language';
UPDATE `oc_setting` SET `value` = 'ru-ru' WHERE `key` = 'config_admin_language';
UPDATE `oc_setting` SET `value` = 'RUB' WHERE `key` = 'config_currency';
UPDATE `oc_setting` SET `value` = '0' WHERE `key` = 'config_currency_auto';
UPDATE `oc_setting` SET `value` = '1' WHERE `key` = 'config_review_status';
UPDATE `oc_setting` SET `value` = '1' WHERE `key` = 'config_seo_url';
UPDATE `oc_setting` SET `value` = '1' WHERE `key` = 'config_seo_pro';
UPDATE `oc_setting` SET `value` = '' WHERE `key` = 'config_logo';
UPDATE `oc_setting` SET `value` = 'catalog/revolution/demo_tovars/shoes/shoes_ico.png' WHERE `key` = 'config_icon';
UPDATE `oc_setting` SET `value` = '' WHERE `key` = 'config_image';
UPDATE `oc_setting` SET `value` = '{"1":{"meta_title":"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u043e\\u043a","meta_description":"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u043e\\u043a","meta_keyword":"","name":"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u043e\\u043a","owner":"\\u041c\\u043e\\u0435 \\u0418\\u043c\\u044f","address":"\\u0433. \\u041c\\u043e\\u0441\\u043a\\u0432\\u0430, \\u0443\\u043b. \\u041d\\u0438\\u043a\\u043e\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f, \\u0434. 25","open":"\\u0441 10\\u0447 \\u0434\\u043e 18\\u0447\\r\\n\\u043e\\u0431\\u0435\\u0434 \\u0441 14\\u0447 \\u0434\\u043e 15\\u0447\\r\\n\\u0432\\u043e\\u0441\\u043a\\u0440\\u0435\\u0441\\u0435\\u043d\\u044c\\u0435 - \\u0432\\u044b\\u0445\\u043e\\u0434\\u043d\\u043e\\u0439","comment":""},"2":{"meta_title":"Online store sneakers","meta_description":"Online store sneakers","meta_keyword":"","name":"Online store sneakers","owner":"Your Name","address":"Moscow, st. Nikolskaya 25","open":"","comment":""}}' WHERE `key` = 'config_langdata';

DELETE FROM `oc_setting` WHERE `code` = 'revpay1';
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
	('', 0, 'revpay1', 'revpay1_sort_order', '1', 0),
	('', 0, 'revpay1', 'revpay1_status', '1', 0),
	('', 0, 'revpay1', 'revpay1_geo_zone_id', '0', 0),
	('', 0, 'revpay1', 'revpay1_order_status_id', '2', 0),
	('', 0, 'revpay1', 'revpay1_total', '0', 0);
	
DELETE FROM `oc_setting` WHERE `code` = 'revpay2';
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
	('', 0, 'revpay2', 'revpay2_total', '0', 0),
	('', 0, 'revpay2', 'revpay2_order_status_id', '2', 0),
	('', 0, 'revpay2', 'revpay2_geo_zone_id', '0', 0),
	('', 0, 'revpay2', 'revpay2_status', '1', 0),
	('', 0, 'revpay2', 'revpay2_sort_order', '2', 0);
	
DELETE FROM `oc_setting` WHERE `code` = 'revship2';
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
	('', 0, 'revship2', 'revship2_geo_zone_id', '0', 0),
	('', 0, 'revship2', 'revship2_status', '1', 0),
	('', 0, 'revship2', 'revship2_sort_order', '2', 0),
	('', 0, 'revship2', 'revship2_cost', '250', 0),
	('', 0, 'revship2', 'revship2_tax_class_id', '0', 0);
	
DELETE FROM `oc_setting` WHERE `code` = 'pickup';
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES	
	('', 0, 'pickup', 'pickup_sort_order', '1', 0),
	('', 0, 'pickup', 'pickup_status', '1', 0),
	('', 0, 'pickup', 'pickup_geo_zone_id', '0', 0);

DELETE FROM `oc_setting` WHERE `code` LIKE 'rev%' AND `key` LIKE 'rev%' AND `key` NOT LIKE 'revtheme_license%' AND `key` NOT LIKE 'revthemel_license';
DELETE FROM `oc_setting` WHERE `code` = 'revolution' AND `key` LIKE 'revolution%';
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
	('', 0, 'revtheme', 'revtheme_home_viewed_products', '{"status":"0","1":{"zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438"},"2":{"zagolovok":"You watched"},"icontype":"1","icon":"fa none","image":"no_image.png","limit":"8"}', 1),
	('', 0, 'revtheme', 'revtheme_footer_user_set', '{"styles":".product-thumb .product-info .compare, .product-thumb .product-info .wishlist {z-index: 5;}, .product-thumb .compare + .wishlist {margin-right: 30px;}, p.dop_contact_1 {display:none}\\r\\n.fa-heart:before {content: &quot;\\\\f08a&quot;;}\\r\\n.fa-user:before {content: &quot;\\\\f2c0&quot;;}\\r\\n#top2 .tel .s22 a {color: #333;}\\r\\nbody, .prlistb, .price {font-family: Ubuntu;}\\r\\n.product-thumb {border: none; border-radius: 6px;}\\r\\n.product-thumb h4 {text-align: center;}\\r\\n.product-thumb .fa-border.fa-shopping-basket, .options_buy .fa-border, .cd-products-comparison-table .fa-border.fa-shopping-basket, .wwicons .fa-border.fa-shopping-basket {background-color: transparent; border: 1px solid #CF102D; color: #CF102D !important; border-radius: 6px; font-size: 15px; padding: 5px 7px;}\\r\\n.product-layout, .home_catwalls .col-lg-2 {padding-right: 10px; padding-left: 10px;}\\r\\n.product-thumb .fa-shopping-basket:before, .product-info .fa-shopping-basket:before {content: none;}\\r\\n.product-info #button-cart .fa {padding-right: 0;}\\r\\n.prlistb {padding-left: 0; display: inline-block;}\\r\\n.product-info .compare .fa, .product-info .wishlist .fa {font-size: 15px; border: transparent; background-color: transparent;}\\r\\n.product-grid .product_buttons, .owl-carousel .product_buttons {position: initial;}\\r\\n.product-thumb .product-info .compare, .product-thumb .product-info .wishlist {position: absolute; top: -13px; right: 4px; background: #fff; padding: 2px; z-index: 1;}\\r\\n.product-thumb .wishlist + .cart {margin-right: 0;}\\r\\n.in_wishlist .fa-heart:before {content: &quot;\\\\f004&quot;;}\\r\\n.home_block a {background: #fff; display: block; padding: 10px; border-radius: 6px;}\\r\\n.home_block a:hover {box-shadow: 0px 0px 45px -25px #000;}\\r\\n.rev_slider {border-top: none; padding-top: 20px; margin: 35px 0 25px 0;}\\r\\n.rev_slider_2 {margin-top: 15px;}\\r\\n.vertical-sreview .caption {background: #fff !important;}\\r\\n.vertical-sreview {border-radius: 6px; border: none;}\\r\\n@media (min-width: 992px) {\\r\\n#revslideshow.owl-carousel {padding: 3px 5px; background: #fff; box-shadow: 0 0 2px 1px #ddd;}\\r\\n.product-thumb {transition: all 100ms linear;}\\r\\n.product-thumb:hover {box-shadow: 5px 5px 35px -20px #000; transform: translateY(-2px); transition: all 100ms linear;}\\r\\n#content .refine_categories a:hover img {box-shadow: 5px 5px 35px -20px #000; transform: translateY(-2px); transition: all 100ms linear;}\\r\\n}\\r\\n#top {border-bottom: 1px solid #ddd;}\\r\\n#top2 .search {margin-top: 10px !important; border-radius: 6px; overflow: hidden; border-color: #ddd;}\\r\\n.search .input-lg {border-color: #ddd;}\\r\\n.header_search_doptext {text-align: center; margin-top: 10px;}\\r\\n#top2 .header_under_phone a {border: 1px solid; padding: 3px 10px; border-radius: 6px; display: inline-block;}\\r\\n#revslideshow {border-radius: 6px;}\\r\\nheader {background: url(..\\/..\\/..\\/..\\/..\\/..\\/image\\/catalog\\/revolution\\/backgrounds\\/brickwall.png) repeat;}\\r\\n#top {border-bottom: 1px solid #ddd; background: rgba(255,255,255, 0.2) !important;}\\r\\n#top2 {background: transparent;}\\r\\n#top {z-index: 8;}\\r\\n#top2 {z-index: 7;}\\r\\nbody {background: url(..\\/..\\/..\\/..\\/..\\/..\\/image\\/catalog\\/revolution\\/backgrounds\\/concrete-texture.jpg) repeat fixed;}\\r\\n#revsubscribe {border-top: 1px solid #ddd; background: url(..\\/..\\/..\\/..\\/..\\/..\\/image\\/catalog\\/revolution\\/backgrounds\\/brickwall.png) repeat;}\\r\\nselect.form-control, input.form-control, textarea.form-control {border-radius: 6px;}\\r\\n#top4 {background: transparent;}\\r\\n.product-layout.new_line .product_buttons .price, .rev_slider .item.new_line .product_buttons .price {float: left;}\\r\\n.product-layout.new_line .product-thumb .product_buttons .clearfix, .rev_slider .item.new_line .product-thumb .product_buttons .clearfix {display: none;}\\r\\n#revsubscribe .col-sm-5 .fa {color: #bbb; opacity: 0.3;}\\r\\nbody {color: #222;}\\r\\n.review-list .text {padding: 15px; background: #fff; border: none; border-radius: 6px;}\\r\\n.review-list .text:after {border-bottom-color: #fff;}\\r\\n.well-sm.otz {border: none; margin-bottom: 20px; padding: 15px; background-color: #fafafa; border-radius: 6px;}\\r\\n.revfilter_container .well, .revfilter_container&gt;br, #content&gt;.well.well-sm, #content&gt;.well.well-sm+br {display: none;}\\r\\n.breadcrumb {border-color: transparent; padding-left: 10px;}\\r\\n.category_description {color: #444;}\\r\\n#revfilter_box {border: none; border-radius: 6px; overflow: hidden;}\\r\\n#revfilter_box .panel-heading {color: #222; background-color: #fafafa; border-color: #eee; display: none;}\\r\\n#revfilter_box .option_box {border-color: #eee;}\\r\\n#revfilter .irs-bar {background-color: #efefef !important; box-shadow: inset 1px 1px 1px #bbb !important;}\\r\\n#revfilter .irs-from, .irs-to, #revfilter .irs-single {background: #fafafa !important;}\\r\\n#revfilter #fo_18 .checkbox, {display: inline-block; margin-right: 20px;}\\r\\n.refine_categories img {border-radius: 6px;}\\r\\n.row {margin: 0 -10px;}\\r\\n.popup-phone-wrapper, .scroll-top-wrapper {border-radius: 20px;}\\r\\n#top3 #menu {margin-right: -30px;}\\r\\n#top3 #menu .navbar-nav {display: table; max-width: 100%; width: 100%;}\\r\\n#top3 #menu .nav&gt;li {display: table-cell; text-align: center; float: none;}\\r\\n#top3 #menu .nav&gt;li+li {border-left: 1px solid rgba(206, 190, 190, 0.2);}\\r\\n#top3 #menu .nav &gt; li &gt; a, #menu .nav &gt; li &gt; .without_a {width: 100%;}\\r\\n#cart #cart-total-popup, #cart #cart-total, #cart_mobi #cart-total_mobi {float: none;}\\r\\n#cart button.cart {border-left: 1px solid rgba(206, 190, 190, 0.15);}\\r\\n#content .refine_categories img {padding: 10px; background: #fff;}\\r\\n.refine_categories + .revfilter_container {border-top: 1px solid #ddd; padding-top: 25px;}\\r\\n#top2 #logo {margin-top: 30px !important; font-size: 20px;}\\r\\n#top2 #logo h1 {font-size: 24px; text-align: center;}\\r\\n.top-links.verh a:hover {background: rgba(255,255,255, 0.3);}\\r\\n.category_description .fl-l {display: none;}\\r\\n@media (min-width: 992px) {\\r\\n#content .col-md-5.product_informationss {width: 50%;}\\r\\n#content .col-md-7.product_informationss {width: 50%;}\\r\\n}\\r\\n.product_informationss .main-image #mainImage {width: 100%;}\\r\\n.images-additional .thumbnail {margin-left: 7.7px; margin-right: 7.7px; margin-bottom: 15px;}\\r\\n#menu .icorightmenu {padding-left: 4px;}\\r\\n#menu a span img, #menu .nav&gt;li&gt;.without_a img, #menu .nav&gt;li&gt;a&gt;img {margin-right: 8px; margin-top: -3px;}\\r\\n.pagination&gt;li&gt;a, .pagination&gt;li&gt;span {background-color: transparent; border-color: #222;}\\r\\na.load_more {background-color: transparent; border-color: #222222; color: #222;}\\r\\n.btn-primary:hover, #popup-view-wrapper .popup-footer a:hover, #popup-view-wrapper .popup-footer a:hover, .btn-primary.active.focus, .btn-primary.active:focus, .btn-primary.active:hover, .btn-primary:active.focus, .btn-primary:active:focus, .btn-primary:active:hover, .open&gt;.dropdown-toggle.btn-primary.focus, .open&gt;.dropdown-toggle.btn-primary:focus, .open&gt;.dropdown-toggle.btn-primary:hover, #popup-view-wrapper .popup-footer a:hover {background-color: transparent; border-color: #CF102D; color: #CF102D;}\\r\\n.pagination&gt;li&gt;a:focus, .pagination&gt;li&gt;a:hover, .pagination&gt;li&gt;span:focus, .pagination&gt;li&gt;span:hover {background-color: transparent; border-color: #CF102D;}\\r\\n.btn-primary, .pagination&gt;.active&gt;a, .pagination&gt;.active&gt;a:focus, .pagination&gt;.active&gt;a:hover, .pagination&gt;.active&gt;span, .pagination&gt;.active&gt;span:focus, .pagination&gt;.active&gt;span:hover, #popup-view-wrapper .popup-footer a, .cd-products-comparison-table .filter_otlich_span.active {background-color: transparent; border-color: #222222; color: #222;}\\r\\n.pagination&gt;.active&gt;span:hover {background: #222; color: #fff;}\\r\\nfooter .container a, footer .container a:active, footer .container a:visited {color: #222;}\\r\\n.pagination&gt;.active&gt;span {background: #222; color: #fff;}\\r\\n.btn-primary.focus, .btn-primary:focus {color: #222; background-color: transparent; border-color: #222; outline: none;}\\r\\n .wwicons .fa-border.fa-shopping-basket:hover {border-color: #CF102D; color: #fff !important;}\\r\\n.pr_in_cart_i {font-size: 16px; top: initial; left: 4px; bottom: -27px; opacity: 1; float: left; width: max-content;}\\r\\n.product-info input[type=&quot;radio&quot;]:checked + label, .product-info input[type=&quot;checkbox&quot;]:checked + label, .product-info input[type=&quot;radio&quot;]:hover + label, .product-info input[type=&quot;checkbox&quot;]:hover + label, #revfilter_box .image-filter input:checked + img {box-shadow: none; border-color: #CF102D !important;}\\r\\n.product-info input[type=\'radio\'] + label .fa, .product-info input[type=\'checkbox\'] + label .fa {display: none !important;}\\r\\n.well-sm.product-info {background: #fff; border-radius: 6px; border: none; padding: 15px 15px 17px 15px; margin-top: 15px; margin-bottom: 0;}\\r\\n.product-info .pokupka {border: none; margin: 18px 0px -5px 0px; padding: 10px 0 5px 0;}\\r\\n.product-info hr {display: none;}\\r\\n.product-info .pop_right {float: left; margin-top: 5px; margin-left: 10px;}\\r\\n.well-sm.product-info label {margin-bottom: 10px;}\\r\\n.well-sm.product-info .options_no_buy {margin-bottom: 7px;}\\r\\n.well .form-group.required .btn {border-color: #eee; background: #fafafa;}\\r\\n.product-info input[type=\'radio\']:checked + label, .product-info input[type=\'checkbox\']:checked + label {border-color: #CF102D}\\r\\n#cloud-zoom-big, .main_img_box .image &gt; #wrap {border-radius: 6px; overflow: hidden; border: none;}\\r\\n.product_informationss &gt; ul.list-unstyled {padding-left: 5px;}\\r\\n.mb20 .nav-tabs {margin-bottom: -1px; border: none;}\\r\\n.mb20 .tab-content {background: #fff; padding: 25px 15px 15px 15px; border-radius: 6px;}\\r\\nbody, #all_document, header, #top, #top2, .rev_slider .owl-pagination, .rev_slider .heading_h, #product_products .owl-pagination, #product_products h3, .nav-tabs&gt;li.active&gt;a, .nav-tabs&gt;li.active&gt;a:focus, .nav-tabs&gt;li.active&gt;a:hover, #top3_links, .vertical-sreview .caption {background-color: transparent;}\\r\\n.nav-tabs&gt;li.active&gt;a, .nav-tabs&gt;li.active&gt;a:focus, .nav-tabs&gt;li.active&gt;a:hover {border-radius: 6px 6px 0 0; border: none; background-color: transparent; font-weight: bold;}\\r\\n.nav-tabs&gt;li&gt;a:hover {border-color: transparent; background: transparent;}\\r\\n.nav-tabs&gt;li&gt;a {font-size: 15px; padding-bottom: 15px;}\\r\\n.product-info .form-group {padding: 0 0 0 2px; overflow: hidden;}\\r\\n.col-sm-12.col-md-7.product_informationss {margin-bottom: 10px;}\\r\\n#owl-images .item, #owl-images-popup .item {margin: 3px; padding: 3px; background: #fff; border-radius: 6px;}\\r\\n.product-info input[type=\'radio\'] + label, .product-info input[type=\'checkbox\'] + label {min-width: initial; border-radius: 20px; padding: 5px 9px;}\\r\\n.product-thumb .description_options {display: flex;}\\r\\n.product-info #button-cart, .popup_notification .popup-footer a, #popup-order-okno .popup-footer a, #popup-okno .popup-footer a, .btn-danger {background-color: transparent; color: #CF102D; border: 1px solid #CF102D; border-radius: 6px; height: initial; line-height: initial; padding: 6px 12px;}\\r\\n.product-info #button-cart:hover, .popup-phone-wrapper, .popup_notification .popup-footer a:hover, #popup-order-okno .popup-footer a:hover, #popup-okno .popup-footer a:hover, .btn-danger:hover {color: #fff;}\\r\\n.btn {border-radius: 6px;}\\r\\n.table-revolution {background: #fff; border-radius: 6px; border: none; overflow: hidden;}\\r\\n.table-revolution&gt;tbody&gt;tr&gt;td {border-bottom: none;}\\r\\n.table-revolution&gt;tbody&gt;tr+tr {border-top: 1px solid #eee;}\\r\\n#revcheckout {padding: 20px 0; background: #fff; border-radius: 6px;}\\r\\n#revcheckout .panel-default&gt;.panel-heading {background: #f5f5f5; border-radius: 6px;}\\r\\n#revcheckout .table&gt;thead {background: #f5f5f5;}\\r\\n#revcheckout .rev_cart {box-shadow: none; padding: 1px; border: 1px solid #ddd !important; border-radius: 6px;}\\r\\n#revcheckout .btn-danger {font-size: 17px;}\\r\\n#popup-order-okno, #popup-okno, .mfp-zoom-in.mfp-ready .mfp-content &gt; div {border-radius: 6px; overflow: hidden;}\\r\\n.popup_notification_heading.default, .modalokno .popup_notification_heading, #popup-order-okno .mfp-close, #popup-okno .mfp-close, #popup-order-okno .popup-heading, #popup-okno .popup-heading {background-color: #f5f5f5;}\\r\\n.popup_notification .popup-footer button, #popup-order-okno .popup-footer button, #popup-okno .popup-footer button {border-radius: 6px;}\\r\\n#revsubscribe_form input {background: #fcfcfc; box-shadow: inset 0 1px 1px rgba(0,0,0, 0.2);}\\r\\n#revcheckout .ship_metod .panel-default&gt;.panel-heading {display: none;}\\r\\n#revcheckout .ship_metod .panel {border-top: 1px solid #eee; margin-top: -10px; padding-top: 12px;}\\r\\nfooter .container a, footer .container a:active, footer .container a:visited {color: #fff;}\\r\\nfooter #revsubscribe_submit {color: #222; margin: 1px 0 0 0;}\\r\\nfooter .container .footer_cfs .last_ul_cf a:hover {color: #bbb; padding-left: 2px; transition: padding 80ms linear;}\\r\\n.footer .zag_dm_cf {color: #ccc; border-bottom: 1px solid #888;}\\r\\n.footer_cfs .soc_s {padding: 0; text-align: left;}\\r\\n.footer .last_ul_cf {margin-top: 6px; padding-left: 3px;}\\r\\n.cf_3_width {width: 55% !important; color: #ccc;}\\r\\n.footer .soc_s_texts {float: left; margin-right: 25px;}\\r\\nfooter .soc_s a {margin-right: 20px;}\\r\\n.bottom_cookie_block a {border: 1px solid #222;}\\r\\n.image .stiker_best {color: #222; background-color: #eee; padding: 1px 10px; border-radius: 6px; margin-top: 0; margin-left: -6px;}\\r\\n.image .main-image .stiker_best {margin-top: 6px; margin-left: 1px;}\\r\\n#revfilter_box .option_box .checkbox, #revfilter_box .option_box .radio {display: inline-block; margin-right: 9px;}\\r\\ninput[type=&quot;radio&quot;], .radio input[type=&quot;radio&quot;], .radio-inline input[type=&quot;radio&quot;], input[type=&quot;checkbox&quot;], .checkbox input[type=&quot;checkbox&quot;], .checkbox-inline input[type=&quot;checkbox&quot;], input[type=&quot;radio&quot;]:checked, .radio input[type=&quot;radio&quot;]:checked, .radio-inline input[type=&quot;radio&quot;]:checked, input[type=&quot;checkbox&quot;]:checked, .checkbox input[type=&quot;checkbox&quot;]:checked, .checkbox-inline input[type=&quot;checkbox&quot;]:checked {background: transparent;}\\r\\n.review-list .text {background: #fafafa;}\\r\\n.review-list .text:before {z-index: 1; border-bottom-color: #fafafa;}\\r\\n.revolution-revstorereview .review-list .text {background: #ffffff;}\\r\\n.revolution-revstorereview .review-list .text:before {z-index: 1; border-bottom-color: #ffffff;}\\r\\n.review-list .answer_admin {padding: 15px; display: inline-block; border-radius: 6px;}\\r\\n#revcheckout .btn-plus button, #revcheckout .btn-minus button, .product-info .btn-plus button, .product-info .btn-minus button, .display-products-cart .btn-plus button, .display-products-cart .btn-minus button {background: transparent; font-size: 15px;}\\r\\n#revcheckout .btn-plus button:hover, #revcheckout .btn-minus button:hover, .product-info .btn-plus button:hover, .product-info .btn-minus button:hover, .display-products-cart .btn-plus button:hover, .display-products-cart .btn-minus button:hover {background-color: transparent;}\\r\\n.product-info .number, .display-products-cart .number, #revcheckout .number {border: none;}\\r\\n.product-info input.plus-minus, .display-products-cart input.plus-minus, #revcheckout input.plus-minus {border: 1px solid #ddd; border-radius: 6px;}\\r\\n.product-info .pokupka .preimushestva {margin-bottom: 5px;}\\r\\n.product-info .pokupka .preimushestva .home_block a:hover {box-shadow: none;}\\r\\n.product-info .pokupka .preimushestva .home_block .text {margin-left: 60px;}\\r\\n.product-info .form-group .list-unstyled .update_special {margin-left: 5px;}\\r\\n.revblog-list + .revblog-list .product-thumb {border-top: none; margin-top: 15px;}\\r\\n.revblog-list .product-thumb {border-radius: 6px; padding: 15px;}\\r\\n.revblog-list .product-thumb:hover {transform: none;}\\r\\n#product_products {border-top: none;}\\r\\n.revblog-list .product-thumb .image {margin-right: 20px;}\\r\\n.home_catwalls .product-thumb .caption {display: none;}\\r\\n.home_block a {padding: 15px;}\\r\\n.home_block .text .title + p {border-top: none;}\\r\\n#top form#language li img {margin-right: 3px;}\\r\\n.mmmenu .img_sub {right: 10px; opacity: 0.8; width: 12%;}\\r\\n.product-info .opt_with_img input + .label-in-img {overflow: hidden; padding: 0px;}\\r\\n.product-info .opt_with_img .img-thumbnail {margin: 0; width: 25px;}\\r\\n.rev_slider .product-thumb .description + .well-sm.product-info .options .form-group + .form-group, .product-grid .product-thumb .description + .well-sm.product-info .options .form-group + .form-group {display: none;}\\r\\n@media (max-width: 767px) {\\r\\n#top {background: #222 !important; z-index: 9; border-bottom: none;}\\r\\n#top2 #logo {margin-top: -19px !important;}\\r\\n#revfilter_box_open {right: -34px !important;}\\r\\n#top2 {border-bottom: 1px solid #ddd;}\\r\\n.rev_slider {margin-top: 20px;}\\r\\n#top5 {margin-top: -10px;}\\r\\n.product-layout.new_line .product_buttons .price, .rev_slider .item.new_line .product_buttons .price {float: none;}\\r\\n#cart_mobi {margin-left: 0;}\\r\\n.top-links.verh a.dropdown-toggle {padding: 0 10px; background-color: transparent;}\\r\\n.images-additional {text-align: center;}\\r\\n.product-info .pop_right {clear: none;}\\r\\n.product-info #button-cart {margin-left: 10px; padding: 6px 12px; line-height: initial; height: initial;}\\r\\n.well-sm.product-info {margin-top: 10px; padding-bottom: 20px;}\\r\\n.product-info .form-group {line-height: initial; margin: 0; padding: 0;}\\r\\n.nav-tabs&gt;li&gt;a {font-size: 13px !important;}\\r\\n}\\r\\n@media (max-width: 991px) {\\r\\n.product-thumb .description_options {display: block;}\\r\\n.rev_slider .product-thumb .description + .well-sm.product-info, .product-grid .product-thumb .description + .well-sm.product-info {display: none;}\\r\\n.product-thumb .cart {display: none;}\\r\\n}\\r\\n@media (min-width: 992px) {\\r\\n.product-grid .product-thumb .description, .rev_slider .product-thumb .description {display: none;}\\r\\n.rev_slider .product-thumb .description + .well-sm.product-info, .product-grid .product-thumb .description + .well-sm.product-info {margin-top: -5px; background: transparent; border: none; border-right: none;}\\r\\n#top2 .tel .s22 {font-size: 21px;}\\r\\n}","scripts":"&lt;script&gt;$(\'.cart a\').removeAttr(\'title\');&lt;\\/script&gt;"}', 1),
	('', 0, 'revtheme', 'revtheme_cat_compare', '{"cat_sort":"1","main_cat":"0","compare_price":"1","compare_model":"1","compare_sku":"0","compare_manuf":"1","compare_stock":"1","compare_rate":"1","compare_srtdesc":"0","compare_weight":"0","compare_razmer":"0","compare_atrib":"1","compare_atribgr":"0"}', 1),
	('', 0, 'revtheme', 'revtheme_cat_mods', '{"viewed_products":"0","1":{"viewed_products_zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438"},"2":{"viewed_products_zagolovok":"You watched"},"viewed_products_limit":"8"}', 1),
	('', 0, 'revtheme', 'revtheme_cat_attributes', '{"description_on":"1","description_in_grid":"1","options_in_cat":"1","options_in_grid":"1","short_desc":"0","zamena_description":"1","manufacturer":"0","model":"0","sku":"0","stock":"0","length":"0","weight":"0","attributes_status":"1","show_name":"1","show_tags":"1","count":"5","separator":"&lt;br&gt;"}', 1),
	('', 0, 'revtheme', 'revtheme_product_all', '{"popup_purchase":"0","zakaz":"0","zakaz_price_null":"0","recalc_price":"0","recalc_price_animate":"0","q_zavisimost":"1","countdown":"0","recpr_rightc":"0","answers":"1","blogs":"1","share_status":"0","short_desc":"0","pr_tabs":"1","desc_cols":"0","spec_cols":"0","atributs":"1","atributs_group_name":"0","atributs_ssilka_all":"0","manufacturer_status":"1","model_status":"1","sku_status":"1","bonusbals_status":"0","sklad_status":"0","ostatok_status":"1","weight_status":"1","razmers":"1","opt_price":"1","options_two_in_line":"1","options_ravno_plus":"0","option_f_auto":"0","option_img_options":"0","options_buy":"0","options_buy_optionname":"1","options_buy_optionname_one":"1","options_buy_foto":"0","options_buy_model":"1","options_buy_quantity":"1","options_buy_click":"0"}', 1),
	('', 0, 'revtheme', 'revtheme_predzakaz', '{"status":"1","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"1","comment":"1","order_status":"2"}', 1),
	('', 0, 'revtheme', 'revtheme_product_all_attribute_group', '["4"]', 1),
	('', 0, 'revtheme', 'revtheme_product_images', '{"zoom":"1","slider":"1"}', 1),
	('', 0, 'revtheme', 'revtheme_product_mods', '{"viewed_products":"1","1":{"viewed_products_zagolovok":"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438","text_block_zagolovok":""},"2":{"viewed_products_zagolovok":"You watched","text_block_zagolovok":""},"viewed_products_limit":"8","text_block":"1","text_block_cols":"col-sm-6","text_block_cols_2":"col-sm-6"}', 1),
	('', 0, 'revtheme', 'revtheme_footer_all', '{"in_top":"1","popup_phone":"1","f_map":"0","copy":"1","1":{"copy_text":""},"2":{"copy_text":""}}', 1),
	('', 0, 'revtheme', 'revtheme_custom_footer', '{"status":"1","dops_pc_status":"0","cf_1_status":"1","cf_1_width":"25","cf_2_status":"1","cf_2_width":"20","cf_3_status":"1","cf_3_width":"50","cf_4_status":"0","cf_4_width":"20","cf_5_status":"0","cf_5_width":"20","1":{"cf_1_description":"","cf_2_description":"","cf_3_description":"&lt;div class=&quot;soc_s_texts&quot;&gt;\\u041c\\u044b \\u0432 \\u0441\\u043e\\u0446.\\u0441\\u0435\\u0442\\u044f\\u0445:&lt;\\/div&gt;\\r\\n&lt;div class=&quot;soc_s&quot;&gt;\\r\\n&lt;a href=&quot;https:\\/\\/vk.com&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-vk&quot; data-toggle=&quot;tooltip&quot; title=&quot;&quot; data-original-title=&quot;Vkontakte&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n&lt;a href=&quot;https:\\/\\/youtube.com&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-youtube&quot; data-toggle=&quot;tooltip&quot; title=&quot;&quot; data-original-title=&quot;Youtube&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n&lt;a href=&quot;https:\\/\\/whatsapp.com&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-whatsapp&quot; data-toggle=&quot;tooltip&quot; title=&quot;&quot; data-original-title=&quot;Whatsapp&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;br&gt;\\r\\n\\u0418\\u0437-\\u043f\\u043e\\u0434 \\u0441\\u0442\\u0430\\u043d\\u043a\\u0430 \\u043b\\u0435\\u0433\\u0435\\u043d\\u0434\\u0430\\u0440\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0441\\u043f\\u043e\\u0440\\u0442\\u0438\\u0432\\u043d\\u043e\\u0439 \\u043e\\u0431\\u0443\\u0432\\u0438 \\u0435\\u0436\\u0435\\u0434\\u043d\\u0435\\u0432\\u043d\\u043e \\u0432\\u044b\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043d\\u043e\\u0432\\u044b\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u043e\\u043a \\u0438 \\u043a\\u0435\\u0434, \\u043f\\u0440\\u0438\\u0437\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0443\\u043a\\u0440\\u0430\\u0441\\u0438\\u0442\\u044c \\u043e\\u0447\\u0435\\u0440\\u0435\\u0434\\u043d\\u043e\\u0439 \\u0441\\u0435\\u0437\\u043e\\u043d \\u0443\\u043b\\u0438\\u0447\\u043d\\u043e\\u0439 \\u043c\\u043e\\u0434\\u044b \\u0438 \\u0441\\u0442\\u0430\\u0442\\u044c \\u043a\\u0443\\u043b\\u044c\\u0442\\u043e\\u0432\\u044b\\u043c\\u0438 \\u0434\\u043b\\u044f \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0435\\u0433\\u043e \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u044f \\u043b\\u044e\\u0434\\u0435\\u0439 \\u043f\\u043e \\u0432\\u0441\\u0435\\u043c\\u0443 \\u043c\\u0438\\u0440\\u0443. \\u0418 \\u0435\\u0441\\u043b\\u0438 \\u043e\\u0442\\u043c\\u0435\\u043d\\u043d\\u043e\\u0435 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0438 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 Adidas, Nike \\u0438 Puma \\u0434\\u0430\\u0432\\u043d\\u043e \\u043d\\u0435 \\u0432\\u044b\\u0437\\u044b\\u0432\\u0430\\u0435\\u0442 \\u0441\\u043e\\u043c\\u043d\\u0435\\u043d\\u0438\\u0439, \\u0442\\u043e \\u0442\\u0440\\u0443\\u0434 \\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u043e\\u0432 \\u0437\\u0430\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u0435\\u0442 \\u0432\\u044b\\u0441\\u0448\\u0435\\u0439 \\u043f\\u043e\\u0445\\u0432\\u0430\\u043b\\u044b.","cf_4_description":"","cf_5_description":""},"2":{"cf_1_description":"","cf_2_description":"","cf_3_description":"&lt;div class=&quot;soc_s_texts&quot;&gt;We are in social networks:&lt;\\/div&gt;\\r\\n&lt;div class=&quot;soc_s&quot;&gt;\\r\\n&lt;a href=&quot;https:\\/\\/vk.com&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-vk&quot; data-toggle=&quot;tooltip&quot; title=&quot;&quot; data-original-title=&quot;Vkontakte&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n&lt;a href=&quot;https:\\/\\/youtube.com&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-youtube&quot; data-toggle=&quot;tooltip&quot; title=&quot;&quot; data-original-title=&quot;Youtube&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n&lt;a href=&quot;https:\\/\\/whatsapp.com&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-whatsapp&quot; data-toggle=&quot;tooltip&quot; title=&quot;&quot; data-original-title=&quot;Whatsapp&quot;&gt;&lt;\\/i&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;br&gt;\\r\\nEvery day, new models of sneakers and sneakers come out of the machine of legendary manufacturers of sports shoes, designed to decorate the next season of street fashion and become iconic for the next generation of people around the world. And if the excellent quality and manufacturability of Adidas, Nike and Puma products have long been beyond doubt, then the work of modern designers deserves the highest praise.","cf_4_description":"","cf_5_description":""}}', 1),
	('', 0, 'revtheme', 'revtheme_dop_menu_cf', '[{&quot;id&quot;:1,&quot;name1&quot;:&quot;Информация&quot;,&quot;name2&quot;:&quot;Information&quot;,&quot;href1&quot;:&quot;&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;fa fa-info-circle&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{},&quot;children&quot;:[{&quot;id&quot;:2,&quot;name1&quot;:&quot;О магазине&quot;,&quot;name2&quot;:&quot;About shop&quot;,&quot;href1&quot;:&quot;o_magazine&quot;,&quot;href2&quot;:&quot;o_magazine&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:3,&quot;name1&quot;:&quot;Доставка и оплата&quot;,&quot;name2&quot;:&quot;Shipping and payment&quot;,&quot;href1&quot;:&quot;dostavka_i_oplata&quot;,&quot;href2&quot;:&quot;dostavka_i_oplata&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:5,&quot;name1&quot;:&quot;Гарантия&quot;,&quot;name2&quot;:&quot;Waranty&quot;,&quot;href1&quot;:&quot;garantiya&quot;,&quot;href2&quot;:&quot;garantiya&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:6,&quot;name1&quot;:&quot;Контакты&quot;,&quot;name2&quot;:&quot;Contacts&quot;,&quot;href1&quot;:&quot;contact-us&quot;,&quot;href2&quot;:&quot;contact-us&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{}}]},{&quot;id&quot;:7,&quot;name1&quot;:&quot;Покупателям&quot;,&quot;name2&quot;:&quot;Buyers&quot;,&quot;href1&quot;:&quot;&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;fa fa-user-circle&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{},&quot;children&quot;:[{&quot;id&quot;:9,&quot;name1&quot;:&quot;Политика конфиденциальности&quot;,&quot;name2&quot;:&quot;Privacy policy&quot;,&quot;href1&quot;:&quot;politika_konfidencialnosti&quot;,&quot;href2&quot;:&quot;politika_konfidencialnosti&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf&quot;:&quot;&quot;,&quot;dop_menu_image_cf&quot;:&quot;&quot;,&quot;&quot;:{}}]}]', 0),
	('', 0, 'revtheme_catattribs', 'revtheme_catattribs_settings', '{"attributes":{"36":{"show":"0","replace":""},"37":{"show":"1","replace":""},"35":{"show":"0","replace":""},"34":{"show":"0","replace":""}}}', 1),
	('', 0, 'revtheme_filter', 'revtheme_filter', '{"status":"1","1":{"title":"\\u0424\\u0438\\u043b\\u044c\\u0442\\u0440"},"2":{"title":"Filter"},"razdelitel":", ","filter_price":"1","filter_price_setka":"1","filter_price_step":"50","filter_instock":"0","filter_instock_vid":"1","filter_gr":"false","filter_gr_vid":"1","filter_subcategories":"false","filter_subcategories_vid":"0","filter_manufacturer":"checkbox","filter_manufacturer_vid":"0","filter_sposob":"1","filter_count_products":"0","filter_setka":"0","scripts":"$(\'.cart a\').removeAttr(\'title\');","filter_option":{"18":{"option_type":"checkbox","option_sort":"0","option_vid":"0"}},"filter_attribute":{"36":{"attribute_type":"checkbox","attribute_sort":"0","attribute_vid":"0"},"37":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"35":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"},"34":{"attribute_type":"false","attribute_sort":"0","attribute_vid":"0"}},"filter_m_grs":"1"}', 1),
	('', 0, 'revtheme', 'revtheme_home_socv', '{"status_vk":"0","width_vk":"260","height_vk":"280","id_vk":"20003922","status_fb":"0","width_fb":"","height_fb":"","id_fb":"","status_ok":"0","width_ok":"","height_ok":"","id_ok":"","status_insta":"0","right_insta":"0","width_insta":"260","limit_insta":"","id_insta":"","name_insta":""}', 1),
	('', 0, 'revtheme', 'revtheme_home_storereview', '{"status":"1","1":{"title":"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u0435\\u0439","button_all_text":"\\u0427\\u0438\\u0442\\u0430\\u0442\\u044c \\u0432\\u0441\\u0435"},"2":{"title":"Customer reviews","button_all_text":"Read all"},"icontype":"1","icon":"fa fa-comments-o","image":"no_image.png","button_all":"1","limit":"6","order":"0","limit_text":"200"}', 1),
	('', 0, 'revblog', 'revblog_settings', '{"category_image_status":"1","category_image_width":"80","category_image_height":"80","list_desc_limit":"270","list_image_width":"80","list_image_height":"80","main_image_status":"0","form_image_width":"400","form_image_height":"400","images_image_width":"213","images_image_height":"213","share_status":"0","not_view_null":"1"}', 1),
	('', 0, 'revtheme', 'revtheme_geo_set', '{"status":"1"}', 1),
	('', 0, 'revtheme', 'revtheme_geo', '{"1":{"city":"\\u0421\\u0430\\u043d\\u043a\\u0442-\\u043f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433","code":"\\u0432 \\u041c\\u043e\\u0441\\u043a\\u0432\\u0435","text":{"1":"\\u0432 \\u0421\\u0430\\u043d\\u043a\\u0442-\\u043f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433\\u0435","2":"in St. Petersburg"}},"2":{"city":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f","code":"\\u0432 \\u041c\\u043e\\u0441\\u043a\\u0432\\u0435","text":{"1":"\\u0432 \\u041c\\u043e\\u0441\\u043a\\u0432\\u0435","2":"in Moscow"}},"3":{"city":"\\u041a\\u0438\\u0435\\u0432","code":"\\u0432 \\u041c\\u043e\\u0441\\u043a\\u0432\\u0435","text":{"1":"\\u0432 \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0435","2":"in Ukraine"}},"4":{"city":"\\u041c\\u0438\\u043d\\u0441\\u043a","code":"\\u0432 \\u041c\\u043e\\u0441\\u043a\\u0432\\u0435","text":{"1":"\\u0432 \\u0411\\u0435\\u043b\\u0430\\u0440\\u0443\\u0441\\u0438","2":"in Belarus"}},"5":{"city":"\\u0410\\u0441\\u0442\\u0430\\u043d\\u0430","code":"\\u0432 \\u041c\\u043e\\u0441\\u043a\\u0432\\u0435","text":{"1":"\\u0432 \\u041a\\u0430\\u0437\\u0430\\u0445\\u0441\\u0442\\u0430\\u043d\\u0435","2":"in Kazakhstan"}},"6":{"city":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a","code":"\\u0432 \\u041c\\u043e\\u0441\\u043a\\u0432\\u0435","text":{"1":"\\u0432 \\u041d\\u043e\\u0432\\u043e\\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a\\u0435","2":"in Novosibirsk"}},"7":{"city":"\\u041e\\u043c\\u0441\\u043a","code":"\\u0432 \\u041c\\u043e\\u0441\\u043a\\u0432\\u0435","text":{"1":"\\u0432 \\u041e\\u043c\\u0441\\u043a\\u0435","2":"in Omsk"}}}', 1),
	('', 0, 'revtheme', 'revtheme_seo', '{"seogen_rewrite":"1","product_url":"{product_name}","product_meta_title":{"1":"","2":""},"product_meta_h1":{"1":"{product_name}","2":"{product_name}"},"product_meta_description":{"1":"","2":""},"product_meta_keyword":{"1":"","2":""},"category_url":"{category_name}","category_meta_title":{"1":"data_category_meta_title","2":"data_category_meta_title"},"category_meta_h1":{"1":"{category_name}","2":"{category_name}"},"category_meta_description":{"1":"data_category_meta_description","2":"data_category_meta_description"},"category_meta_keyword":{"1":"data_category_meta_keyword","2":"data_category_meta_keyword"},"manufacturer_url":"{manufacturer_name}","manufacturer_meta_title":{"1":"","2":""},"manufacturer_meta_h1":{"1":"{manufacturer_name}","2":"{manufacturer_name}"},"manufacturer_meta_description":{"1":"","2":""},"manufacturer_meta_keyword":{"1":"","2":""},"information_url":"{information_name}","information_meta_title":{"1":"{information_name}","2":"{information_name}"},"information_meta_h1":{"1":"{information_name}","2":"{information_name}"},"information_meta_description":{"1":"{information_name}","2":"{information_name}"},"information_meta_keyword":{"1":"{information_name}","2":"{information_name}"},"revblog_category_url":"{revblog_category_name}","revblog_category_meta_title":{"1":"{revblog_category_name}","2":"{revblog_category_name}"},"revblog_category_meta_description":{"1":"{revblog_category_name}","2":"{revblog_category_name}"},"revblog_category_meta_keyword":{"1":"data_revblog_category_meta_keyword","2":"data_revblog_category_meta_keyword"},"revblog_url":"{revblog_name}","revblog_meta_title":{"1":"{revblog_name}","2":"{revblog_name}"},"revblog_meta_description":{"1":"data_revblog_meta_description","2":"data_revblog_meta_description"},"revblog_meta_keyword":{"1":"data_revblog_meta_keyword","2":"data_revblog_meta_keyword"}}', 1),
	('', 0, 'revtheme', 'revtheme_home_all', '{"1":{"h1_home":""},"2":{"h1_home":""},"pr_opisanie":"1","revsliders_tab":"0"}', 1),
	('', 0, 'revtheme', 'revtheme_home_slideshow', '{"status":"1","banner_id":"7","allwide":"0","mobile":"1","slides":"1","autoscroll":"9","width":"1540","height":"589","b_color":"F2F2F2"}', 1),
	('', 0, 'revtheme', 'revtheme_blocks_home', '{"status":"1","effect":"1"}', 1),
	('', 0, 'revtheme', 'revtheme_blocks_home_item', '{"10":{"icontype":"0","icon":"fa fa-send-o","image":"catalog\\/revolution\\/demo_tovars\\/shoes\\/icons\\/1.png","title":{"1":"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u043f\\u043e \\u043c\\u0438\\u0440\\u0443","2":"Worldwide delivery"},"description":{"1":"\\u041e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u043c \\u0442\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043b\\u044e\\u0431\\u043e\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434 \\u043c\\u0438\\u0440\\u0430","2":"Send goods to any city in the world"},"link":{"1":"dostavka_i_oplata","2":"dostavka_i_oplata"},"checkbox":"1","sort":"1"},"11":{"icontype":"0","icon":"fa fa-refresh","image":"catalog\\/revolution\\/demo_tovars\\/shoes\\/icons\\/2.png","title":{"1":"\\u0412\\u043e\\u0437\\u0432\\u0440\\u0430\\u0442 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430","2":"Purchase returns"},"description":{"1":"\\u0412\\u0435\\u0440\\u043d\\u0435\\u043c \\u0432\\u0430\\u043c \\u0434\\u0435\\u043d\\u044c\\u0433\\u0438 \\u0432 \\u0441\\u0440\\u043e\\u043a \\u0434\\u043e 30 \\u0434\\u043d\\u0435\\u0439","2":"We will refund your money in up to 30 days"},"link":{"1":"garantiya","2":"garantiya"},"sort":"2"},"12":{"icontype":"0","icon":"fa fa-registered","image":"catalog\\/revolution\\/demo_tovars\\/shoes\\/icons\\/3.png","title":{"1":"100% \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f","2":"100% guaranteed"},"description":{"1":"\\u0412\\u0441\\u0435 \\u043d\\u0430\\u0448\\u0438 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b \\u0441\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u0446\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u044b","2":"All our products are certified"},"link":{"1":"garantiya","2":"garantiya"},"checkbox":"1","sort":"3"},"13":{"icontype":"0","icon":"fa fa-comments-o","image":"catalog\\/revolution\\/demo_tovars\\/shoes\\/icons\\/4.png","title":{"1":"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b \\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435","2":"Positive reviews"},"description":{"1":"\\u041d\\u0430\\u0448\\u0438 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u0438 \\u043b\\u044e\\u0431\\u044f\\u0442 \\u043d\\u0430\\u0441","2":"Our customers love us"},"link":{"1":"otzivy","2":"otzivy"},"sort":"4"}}', 1),
	('', 0, 'revtheme', 'revtheme_home_categorywall', '{"status":"1","mobi_status":"0","1":{"title":""},"2":{"title":""},"icontype":"1","icon":"fa fa-folder-o","image":"no_image.png","sort_order":"1","categories":"1","group_manufs":"0","group_manufs_simbol":"0","group_manufs_link":{"1":"","2":""},"group_manufs_link_href":""}', 1),
	('', 0, 'revtheme', 'revtheme_home_categorywall_categories', '["112","111","116","114","113","128"]', 1),
	('', 0, 'revtheme', 'revtheme_home_categorywall_manufacturers', '["33"]', 1),
	('', 0, 'revtheme', 'revtheme_home_tabs', '0', 0),
	('', 0, 'revtheme', 'revtheme_home_last', '{"status":"1","1":{"title":"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438"},"2":{"title":"Latest"},"url_all":"0","icontype":"1","icon":"fa fa-calendar-o","image":"","limit":"12","not_view_null":"0","slider":"0","autoscroll":"","image_width":"240","image_height":"150"}', 1),
	('', 0, 'revtheme', 'revtheme_home_best', '{"status":"0","1":{"title":"\\u0425\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436"},"2":{"title":"Best sellers"},"url_all":"0","icontype":"1","icon":"fa fa-star-o","image":"no_image.png","limit":"12","not_view_null":"0","slider":"1","autoscroll":"","image_width":"240","image_height":"150"}', 1),
	('', 0, 'revtheme', 'revtheme_home_spec', '{"status":"1","1":{"title":"\\u0410\\u043a\\u0446\\u0438\\u0438"},"2":{"title":"Specials"},"url_all":"0","icontype":"1","icon":"fa fa-bell-o","image":"","limit":"12","not_view_null":"0","slider":"1","autoscroll":"5","image_width":"240","image_height":"150"}', 1),
	('', 0, 'revtheme', 'revtheme_slider_1', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"","count":"12","not_view_null":"0","slider":"1","image_width":"240","image_height":"150","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', 1),
	('', 0, 'revtheme', 'revtheme_slider_3', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"","count":"12","not_view_null":"0","slider":"1","image_width":"240","image_height":"150","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', 1),
	('', 0, 'revtheme', 'revtheme_aboutstore_home', '{"status":"1","1":{"title":"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u043e\\u043a","description":"&lt;p&gt;&lt;span style=&quot;color:rgb(71, 59, 57); font-family:roboto; font-size:14px&quot;&gt;\\u0418\\u0437-\\u043f\\u043e\\u0434 \\u0441\\u0442\\u0430\\u043d\\u043a\\u0430 \\u043b\\u0435\\u0433\\u0435\\u043d\\u0434\\u0430\\u0440\\u043d\\u044b\\u0445 \\u043f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u0441\\u043f\\u043e\\u0440\\u0442\\u0438\\u0432\\u043d\\u043e\\u0439 \\u043e\\u0431\\u0443\\u0432\\u0438 \\u0435\\u0436\\u0435\\u0434\\u043d\\u0435\\u0432\\u043d\\u043e \\u0432\\u044b\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043d\\u043e\\u0432\\u044b\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0438 \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u043e\\u043a \\u0438 \\u043a\\u0435\\u0434, \\u043f\\u0440\\u0438\\u0437\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0443\\u043a\\u0440\\u0430\\u0441\\u0438\\u0442\\u044c \\u043e\\u0447\\u0435\\u0440\\u0435\\u0434\\u043d\\u043e\\u0439 \\u0441\\u0435\\u0437\\u043e\\u043d \\u0443\\u043b\\u0438\\u0447\\u043d\\u043e\\u0439 \\u043c\\u043e\\u0434\\u044b \\u0438 \\u0441\\u0442\\u0430\\u0442\\u044c \\u043a\\u0443\\u043b\\u044c\\u0442\\u043e\\u0432\\u044b\\u043c\\u0438 \\u0434\\u043b\\u044f \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0435\\u0433\\u043e \\u043f\\u043e\\u043a\\u043e\\u043b\\u0435\\u043d\\u0438\\u044f \\u043b\\u044e\\u0434\\u0435\\u0439 \\u043f\\u043e \\u0432\\u0441\\u0435\\u043c\\u0443 \\u043c\\u0438\\u0440\\u0443. \\u0418 \\u0435\\u0441\\u043b\\u0438 \\u043e\\u0442\\u043c\\u0435\\u043d\\u043d\\u043e\\u0435 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u043e \\u0438 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u0438 Adidas, Nike \\u0438 Puma \\u0434\\u0430\\u0432\\u043d\\u043e \\u043d\\u0435 \\u0432\\u044b\\u0437\\u044b\\u0432\\u0430\\u0435\\u0442 \\u0441\\u043e\\u043c\\u043d\\u0435\\u043d\\u0438\\u0439, \\u0442\\u043e \\u0442\\u0440\\u0443\\u0434 \\u0441\\u043e\\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u043d\\u044b\\u0445 \\u0434\\u0438\\u0437\\u0430\\u0439\\u043d\\u0435\\u0440\\u043e\\u0432 \\u0437\\u0430\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u0435\\u0442 \\u0432\\u044b\\u0441\\u0448\\u0435\\u0439 \\u043f\\u043e\\u0445\\u0432\\u0430\\u043b\\u044b. \\u0418\\u043c\\u0435\\u044e\\u0449\\u0435\\u0435\\u0441\\u044f \\u0441\\u0435\\u0433\\u043e\\u0434\\u043d\\u044f \\u0440\\u0430\\u0437\\u043d\\u043e\\u043e\\u0431\\u0440\\u0430\\u0437\\u0438\\u0435 \\u043c\\u043e\\u0434\\u0435\\u043b\\u0435\\u0439 \\u0438 \\u0438\\u0445 \\u0442\\u0435\\u0445\\u043d\\u043e\\u043b\\u043e\\u0433\\u0438\\u0447\\u043d\\u044b\\u0445 \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a \\u0432\\u043e\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442 \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u043a\\u0438 \\u0432 \\u0440\\u0430\\u043d\\u0433 \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0430\\u043b\\u044c\\u043d\\u043e\\u0439 \\u043e\\u0431\\u0443\\u0432\\u0438 \\u043d\\u0430 \\u0432\\u0441\\u0435 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0438 \\u0436\\u0438\\u0437\\u043d\\u0438.&lt;\\/span&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;&lt;span style=&quot;color:rgb(71, 59, 57); font-family:roboto; font-size:14px&quot;&gt;\\u041a\\u0443\\u043f\\u0438\\u0442\\u044c \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u043a\\u0438 \\u0432 \\u041c\\u043e\\u0441\\u043a\\u0432\\u0435. \\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u0441\\u043f\\u043e\\u0440\\u0442\\u0438\\u0432\\u043d\\u043e\\u0439 \\u043e\\u0431\\u0443\\u0432\\u0438 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439 \\u0430\\u0441\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442 \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u043e\\u043a \\u0438\\u0437\\u0432\\u0435\\u0441\\u0442\\u043d\\u044b\\u0445 \\u0431\\u0440\\u0435\\u043d\\u0434\\u043e\\u0432 \\u043f\\u043e \\u043d\\u0438\\u0437\\u043a\\u0438\\u043c \\u0446\\u0435\\u043d\\u0430\\u043c, \\u0432 \\u043e\\u0431\\u0449\\u0435\\u043c \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u0441\\u043e\\u0442\\u0435\\u043d \\u043d\\u0430\\u0438\\u043c\\u0435\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u0439 \\u0444\\u0438\\u0440\\u043c\\u0435\\u043d\\u043d\\u043e\\u0439 \\u043e\\u0431\\u0443\\u0432\\u0438 \\u0432 \\u0441\\u0442\\u043e\\u043a\\u0435. \\u0423\\u0434\\u043e\\u0431\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0441\\u0448\\u0438\\u0440\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0438\\u0441\\u043a \\u043f\\u043e \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0443 \\u0438 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0435 \\u0443\\u0441\\u043b\\u043e\\u0432\\u0438\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u2013 \\u0432\\u044b\\u0431\\u0440\\u0430\\u043d\\u043d\\u044b\\u0439 \\u0442\\u043e\\u0432\\u0430\\u0440 \\u043c\\u044b \\u043f\\u0440\\u0438\\u0432\\u0435\\u0437\\u0435\\u043c \\u0432\\u0430\\u043c \\u0432 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u0438\\u0445 \\u0447\\u0430\\u0441\\u043e\\u0432.&lt;\\/span&gt;&lt;\\/p&gt;\\r\\n"},"2":{"title":"Online store of sneakers","description":"&lt;p&gt;&lt;span style=&quot;color:rgb(71, 59, 57); font-family:roboto; font-size:14px&quot;&gt;Every day, new models of sneakers and sneakers come out of the machine of legendary manufacturers of sports shoes, designed to decorate the next season of street fashion and become iconic for the next generation of people around the world. And if the excellent quality and manufacturability of Adidas, Nike and Puma products have long been beyond doubt, then the work of modern designers deserves the highest praise. The variety of models available today and their technological characteristics raise sneakers to the rank of universal shoes for all occasions.&lt;\\/span&gt;&lt;\\/p&gt;&lt;p&gt;&lt;span style=&quot;color:rgb(71, 59, 57); font-family:roboto; font-size:14px&quot;&gt;Buy sneakers in Moscow. The online store of sports shoes represents a large assortment of sneakers of famous brands at low prices, in general several hundred names of branded shoes in stock. Convenient advanced search in the catalog and the best delivery terms - we will bring the selected product to you within a few hours.&lt;\\/span&gt;&lt;\\/p&gt;"},"icontype":"1","icon":"fa fa-pencil-square-o","image":"no_image.png"}', 1),
	('', 0, 'revtheme', 'revtheme_home_blog', '{"status":"0","1":{"title":"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438"},"2":{"title":"News"},"blog_category_id":"0","news_limit":"5","desc_limit":"200","count_r":"0","icontype":"1","icon":"fa fa-newspaper-o","image":"no_image.png","image_status":"1","image_width":"228","image_height":"228","b_color":"F2F2F2"}', 1),
	('', 0, 'revtheme', 'revtheme_slider_5', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"","count":"12","not_view_null":"0","slider":"1","image_width":"240","image_height":"150","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', 1),
	('', 0, 'revtheme', 'revtheme_slider_4', '{"status":"0","1":{"title":"","url_all":""},"2":{"title":"","url_all":""},"icontype":"1","icon":"fa none","image":"","count":"12","not_view_null":"0","slider":"1","image_width":"240","image_height":"150","category_id":"0","featured":"","manufacturer_id":"0","sort":"p.date_added","autoscroll":""}', 1),
	('', 0, 'revtheme', 'revtheme_dop_menu_cf_2', '[{&quot;id&quot;:1,&quot;name1&quot;:&quot;Кроссовки&quot;,&quot;name2&quot;:&quot;Sneakers&quot;,&quot;href1&quot;:&quot;&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf_2&quot;:&quot;fa fa-arrow-circle-down&quot;,&quot;dop_menu_image_cf_2&quot;:&quot;&quot;,&quot;&quot;:{},&quot;children&quot;:[{&quot;id&quot;:2,&quot;name1&quot;:&quot;Мужские кроссовки&quot;,&quot;name2&quot;:&quot;Men\'s shoes&quot;,&quot;href1&quot;:&quot;muzhskie_krossovki&quot;,&quot;href2&quot;:&quot;muzhskie_krossovki&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf_2&quot;:&quot;&quot;,&quot;dop_menu_image_cf_2&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:3,&quot;name1&quot;:&quot;Женские кроссовки&quot;,&quot;name2&quot;:&quot;Woomen\'s shoes&quot;,&quot;href1&quot;:&quot;zhenskie_krossovki&quot;,&quot;href2&quot;:&quot;zhenskie_krossovki&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf_2&quot;:&quot;&quot;,&quot;dop_menu_image_cf_2&quot;:&quot;&quot;,&quot;&quot;:{}}]},{&quot;id&quot;:4,&quot;name1&quot;:&quot;Рюкзаки&quot;,&quot;name2&quot;:&quot;Bags&quot;,&quot;href1&quot;:&quot;&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf_2&quot;:&quot;fa fa-arrow-circle-down&quot;,&quot;dop_menu_image_cf_2&quot;:&quot;&quot;,&quot;&quot;:{},&quot;children&quot;:[{&quot;id&quot;:5,&quot;name1&quot;:&quot;XD Design Bobby&quot;,&quot;name2&quot;:&quot;XD Design Bobby&quot;,&quot;href1&quot;:&quot;xd_design_bobby&quot;,&quot;href2&quot;:&quot;xd_design_bobby&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf_2&quot;:&quot;&quot;,&quot;dop_menu_image_cf_2&quot;:&quot;&quot;,&quot;&quot;:{}},{&quot;id&quot;:6,&quot;name1&quot;:&quot;Swiss Gear&quot;,&quot;name2&quot;:&quot;Swiss Gear&quot;,&quot;href1&quot;:&quot;swiss_gear&quot;,&quot;href2&quot;:&quot;swiss_gear&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_cf_2&quot;:&quot;&quot;,&quot;dop_menu_image_cf_2&quot;:&quot;&quot;,&quot;&quot;:{}}]}]', 0),
	('', 0, 'revtheme', 'revtheme_catalog_last', '{"last_products":"440,432,441,434,428,429,437,433,426,442","limit":"20","filter_day":""}', 1),
	('', 0, 'revtheme', 'revtheme_catalog_best', '{"best_products":"440","limit":"20","filter_buy":""}', 1),
	('', 0, 'revtheme', 'revtheme_catalog_sorts_category', '{"group_default":"0","sort_default":"p.price","sort_default_adesc":"ASC","order_ASC":"1","1":{"order_ASC_text":"","name_ASC_text":"\\u041f\\u043e \\u043d\\u0430\\u0438\\u043c\\u0435\\u043d\\u043e\\u0432\\u0430\\u043d\\u0438\\u044e","name_DESC_text":"","price_ASC_text":"\\u0426\\u0435\\u043d\\u0430 \\u043f\\u043e \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442\\u0430\\u043d\\u0438\\u044e","price_DESC_text":"\\u0426\\u0435\\u043d\\u0430 \\u043f\\u043e \\u0443\\u0431\\u044b\\u0432\\u0430\\u043d\\u0438\\u044e","rating_DESC_text":"\\u041f\\u043e \\u0420\\u0435\\u0439\\u0442\\u0438\\u043d\\u0433\\u0443","rating_ASC_text":"","model_ASC_text":"","model_DESC_text":"","date_added_ASC_text":"","date_added_DESC_text":"\\u041f\\u043e \\u0434\\u0430\\u0442\\u0435 \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f"},"2":{"order_ASC_text":"","name_ASC_text":"","name_DESC_text":"","price_ASC_text":"","price_DESC_text":"","rating_DESC_text":"","rating_ASC_text":"","model_ASC_text":"","model_DESC_text":"","date_added_ASC_text":"","date_added_DESC_text":""},"name_ASC":"1","name_DESC":"0","price_ASC":"1","price_DESC":"1","rating_DESC":"1","rating_ASC":"0","model_ASC":"0","model_DESC":"0","date_added_ASC":"0","date_added_DESC":"1"}', 1),
	('', 0, 'revtheme', 'revtheme_dop_menu_cf_3', '[]', 0),
	('', 0, 'revtheme', 'revtheme_dop_menu_cf_4', '[]', 0),
	('', 0, 'revtheme', 'revtheme_dop_menu_cf_5', '[]', 0),
	('', 0, 'revtheme', 'revtheme_footer_subscribe', '{"status":"1","1":{"title":"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0448\\u0438\\u0441\\u044c \\u043d\\u0430 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438","text":"\\u041d\\u0435 \\u043f\\u0440\\u043e\\u043f\\u0443\\u0441\\u0442\\u0438 \\u043d\\u043e\\u0432\\u044b\\u0435 \\u0430\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u0441\\u043f\\u0435\\u0446\\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f","text_uspeh":"\\u0412\\u044b \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043b\\u0438\\u0441\\u044c \\u043d\\u0430 \\u0440\\u0430\\u0441\\u0441\\u044b\\u043b\\u043a\\u0443 \\u0430\\u043a\\u0446\\u0438\\u0439."},"2":{"title":"Subscribe to news","text":"Do not miss new promotions and special offers","text_uspeh":"You have successfully subscribed to the stock newsletter."}}', 1),
	('', 0, 'revtheme', 'revtheme_footer_link', '{"1":{"title":{"1":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","2":"Contacts"},"link":{"1":"contact-us","2":"contact-us"},"sort":"1"}}', 1),
	('', 0, 'revtheme', 'revtheme_footer_soc', '{"1":{"image":"fa fa-whatsapp","link":{"1":"https:\\/\\/whatsapp.com","2":"https:\\/\\/whatsapp.com"},"title":{"1":"Whatsapp","2":"Whatsapp"},"sort":"3"},"2":{"image":"fa fa-vk","link":{"1":"https:\\/\\/vk.com","2":"https:\\/\\/vk.com"},"title":{"1":"Vkontakte","2":"Vkontakte"},"sort":"1"},"3":{"image":"fa fa-youtube","link":{"1":"https:\\/\\/youtube.com","2":"https:\\/\\/youtube.com"},"title":{"1":"Youtube","2":"Youtube"},"sort":"2"}}', 1),
	('', 0, 'revtheme', 'revtheme_footer_icon', '{"1":{"image":"catalog\\/revolution\\/payment\\/visa.png","href":"","sort":"1"},"2":{"image":"catalog\\/revolution\\/payment\\/master.png","href":"","sort":"2"},"3":{"image":"catalog\\/revolution\\/payment\\/maestro.png","href":"","sort":"3"},"4":{"image":"catalog\\/revolution\\/payment\\/sberbank.png","href":"","sort":"4"},"5":{"image":"catalog\\/revolution\\/payment\\/alfa.png","href":"","sort":"5"},"6":{"image":"catalog\\/revolution\\/payment\\/yandex.png","href":"","sort":"6"},"7":{"image":"catalog\\/revolution\\/payment\\/privat.png","href":"","sort":"9"}}', 1),
	('', 0, 'revtheme', 'revtheme_all_settings', '{"color_all_document":"F2F2F2","all_document_snow_on":"0","color_href":"222222","color_href_hover":"CF102D","color_cart":"CF102D","color_cart_hover":"E61132","color_top3":"222222","color_footer":"222222","color_amazon":"2A6FBA","color_top3_cart":"333333","all_content_width_wide":"1","all_document_width":"1","all_document_h_f_width":"0","all_document_margin":"1","all_fon_image":"no_image.png","all_fon_image_css_1":"1","all_fon_image_css_2":"1","all_fon_image_css_3":"1","all_fon_image_css_4":"1","all_content_width":"0","mobile_header":"2","color_selecta":"EAEAEA","preloader":"catalog\\/revolution\\/preloaders\\/revpreloader7.svg","cart_off":"0","cat_compact":"0","cat_opis_opt":"0","mobil_two":"1","mobil_cat_opis":"1","cache_on":"1","error404":"1","n_progres":"0","razmiv_cont":"0","zatemn_cont":"1","opacity_cont":"1","pol_konf":"7","pol_konf_tvivod":"0","cookies":"1","1":{"cookies_text":"\\u041c\\u044b \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u043c cookie-\\u0444\\u0430\\u0439\\u043b\\u044b. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0430\\u044f \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c\\u0441\\u044f \\u0441\\u0430\\u0439\\u0442\\u043e\\u043c \\u0431\\u0435\\u0437 \\u0438\\u0437\\u043c\\u0435\\u043d\\u0435\\u043d\\u0438\\u044f \\u043d\\u0430\\u0441\\u0442\\u0440\\u043e\\u0435\\u043a, \\u0432\\u044b \\u0434\\u0430\\u0435\\u0442\\u0435 \\u0441\\u043e\\u0433\\u043b\\u0430\\u0441\\u0438\\u0435 \\u043d\\u0430 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0432\\u0430\\u0448\\u0438\\u0445 cookie-\\u0444\\u0430\\u0439\\u043b\\u043e\\u0432.","revcheckout_description":"&lt;p style=&quot;text-align: right;&quot;&gt;\\u041a\\u043e\\u0434 \\u043a\\u0443\\u043f\\u043e\\u043d\\u0430 \\u043d\\u0430 \\u0441\\u043a\\u0438\\u0434\\u043a\\u0443:&amp;nbsp;1111&lt;\\/p&gt;","revregister_description":"","revaccount_description":"","description":"&lt;p&gt;\\u041e\\u041e\\u041e &quot;\\u0421\\u0443\\u043f\\u0435\\u0440\\u041a\\u0440\\u0443\\u0442\\u0430\\u044f\\u0424\\u0438\\u0440\\u043c\\u0430&quot;&lt;\\/p&gt;&lt;p&gt;\\u041e\\u0413\\u0420\\u041d: 0001112223335&lt;\\/p&gt;&lt;p&gt;\\u0418\\u041d\\u041d\\/\\u041a\\u041f\\u041f: 1115557788\\/999555001&lt;\\/p&gt;&lt;p&gt;\\u042e\\u0440\\u0438\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439 \\u0430\\u0434\\u0440\\u0435\\u0441:&amp;nbsp;&lt;\\/p&gt;&lt;p&gt;119017, \\u0433. \\u041c\\u043e\\u0441\\u043a\\u0432\\u0430, \\u0443\\u043b. \\u041d\\u0438\\u043a\\u043e\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f, \\u0434. 25&lt;\\/p&gt;","modal_header":"","text_no":"\\u041d\\u0435\\u0442","text_yes":"\\u0414\\u0430","modal_text":""},"2":{"cookies_text":"We use cookies. By continuing to use the site without changing the settings, you consent to the use of your cookies.","revcheckout_description":"&lt;p style=&quot;text-align: right;&quot;&gt;Discount coupon code: 1111&lt;br&gt;&lt;\\/p&gt;","revregister_description":"Sign up and get 10% discount.","revaccount_description":"","description":"","modal_header":"","text_no":"\\u041d\\u0435\\u0442","text_yes":"\\u0414\\u0430","modal_text":""},"revcheckout_status":"1","revcheckout_login":"1","revcheckout_register":"0","revcheckout_customer_group":"0","revcheckout_name":"1","revcheckout_family":"0","revcheckout_telephone":"2","revcheckout_telephone_mask":"+7 (999) 9999999","revcheckout_mail":"0","revcheckout_comment":"1","revcheckout_reg_adres":"0","revcheckout_country":"0","revcheckout_region":"0","revcheckout_index":"0","revcheckout_city":"0","revcheckout_adres":"0","revcheckout_min_sum":"3500","revcheckout_foto":"1","revcheckout_model":"1","revcheckout_sku":"0","revcheckout_kolvo":"1","revcheckout_vsego":"0","revregister_status":"1","revregister_legends":"0","revregister_custom_fields":"0","revregister_customer_group":"0","revregister_name":"1","revregister_family":"0","revregister_telephone":"0","revregister_telephone_mask":"+7 (999) 9999999","revregister_mail":"2","revregister_newsletter":"0","revregister_country":"0","revregister_region":"0","revregister_index":"0","revregister_city":"0","revregister_adres":"0","revaccount_allurls":"1","revaccount_wishlist":"0","revaccount_orders":"1","revaccount_files":"0","revaccount_bonus":"0","revaccount_returns":"0","revaccount_pay_history":"0","revaccount_pay_regular":"0","m_conts":"1","dop_conts":"0","soc_conts":"1","soc_conts_url":"1","f_svazy":"1","yamap":"&lt;iframe src=&quot;https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d2244.9631533928764!2d37.62257395185793!3d55.75914228045963!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46b54a5c77a36bd3%3A0xf9277e12c0b4e27f!2sNautilus!5e0!3m2!1sru!2sru!4v1506270780542&quot; width=&quot;100%&quot; height=&quot;400&quot; frameborder=&quot;0&quot; style=&quot;border:0&quot; allowfullscreen&gt;&lt;\\/iframe&gt;","otzivy_status":"1","modal_status":"0","modal_time":"0","modal_buttons":"0","microdata_status":"1","microdata_postcode":"119021","microdata_city":"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430","microdata_adress":"\\u0443\\u043b. \\u041d\\u0438\\u043a\\u043e\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f, 25","microdata_phones":"7-965-22-33-44","microdata_social":"","microdata_email":"info@shoes.oc-mod.ru","watermark_status_true":"1","watermark_status":"1","watermark_type":"text","watermark_text":"\\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u043a\\u0440\\u043e\\u0441\\u0441\\u043e\\u0432\\u043e\\u043a","watermark_image":"no_image.png","watermark_font_size":"14","watermark_color":"222222","watermark_position":"bottomright","watermark_opacity":"70","watermark_angle":"0","watermark_offset":{"x":"20","y":"20"},"watermark_scaling":{"width":"1200","height":"750"},"watermark_min":{"width":"800","height":"500"},"watermark_folders":["catalog\\/revolution\\/demo_tovars\\/shoes"]}', 1),
	('', 0, 'theme_revolution', 'theme_revolution_image_location_width', '268', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_cart_height', '75', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_cart_width', '120', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_wishlist_height', '75', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_compare_width', '240', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_compare_height', '150', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_wishlist_width', '120', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_related_width', '240', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_related_height', '150', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_additional_height', '75', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_additional_width', '120', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_product_height', '150', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_popup_height', '750', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_product_width', '240', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_thumb_height', '500', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_popup_width', '1200', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_thumb_width', '800', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_category_height', '120', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_category_width', '120', 0),
	('', 0, 'theme_revolution', 'theme_revolution_product_description_length', '100', 0),
	('', 0, 'theme_revolution', 'theme_revolution_product_limit', '12', 0),
	('', 0, 'theme_revolution', 'theme_revolution_status', '1', 0),
	('', 0, 'theme_revolution', 'theme_revolution_directory', 'revolution', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_location_height', '50', 0),
	('', 0, 'theme_revolution', 'theme_revolution_image_manufacturer_width', '120', 0),
    ('', 0, 'theme_revolution', 'theme_revolution_image_manufacturer_height', '120', 0),
	('', 0, 'revtheme', 'revtheme_catalog_popuporder', '{"status":"0","quick_btn":"0","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"1","comment":"1","order_status":"2"}', 1),
	('', 0, 'revtheme_revcheckoutshippay', 'revtheme_revcheckoutshippay', '{"pickup":["adres_on","revpay1"],"revship2":["adres_on","revpay2"]}', 1),
	('', 0, 'revtheme', 'revtheme_catalog_stiker', '{"status":"1","new_status":"0","best_status":"1","spec_status":"0","sklad_status":"0","stock_status":"0","stiker_netu_stock":"0","upc":"0","ean":"0","jan":"0","isbn":"0","mpn":"0","mpn_to_model":"0","last_color":"494949","last_color_text":"FFFFFF","best_color":"2D77C8","best_color_text":"FFFFFF","spec_color":"CF102D","spec_color_text":"EEEEEE","netu_color":"EEEEEE","netu_color_text":"333333","user_color":"EEEEEE","user_color_text":"333333"}', 1),
	('', 0, 'revtheme', 'revtheme_header_search', '{"ch_text":"1","1":{"doptext":"\\u0431\\u0443\\u0434\\u043d\\u0438\\u0435 \\u0434\\u043d\\u0438 \\u0441 09\\u00ba\\u00ba \\u0434\\u043e 17\\u00ba\\u00ba, \\u0441\\u0443\\u0431\\u0431\\u043e\\u0442\\u0430 \\u0441 10\\u00ba\\u00ba \\u0434\\u043e 14\\u00ba\\u00ba, \\u0432\\u043e\\u0441\\u043a\\u0440\\u0435\\u0441\\u0435\\u043d\\u044c\\u0435 - \\u0432\\u044b\\u0445\\u043e\\u0434\\u043d\\u043e\\u0439"},"2":{"doptext":"weekdays from 09\\u00ba\\u00ba to 17\\u00ba\\u00ba, saturday from 10\\u00ba\\u00ba to 14\\u00ba\\u00ba, sunday - day off"},"ch_text_w_serch":"1","in_category":"0","ajax_search_status":"0","ajax_search_limit":"10","ajax_search_model":"1","ajax_search_manufacturer":"0","ajax_search_tag":"1","ajax_search_sku":"1","ajax_search_upc":"0","ajax_search_mpn":"1","ajax_search_isbn":"0","ajax_search_jan":"0","ajax_search_ean":"0","ajax_search_description":"0"}', 1),
	('', 0, 'revtheme', 'revtheme_header_cart', '{"icontype":"1","icon":"fa fa-shopping-bag","image":"no_image.png","type":"standart","cart_vspl":"1","cart_size":"small","cart_carturl":"0","cart_quick":"1"}', 1),
	('', 0, 'revtheme', 'revtheme_catalog_all', '{"category_desc":"0","podcategory_status":"1","podcategory_imgs":"1","podcategory_cols":"6","manuf_desc":"1","product_in_cart":"1","ch_quantity":"0","rev_srav_prod":"0","rev_wish_prod":"1","rev_wish_srav_prod":"0","popup_view":"0","img_slider":"2","chislo_ryad":"0","vid_default":"vid_grid","pagination":"standart_knopka"}', 1),
	('', 0, 'revtheme', 'revtheme_header_dop_contacts_status', '0', 0),
	('', 0, 'revtheme', 'revtheme_header_popupphone', '{"status":"1","under_phone":"1","firstname":"1","telephone":"2","telephone_mask":"+7 (999) 9999999","email":"0","comment":"1"}', 1),
	('', 0, 'revtheme', 'revtheme_header_link', '{"1":{"title":{"1":"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b","2":"Contacts"},"link":{"1":"contact-us","2":"contact-us"},"sort":"1"}}', 1),
	('', 0, 'revtheme', 'revtheme_dop_menu_2', '[]', 0),
	('', 0, 'revtheme', 'revtheme_dop_menu_3', '[]', 0),
	('', 0, 'revtheme', 'revtheme_header_link2', '{"1":{"title":{"1":"\\u0410\\u043a\\u0446\\u0438\\u0438","2":"Specials"},"link":{"1":"specials","2":"specials"},"icontype":"1","icon":"fa none","image":"no_image.png","sort":"1"},"2":{"title":{"1":"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b","2":"Reviews"},"link":{"1":"otzivy","2":"otzivy"},"icontype":"1","icon":"fa none","image":"no_image.png","sort":"2"},"3":{"title":{"1":"\\u0411\\u043b\\u043e\\u0433","2":"Blog"},"link":{"1":"blog","2":"blog"},"icontype":"1","icon":"fa none","image":"no_image.png","sort":"3"}}', 1),
	('', 0, 'revtheme', 'revtheme_header_phone', '{"1":{"text":"info@shoes.oc-mod.ru","text2":"","cod":"+7 (965)","number":"22-33-44","cod2":"","number2":"","doptext2":"","doptext":""},"2":{"text":"info@shoes.oc-mod.ru","text2":"","cod":"+7 (965)","number":"22-33-44","cod2":"","number2":"","doptext2":"","doptext":""},"icontype":"1","icon":"fa fa-mobile-phone","image":""}', 1),
	('', 0, 'revtheme', 'revtheme_header_standart_links', '{"rev_lang":"1","rev_curr":"0","rev_srav":"0","rev_wish":"1","rev_acc":"1","rev_acc_zagolovok":"kabinet","popup_login":"1"}', 1),
	('', 0, 'revtheme', 'revtheme_header_menu', '{"sticky":"1","image_in_ico":"1","tri_level":"1","manuf":"1","n_column":"1","manuf_icontype":"0","manuf_icon":"fa none","manuf_image":"catalog\\/revolution\\/demo_tovars\\/shoes\\/brands.png","image_in_ico_m":"1","type":"0","cats_status":"1","zadergka":"1","icontype":"1","icon":"fa fa-bars","image":"no_image.png","on_line_cat":"0","inhome":"1","up_menu_height":"1","ogranich":"0","ogranich_count":"5"}', 1),
	('', 0, 'revtheme', 'revtheme_dop_menu', '[]', 0);
CREATE DATABASE  IF NOT EXISTS `retail_store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `retail_store`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: retail_store
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Temporary view structure for view `supplies_ordered_53`
--

DROP TABLE IF EXISTS `supplies_ordered_53`;
/*!50001 DROP VIEW IF EXISTS `supplies_ordered_53`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `supplies_ordered_53` AS SELECT 
 1 AS `so_id`,
 1 AS `s_id`,
 1 AS `p_id`,
 1 AS `t_cost`,
 1 AS `quantity`,
 1 AS `received`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_details_202`
--

DROP TABLE IF EXISTS `order_details_202`;
/*!50001 DROP VIEW IF EXISTS `order_details_202`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_details_202` AS SELECT 
 1 AS `detail_id`,
 1 AS `order_id`,
 1 AS `p_id`,
 1 AS `price`,
 1 AS `quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `place_order_203`
--

DROP TABLE IF EXISTS `place_order_203`;
/*!50001 DROP VIEW IF EXISTS `place_order_203`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `place_order_203` AS SELECT 
 1 AS `c_id`,
 1 AS `order_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `supplier_53`
--

DROP TABLE IF EXISTS `supplier_53`;
/*!50001 DROP VIEW IF EXISTS `supplier_53`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `supplier_53` AS SELECT 
 1 AS `s_id`,
 1 AS `s_name`,
 1 AS `gst_no`,
 1 AS `phone`,
 1 AS `add_id`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `supplier_51`
--

DROP TABLE IF EXISTS `supplier_51`;
/*!50001 DROP VIEW IF EXISTS `supplier_51`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `supplier_51` AS SELECT 
 1 AS `s_id`,
 1 AS `s_name`,
 1 AS `gst_no`,
 1 AS `phone`,
 1 AS `add_id`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `place_order_202`
--

DROP TABLE IF EXISTS `place_order_202`;
/*!50001 DROP VIEW IF EXISTS `place_order_202`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `place_order_202` AS SELECT 
 1 AS `c_id`,
 1 AS `order_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `address_s_51`
--

DROP TABLE IF EXISTS `address_s_51`;
/*!50001 DROP VIEW IF EXISTS `address_s_51`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `address_s_51` AS SELECT 
 1 AS `add_id`,
 1 AS `main_line`,
 1 AS `city`,
 1 AS `state`,
 1 AS `country`,
 1 AS `postal_code`,
 1 AS `landmark`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `add_to_cart_203`
--

DROP TABLE IF EXISTS `add_to_cart_203`;
/*!50001 DROP VIEW IF EXISTS `add_to_cart_203`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `add_to_cart_203` AS SELECT 
 1 AS `cart_id`,
 1 AS `c_id`,
 1 AS `p_id`,
 1 AS `quantity`,
 1 AS `purchased`,
 1 AS `time_added`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `address_202`
--

DROP TABLE IF EXISTS `address_202`;
/*!50001 DROP VIEW IF EXISTS `address_202`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `address_202` AS SELECT 
 1 AS `add_id`,
 1 AS `main_line`,
 1 AS `city`,
 1 AS `state`,
 1 AS `country`,
 1 AS `postal_code`,
 1 AS `landmark`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `address_s_53`
--

DROP TABLE IF EXISTS `address_s_53`;
/*!50001 DROP VIEW IF EXISTS `address_s_53`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `address_s_53` AS SELECT 
 1 AS `add_id`,
 1 AS `main_line`,
 1 AS `city`,
 1 AS `state`,
 1 AS `country`,
 1 AS `postal_code`,
 1 AS `landmark`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customer_202`
--

DROP TABLE IF EXISTS `customer_202`;
/*!50001 DROP VIEW IF EXISTS `customer_202`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_202` AS SELECT 
 1 AS `c_id`,
 1 AS `first_name`,
 1 AS `middle_name`,
 1 AS `last_name`,
 1 AS `gender`,
 1 AS `date_of_birth`,
 1 AS `email`,
 1 AS `phone`,
 1 AS `add_id`,
 1 AS `cart_id`,
 1 AS `paymentc_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `payment_credentials_202`
--

DROP TABLE IF EXISTS `payment_credentials_202`;
/*!50001 DROP VIEW IF EXISTS `payment_credentials_202`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `payment_credentials_202` AS SELECT 
 1 AS `paymentc_id`,
 1 AS `card_no`,
 1 AS `name_on_card`,
 1 AS `cvv`,
 1 AS `expiry_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_202`
--

DROP TABLE IF EXISTS `order_202`;
/*!50001 DROP VIEW IF EXISTS `order_202`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_202` AS SELECT 
 1 AS `order_id`,
 1 AS `total_cost`,
 1 AS `status`,
 1 AS `total_units`,
 1 AS `ordered_on`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `supplies_ordered_51`
--

DROP TABLE IF EXISTS `supplies_ordered_51`;
/*!50001 DROP VIEW IF EXISTS `supplies_ordered_51`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `supplies_ordered_51` AS SELECT 
 1 AS `so_id`,
 1 AS `s_id`,
 1 AS `p_id`,
 1 AS `t_cost`,
 1 AS `quantity`,
 1 AS `received`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_203`
--

DROP TABLE IF EXISTS `order_203`;
/*!50001 DROP VIEW IF EXISTS `order_203`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_203` AS SELECT 
 1 AS `order_id`,
 1 AS `total_cost`,
 1 AS `status`,
 1 AS `total_units`,
 1 AS `ordered_on`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customer_login_202`
--

DROP TABLE IF EXISTS `customer_login_202`;
/*!50001 DROP VIEW IF EXISTS `customer_login_202`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_login_202` AS SELECT 
 1 AS `user_id`,
 1 AS `c_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `payment_202`
--

DROP TABLE IF EXISTS `payment_202`;
/*!50001 DROP VIEW IF EXISTS `payment_202`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `payment_202` AS SELECT 
 1 AS `order_id`,
 1 AS `paymentc_id`,
 1 AS `payment_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customer_203`
--

DROP TABLE IF EXISTS `customer_203`;
/*!50001 DROP VIEW IF EXISTS `customer_203`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_203` AS SELECT 
 1 AS `c_id`,
 1 AS `first_name`,
 1 AS `middle_name`,
 1 AS `last_name`,
 1 AS `gender`,
 1 AS `date_of_birth`,
 1 AS `email`,
 1 AS `phone`,
 1 AS `add_id`,
 1 AS `cart_id`,
 1 AS `paymentc_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `payment_203`
--

DROP TABLE IF EXISTS `payment_203`;
/*!50001 DROP VIEW IF EXISTS `payment_203`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `payment_203` AS SELECT 
 1 AS `order_id`,
 1 AS `paymentc_id`,
 1 AS `payment_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_details_203`
--

DROP TABLE IF EXISTS `order_details_203`;
/*!50001 DROP VIEW IF EXISTS `order_details_203`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_details_203` AS SELECT 
 1 AS `detail_id`,
 1 AS `order_id`,
 1 AS `p_id`,
 1 AS `price`,
 1 AS `quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `supplier_login_53`
--

DROP TABLE IF EXISTS `supplier_login_53`;
/*!50001 DROP VIEW IF EXISTS `supplier_login_53`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `supplier_login_53` AS SELECT 
 1 AS `user_id`,
 1 AS `s_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `add_to_cart_202`
--

DROP TABLE IF EXISTS `add_to_cart_202`;
/*!50001 DROP VIEW IF EXISTS `add_to_cart_202`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `add_to_cart_202` AS SELECT 
 1 AS `cart_id`,
 1 AS `c_id`,
 1 AS `p_id`,
 1 AS `quantity`,
 1 AS `purchased`,
 1 AS `time_added`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `address_203`
--

DROP TABLE IF EXISTS `address_203`;
/*!50001 DROP VIEW IF EXISTS `address_203`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `address_203` AS SELECT 
 1 AS `add_id`,
 1 AS `main_line`,
 1 AS `city`,
 1 AS `state`,
 1 AS `country`,
 1 AS `postal_code`,
 1 AS `landmark`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `supplier_login_51`
--

DROP TABLE IF EXISTS `supplier_login_51`;
/*!50001 DROP VIEW IF EXISTS `supplier_login_51`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `supplier_login_51` AS SELECT 
 1 AS `user_id`,
 1 AS `s_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `payment_credentials_203`
--

DROP TABLE IF EXISTS `payment_credentials_203`;
/*!50001 DROP VIEW IF EXISTS `payment_credentials_203`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `payment_credentials_203` AS SELECT 
 1 AS `paymentc_id`,
 1 AS `card_no`,
 1 AS `name_on_card`,
 1 AS `cvv`,
 1 AS `expiry_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customer_login_203`
--

DROP TABLE IF EXISTS `customer_login_203`;
/*!50001 DROP VIEW IF EXISTS `customer_login_203`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_login_203` AS SELECT 
 1 AS `user_id`,
 1 AS `c_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `supplies_ordered_53`
--

/*!50001 DROP VIEW IF EXISTS `supplies_ordered_53`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `supplies_ordered_53` AS select `supplies_ordered`.`so_id` AS `so_id`,`supplies_ordered`.`s_id` AS `s_id`,`supplies_ordered`.`p_id` AS `p_id`,`supplies_ordered`.`t_cost` AS `t_cost`,`supplies_ordered`.`quantity` AS `quantity`,`supplies_ordered`.`received` AS `received` from `supplies_ordered` where (`supplies_ordered`.`s_id` = 53) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_details_202`
--

/*!50001 DROP VIEW IF EXISTS `order_details_202`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_details_202` AS select `order_details`.`detail_id` AS `detail_id`,`order_details`.`order_id` AS `order_id`,`order_details`.`p_id` AS `p_id`,`order_details`.`price` AS `price`,`order_details`.`quantity` AS `quantity` from `order_details` where `order_details`.`order_id` in (select `place_order`.`order_id` from `place_order` where (`place_order`.`c_id` = 202)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `place_order_203`
--

/*!50001 DROP VIEW IF EXISTS `place_order_203`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `place_order_203` AS select `place_order`.`c_id` AS `c_id`,`place_order`.`order_id` AS `order_id` from `place_order` where (`place_order`.`c_id` = 203) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `supplier_53`
--

/*!50001 DROP VIEW IF EXISTS `supplier_53`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `supplier_53` AS select `supplier`.`s_id` AS `s_id`,`supplier`.`s_name` AS `s_name`,`supplier`.`gst_no` AS `gst_no`,`supplier`.`phone` AS `phone`,`supplier`.`add_id` AS `add_id`,`supplier`.`email` AS `email` from `supplier` where (`supplier`.`s_id` = 53) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `supplier_51`
--

/*!50001 DROP VIEW IF EXISTS `supplier_51`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `supplier_51` AS select `supplier`.`s_id` AS `s_id`,`supplier`.`s_name` AS `s_name`,`supplier`.`gst_no` AS `gst_no`,`supplier`.`phone` AS `phone`,`supplier`.`add_id` AS `add_id`,`supplier`.`email` AS `email` from `supplier` where (`supplier`.`s_id` = 51) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `place_order_202`
--

/*!50001 DROP VIEW IF EXISTS `place_order_202`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `place_order_202` AS select `place_order`.`c_id` AS `c_id`,`place_order`.`order_id` AS `order_id` from `place_order` where (`place_order`.`c_id` = 202) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `address_s_51`
--

/*!50001 DROP VIEW IF EXISTS `address_s_51`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `address_s_51` AS select `address`.`add_id` AS `add_id`,`address`.`main_line` AS `main_line`,`address`.`city` AS `city`,`address`.`state` AS `state`,`address`.`country` AS `country`,`address`.`postal_code` AS `postal_code`,`address`.`landmark` AS `landmark` from `address` where `address`.`add_id` in (select `supplier`.`add_id` from `supplier` where (`supplier`.`s_id` = 51)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `add_to_cart_203`
--

/*!50001 DROP VIEW IF EXISTS `add_to_cart_203`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `add_to_cart_203` AS select `add_to_cart`.`cart_id` AS `cart_id`,`add_to_cart`.`c_id` AS `c_id`,`add_to_cart`.`p_id` AS `p_id`,`add_to_cart`.`quantity` AS `quantity`,`add_to_cart`.`purchased` AS `purchased`,`add_to_cart`.`time_added` AS `time_added` from `add_to_cart` where (`add_to_cart`.`c_id` = 203) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `address_202`
--

/*!50001 DROP VIEW IF EXISTS `address_202`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `address_202` AS select `address`.`add_id` AS `add_id`,`address`.`main_line` AS `main_line`,`address`.`city` AS `city`,`address`.`state` AS `state`,`address`.`country` AS `country`,`address`.`postal_code` AS `postal_code`,`address`.`landmark` AS `landmark` from `address` where `address`.`add_id` in (select `customer`.`add_id` from `customer` where (`customer`.`c_id` = 202)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `address_s_53`
--

/*!50001 DROP VIEW IF EXISTS `address_s_53`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `address_s_53` AS select `address`.`add_id` AS `add_id`,`address`.`main_line` AS `main_line`,`address`.`city` AS `city`,`address`.`state` AS `state`,`address`.`country` AS `country`,`address`.`postal_code` AS `postal_code`,`address`.`landmark` AS `landmark` from `address` where `address`.`add_id` in (select `supplier`.`add_id` from `supplier` where (`supplier`.`s_id` = 53)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_202`
--

/*!50001 DROP VIEW IF EXISTS `customer_202`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_202` AS select `customer`.`c_id` AS `c_id`,`customer`.`first_name` AS `first_name`,`customer`.`middle_name` AS `middle_name`,`customer`.`last_name` AS `last_name`,`customer`.`gender` AS `gender`,`customer`.`date_of_birth` AS `date_of_birth`,`customer`.`email` AS `email`,`customer`.`phone` AS `phone`,`customer`.`add_id` AS `add_id`,`customer`.`cart_id` AS `cart_id`,`customer`.`paymentc_id` AS `paymentc_id` from `customer` where (`customer`.`c_id` = 202) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `payment_credentials_202`
--

/*!50001 DROP VIEW IF EXISTS `payment_credentials_202`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `payment_credentials_202` AS select `payment_credentials`.`paymentc_id` AS `paymentc_id`,`payment_credentials`.`card_no` AS `card_no`,`payment_credentials`.`name_on_card` AS `name_on_card`,`payment_credentials`.`cvv` AS `cvv`,`payment_credentials`.`expiry_date` AS `expiry_date` from `payment_credentials` where `payment_credentials`.`paymentc_id` in (select `customer`.`paymentc_id` from `customer` where (`customer`.`c_id` = 202)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_202`
--

/*!50001 DROP VIEW IF EXISTS `order_202`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_202` AS select `order`.`order_id` AS `order_id`,`order`.`total_cost` AS `total_cost`,`order`.`status` AS `status`,`order`.`total_units` AS `total_units`,`order`.`ordered_on` AS `ordered_on` from `order` where `order`.`order_id` in (select `place_order`.`order_id` from `place_order` where (`place_order`.`c_id` = 202)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `supplies_ordered_51`
--

/*!50001 DROP VIEW IF EXISTS `supplies_ordered_51`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `supplies_ordered_51` AS select `supplies_ordered`.`so_id` AS `so_id`,`supplies_ordered`.`s_id` AS `s_id`,`supplies_ordered`.`p_id` AS `p_id`,`supplies_ordered`.`t_cost` AS `t_cost`,`supplies_ordered`.`quantity` AS `quantity`,`supplies_ordered`.`received` AS `received` from `supplies_ordered` where (`supplies_ordered`.`s_id` = 51) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_203`
--

/*!50001 DROP VIEW IF EXISTS `order_203`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_203` AS select `order`.`order_id` AS `order_id`,`order`.`total_cost` AS `total_cost`,`order`.`status` AS `status`,`order`.`total_units` AS `total_units`,`order`.`ordered_on` AS `ordered_on` from `order` where `order`.`order_id` in (select `place_order`.`order_id` from `place_order` where (`place_order`.`c_id` = 203)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_login_202`
--

/*!50001 DROP VIEW IF EXISTS `customer_login_202`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_login_202` AS select `customer_login`.`user_id` AS `user_id`,`customer_login`.`c_id` AS `c_id` from `customer_login` where (`customer_login`.`c_id` = 202) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `payment_202`
--

/*!50001 DROP VIEW IF EXISTS `payment_202`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `payment_202` AS select `payment`.`order_id` AS `order_id`,`payment`.`paymentc_id` AS `paymentc_id`,`payment`.`payment_status` AS `payment_status` from `payment` where `payment`.`paymentc_id` in (select `customer`.`paymentc_id` from `customer` where (`customer`.`c_id` = 202)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_203`
--

/*!50001 DROP VIEW IF EXISTS `customer_203`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_203` AS select `customer`.`c_id` AS `c_id`,`customer`.`first_name` AS `first_name`,`customer`.`middle_name` AS `middle_name`,`customer`.`last_name` AS `last_name`,`customer`.`gender` AS `gender`,`customer`.`date_of_birth` AS `date_of_birth`,`customer`.`email` AS `email`,`customer`.`phone` AS `phone`,`customer`.`add_id` AS `add_id`,`customer`.`cart_id` AS `cart_id`,`customer`.`paymentc_id` AS `paymentc_id` from `customer` where (`customer`.`c_id` = 203) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `payment_203`
--

/*!50001 DROP VIEW IF EXISTS `payment_203`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `payment_203` AS select `payment`.`order_id` AS `order_id`,`payment`.`paymentc_id` AS `paymentc_id`,`payment`.`payment_status` AS `payment_status` from `payment` where `payment`.`paymentc_id` in (select `customer`.`paymentc_id` from `customer` where (`customer`.`c_id` = 203)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_details_203`
--

/*!50001 DROP VIEW IF EXISTS `order_details_203`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_details_203` AS select `order_details`.`detail_id` AS `detail_id`,`order_details`.`order_id` AS `order_id`,`order_details`.`p_id` AS `p_id`,`order_details`.`price` AS `price`,`order_details`.`quantity` AS `quantity` from `order_details` where `order_details`.`order_id` in (select `place_order`.`order_id` from `place_order` where (`place_order`.`c_id` = 203)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `supplier_login_53`
--

/*!50001 DROP VIEW IF EXISTS `supplier_login_53`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `supplier_login_53` AS select `supplier_login`.`user_id` AS `user_id`,`supplier_login`.`s_id` AS `s_id` from `supplier_login` where (`supplier_login`.`s_id` = 53) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `add_to_cart_202`
--

/*!50001 DROP VIEW IF EXISTS `add_to_cart_202`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `add_to_cart_202` AS select `add_to_cart`.`cart_id` AS `cart_id`,`add_to_cart`.`c_id` AS `c_id`,`add_to_cart`.`p_id` AS `p_id`,`add_to_cart`.`quantity` AS `quantity`,`add_to_cart`.`purchased` AS `purchased`,`add_to_cart`.`time_added` AS `time_added` from `add_to_cart` where (`add_to_cart`.`c_id` = 202) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `address_203`
--

/*!50001 DROP VIEW IF EXISTS `address_203`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `address_203` AS select `address`.`add_id` AS `add_id`,`address`.`main_line` AS `main_line`,`address`.`city` AS `city`,`address`.`state` AS `state`,`address`.`country` AS `country`,`address`.`postal_code` AS `postal_code`,`address`.`landmark` AS `landmark` from `address` where `address`.`add_id` in (select `customer`.`add_id` from `customer` where (`customer`.`c_id` = 203)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `supplier_login_51`
--

/*!50001 DROP VIEW IF EXISTS `supplier_login_51`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `supplier_login_51` AS select `supplier_login`.`user_id` AS `user_id`,`supplier_login`.`s_id` AS `s_id` from `supplier_login` where (`supplier_login`.`s_id` = 51) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `payment_credentials_203`
--

/*!50001 DROP VIEW IF EXISTS `payment_credentials_203`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `payment_credentials_203` AS select `payment_credentials`.`paymentc_id` AS `paymentc_id`,`payment_credentials`.`card_no` AS `card_no`,`payment_credentials`.`name_on_card` AS `name_on_card`,`payment_credentials`.`cvv` AS `cvv`,`payment_credentials`.`expiry_date` AS `expiry_date` from `payment_credentials` where `payment_credentials`.`paymentc_id` in (select `customer`.`paymentc_id` from `customer` where (`customer`.`c_id` = 203)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_login_203`
--

/*!50001 DROP VIEW IF EXISTS `customer_login_203`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_login_203` AS select `customer_login`.`user_id` AS `user_id`,`customer_login`.`c_id` AS `c_id` from `customer_login` where (`customer_login`.`c_id` = 203) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 23:53:40

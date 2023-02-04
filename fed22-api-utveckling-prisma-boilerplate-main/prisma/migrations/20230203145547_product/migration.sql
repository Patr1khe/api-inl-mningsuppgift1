/*
  Warnings:

  - Added the required column `item_name` to the `OrderItems` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `orderitems` ADD COLUMN `item_name` VARCHAR(255) NOT NULL;

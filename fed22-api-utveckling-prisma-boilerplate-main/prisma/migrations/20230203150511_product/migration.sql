/*
  Warnings:

  - You are about to drop the column `item_name` on the `orderitems` table. All the data in the column will be lost.
  - You are about to drop the column `stock_qty` on the `orderitems` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `orderitems` DROP COLUMN `item_name`,
    DROP COLUMN `stock_qty`;

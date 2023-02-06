/*
  Warnings:

  - Made the column `stock_quantity` on table `product` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `product` MODIFY `stock_quantity` INTEGER NOT NULL;

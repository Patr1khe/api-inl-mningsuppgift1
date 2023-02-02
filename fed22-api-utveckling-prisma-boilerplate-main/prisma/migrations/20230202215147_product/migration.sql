/*
  Warnings:

  - You are about to alter the column `stock_quantity` on the `product` table. The data in that column could be lost. The data in that column will be cast from `Int` to `UnsignedInt`.

*/
-- AlterTable
ALTER TABLE `product` MODIFY `stock_quantity` INTEGER UNSIGNED NULL DEFAULT 0;

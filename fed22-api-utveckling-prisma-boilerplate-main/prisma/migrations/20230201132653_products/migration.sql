/*
  Warnings:

  - You are about to alter the column `price` on the `products` table. The data in that column could be lost. The data in that column will be cast from `UnsignedInt` to `Int`.
  - You are about to alter the column `stock_quantity` on the `products` table. The data in that column could be lost. The data in that column will be cast from `UnsignedInt` to `Int`.
  - Made the column `images` on table `products` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `products` MODIFY `name` VARCHAR(255) NOT NULL,
    MODIFY `description` TEXT NOT NULL,
    MODIFY `price` INTEGER NOT NULL,
    MODIFY `images` LONGTEXT NOT NULL,
    MODIFY `stock_quantity` INTEGER NOT NULL;

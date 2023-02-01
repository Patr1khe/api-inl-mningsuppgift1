/*
  Warnings:

  - You are about to alter the column `price` on the `products` table. The data in that column could be lost. The data in that column will be cast from `Int` to `UnsignedInt`.
  - You are about to alter the column `stock_quantity` on the `products` table. The data in that column could be lost. The data in that column will be cast from `Int` to `UnsignedInt`.

*/
-- AlterTable
ALTER TABLE `products` MODIFY `price` INTEGER UNSIGNED NOT NULL,
    MODIFY `stock_quantity` INTEGER UNSIGNED NOT NULL;

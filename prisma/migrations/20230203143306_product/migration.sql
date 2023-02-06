/*
  Warnings:

  - You are about to drop the column `productId` on the `orderitems` table. All the data in the column will be lost.
  - Added the required column `product_id` to the `OrderItems` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `orderitems` DROP FOREIGN KEY `OrderItems_productId_fkey`;

-- AlterTable
ALTER TABLE `orderitems` DROP COLUMN `productId`,
    ADD COLUMN `product_id` INTEGER UNSIGNED NOT NULL;

-- AddForeignKey
ALTER TABLE `OrderItems` ADD CONSTRAINT `OrderItems_product_id_fkey` FOREIGN KEY (`product_id`) REFERENCES `Product`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

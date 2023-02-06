/*
  Warnings:

  - You are about to drop the column `order_id` on the `orderitems` table. All the data in the column will be lost.
  - You are about to drop the column `product_id` on the `orderitems` table. All the data in the column will be lost.
  - Added the required column `orderId` to the `OrderItems` table without a default value. This is not possible if the table is not empty.
  - Added the required column `productId` to the `OrderItems` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `orderitems` DROP FOREIGN KEY `OrderItems_order_id_fkey`;

-- DropForeignKey
ALTER TABLE `orderitems` DROP FOREIGN KEY `OrderItems_product_id_fkey`;

-- AlterTable
ALTER TABLE `orderitems` DROP COLUMN `order_id`,
    DROP COLUMN `product_id`,
    ADD COLUMN `orderId` INTEGER UNSIGNED NOT NULL,
    ADD COLUMN `productId` INTEGER UNSIGNED NOT NULL;

-- AddForeignKey
ALTER TABLE `OrderItems` ADD CONSTRAINT `OrderItems_productId_fkey` FOREIGN KEY (`productId`) REFERENCES `Product`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `OrderItems` ADD CONSTRAINT `OrderItems_orderId_fkey` FOREIGN KEY (`orderId`) REFERENCES `Order`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

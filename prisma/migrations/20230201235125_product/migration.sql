/*
  Warnings:

  - You are about to alter the column `product_id` on the `orderitems` table. The data in that column could be lost. The data in that column will be cast from `Int` to `UnsignedInt`.
  - You are about to alter the column `qty` on the `orderitems` table. The data in that column could be lost. The data in that column will be cast from `Int` to `UnsignedInt`.
  - You are about to alter the column `item_price` on the `orderitems` table. The data in that column could be lost. The data in that column will be cast from `Int` to `UnsignedInt`.
  - You are about to alter the column `item_total` on the `orderitems` table. The data in that column could be lost. The data in that column will be cast from `Int` to `UnsignedInt`.

*/
-- AlterTable
ALTER TABLE `order` MODIFY `order_date` TIMESTAMP NOT NULL;

-- AlterTable
ALTER TABLE `orderitems` MODIFY `product_id` INTEGER UNSIGNED NOT NULL,
    MODIFY `qty` INTEGER UNSIGNED NOT NULL,
    MODIFY `item_price` INTEGER UNSIGNED NOT NULL,
    MODIFY `item_total` INTEGER UNSIGNED NOT NULL;

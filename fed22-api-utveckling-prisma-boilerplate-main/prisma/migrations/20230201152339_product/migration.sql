/*
  Warnings:

  - You are about to alter the column `images` on the `product` table. The data in that column could be lost. The data in that column will be cast from `LongText` to `Json`.

*/
-- AlterTable
ALTER TABLE `product` MODIFY `images` JSON NOT NULL;

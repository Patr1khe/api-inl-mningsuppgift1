-- CreateTable
CREATE TABLE `Products` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `description` TEXT NOT NULL,
    `price` INTEGER NOT NULL,
    `images` JSON NULL,
    `stock_status` VARCHAR(255) NOT NULL,
    `stock_quantity` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Orders` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `order_date` DATETIME(3) NOT NULL,
    `customer_first_name` VARCHAR(255) NOT NULL,
    `customer_last_name` VARCHAR(255) NOT NULL,
    `customer_address` VARCHAR(255) NOT NULL,
    `customer_postcode` VARCHAR(255) NOT NULL,
    `customer_city` VARCHAR(255) NOT NULL,
    `customer_email` VARCHAR(255) NOT NULL,
    `customer_phone` VARCHAR(255) NULL,
    `order_total` INTEGER NOT NULL,

    UNIQUE INDEX `Orders_customer_email_key`(`customer_email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `OrdersItems` (
    `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    `product_id` INTEGER NOT NULL,
    `qty` INTEGER NOT NULL,
    `item_price` INTEGER NOT NULL,
    `item_total` INTEGER NOT NULL,
    `productsId` INTEGER UNSIGNED NULL,
    `ordersId` INTEGER UNSIGNED NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `OrdersItems` ADD CONSTRAINT `OrdersItems_productsId_fkey` FOREIGN KEY (`productsId`) REFERENCES `Products`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `OrdersItems` ADD CONSTRAINT `OrdersItems_ordersId_fkey` FOREIGN KEY (`ordersId`) REFERENCES `Orders`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

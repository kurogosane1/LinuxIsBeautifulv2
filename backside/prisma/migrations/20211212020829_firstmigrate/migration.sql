-- CreateTable
CREATE TABLE `Category` (
    `Tag_id` INTEGER NOT NULL AUTO_INCREMENT,
    `Tag_description` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`Tag_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Processor` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `cost` FLOAT NOT NULL,
    `tagId` INTEGER NOT NULL,

    UNIQUE INDEX `Processor.name_unique`(`name`),
    UNIQUE INDEX `Processor.tagId_unique`(`tagId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Graphics` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `cost` FLOAT NOT NULL,
    `tagsId` INTEGER NOT NULL,

    UNIQUE INDEX `Graphics.name_unique`(`name`),
    UNIQUE INDEX `Graphics.tagsId_unique`(`tagsId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `RAM` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `cost` FLOAT NOT NULL,
    `tagsId` INTEGER NOT NULL,

    UNIQUE INDEX `RAM.name_unique`(`name`),
    UNIQUE INDEX `RAM.tagsId_unique`(`tagsId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Storage` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `cost` FLOAT NOT NULL,
    `tagsId` INTEGER NOT NULL,

    UNIQUE INDEX `Storage.name_unique`(`name`),
    UNIQUE INDEX `Storage.tagsId_unique`(`tagsId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Users` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(191) NOT NULL,
    `firstname` VARCHAR(191) NOT NULL,
    `lastname` VARCHAR(191) NOT NULL,
    `streetaddress` VARCHAR(191) NOT NULL,
    `state` VARCHAR(191) NOT NULL,
    `zipcode` INTEGER NOT NULL,
    `cellphone` VARCHAR(191),
    `password` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Users.email_unique`(`email`),
    UNIQUE INDEX `Users.cellphone_unique`(`cellphone`),
    UNIQUE INDEX `Users.password_unique`(`password`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Cart` (
    `Cart_id` INTEGER NOT NULL AUTO_INCREMENT,
    `OrderNumber` VARCHAR(191) NOT NULL,
    `UserId` INTEGER NOT NULL,

    UNIQUE INDEX `Cart.OrderNumber_unique`(`OrderNumber`),
    PRIMARY KEY (`Cart_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Processor` ADD FOREIGN KEY (`tagId`) REFERENCES `Category`(`Tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Graphics` ADD FOREIGN KEY (`tagsId`) REFERENCES `Category`(`Tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `RAM` ADD FOREIGN KEY (`tagsId`) REFERENCES `Category`(`Tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Storage` ADD FOREIGN KEY (`tagsId`) REFERENCES `Category`(`Tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Cart` ADD FOREIGN KEY (`UserId`) REFERENCES `Users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

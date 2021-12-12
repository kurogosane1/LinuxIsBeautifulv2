/*
  Warnings:

  - The primary key for the `Category` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- DropForeignKey
ALTER TABLE `Graphics` DROP FOREIGN KEY `graphics_ibfk_1`;

-- DropForeignKey
ALTER TABLE `Processor` DROP FOREIGN KEY `processor_ibfk_1`;

-- DropForeignKey
ALTER TABLE `RAM` DROP FOREIGN KEY `ram_ibfk_1`;

-- DropForeignKey
ALTER TABLE `Storage` DROP FOREIGN KEY `storage_ibfk_1`;

-- AlterTable
ALTER TABLE `Category` DROP PRIMARY KEY,
    MODIFY `Tag_id` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`Tag_id`);

-- AlterTable
ALTER TABLE `Graphics` MODIFY `tagsId` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `Processor` MODIFY `tagId` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `RAM` MODIFY `tagsId` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `Storage` MODIFY `tagsId` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `Processor` ADD FOREIGN KEY (`tagId`) REFERENCES `Category`(`Tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Graphics` ADD FOREIGN KEY (`tagsId`) REFERENCES `Category`(`Tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `RAM` ADD FOREIGN KEY (`tagsId`) REFERENCES `Category`(`Tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Storage` ADD FOREIGN KEY (`tagsId`) REFERENCES `Category`(`Tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

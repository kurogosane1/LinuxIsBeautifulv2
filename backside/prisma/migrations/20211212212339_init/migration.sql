/*
  Warnings:

  - The primary key for the `Graphics` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Processor` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `RAM` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `Storage` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE `Graphics` DROP PRIMARY KEY,
    MODIFY `id` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `Processor` DROP PRIMARY KEY,
    MODIFY `id` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `RAM` DROP PRIMARY KEY,
    MODIFY `id` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `Storage` DROP PRIMARY KEY,
    MODIFY `id` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`id`);

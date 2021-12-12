/*
  Warnings:

  - The primary key for the `Cart` table will be changed. If it partially fails, the table could be left without primary key constraint.

*/
-- AlterTable
ALTER TABLE `Cart` DROP PRIMARY KEY,
    MODIFY `Cart_id` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`Cart_id`);

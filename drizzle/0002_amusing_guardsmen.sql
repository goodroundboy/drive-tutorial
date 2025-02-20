CREATE TABLE `drive-tutorial_folders_table` (
	`id` bigint unsigned AUTO_INCREMENT NOT NULL,
	`name` text NOT NULL,
	`parent` bigint unsigned,
	CONSTRAINT `drive-tutorial_folders_table_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE INDEX `parent_index` ON `drive-tutorial_folders_table` (`parent`);--> statement-breakpoint
CREATE TABLE `__new_drive-tutorial_files_table` (
	`id` bigint unsigned AUTO_INCREMENT NOT NULL,
	`name` text,
	`size` int,
	`url` text,
	`parent` bigint unsigned NOT NULL,
	CONSTRAINT `drive-tutorial_files_table_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
INSERT INTO `__new_drive-tutorial_files_table`(`id`, `name`, `size`, `url`, `parent`) SELECT `id`, `name`, `size`, `url`, `parent` FROM `drive-tutorial_files_table`;--> statement-breakpoint
DROP TABLE `drive-tutorial_files_table`;--> statement-breakpoint
ALTER TABLE `__new_drive-tutorial_files_table` RENAME TO `drive-tutorial_files_table`;--> statement-breakpoint
CREATE INDEX `parent_index` ON `drive-tutorial_files_table` (`parent`);
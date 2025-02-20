CREATE TABLE `drive-tutorial_files_table` (
	`id` bigint unsigned AUTO_INCREMENT NOT NULL,
	`name` text NOT NULL,
	`parent` bigint unsigned,
	CONSTRAINT `drive-tutorial_files_table_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE INDEX `parent_index` ON `drive-tutorial_files_table` (`parent`);--> statement-breakpoint
DROP TABLE `files_table`;
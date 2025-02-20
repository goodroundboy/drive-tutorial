CREATE TABLE `files_table` (
	`id` int AUTO_INCREMENT NOT NULL,
	`name` text NOT NULL,
	`parent` int,
	CONSTRAINT `files_table_id` PRIMARY KEY(`id`)
);
--> statement-breakpoint
CREATE INDEX `parent_index` ON `files_table` (`parent`);
create table users (
	id int not null primary key,
	name text not null
);

create table videos (
	id int not null primary key,
	author_id int not null,
	name text not null,
	deleted bool not null default false,

	foreign key (author_id) references users (id)
);

create table tags (
	id int not null primary key,
	name text not null,
	deleted bool not null default false
);

create table awards (
	id int not null primary key,
	name text not null,

	video_id int unique,

	foreign key (video_id) references videos (id)
);

create table tags_videos (
	video_id int not null,
	tag_id int not null,

	primary key (video_id, tag_id),
	foreign key (video_id) references videos (id),
	foreign key (tag_id) references tags (id)
);

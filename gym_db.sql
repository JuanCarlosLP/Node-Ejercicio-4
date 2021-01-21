create table client(
	client_id serial not null,
	"firstName" varchar(255) not null,
	"lastName" varchar(255) not null,
	"email" varchar(55) not null,
	"phone" varchar(10) not null,
	"enable" boolean not null,
	primary key (client_id)
);

create table membership(
	membership_id serial not null,
	"name" varchar(55) not null,
	"price" money not null,
	"period" varchar(55) not null,
	"enable" boolean not null,
	primary key (membership_id)
);

create table instructor(
	instructor_id serial not null,
	"firstName" varchar(255) not null,
	"lastName" varchar(255) not null,
	"email" varchar(55) not null,
	"available" boolean not null,
	primary key (instructor_id)
);

create table schedule(
	schedule_id serial not null,
	"startTime" time not null,
	"endTime" time not null
);

create table payment(
	payment_id serial not null,
	membership_id integer not null,
	client_id integer not null,
	"amount" money not null,
	"date" timestamp not null,
	primary key (payment_id),
	foreign key (client_id) references client (client_id),
	foreign key (membership_id) references membership (membership_id)
);

create table class(
	class_id serial not null,
	instructor_id integer not null,
	"className" varchar(55) not null,
	"capacity" integer not null,
	primary key (class_id),
    foreign key (instructor_id) references Instructor (instructor_id)
);

create table clients_classes(
	client_id integer not null,
	class_id integer not null,
	primary key (client_id, class_id),
	foreign key (client_id) references client (client_id),
	foreign key (class_id) references class (class_id)
);

create table class_schedule(
	schedule_id integer not null,
	class_id integer not null,
	"day" varchar(55) not null,
	primary key (schedule_id, class_id),
	foreign key (class_id) references class (class_id)
);
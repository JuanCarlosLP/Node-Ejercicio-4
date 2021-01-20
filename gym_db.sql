create table client(
	client_id serial not null,
	"name" varchar(255) not null,
	"lastname" varchar(255) not null,
	email varchar(55) not null,
	phone varchar(10) not null,
	"enable" boolean not null,
	primary key (client_id)
);

create table instructor(
	instructor_id serial not null,
	"name" varchar(255) not null,
	"lastname" varchar(255) not null,
	email varchar(55) not null,
	"available" boolean not null,
	primary key (instructor_id)
);

create table payment(
	payment_id serial not null,
	client_id integer not null,
	"date" timestamp not null,
	payment_method varchar(55),
	primary key (payment_id),
	foreign key (client_id) references Client (client_id)
);

create table membership(
	membership_id serial not null,
	client_id integer not null,
	"type" varchar(55) not null,
	"period" varchar(55) not null,
    "price" money not null,
	"enable" boolean not null,
	primary key (membership_id),
	foreign key (client_id) references Client (client_id)
);

create table class(
	class_id serial not null,
    instructor_id integer not null,
	capacity integer not null,
    "time" time not null,
    "date" date not null,
    "class_name" varchar(55) not null,
	primary key (class_id),
    foreign key (instructor_id) references Instructor (instructor_id)
);

create table class_attendance(
	class_id integer not null,
	client_id integer not null,
	attendance boolean not null,
	primary key (class_id),
	foreign key (class_id) references Class (class_id),
	foreign key (client_id) references Client (client_id)
);
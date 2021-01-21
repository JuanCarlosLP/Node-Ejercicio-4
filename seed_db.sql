insert into client values(default, 'Eduardo', 'Rodriguez', 'edu34@gmail.com', '5513733506', true), 
						(default, 'Andrea', 'Velazquez', 'andrea01@gmail.com', '5513754712', true), 
						(default, 'Paulina', 'Hernandez', 'pau_21@gmail.com', '5513733804', true), 
						(default, 'Andres', 'Vargas', 'andreu@gmail.com', '5513875439', false), 
						(default, 'Gustavo', 'Salinas', 'gus_salinas@gmail.com', '5514785263', true), 
						(default, 'Juan', 'Torres', 'juantorres90@gmail.com', '5513874593', false), 
						(default, 'Veronica', 'Lopez', 'veronica_lo@gmail.com', '5513737541', true), 
						(default, 'Diana', 'Licea', 'dianalicea@gmail.com', '5513733253', true), 
						(default, 'Diego', 'Martinez', 'diego.mar@gmail.com', '5513452189', true);

insert into membership values(default, 'Iron', 150, '1 mes', true), 
							(default, 'Silver', 170, '3 meses', true), 
							(default, 'Gold', 200, '6 meses', true), 
							(default, 'Platinum', 250, '1 año', true), 
							(default, 'basic', 200, '2 meses', false), 
							(default, 'pro', 300, '1 año', false);
						
insert into instructor values(default, 'Hector', 'Silva', 'hector20@gmail.com', true),
							(default, 'Ana', 'Licea', 'ana.licea@gmail.com', true), 
							(default, 'Julio', 'Lopez', 'juliolopez@gmail.com', true), 
							(default, 'Karla', 'Martinez', 'karla94@gmail.com', true), 
							(default, 'Octavio', 'Herrera',	'octavioherrera@gmail.com', true), 
							(default, 'Maria', 'Pereira', 'maria.pereira@gmail.com', true), 
							(default, 'Fernanda', 'Ochoa',	'fernanda.ochoa@gmail.com', true);

insert into payment values(default, 3, 1, 220, '2021/1/2'),
							(default, 1, 4, 110, '2020/4/5'), 
							(default, 2, 6, 195, '2020/3/2'), 
							(default, 4, 7, 270, '2020/7/21'), 
							(default, 4, 8, 270, '2021/5/15');
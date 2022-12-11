create table kafedra(id serial primary key,
					 title varchar not null,
					 dekanat varchar not null);
create table gruppa(id serial primary key,
					title varchar not null,
					kafedra varchar not null,
					fk_gruppa_kafedra int references kafedra(id));
create table student(id serial primary key,
					 imya varchar not null,
					 pasport varchar not null,
					 gruppa varchar not null,
					 fk_student_gruppa int references gruppa(id));
insert into kafedra(title,dekanat)
values
('НТС','СиСС'),
('РТС','Рит');
insert into gruppa(title,kafedra,fk_gruppa_kafedra)
values
('НТС2201','НТС',1),
('НТС2202','НТС',1),
('РТС2201','РТС',2),
('РТС2202','РТС',2);
insert into student(imya,pasport,gruppa,fk_student_gruppa)
values
('Ахматова А.А.',1234,'НТС2201',1),
('Булгаков Б.Б.',1345,'НТС2201',1),
('Высотский В.В.',1456,'НТС2201',1),
('Горький Г.Г.',1567,'НТС2201',1),
('Достоевский Д.Д.',1678,'НТС2201',1),
('Есенин Е.Е.',2345,'НТС2202',2),
('Ёлкин Ё.Ё.',2456,'НТС2202',2),
('Жуков Ж.Ж.',2567,'НТС2202',2),
('Заболоцкий З.З.',2789,'НТС2202',2),
('Иванов И.И.',2890,'НТС2202',2),
('Крылов К.К.',3456,'РТС2201',3),
('Лапин Л.Л.',3567,'РТС2201',3),
('Марков М.М.',3678,'РТС2201',3),
('Носов Н.Н.',3890,'РТС2201',3),
('Островский О.О.',3901,'РТС2201',3),
('Пушкин П.П.',4567,'РТС2202',4),
('Распутин Р.Р.',4678,'РТС2202',4),
('Сальников С.С.',4890,'РТС2202',4),
('Толстой Т.Т.',4012,'РТС2202',4),
('Ушаков У.У.',4123,'РТС2202',4)
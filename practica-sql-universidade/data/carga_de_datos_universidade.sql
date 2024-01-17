#poboar a taboa persoa
use universidade;
insert into persoa values ('16161616A','Luis','Ramírez','Haro','Pez','34','941111111',NULL,'1');
insert into persoa values ('17171717A','Laura','Beltrán','Madrid','Gran Vía','23','912121212',str_to_date('08/08/1974','%d/%m/%Y'),'0');
insert into persoa values ('18181818A','Pepe','Pérez','Madrid','Percebe','13','913131313',str_to_date('02/02/1980','%d/%m/%y'),'1');
insert into persoa values ('19191919A','Juan','Sánchez','Bilbao','Melancolía','7','944141414',str_to_date('03/03/1966','%d/%m/%Y'),'1');
insert into persoa values ('20202020A','Luis','Jiménez','Nájera','Cigüeña','15','941151515',str_to_date('03/03/1979','%d/%m/%Y'),'1');
insert into persoa values ('21212121A','Rosa','García','Haro','Alegría','16','941161616',NULL,'0');
insert into persoa values ('23232323A','Jorge','Sáenz','Logroño','Luis Ulloa','17','941171717',str_to_date('09/09/1978','%d/%m/%Y'),'1');
insert into persoa values ('24242424A','María','Gutiérrez','Logroño','Avda. de la Paz','18','941181818',str_to_date('10/10/1964','%d/%m/%Y'),'0');
insert into persoa values ('25252525A','Rosario','Díaz','Logroño','Percebe','19','941191919',str_to_date('11/11/1971','%d/%m/%Y'),'0');
insert into persoa values ('26262626A','Elena','González','Logroño','Percebe','20','941202020',str_to_date('05/05/1975','%d/%m/%Y'),'0');
#poboar a taboa alumno
insert into alumno values('A010101','21212121A');
insert into alumno values('A020202','18181818A');
insert into alumno values('A030303','20202020A');
insert into alumno values('A040404','26262626A');
insert into alumno values('A121212','16161616A');
insert into alumno values('A131313','17171717A');
#poboar a taboa profesor
insert into profesor values('P101','19191919A');
insert into profesor values('P117','25252525A');
insert into profesor values('P203','23232323A');
insert into profesor values('P204','26262626A');
insert into profesor values('P304','24242424A');
#poboar a taboa titulacion
insert into titulacion values('130110','Matemáticas');
insert into titulacion values('150210','Químicas');
insert into titulacion values('160000','Empresariales');
#poboar a taboa materia
insert into materia values ('115','Seguridad Vial','4.5','1','30','P204','','');
insert into materia values ('130113','Programación I','9','1','60','P101','130110','1');
insert into materia values ('130122','Análisis II','9','2','60','P203','130110','2');
insert into materia values ('150212','Química Física','4.5','2','70','P304','150210','1');
insert into materia values ('160002','Contabilidad','6','1','70','P117','160000','1');
#poboar taboa alumno_materia
insert into alumno_materia values('A010101','150212','1');
insert into alumno_materia values('A020202','130113','1');
insert into alumno_materia values('A020202','150212','2');
insert into alumno_materia values('A030303','130113','3');
insert into alumno_materia values('A030303','150212','1');
insert into alumno_materia values('A030303','130122','2');
insert into alumno_materia values('A040404','130122','1');
insert into alumno_materia values('A121212','115','1');
insert into alumno_materia values('A131313','160002','4');
#poboar taboa tamanho_materia
insert into tamanho_materia values('curta',0,4.5);
insert into tamanho_materia values('media',6,7.5);
insert into tamanho_materia values('longa',9,100);

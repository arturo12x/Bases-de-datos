create table species(
id integer primary key identity(1,1),
name varchar(50),
appeared integer,
phylum varchar(50))

insert into species values('Dunkleosteus',380,'chordata')
insert into species values('Meganeura',305,'anthropoda')
insert into species values('Trilobite',521,'Anthropoda')
insert into species values('Crocodyliformes',225,'Chordata')
insert into species values('Estemmenosuchus',267,'chordata')
insert into species values('Dimetrodon',295,'chordata')
insert into species values('Diplocaulus',299,'chordata')
insert into species values('Orthoceras',488,'Mollusca')
insert into species values('Stethacanthidae',380,'chordata')
insert into species values('Woolly Rhinoceros',4,'chordata')


--uppdate dimetrodon udate 550
update species set appeared=550  where name='Dimetrodon' 

select * from species

select name,appeared,
case
when appeared between 245 and 540 then 'Paleozoica'
when appeared between 65 and 244 then 'Maseozoica'
when appeared<65 then 'cenozoica'
else
'alienigena'
end as 
'era de dinos'
from species order by appeared desc







create table jdbc.weather
(
    id          int auto_increment
        primary key,
    contry      varchar(50) null,
    type        varchar(50) null,
    date        varchar(50) null,
    temperature varchar(50) null
);

insert into weather(contry, type, date, temperature)
values
    ('Belarus','WARM',CURRENT_DATE, 19),
    ('Belarus','COLD',CURRENT_DATE, 2),
    ('Belarus','COLD',CURRENT_DATE, 3),
    ('Belarus','COLD',CURRENT_DATE, 1),
    ('Belarus','VERY HOT',CURRENT_DATE, 54),
    ('Belarus','WARM',CURRENT_DATE, 12),
    ('Belarus','COLD',CURRENT_DATE, -5),
    ('Belarus','WARM',CURRENT_DATE, 15),
    ('Belarus','HOT',CURRENT_DATE, 37),
    ('Belarus','HOT',CURRENT_DATE, 30)

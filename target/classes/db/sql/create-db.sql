create table resource_schedule(
shid number(5) primary key not null,
resource_type varchar2(20),
resource_name varchar2(20),
activity varchar2(20),
start_time date,
end_time date
);

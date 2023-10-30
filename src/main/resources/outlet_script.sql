drop schema if exists outlet_center;
drop user if exists OUTLET_ADMIN;
CREATE SCHEMA outlet_center;
USE outlet_center;

create user 'OUTLET_ADMIN'@'%' identified by 'K7$9P#xY&2@zR!sW';

grant all privileges on outlet_center.* to 'OUTLET_ADMIN'@'%';
flush privileges;

-- Tables creation

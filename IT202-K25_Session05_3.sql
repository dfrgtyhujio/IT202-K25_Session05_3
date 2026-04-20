-- Dữ liệu đầu vào:
-- restaurant_location: tọa độ quán ăn
-- drivers: bảng dữ liệu tài xế

use db_demo;

create table Drivers (
    driver_id int,
    status varchar(20),
    trust_score int,
    distance_km decimal(5,2)
);

insert into Drivers values
	(1, 'AVAILABLE', 90, 2.5),
	(2, 'BUSY', 85, 1.0),
	(3, 'AVAILABLE', 75, 3.0),
	(4, 'AVAILABLE', 88, 1.5),
	(5, 'AVAILABLE', 92, 1.5);

SELECT driver_id, status, trust_score, distance_km
FROM Drivers
WHERE 
	status = 'AVAILABLE' 
    AND trust_score >= 80
ORDER BY 
    distance_km ASC,
    trust_score DESC;
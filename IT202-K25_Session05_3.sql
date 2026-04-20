-- Dữ liệu đầu vào:
-- restaurant_location: tọa độ quán ăn
-- min_trust_score: Điểm tín nhiệm tối thiểu
-- drivers: bảng dữ liệu tài xế

SELECT driver_id, status, trust_score, distance_km
FROM Drivers
WHERE 
	status = 'AVAILABLE' 
    AND trust_score >= min_trust_score
ORDER BY 
    distance_km ASC,
    trust_score DESC;
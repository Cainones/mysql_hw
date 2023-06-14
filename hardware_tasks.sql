-- 1. /Request
SELECT SUM(amount) FROM hardware;

-- 2. /Request
SELECT * FROM hardware
	WHERE amount = 0;

-- 3. /Request
SELECT AVG(hardware.price) FROM hardware
	WHERE hardware.title LIKE 'Монитор%';

-- 4. /Request
SELECT * FROM hardware
	WHERE hardware.title LIKE 'Клавиатура%'
	ORDER BY hardware.price ASC;

-- 5. /Request
SELECT hardware.tag, COUNT(*) as count FROM hardware
	GROUP BY hardware.tag
	ORDER BY count DESC;

-- 6. /Request
SELECT COUNT(*) FROM hardware
	WHERE hardware.tag = 'discount';

-- 7. /Request
SELECT hardware.title, hardware.price FROM hardware
	WHERE hardware.tag = 'new'
	ORDER BY hardware.price DESC
	LIMIT 1;

-- 8. /Request
INSERT INTO hardware 
	(title, price, tag, amount) 
	VALUES 
	("Ноутбук Lenovo 2BXKQ7E9XD", 54500, "new", 1);

-- 9. /Request
DELETE FROM hardware
	WHERE hardware.title = 'Очки PS VR 2' AND hardware.id > 0;
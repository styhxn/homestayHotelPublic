-- 更新房间数据为普洱蘑菇庄园主题
-- 执行前请先备份现有数据

-- 临时禁用外键检查
SET FOREIGN_KEY_CHECKS = 0;

-- 清空现有房间数据
DELETE FROM h_room;

-- 重置自增ID
ALTER TABLE h_room AUTO_INCREMENT = 1;

-- 插入普洱蘑菇庄园主题房间数据
INSERT INTO `h_room` (`id`, `status`, `name`, `city`, `address`, `code`, `category`, `price`, `state`, `banner`, `seat`, `describe`, `device`, `weight`) VALUES
(1, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '201', '大床房', 19.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观1.jpg', 2, '南向采光，带窗户，房间高度2.4米，享受雨林美景的豪华蘑菇主题房间', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 100),

(2, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '204', '单人间', 999.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观2.jpg', 1, '南向采光，带窗户，房间高度2.4米，适合单人入住的精致蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰,迷你吧', 90),

(3, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园1楼', '105', '单人间', 256.00, '空闲', '/src/assets/images/实地调研/房间参观/房间参观3.jpg', 1, '无窗户设计，房间高度2.4米，经济实惠的单人蘑菇屋', 'WiFi,空调,电视,独立卫浴,蘑菇主题装饰', 70),

(4, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园3楼', '301', '亲子房', 486.00, '空闲', '/src/assets/images/环境展示/庄园内部1.jpg', 3, '无窗户设计，房间高度2.4米，适合家庭入住的温馨亲子蘑菇屋', 'WiFi,空调,电视,独立卫浴,蘑菇主题装饰,儿童设施,游戏区', 85),

(5, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园3楼', '303', '双人间', 388.00, '空闲', '/src/assets/images/环境展示/庄园内部2.jpg', 2, '南向采光，带窗户，房间高度2.4米，舒适的双人蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰', 80),

-- 添加更多房间以丰富选择
(6, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '212', '亲子房', 418.00, '空闲', '/src/assets/images/card/card01.jpg', 3, '西向采光，带窗户，房间高度2.4米，温馨的亲子蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰,儿童设施', 82),

(7, 0, '雨林景观豪华蘑菇屋', '普洱市', '普洱蘑菇庄园2楼', '211', '亲子房', 419.00, '空闲', '/src/assets/images/card/card02.jpg', 3, '西向采光，带窗户，房间高度2.4米，舒适的亲子蘑菇屋', 'WiFi,空调,电视,独立卫浴,观景窗,蘑菇主题装饰,儿童设施', 83),

(8, 0, '普洱茶香蘑菇屋', '普洱市', '普洱蘑菇庄园1楼', '102', '标准间', 298.00, '空闲', '/src/assets/images/card/card03.jpg', 2, '茶香弥漫的蘑菇主题房间，体验普洱茶文化与蘑菇生态的完美结合', 'WiFi,空调,电视,独立卫浴,茶具套装,蘑菇主题装饰', 75),

(9, 0, '生态蘑菇观景房', '普洱市', '普洱蘑菇庄园4楼', '401', '豪华间', 588.00, '空闲', '/src/assets/images/card/card04.JPG', 2, '顶层观景房，360度雨林全景，豪华蘑菇主题装修，享受最佳视野', 'WiFi,空调,电视,独立卫浴,观景阳台,蘑菇主题装饰,迷你吧,保险箱', 95),

(10, 0, '蘑菇生态套房', '普洱市', '普洱蘑菇庄园4楼', '402', '套房', 688.00, '空闲', '/src/assets/images/card/card05.jpg', 4, '豪华蘑菇生态套房，配备客厅、用餐区，适合家庭或商务入住', 'WiFi,空调,电视,独立卫浴,客厅,用餐区,迷你厨房,蘑菇主题装饰,保险箱', 88);

-- 重新启用外键检查
SET FOREIGN_KEY_CHECKS = 1;

-- 更新订单表中的房间引用（如果需要）
-- UPDATE h_order SET room_id = 新房间ID WHERE room_id = 旧房间ID;

-- 验证数据
SELECT * FROM h_room ORDER BY weight DESC;

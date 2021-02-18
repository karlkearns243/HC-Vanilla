DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20200802210659');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20200802210659');
-- Add your query below.


-- kargath grunt should roam not pathfind
DELETE FROM `creature_movement` WHERE `id` = 6898;
UPDATE `creature` SET `position_x` = -6620.42, `position_y` = -2215.8, `position_z` = 244.269, `movement_type` = 1, `wander_distance` = 5 WHERE `guid` = 6898;

-- add servo waypoints and scripts
UPDATE `creature_template` SET `ai_name` = '' WHERE `entry` = 2922;
UPDATE `creature` SET `movement_type` = 2 WHERE `guid` = 7249;
DELETE FROM `creature_ai_events` WHERE `creature_id`=2922;
DELETE FROM `creature_ai_scripts` WHERE `id`IN (292201, 292202, 292203);
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(2922, 1, -6631.39, -2726.79, 243.585, 2.96706, 25000, 0, 292204),
(2922, 2, -6633.1, -2718.19, 243.968, 100, 0, 0, 0),
(2922, 3, -6644.94, -2710.01, 245.064, 100, 0, 0, 0),
(2922, 4, -6656.24, -2711.52, 242.568, 100, 0, 0, 0),
(2922, 5, -6667.67, -2720.87, 242.893, 100, 0, 0, 0),
(2922, 6, -6668.86, -2731.74, 243.128, 100, 0, 0, 0),
(2922, 7, -6661.89, -2740.65, 242.946, 100, 0, 0, 0),
(2922, 8, -6650.72, -2744.83, 242.467, 100, 0, 0, 0),
(2922, 9, -6641.93, -2744, 242.577, 100, 0, 0, 0),
(2922, 10, -6637.6, -2737.69, 243.057, 100, 0, 0, 0),
(2922, 11, -6632.26, -2730.05, 243.632, 100, 10000, 0, 292201),
(2922, 12, -6629.83, -2731.84, 243.952, 100, 0, 0, 0),
(2922, 13, -6626.84, -2731.86, 244.322, 100, 0, 0, 0),
(2922, 14, -6625.9, -2729.02, 244.383, 100, 0, 0, 0),
(2922, 15, -6630.4, -2726.7, 243.669, 100, 0, 0, 0),
(2922, 16, -6635.28, -2729.64, 243.431, 100, 0, 0, 0),
(2922, 17, -6638.85, -2734.38, 243.176, 100, 0, 0, 0),
(2922, 18, -6648.6, -2740.83, 242.495, 100, 0, 0, 0),
(2922, 19, -6655.65, -2750.56, 242.569, 100, 10000, 0, 292201),
(2922, 20, -6655.65, -2750.56, 242.569, 100, 0, 0, 292202),
(2922, 21, -6649.62, -2742.92, 242.473, 100, 0, 0, 0),
(2922, 22, -6650.89, -2735.79, 242.594, 100, 0, 0, 0),
(2922, 23, -6659.62, -2735.75, 242.864, 100, 0, 0, 0),
(2922, 24, -6668.86, -2731.74, 243.128, 100, 0, 0, 0),
(2922, 25, -6670.68, -2726.46, 242.937, 100, 0, 0, 0),
(2922, 26, -6657.19, -2715.05, 242.438, 100, 0, 0, 0),
(2922, 27, -6648.02, -2713.55, 243.86, 100, 0, 0, 0),
(2922, 28, -6638.08, -2716.45, 243.919, 100, 0, 0, 0),
(2922, 29, -6634.84, -2722.57, 243.386, 100, 10000, 0, 292201),
(2922, 30, -6634.84, -2722.57, 243.386, 100, 0, 0, 292203),
(2922, 31, -6631.83, -2722.68, 243.622, 100, 0, 0, 0),
(2922, 32, -6629.03, -2723.16, 243.893, 100, 0, 0, 0),
(2922, 33, -6626.65, -2728.26, 244.264, 100, 0, 0, 0),
(2922, 34, -6623.51, -2736.7, 244.597, 100, 0, 0, 0),
(2922, 35, -6625.27, -2743.45, 244.163, 100, 0, 0, 0),
(2922, 36, -6635.42, -2754.56, 243.485, 100, 0, 0, 0),
(2922, 37, -6649.49, -2753.88, 242.677, 100, 0, 0, 0),
(2922, 38, -6654.42, -2750.81, 242.555, 100, 0, 0, 0),
(2922, 39, -6650.2, -2739.49, 242.514, 100, 0, 0, 0),
(2922, 40, -6655.12, -2726.67, 242.787, 100, 0, 0, 0),
(2922, 41, -6652.57, -2715.81, 242.98, 100, 0, 0, 0),
(2922, 42, -6645.45, -2718.09, 243.475, 100, 0, 0, 0),
(2922, 43, -6634.76, -2714.72, 244.51, 100, 0, 0, 0),
(2922, 44, -6629.11, -2713.59, 244.916, 100, 0, 0, 0),
(2922, 45, -6626.1, -2713.86, 244.906, 100, 0, 0, 0),
(2922, 46, -6629.46, -2719.4, 244.099, 100, 10000, 0, 292201);
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (292201, 1, 39, 292201, 292202, 0, 0, 0, 0, 0, 0, 50, 50, 0, 0, 0, 0, 0, 0, 0, 'Servo - Start Script');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (292201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 901, 902, 903, 904, 0, 0, 0, 0, 0, 'Servo - Talk');
INSERT INTO `generic_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (292202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 905, 898, 900, 899, 0, 0, 0, 0, 0, 'Servo - Talk');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (292202, 0, 25, 1, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Servo - Run');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (292203, 0, 25, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Servo - Walk');
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES (292204, 0, 4, 46, 2, 1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Servo - Set Non Attackable');

-- angor patrol waypoints
UPDATE `creature` SET `movement_type` = 0, `wander_distance`=0 WHERE `guid` = 7215;
DELETE FROM `creature_movement` WHERE `id` IN (7816, 7215);
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES
(7816, 7215, 4, 15, 11),
(7816, 7216, 4, 17, 11);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7816, 01, -6410.7085, -3177.1887, 290.43300, 100, 0, 0),
(7816, 02, -6413.2850, -3183.8904, 286.03458, 100, 0, 0),
(7816, 03, -6417.2640, -3192.6028, 279.83950, 100, 0, 0),
(7816, 04, -6426.7310, -3198.6790, 272.95450, 100, 0, 0),
(7816, 05, -6439.9556, -3203.3052, 265.12130, 100, 0, 0),
(7816, 06, -6454.2095, -3221.8801, 252.92722, 100, 0, 0),
(7816, 07, -6464.3400, -3237.9492, 244.91667, 100, 0, 0),
(7816, 08, -6469.4880, -3267.8645, 241.79167, 100, 0, 0),
(7816, 09, -6458.0283, -3289.2734, 241.79167, 100, 0, 0),
(7816, 10, -6445.4740, -3304.7570, 241.79167, 100, 0, 0),
(7816, 11, -6429.9043, -3321.7837, 241.79167, 100, 0, 0),
(7816, 12, -6416.5435, -3337.4575, 241.70993, 100, 0, 0),
(7816, 13, -6401.8643, -3353.8577, 241.70993, 100, 0, 0),
(7816, 14, -6391.8930, -3365.9236, 241.79167, 100, 0, 0),
(7816, 15, -6386.0234, -3380.2104, 241.70993, 100, 0, 0),
(7816, 16, -6388.4556, -3393.0950, 241.53268, 100, 0, 0),
(7816, 17, -6394.6797, -3397.9766, 239.86179, 100, 15000, 0),
(7816, 18, -6387.9277, -3389.4940, 241.70993, 100, 0, 0),
(7816, 19, -6385.4385, -3380.2805, 241.70993, 100, 0, 0),
(7816, 20, -6388.0684, -3364.7930, 241.79167, 100, 0, 0),
(7816, 21, -6392.4844, -3353.7861, 241.79167, 100, 0, 0),
(7816, 22, -6399.9140, -3341.1501, 241.79167, 100, 0, 0),
(7816, 23, -6403.5830, -3328.6775, 241.79167, 100, 0, 0),
(7816, 24, -6406.3228, -3316.0605, 241.79167, 100, 0, 0),
(7816, 25, -6407.4050, -3302.5930, 241.79167, 100, 0, 0),
(7816, 26, -6416.6313, -3285.2476, 241.79167, 100, 0, 0),
(7816, 27, -6427.1396, -3276.2896, 241.79167, 100, 0, 0),
(7816, 28, -6438.4526, -3267.1025, 241.79167, 100, 0, 0),
(7816, 29, -6448.3574, -3256.2268, 241.85686, 100, 0, 0),
(7816, 30, -6453.6025, -3246.1863, 243.20720, 100, 0, 0),
(7816, 31, -6454.6860, -3231.9050, 248.38058, 100, 0, 0),
(7816, 32, -6452.1143, -3220.9202, 254.32858, 100, 0, 0),
(7816, 33, -6445.5230, -3210.3950, 260.81418, 100, 0, 0),
(7816, 34, -6434.1855, -3200.5800, 268.81980, 100, 0, 0),
(7816, 35, -6423.5690, -3194.5442, 276.47305, 100, 0, 0),
(7816, 36, -6414.4785, -3185.3425, 284.78775, 100, 0, 0),
(7816, 37, -6410.4004, -3178.4668, 290.02676, 100, 0, 0),
(7816, 38, -6405.2563, -3171.3684, 295.44058, 100, 0, 0),
(7816, 39, -6401.3400, -3169.2942, 297.96988, 100, 15000, 0);

-- buzzard waypoints
REPLACE INTO `creature` (`guid`, `id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `patch_max`) VALUES
(6998, 2830, -6809.1690, -3288.9463, 251.71048, 5.004500389099121093, 300, 300, 0, 100, 0, 2, 10),
(7006, 2830, -6811.9062, -3616.8596, 247.55585, 2.745974540710449218, 300, 300, 0, 100, 0, 2, 10),
(7137, 2830, -7112.6885, -3520.9963, 246.56581, 5.309476852416992187, 300, 300, 0, 100, 0, 2, 10),
(7251, 2830, -6883.9560, -3329.9639, 248.58047, 0.251014798879623413, 300, 300, 0, 100, 0, 2, 10),
(7252, 2830, -6947.3830, -3311.4058, 260.87540, 4.502949237823486328, 300, 300, 0, 100, 0, 2, 10),
(7253, 2830, -7181.0146, -3326.0774, 247.64453, 0.822117805480957031, 300, 300, 0, 100, 0, 2, 10),
(7614, 2830, -6787.1167, -3653.0847, 247.03485, 2.409144878387451171, 300, 300, 0, 100, 0, 2, 10);

DELETE FROM `creature_movement` WHERE `id`=6998;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(6998, 01, -6788.4297, -3317.7454, 241.79167, 100, 0, 0),
(6998, 02, -6791.0180, -3347.0723, 241.91696, 100, 0, 0),
(6998, 03, -6810.2800, -3386.3340, 241.79167, 100, 0, 0),
(6998, 04, -6817.5780, -3417.0894, 242.15495, 100, 0, 0),
(6998, 05, -6806.7476, -3445.5550, 242.31697, 100, 0, 0),
(6998, 06, -6841.7173, -3464.1130, 244.54582, 100, 0, 0),
(6998, 07, -6853.8840, -3507.1665, 241.99431, 100, 0, 0),
(6998, 08, -6846.0166, -3550.3179, 242.05122, 100, 0, 0),
(6998, 09, -6858.6377, -3574.3645, 242.79167, 100, 0, 0),
(6998, 10, -6855.8994, -3613.5725, 244.00223, 100, 0, 0),
(6998, 11, -6839.9233, -3642.1633, 256.55832, 100, 0, 0),
(6998, 12, -6855.8994, -3613.5725, 244.00223, 100, 0, 0),
(6998, 13, -6858.6377, -3574.3645, 242.79167, 100, 0, 0),
(6998, 14, -6846.0166, -3550.3179, 242.05122, 100, 0, 0),
(6998, 15, -6853.8840, -3507.1665, 241.99431, 100, 0, 0),
(6998, 16, -6841.7173, -3464.1130, 244.54582, 100, 0, 0),
(6998, 17, -6806.7476, -3445.5550, 242.31697, 100, 0, 0),
(6998, 18, -6817.5780, -3417.0894, 242.15495, 100, 0, 0),
(6998, 19, -6810.2800, -3386.3340, 241.79167, 100, 0, 0),
(6998, 20, -6791.0180, -3347.0723, 241.91696, 100, 0, 0),
(6998, 21, -6788.4297, -3317.7454, 241.79167, 100, 0, 0),
(6998, 22, -6807.9350, -3293.0210, 249.85414, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id`=7006;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7006, 01, -6809.2500, -3596.1680, 243.16667, 100, 0, 0),
(7006, 02, -6797.8600, -3589.9380, 241.79167, 100, 0, 0),
(7006, 03, -6758.9030, -3579.0930, 243.12115, 100, 0, 0),
(7006, 04, -6745.0425, -3555.2446, 245.20601, 100, 0, 0),
(7006, 05, -6770.9520, -3532.2505, 245.83691, 100, 0, 0),
(7006, 06, -6797.9620, -3506.0100, 242.78784, 100, 0, 0),
(7006, 07, -6799.6455, -3463.8438, 241.79167, 100, 0, 0),
(7006, 08, -6760.5825, -3444.7205, 241.98772, 100, 0, 0),
(7006, 09, -6735.3877, -3412.0906, 241.79167, 100, 0, 0),
(7006, 10, -6720.8300, -3385.1682, 241.78453, 100, 0, 0),
(7006, 11, -6697.0137, -3374.8086, 243.21086, 100, 0, 0),
(7006, 12, -6720.8300, -3385.1682, 241.78453, 100, 0, 0),
(7006, 13, -6735.3877, -3412.0906, 241.79167, 100, 0, 0),
(7006, 14, -6760.5825, -3444.7205, 241.98772, 100, 0, 0),
(7006, 15, -6799.6455, -3463.8438, 241.79167, 100, 0, 0),
(7006, 16, -6797.9620, -3506.0100, 242.78784, 100, 0, 0),
(7006, 17, -6770.9520, -3532.2505, 245.83691, 100, 0, 0),
(7006, 18, -6745.0425, -3555.2446, 245.20601, 100, 0, 0),
(7006, 19, -6758.9030, -3579.0930, 243.12115, 100, 0, 0),
(7006, 20, -6797.8600, -3589.9380, 241.79167, 100, 0, 0),
(7006, 21, -6809.2500, -3596.1680, 243.16667, 100, 0, 0),
(7006, 22, -6814.6616, -3615.7095, 247.22562, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id`=7137;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7137, 01, -7077.7620, -3543.4775, 241.89763, 100, 0, 0),
(7137, 02, -7045.7040, -3551.2231, 243.82924, 100, 0, 0),
(7137, 03, -7015.0127, -3551.6000, 243.64133, 100, 0, 0),
(7137, 04, -6982.0537, -3518.4673, 242.54167, 100, 0, 0),
(7137, 05, -6968.2603, -3491.3352, 241.79167, 100, 0, 0),
(7137, 06, -6940.3403, -3458.9272, 241.79167, 100, 0, 0),
(7137, 07, -6921.6123, -3465.0310, 242.42139, 100, 0, 0),
(7137, 08, -6878.9510, -3466.9790, 244.47859, 100, 0, 0),
(7137, 09, -6851.0490, -3453.2800, 244.06340, 100, 0, 0),
(7137, 10, -6826.1353, -3458.7017, 244.06697, 100, 0, 0),
(7137, 11, -6784.6480, -3464.2530, 241.79167, 100, 0, 0),
(7137, 12, -6754.1157, -3479.7913, 242.41667, 100, 0, 0),
(7137, 13, -6715.6670, -3483.1310, 241.92404, 100, 0, 0),
(7137, 14, -6686.9490, -3487.3223, 252.35658, 100, 0, 0),
(7137, 15, -6715.6660, -3483.1309, 241.79904, 100, 0, 0),
(7137, 16, -6754.1157, -3479.7913, 242.41667, 100, 0, 0),
(7137, 17, -6784.6480, -3464.2530, 241.79167, 100, 0, 0),
(7137, 18, -6826.1353, -3458.7017, 244.06697, 100, 0, 0),
(7137, 19, -6851.0490, -3453.2800, 244.06340, 100, 0, 0),
(7137, 20, -6878.9510, -3466.9790, 244.47859, 100, 0, 0),
(7137, 21, -6921.6123, -3465.0310, 242.42139, 100, 0, 0),
(7137, 22, -6940.3403, -3458.9272, 241.79167, 100, 0, 0),
(7137, 23, -6968.2603, -3491.3352, 241.79167, 100, 0, 0),
(7137, 24, -6982.0537, -3518.4673, 242.54167, 100, 0, 0),
(7137, 25, -7015.0127, -3551.6000, 243.64133, 100, 0, 0),
(7137, 26, -7045.7040, -3551.2231, 243.82924, 100, 0, 0),
(7137, 27, -7077.7620, -3543.4775, 241.89763, 100, 0, 0),
(7137, 28, -7107.8240, -3528.1458, 245.41022, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id`=7251;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7251, 01, -6888.0044, -3356.2110, 243.79900, 100, 0, 0),
(7251, 02, -6901.8647, -3377.2730, 242.13113, 100, 0, 0),
(7251, 03, -6933.2960, -3395.6555, 242.58694, 100, 0, 0),
(7251, 04, -6933.2680, -3431.3360, 242.62099, 100, 0, 0),
(7251, 05, -6924.0747, -3460.1630, 242.37598, 100, 0, 0),
(7251, 06, -6951.5610, -3493.0130, 241.91692, 100, 0, 0),
(7251, 07, -6944.8374, -3526.1724, 241.79167, 100, 0, 0),
(7251, 08, -6926.0850, -3562.5186, 241.90656, 100, 0, 0),
(7251, 09, -6915.7676, -3598.7888, 242.97517, 100, 0, 0),
(7251, 10, -6951.3640, -3628.0090, 241.79167, 100, 0, 0),
(7251, 11, -6934.3794, -3651.0930, 246.24873, 100, 0, 0),
(7251, 12, -6951.3640, -3628.0090, 241.79167, 100, 0, 0),
(7251, 13, -6915.7676, -3598.7888, 242.97517, 100, 0, 0),
(7251, 14, -6926.0850, -3562.5186, 241.90656, 100, 0, 0),
(7251, 15, -6944.8374, -3526.1724, 241.79167, 100, 0, 0),
(7251, 16, -6951.5610, -3493.0130, 241.91692, 100, 0, 0),
(7251, 17, -6924.0747, -3460.1630, 242.37598, 100, 0, 0),
(7251, 18, -6933.2680, -3431.3360, 242.62099, 100, 0, 0),
(7251, 19, -6933.2960, -3395.6555, 242.58694, 100, 0, 0),
(7251, 20, -6901.8647, -3377.2730, 242.13113, 100, 0, 0),
(7251, 21, -6888.0044, -3356.2110, 243.79900, 100, 0, 0),
(7251, 22, -6879.0240, -3328.6968, 247.92014, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id`=7252;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7252, 01, -6932.4550, -3343.0027, 243.98734, 100, 0, 0),
(7252, 02, -6936.7183, -3372.1416, 241.79167, 100, 0, 0),
(7252, 03, -6936.8564, -3388.9700, 242.16667, 100, 0, 0),
(7252, 04, -6957.8013, -3415.2031, 241.79167, 100, 0, 0),
(7252, 05, -6981.0680, -3437.6628, 241.79167, 100, 0, 0),
(7252, 06, -7012.0060, -3448.1433, 242.16667, 100, 0, 0),
(7252, 07, -7034.0254, -3482.5632, 241.76180, 100, 0, 0),
(7252, 08, -7041.3735, -3520.5320, 243.42616, 100, 0, 0),
(7252, 09, -7044.2020, -3550.6328, 244.00966, 100, 0, 0),
(7252, 10, -7085.1104, -3563.2112, 241.79167, 100, 0, 0),
(7252, 11, -7098.9200, -3597.3850, 244.89934, 100, 0, 0),
(7252, 12, -7085.1104, -3563.2112, 241.79167, 100, 0, 0),
(7252, 13, -7044.2020, -3550.6328, 244.00966, 100, 0, 0),
(7252, 14, -7041.3735, -3520.5320, 243.42616, 100, 0, 0),
(7252, 15, -7034.0254, -3482.5632, 241.76180, 100, 0, 0),
(7252, 16, -7012.0060, -3448.1433, 242.16667, 100, 0, 0),
(7252, 17, -6981.0680, -3437.6628, 241.79167, 100, 0, 0),
(7252, 18, -6957.8013, -3415.2031, 241.79167, 100, 0, 0),
(7252, 19, -6936.8564, -3388.9700, 242.16667, 100, 0, 0),
(7252, 20, -6936.7183, -3372.1416, 241.79167, 100, 0, 0),
(7252, 21, -6932.4550, -3343.0027, 243.98734, 100, 0, 0),
(7252, 22, -6946.1885, -3315.6714, 258.95197, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id`=7253;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7253, 01, -7147.1304, -3335.6003, 244.25568, 100, 0, 0),
(7253, 02, -7120.9520, -3360.9740, 242.91095, 100, 0, 0),
(7253, 03, -7112.4824, -3395.7040, 241.91770, 100, 0, 0),
(7253, 04, -7093.5703, -3428.6350, 242.18457, 100, 0, 0),
(7253, 05, -7063.8228, -3436.2273, 245.29756, 100, 0, 0),
(7253, 06, -7031.2676, -3456.3503, 243.15690, 100, 0, 0),
(7253, 07, -6998.3516, -3486.1145, 241.79167, 100, 0, 0),
(7253, 08, -6992.2910, -3516.2595, 243.16667, 100, 0, 0),
(7253, 09, -6970.7360, -3551.4010, 241.86589, 100, 0, 0),
(7253, 10, -6947.5210, -3554.2180, 242.04167, 100, 0, 0),
(7253, 11, -6919.9756, -3577.4148, 242.47029, 100, 0, 0),
(7253, 12, -6901.6730, -3608.3337, 242.99260, 100, 0, 0),
(7253, 13, -6891.8145, -3634.1770, 246.05998, 100, 0, 0),
(7253, 14, -6901.6730, -3608.3337, 242.99260, 100, 0, 0),
(7253, 15, -6919.9756, -3577.4148, 242.47029, 100, 0, 0),
(7253, 16, -6947.5210, -3554.2180, 242.04167, 100, 0, 0),
(7253, 17, -6970.7360, -3551.4010, 241.86589, 100, 0, 0),
(7253, 18, -6992.2910, -3516.2595, 243.16667, 100, 0, 0),
(7253, 19, -6998.3516, -3486.1145, 241.79167, 100, 0, 0),
(7253, 20, -7031.2676, -3456.3503, 243.15690, 100, 0, 0),
(7253, 21, -7063.8228, -3436.2273, 245.29756, 100, 0, 0),
(7253, 22, -7093.5703, -3428.6350, 242.18457, 100, 0, 0),
(7253, 23, -7112.4824, -3395.7040, 241.91770, 100, 0, 0),
(7253, 24, -7120.9520, -3360.9740, 242.91095, 100, 0, 0),
(7253, 25, -7147.1304, -3335.6003, 244.25568, 100, 0, 0),
(7253, 26, -7177.7250, -3322.5325, 246.53868, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id`=7614;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7614, 01, -6772.5770, -3640.4253, 243.18942, 100, 0, 0),
(7614, 02, -6754.5366, -3631.1033, 241.74857, 100, 0, 0),
(7614, 03, -6755.2200, -3618.7270, 241.74857, 100, 0, 0),
(7614, 04, -6752.1430, -3604.2551, 242.05032, 100, 0, 0),
(7614, 05, -6737.6147, -3596.9720, 242.54694, 100, 0, 0),
(7614, 06, -6721.1387, -3587.4727, 242.71065, 100, 0, 0),
(7614, 07, -6716.0503, -3564.7910, 243.17586, 100, 0, 0),
(7614, 08, -6688.8213, -3544.2556, 242.13786, 100, 0, 0),
(7614, 09, -6661.6494, -3516.6145, 247.93910, 100, 0, 0),
(7614, 10, -6658.1440, -3483.0070, 257.01910, 100, 0, 0),
(7614, 11, -6648.1567, -3458.1418, 261.12180, 100, 0, 0),
(7614, 12, -6658.1245, -3412.5474, 258.49713, 100, 0, 0),
(7614, 13, -6648.1567, -3458.1418, 261.12180, 100, 0, 0),
(7614, 14, -6658.1440, -3483.0070, 257.01910, 100, 0, 0),
(7614, 15, -6661.6494, -3516.6145, 247.93910, 100, 0, 0),
(7614, 16, -6688.8213, -3544.2556, 242.13786, 100, 0, 0),
(7614, 17, -6715.9824, -3564.7090, 243.13826, 100, 0, 0),
(7614, 18, -6721.0400, -3587.4220, 242.61983, 100, 0, 0),
(7614, 19, -6737.6147, -3596.9720, 242.54694, 100, 0, 0),
(7614, 20, -6752.1430, -3604.2551, 242.05032, 100, 0, 0),
(7614, 21, -6755.2200, -3618.7270, 241.74857, 100, 0, 0),
(7614, 22, -6754.5366, -3631.1033, 241.74857, 100, 0, 0),
(7614, 23, -6772.5770, -3640.4253, 243.18942, 100, 0, 0),
(7614, 24, -6787.6310, -3652.6223, 247.15427, 100, 0, 0);

-- starving buzzard waypoints
REPLACE INTO `creature` (`guid`, `id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `patch_max`) VALUES
(7561, 2829, -6388.6826, -3576.8855, 269.53160, 4.084070205688476562, 300, 300, 0, 100, 0, 2, 10),
(7607, 2829, -6547.1140, -3590.2603, 263.31506, 5.279604911804199218, 300, 300, 0, 100, 0, 2, 10),
(7705, 2829, -6344.1694, -3295.6943, 262.75412, 4.188790321350097656, 300, 300, 0, 100, 0, 2, 10),
(7706, 2829, -6293.0156, -3540.8284, 255.49348, 6.091198921203613281, 300, 300, 0, 100, 0, 2, 10),
(7724, 2829, -6118.2153, -3446.3542, 263.37582, 1.686625361442565917, 300, 300, 0, 100, 0, 2, 10),
(7796, 2829, -6363.7637, -3508.5474, 246.23044, 5.969026088714599609, 300, 300, 0, 100, 0, 2, 10);

DELETE FROM `creature_movement` WHERE `id`=7561;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7561, 01, -6371.2954, -3594.9817, 247.97018, 100, 0, 0),
(7561, 02, -6354.9100, -3614.2063, 242.13982, 100, 0, 0),
(7561, 03, -6362.3620, -3647.9340, 242.31023, 100, 0, 0),
(7561, 04, -6388.2134, -3641.8772, 242.29488, 100, 0, 0),
(7561, 05, -6408.3410, -3626.7124, 250.95955, 100, 0, 0),
(7561, 06, -6429.4526, -3627.0230, 257.58966, 100, 0, 0),
(7561, 07, -6445.1484, -3633.0947, 254.01373, 100, 0, 0),
(7561, 08, -6473.4854, -3647.5496, 244.61816, 100, 0, 0),
(7561, 09, -6480.7560, -3664.5112, 247.52686, 100, 0, 0),
(7561, 10, -6473.2780, -3676.0117, 252.08089, 100, 0, 0),
(7561, 11, -6471.7820, -3685.6067, 256.94562, 100, 0, 0),
(7561, 12, -6478.8745, -3700.1340, 265.36304, 100, 0, 0),
(7561, 13, -6488.7993, -3703.6740, 270.98706, 100, 0, 0),
(7561, 14, -6504.0767, -3706.2783, 273.87260, 100, 0, 0),
(7561, 15, -6526.7950, -3698.4526, 272.45602, 100, 0, 0),
(7561, 16, -6504.1074, -3706.2812, 273.99075, 100, 0, 0),
(7561, 17, -6488.7993, -3703.6740, 270.98706, 100, 0, 0),
(7561, 18, -6478.8745, -3700.1340, 265.36304, 100, 0, 0),
(7561, 19, -6471.7820, -3685.6067, 256.94562, 100, 0, 0),
(7561, 20, -6473.2780, -3676.0117, 252.08089, 100, 0, 0),
(7561, 21, -6480.7560, -3664.5112, 247.52686, 100, 0, 0),
(7561, 22, -6473.4854, -3647.5496, 244.61816, 100, 0, 0),
(7561, 23, -6445.1484, -3633.0947, 254.01373, 100, 0, 0),
(7561, 24, -6429.4526, -3627.0230, 257.58966, 100, 0, 0),
(7561, 25, -6408.3410, -3626.7124, 250.95955, 100, 0, 0),
(7561, 26, -6388.2134, -3641.8772, 242.29488, 100, 0, 0),
(7561, 27, -6362.3620, -3647.9340, 242.31023, 100, 0, 0),
(7561, 28, -6354.9100, -3614.2063, 242.13982, 100, 0, 0),
(7561, 29, -6371.2954, -3594.9817, 247.97018, 100, 0, 0),
(7561, 30, -6395.3460, -3586.2322, 270.90475, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id`=7607;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7607, 01, -6546.9140, -3612.7780, 252.54636, 100, 0, 0),
(7607, 02, -6567.0070, -3630.3281, 242.39030, 100, 0, 0),
(7607, 03, -6596.1600, -3615.7576, 241.79167, 100, 0, 0),
(7607, 04, -6621.6920, -3592.9192, 242.00114, 100, 0, 0),
(7607, 05, -6643.4844, -3599.4304, 241.79167, 100, 0, 0),
(7607, 06, -6653.4980, -3629.2935, 242.04167, 100, 0, 0),
(7607, 07, -6665.1310, -3654.0881, 252.75530, 100, 0, 0),
(7607, 08, -6655.2617, -3666.5480, 258.26460, 100, 0, 0),
(7607, 09, -6648.5540, -3671.1697, 262.68555, 100, 0, 0),
(7607, 10, -6634.8896, -3676.3235, 264.83180, 100, 0, 0),
(7607, 11, -6615.1685, -3681.2583, 265.55980, 100, 0, 0),
(7607, 12, -6593.8150, -3698.8125, 268.28113, 100, 0, 0),
(7607, 13, -6571.5880, -3703.1555, 273.22574, 100, 0, 0),
(7607, 14, -6547.1016, -3700.6462, 272.42218, 100, 0, 0),
(7607, 15, -6571.5880, -3703.1555, 273.22574, 100, 0, 0),
(7607, 16, -6593.8150, -3698.8125, 268.28113, 100, 0, 0),
(7607, 17, -6615.1685, -3681.2583, 265.55980, 100, 0, 0),
(7607, 18, -6634.8896, -3676.3235, 264.83180, 100, 0, 0),
(7607, 19, -6648.5540, -3671.1697, 262.68555, 100, 0, 0),
(7607, 20, -6655.2617, -3666.5480, 258.26460, 100, 0, 0),
(7607, 21, -6665.1310, -3654.0881, 252.75530, 100, 0, 0),
(7607, 22, -6653.4980, -3629.2935, 242.04167, 100, 0, 0),
(7607, 23, -6643.4844, -3599.4304, 241.79167, 100, 0, 0),
(7607, 24, -6621.6920, -3592.9192, 242.00114, 100, 0, 0),
(7607, 25, -6596.1600, -3615.7576, 241.79167, 100, 0, 0),
(7607, 26, -6567.0070, -3630.3281, 242.39030, 100, 0, 0),
(7607, 27, -6546.9140, -3612.7780, 252.54636, 100, 0, 0),
(7607, 28, -6545.2970, -3593.1143, 262.50647, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id`=7705;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7705, 01, -6337.7925, -3317.6885, 249.86188, 100, 0, 0),
(7705, 02, -6348.7524, -3332.3628, 242.43951, 100, 0, 0),
(7705, 03, -6344.7407, -3365.7434, 241.79167, 100, 0, 0),
(7705, 04, -6317.1270, -3396.2140, 240.14143, 100, 0, 0),
(7705, 05, -6285.8240, -3419.9314, 239.05113, 100, 0, 0),
(7705, 06, -6253.6562, -3436.9802, 237.78966, 100, 0, 0),
(7705, 07, -6237.7010, -3458.5403, 239.34044, 100, 0, 0),
(7705, 08, -6251.9688, -3473.6243, 246.59576, 100, 0, 0),
(7705, 09, -6270.8940, -3486.6821, 252.64429, 100, 0, 0),
(7705, 10, -6294.5034, -3496.3550, 250.90967, 100, 0, 0),
(7705, 11, -6313.6440, -3498.8638, 246.06111, 100, 0, 0),
(7705, 12, -6342.4185, -3506.4250, 241.83405, 100, 0, 0),
(7705, 13, -6357.9570, -3521.3247, 246.79572, 100, 0, 0),
(7705, 14, -6371.5640, -3543.1900, 259.24420, 100, 0, 0),
(7705, 15, -6357.9570, -3521.3247, 246.79572, 100, 0, 0),
(7705, 16, -6342.4185, -3506.4250, 241.83405, 100, 0, 0),
(7705, 17, -6313.6440, -3498.8638, 246.06111, 100, 0, 0),
(7705, 18, -6294.5034, -3496.3550, 250.90967, 100, 0, 0),
(7705, 19, -6270.8940, -3486.6821, 252.64429, 100, 0, 0),
(7705, 20, -6251.9688, -3473.6243, 246.59576, 100, 0, 0),
(7705, 21, -6237.7010, -3458.5403, 239.34044, 100, 0, 0),
(7705, 22, -6253.6562, -3436.9802, 237.78966, 100, 0, 0),
(7705, 23, -6285.8240, -3419.9314, 239.05113, 100, 0, 0),
(7705, 24, -6317.1270, -3396.2140, 240.14143, 100, 0, 0),
(7705, 25, -6344.7407, -3365.7434, 241.79167, 100, 0, 0),
(7705, 26, -6348.7524, -3332.3628, 242.43951, 100, 0, 0),
(7705, 27, -6337.7925, -3317.6885, 249.86188, 100, 0, 0),
(7705, 28, -6348.4688, -3296.5344, 262.44360, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id`=7706;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7706, 01, -6309.6353, -3551.0430, 250.12137, 100, 0, 0),
(7706, 02, -6330.5040, -3565.2598, 242.25809, 100, 0, 0),
(7706, 03, -6356.3887, -3578.3438, 244.41667, 100, 0, 0),
(7706, 04, -6360.5693, -3601.5900, 241.86906, 100, 0, 0),
(7706, 05, -6363.5513, -3635.4775, 241.79167, 100, 0, 0),
(7706, 06, -6383.0146, -3653.0222, 243.27070, 100, 0, 0),
(7706, 07, -6400.4840, -3665.7378, 243.50076, 100, 0, 0),
(7706, 08, -6423.6410, -3669.3203, 243.82070, 100, 0, 0),
(7706, 09, -6449.2627, -3667.7310, 243.82020, 100, 0, 0),
(7706, 10, -6473.7847, -3659.7660, 245.27979, 100, 0, 0),
(7706, 11, -6486.5730, -3671.6868, 252.15462, 100, 0, 0),
(7706, 12, -6473.7847, -3659.7660, 245.27979, 100, 0, 0),
(7706, 13, -6449.2627, -3667.7310, 243.82020, 100, 0, 0),
(7706, 14, -6423.6410, -3669.3203, 243.82070, 100, 0, 0),
(7706, 15, -6400.4840, -3665.7378, 243.50076, 100, 0, 0),
(7706, 16, -6383.0146, -3653.0222, 243.27070, 100, 0, 0),
(7706, 17, -6363.5513, -3635.4775, 241.79167, 100, 0, 0),
(7706, 18, -6360.5693, -3601.5900, 241.86906, 100, 0, 0),
(7706, 19, -6356.4610, -3578.3801, 244.33171, 100, 0, 0),
(7706, 20, -6330.5040, -3565.2598, 242.25809, 100, 0, 0),
(7706, 21, -6309.6353, -3551.0430, 250.12137, 100, 0, 0),
(7706, 22, -6293.5977, -3543.7751, 254.57126, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id`=7724;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7724, 01, -6135.8560, -3430.1520, 250.69968, 100, 0, 0),
(7724, 02, -6152.6720, -3417.5605, 244.79880, 100, 0, 0),
(7724, 03, -6165.6210, -3391.8060, 243.02766, 100, 0, 0),
(7724, 04, -6181.4360, -3386.9622, 241.16281, 100, 0, 0),
(7724, 05, -6213.0146, -3381.2880, 239.39752, 100, 0, 0),
(7724, 06, -6245.1210, -3387.5774, 239.27089, 100, 0, 0),
(7724, 07, -6266.6646, -3407.4111, 239.16759, 100, 0, 0),
(7724, 08, -6278.5220, -3423.5110, 238.74644, 100, 0, 0),
(7724, 09, -6314.5690, -3442.7676, 239.49190, 100, 0, 0),
(7724, 10, -6337.4650, -3462.8838, 241.75331, 100, 0, 0),
(7724, 11, -6347.8438, -3477.2820, 241.85994, 100, 0, 0),
(7724, 12, -6338.7100, -3515.4666, 241.83405, 100, 0, 0),
(7724, 13, -6333.2690, -3534.6333, 241.68509, 100, 0, 0),
(7724, 14, -6307.2114, -3550.5366, 250.30228, 100, 0, 0),
(7724, 15, -6286.6160, -3543.0295, 258.23850, 100, 0, 0),
(7724, 16, -6307.2114, -3550.5366, 250.30228, 100, 0, 0),
(7724, 17, -6333.2690, -3534.6333, 241.68509, 100, 0, 0),
(7724, 18, -6338.7100, -3515.4666, 241.83405, 100, 0, 0),
(7724, 19, -6347.8438, -3477.2820, 241.85994, 100, 0, 0),
(7724, 20, -6337.4650, -3462.8838, 241.75331, 100, 0, 0),
(7724, 21, -6314.5690, -3442.7676, 239.49190, 100, 0, 0),
(7724, 22, -6278.5220, -3423.5110, 238.74644, 100, 0, 0),
(7724, 23, -6266.6646, -3407.4111, 239.16759, 100, 0, 0),
(7724, 24, -6245.1210, -3387.5774, 239.27089, 100, 0, 0),
(7724, 25, -6213.0146, -3381.2880, 239.39752, 100, 0, 0),
(7724, 26, -6181.5137, -3386.9746, 241.04196, 100, 0, 0),
(7724, 27, -6165.6210, -3391.8060, 243.02766, 100, 0, 0),
(7724, 28, -6152.7305, -3417.5032, 244.85544, 100, 0, 0),
(7724, 29, -6135.9140, -3430.0957, 250.67380, 100, 0, 0),
(7724, 30, -6118.2900, -3445.7122, 263.00848, 100, 0, 0);

DELETE FROM `creature_movement` WHERE `id`=7796;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(7796, 01, -6368.2560, -3466.8223, 244.82948, 100, 0, 0),
(7796, 02, -6362.5654, -3443.0603, 241.75331, 100, 0, 0),
(7796, 03, -6345.9307, -3416.6223, 241.55911, 100, 0, 0),
(7796, 04, -6313.6730, -3401.1804, 239.94629, 100, 0, 0),
(7796, 05, -6285.3860, -3406.4310, 239.25548, 100, 0, 0),
(7796, 06, -6257.3340, -3442.0989, 237.98253, 100, 0, 0),
(7796, 07, -6238.5590, -3451.2246, 238.12437, 100, 0, 0),
(7796, 08, -6210.2440, -3438.8142, 238.29823, 100, 0, 0),
(7796, 09, -6198.0337, -3408.5532, 239.19392, 100, 0, 0),
(7796, 10, -6192.3345, -3386.9580, 239.29196, 100, 0, 0),
(7796, 11, -6174.5044, -3369.4660, 245.40134, 100, 0, 0),
(7796, 12, -6149.0146, -3369.7515, 244.54817, 100, 0, 0),
(7796, 13, -6174.5044, -3369.4660, 245.40134, 100, 0, 0),
(7796, 14, -6192.3345, -3386.9580, 239.29196, 100, 0, 0),
(7796, 15, -6198.0337, -3408.5532, 239.19392, 100, 0, 0),
(7796, 16, -6210.2440, -3438.8142, 238.29823, 100, 0, 0),
(7796, 17, -6238.5590, -3451.2246, 238.12437, 100, 0, 0),
(7796, 18, -6257.3340, -3442.0989, 237.98253, 100, 0, 0),
(7796, 19, -6285.3860, -3406.4310, 239.25548, 100, 0, 0),
(7796, 20, -6313.6730, -3401.1804, 239.94629, 100, 0, 0),
(7796, 21, -6345.9307, -3416.6223, 241.55911, 100, 0, 0),
(7796, 22, -6362.5654, -3443.0603, 241.75331, 100, 0, 0),
(7796, 23, -6368.2524, -3466.7063, 244.77724, 100, 0, 0),
(7796, 24, -6360.6490, -3507.1010, 244.51984, 100, 0, 0);

-- shadowforge commander waypoints
UPDATE `creature` SET `position_x` = -6372.1616, `position_y` = -3097.3650, `position_z` = 310.83580, `movement_type` = 2 WHERE `guid` = 69114;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`) VALUES
(69114, 1, -6372.1616, -3097.3650, 310.83580, 100, 0, 0),
(69114, 2, -6361.8994, -3085.7556, 310.83670, 100, 0, 0),
(69114, 3, -6348.1245, -3068.2239, 310.83420, 100, 0, 0),
(69114, 4, -6336.6840, -3075.1226, 310.83334, 100, 0, 0),
(69114, 5, -6323.1780, -3086.4673, 310.83383, 100, 0, 0),
(69114, 6, -6316.0550, -3093.8215, 310.83590, 100, 0, 0),
(69114, 7, -6330.4220, -3111.4817, 310.83606, 100, 0, 0),
(69114, 8, -6340.5110, -3123.8710, 310.83542, 100, 0, 0),
(69114, 9, -6350.4185, -3135.8296, 310.83500, 100, 0, 0),
(69114, 10, -6340.5110, -3123.8710, 310.83542, 100, 0, 0),
(69114, 11, -6330.4220, -3111.4817, 310.83606, 100, 0, 0),
(69114, 12, -6316.0550, -3093.8215, 310.83590, 100, 0, 0),
(69114, 13, -6323.1780, -3086.4673, 310.83383, 100, 0, 0),
(69114, 14, -6336.6840, -3075.1226, 310.83334, 100, 0, 0),
(69114, 15, -6348.1245, -3068.2239, 310.83420, 100, 0, 0),
(69114, 16, -6361.8994, -3085.7556, 310.83670, 100, 0, 0),
(69114, 17, -6372.1616, -3097.3650, 310.83580, 100, 0, 0),
(69114, 18, -6382.3237, -3110.7766, 310.83508, 100, 0, 0);


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;

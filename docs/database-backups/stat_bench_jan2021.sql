-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: sql15.bravehost.com
-- Generation Time: Jan 08, 2022 at 03:43 PM
-- Server version: 10.3.28-MariaDB-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stat_bench_3497853`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
  `metCode` int(5) NOT NULL,
  `mets` decimal(3,2) DEFAULT NULL,
  `majorHeading` varchar(22) DEFAULT NULL,
  `specificActivities` varchar(224) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`metCode`, `mets`, `majorHeading`, `specificActivities`) VALUES
(1003, '9.99', 'bicycling', 'bicycling, mountain, uphill, vigorous'),
(1004, '9.99', 'bicycling', 'bicycling, mountain, competitive, racing'),
(1008, '8.50', 'bicycling', 'bicycling, BMX'),
(1009, '8.50', 'bicycling', 'bicycling, mountain, general'),
(1010, '4.00', 'bicycling', 'bicycling, <10 mph, leisure, to work or for pleasure (Taylor Code 115)'),
(1011, '6.80', 'bicycling', 'bicycling, to/from work, self selected pace'),
(1013, '5.80', 'bicycling', 'bicycling, on dirt or farm road, moderate pace'),
(1015, '7.50', 'bicycling', 'bicycling, general'),
(1018, '3.50', 'bicycling', 'bicycling, leisure, 5.5 mph'),
(1019, '5.80', 'bicycling', 'bicycling, leisure, 9.4 mph'),
(1020, '6.80', 'bicycling', 'bicycling, 10-11.9 mph, leisure, slow, light effort'),
(1030, '8.00', 'bicycling', 'bicycling, 12-13.9 mph, leisure, moderate effort'),
(1040, '9.99', 'bicycling', 'bicycling, 14-15.9 mph, racing or leisure, fast, vigorous effort'),
(1050, '9.99', 'bicycling', 'bicycling, 16-19 mph, racing/not drafting or > 19 mph drafting, very fast, racing general'),
(1060, '9.99', 'bicycling', 'bicycling, > 20 mph, racing, not drafting'),
(1065, '8.50', 'bicycling', 'bicycling, 12 mph, seated, hands on brake hoods or bar drops, 80 rpm'),
(1066, '9.00', 'bicycling', 'bicycling, 12 mph, standing, hands on brake hoods, 60 rpm'),
(1070, '5.00', 'bicycling', 'unicycling'),
(2001, '2.30', 'conditioning exercise', 'activity promoting video game (e.g., Wii Fit), light effort (e.g., balance, yoga)'),
(2003, '3.80', 'conditioning exercise', 'activity promoting video game (e.g., Wii Fit), moderate effort (e.g., aerobic, resistance)'),
(2005, '7.20', 'conditioning exercise', 'activity promoting video/arcade game (e.g., Exergaming, Dance Dance Revolution), vigorous effort'),
(2008, '5.00', 'conditioning exercise', 'army type obstacle course exercise, boot camp training program '),
(2010, '7.00', 'conditioning exercise', 'bicycling, stationary, general'),
(2011, '3.50', 'conditioning exercise', 'bicycling, stationary, 30-50 watts, very light to light effort'),
(2012, '6.80', 'conditioning exercise', 'bicycling, stationary, 90-100 watts, moderate to vigorous effort'),
(2013, '8.80', 'conditioning exercise', 'bicycling, stationary, 101-160 watts, vigorous effort'),
(2014, '9.99', 'conditioning exercise', 'bicycling, stationary, 161-200 watts, vigorous effort'),
(2015, '9.99', 'conditioning exercise', 'bicycling, stationary, 201-270 watts, very vigorous effort'),
(2017, '4.80', 'conditioning exercise', 'bicycling, stationary, 51-89 watts, light-to-moderate effort '),
(2019, '8.50', 'conditioning exercise', 'bicycling, stationary, RPM/Spin bike class '),
(2020, '8.00', 'conditioning exercise', 'calisthenics (e.g., push ups, sit ups, pull-ups, jumping jacks), vigorous effort'),
(2022, '3.80', 'conditioning exercise', 'calisthenics (e.g., push ups, sit ups, pull-ups, lunges), moderate effort'),
(2024, '2.80', 'conditioning exercise', 'calisthenics (e.g., situps, abdominal crunches), light effort'),
(2030, '3.50', 'conditioning exercise', 'calisthenics, light or moderate effort, general (e.g., back exercises), going up & down from floor (Taylor Code 150)'),
(2035, '4.30', 'conditioning exercise', 'circuit training, moderate effort'),
(2040, '8.00', 'conditioning exercise', 'circuit training, including kettlebells, some aerobic movement with minimal rest, general, vigorous intensity'),
(2045, '3.50', 'conditioning exercise', 'Curves exercise routines in women '),
(2048, '5.00', 'conditioning exercise', 'Elliptical trainer, moderate effort '),
(2050, '6.00', 'conditioning exercise', 'resistance training (weight lifting, free weight, nautilus or universal), power lifting or body building, vigorous effort (Taylor Code 210)'),
(2052, '5.00', 'conditioning exercise', 'resistance (weight) training, squats , slow or explosive effort'),
(2054, '3.50', 'conditioning exercise', 'resistance (weight) training, multiple exercises, 8-15 repetitions at varied resistance '),
(2060, '5.50', 'conditioning exercise', 'health club exercise, general (Taylor Code 160)'),
(2061, '5.00', 'conditioning exercise', 'health club exercise classes, general, gym/weight training combined in one visit'),
(2062, '7.80', 'conditioning exercise', 'health club exercise, conditioning classes'),
(2064, '3.80', 'conditioning exercise', 'home exercise, general '),
(2065, '9.00', 'conditioning exercise', 'stair-treadmill ergometer, general'),
(2068, '9.99', 'conditioning exercise', 'rope skipping, general'),
(2070, '6.00', 'conditioning exercise', 'rowing, stationary ergometer, general, vigorous effort'),
(2071, '4.80', 'conditioning exercise', 'rowing, stationary, general, moderate effort'),
(2072, '7.00', 'conditioning exercise', 'rowing, stationary, 100 watts, moderate effort'),
(2073, '8.50', 'conditioning exercise', 'rowing, stationary, 150 watts, vigorous effort'),
(2074, '9.99', 'conditioning exercise', 'rowing, stationary, 200 watts, very vigorous effort'),
(2080, '6.80', 'conditioning exercise', 'ski machine, general'),
(2085, '9.99', 'conditioning exercise', 'slide board exercise, general '),
(2090, '6.00', 'conditioning exercise', 'slimnastics, jazzercise'),
(2101, '2.30', 'conditioning exercise', 'stretching, mild'),
(2105, '3.00', 'conditioning exercise', 'pilates, general '),
(2110, '6.80', 'conditioning exercise', 'teaching exercise class (e.g., aerobic, water)'),
(2112, '2.80', 'conditioning exercise', 'therapeutic exercise ball, Fitball exercise '),
(2115, '2.80', 'conditioning exercise', 'upper body exercise, arm ergometer '),
(2117, '4.30', 'conditioning exercise', 'upper body exercise, stationary bicycle - Airdyne (arms only) 40 rpm, moderate '),
(2120, '5.30', 'conditioning exercise', 'water aerobics, water calisthenics, water exercise'),
(2135, '1.30', 'conditioning exercise', 'whirlpool, sitting'),
(2140, '2.30', 'conditioning exercise', 'video exercise workouts, TV conditioning programs (e.g., yoga, stretching), light effort'),
(2143, '4.00', 'conditioning exercise', 'video exercise workouts, TV conditioning programs (e.g., cardio-resistance), moderate effort'),
(2146, '6.00', 'conditioning exercise', 'video exercise workouts, TV conditioning programs (e.g., cardio-resistance), vigorous effort'),
(2150, '2.50', 'conditioning exercise', 'yoga, Hatha '),
(2160, '4.00', 'conditioning exercise', 'yoga, Power '),
(2170, '2.00', 'conditioning exercise', 'yoga, Nadisodhana '),
(2180, '3.30', 'conditioning exercise', 'yoga, Surya Namaskar'),
(2200, '5.30', 'conditioning exercise', 'native New Zealander physical activities (e.g., Haka Powhiri, Moteatea, Waita Tira, Whakawatea, etc.), general, moderate effort'),
(2205, '6.80', 'conditioning exercise', 'native New Zealander physical activities (e.g., Haka, Taiahab), general, vigorous effort'),
(3010, '5.00', 'dancing', 'ballet, modern, or jazz, general, rehearsal or class'),
(3012, '6.80', 'dancing', 'ballet, modern, or jazz, performance, vigorous effort '),
(3014, '4.80', 'dancing', 'tap '),
(3015, '7.30', 'dancing', 'aerobic, general'),
(3016, '7.50', 'dancing', 'aerobic, step, with 6 - 8 inch step'),
(3017, '9.50', 'dancing', 'aerobic, step, with 10 - 12 inch step'),
(3018, '5.50', 'dancing', 'aerobic, step, with 4-inch step '),
(3019, '8.50', 'dancing', 'bench step class, general '),
(3020, '5.00', 'dancing', 'aerobic, low impact'),
(3021, '7.30', 'dancing', 'aerobic, high impact'),
(3022, '9.99', 'dancing', 'aerobic dance wearing 10-15 lb weights '),
(3025, '4.50', 'dancing', 'ethnic or cultural dancing (e.g., Greek, Middle Eastern, hula, salsa, merengue, bamba y plena, flamenco, belly, and swing)'),
(3030, '5.50', 'dancing', 'ballroom, fast (Taylor Code 125)'),
(3031, '7.80', 'dancing', 'general dancing (e.g., disco, folk, Irish step dancing, line dancing, polka, contra, country)'),
(3038, '9.99', 'dancing', 'ballroom dancing, competitive, general '),
(3040, '3.00', 'dancing', 'ballroom, slow (e.g., waltz, foxtrot, slow dancing, samba, tango, 19 century dance, mambo, cha cha)'),
(3050, '5.50', 'dancing', 'Anishinaabe Jingle Dancing'),
(3060, '3.50', 'dancing', 'Caribbean dance (Abakua, Beguine, Bellair, Bongo, Brukin''s, Caribbean Quadrills, Dinki Mini, Gere, Gumbay, Ibo, Jonkonnu, Kumina, Oreisha, Jambu)'),
(4001, '3.50', 'fishing and hunting', 'fishing, general'),
(4005, '4.50', 'fishing and hunting', 'fishing, crab fishing '),
(4007, '4.00', 'fishing and hunting', 'fishing, catching fish with hands '),
(4010, '4.30', 'fishing and hunting', 'fishing related, digging worms, with shovel'),
(4020, '4.00', 'fishing and hunting', 'fishing from river bank and walking'),
(4030, '2.00', 'fishing and hunting', 'fishing from boat or canoe, sitting'),
(4040, '3.50', 'fishing and hunting', 'fishing from river bank, standing (Taylor Code 660)'),
(4050, '6.00', 'fishing and hunting', 'fishing in stream, in waders (Taylor Code 670)'),
(4060, '2.00', 'fishing and hunting', 'fishing, ice, sitting'),
(4061, '1.80', 'fishing and hunting', 'fishing, jog or line, standing, general '),
(4062, '3.50', 'fishing and hunting', 'fishing, dip net, setting net and retrieving fish, general'),
(4063, '3.80', 'fishing and hunting', 'fishing, set net, setting net and retrieving fish, general'),
(4064, '3.00', 'fishing and hunting', 'fishing, fishing wheel, setting net and retrieving fish, general'),
(4065, '2.30', 'fishing and hunting', 'fishing with a spear, standing '),
(4070, '2.50', 'fishing and hunting', 'hunting, bow and arrow, or crossbow'),
(4080, '6.00', 'fishing and hunting', 'hunting, deer, elk, large game (Taylor Code 170)'),
(4081, '9.99', 'fishing and hunting', 'hunting large game, dragging carcass '),
(4083, '4.00', 'fishing and hunting', 'hunting large marine animals '),
(4085, '2.50', 'fishing and hunting', 'hunting large game, from a hunting stand, limited walking '),
(4086, '2.00', 'fishing and hunting', 'hunting large game from a car, plane, or boat'),
(4090, '2.50', 'fishing and hunting', 'hunting, duck, wading'),
(4095, '3.00', 'fishing and hunting', 'hunting, flying fox, squirrel '),
(4100, '5.00', 'fishing and hunting', 'hunting, general'),
(4110, '6.00', 'fishing and hunting', 'hunting, pheasants or grouse (Taylor Code 680)'),
(4115, '3.30', 'fishing and hunting', 'hunting, birds '),
(4120, '5.00', 'fishing and hunting', 'hunting, rabbit, squirrel, prairie chick, raccoon, small game (Taylor Code 690)'),
(4123, '3.30', 'fishing and hunting', 'hunting, pigs, wild '),
(4124, '2.00', 'fishing and hunting', 'trapping game, general '),
(4125, '9.50', 'fishing and hunting', 'hunting, hiking with hunting gear '),
(4130, '2.50', 'fishing and hunting', 'pistol shooting or trap shooting, standing'),
(4140, '2.30', 'fishing and hunting', 'rifle exercises, shooting, lying down '),
(4145, '2.50', 'fishing and hunting', 'rifle exercises, shooting, kneeling or standing '),
(5010, '3.30', 'home activities', 'cleaning, sweeping carpet or floors, general'),
(5011, '2.30', 'home activities', 'cleaning, sweeping, slow, light effort '),
(5012, '3.80', 'home activities', 'cleaning, sweeping, slow, moderateeffort'),
(5020, '3.50', 'home activities', 'cleaning, heavy or major (e.g. wash car, wash windows, clean garage), moderate effort'),
(5021, '3.50', 'home activities', 'cleaning, mopping, standing, moderate effort'),
(5022, '3.20', 'home activities', 'cleaning windows, washing windows, general'),
(5023, '2.50', 'home activities', 'mopping, standing, light effort'),
(5024, '4.50', 'home activities', 'polishing floors, standing, walking slowly, using electric polishing machine '),
(5025, '2.80', 'home activities', 'multiple household tasks all at once, light effort'),
(5026, '3.50', 'home activities', 'multiple household tasks all at once, moderate effort'),
(5027, '4.30', 'home activities', 'multiple household tasks all at once, vigorous effort'),
(5030, '3.30', 'home activities', 'cleaning, house or cabin, general, moderate effort'),
(5032, '2.30', 'home activities', 'dusting or polishing furniture, general'),
(5035, '3.30', 'home activities', 'kitchen activity, general, (e.g., cooking, washing dishes, cleaning up), moderate effort'),
(5040, '2.50', 'home activities', 'cleaning, general (straightening up, changing linen, carrying out trash, light effort'),
(5041, '1.80', 'home activities', 'wash dishes, standing or in general (not broken into stand/walk components)'),
(5042, '2.50', 'home activities', 'wash dishes, clearing dishes from table, walking, light effort'),
(5043, '3.30', 'home activities', 'vacuuming, general, moderate effort'),
(5044, '3.00', 'home activities', 'butchering animals, small '),
(5045, '6.00', 'home activities', 'butchering animal, large, vigorous effort'),
(5046, '2.30', 'home activities', 'cutting and smoking fish, drying fish or meat '),
(5048, '4.00', 'home activities', 'tanning hides, general'),
(5049, '3.50', 'home activities', 'cooking or food preparation, moderate effort'),
(5050, '2.00', 'home activities', 'cooking or food preparation - standing or sitting or in general (not broken into stand/walk components), manual appliances, light effort'),
(5051, '2.50', 'home activities', 'serving food, setting table, implied walking or standing'),
(5052, '2.50', 'home activities', 'cooking or food preparation, walking'),
(5053, '2.50', 'home activities', 'feeding household animals'),
(5055, '2.50', 'home activities', 'putting away groceries (e.g. carrying groceries, shopping without a grocery cart), carrying packages'),
(5056, '7.50', 'home activities', 'carrying groceries upstairs'),
(5057, '3.00', 'home activities', 'cooking Indian bread on an outside stove'),
(5060, '2.30', 'home activities', 'food shopping with or without a grocery cart, standing or walking'),
(5065, '2.30', 'home activities', 'non-food shopping, with or without a cart, standing or walking'),
(5070, '1.80', 'home activities', 'ironing'),
(5080, '1.30', 'home activities', 'knitting, sewing, light effort, wrapping presents, sitting'),
(5082, '2.80', 'home activities', 'sewing with a machine '),
(5090, '2.00', 'home activities', 'laundry, fold or hang clothes, put clothes in washer or dryer, packing suitcase, washing clothes by hand, implied standing, light effort'),
(5092, '4.00', 'home activities', 'laundry, hanging wash, washing clothes by hand, moderate effort '),
(5095, '2.30', 'home activities', 'laundry, putting away clothes, gathering clothes to pack, putting away laundry, implied walking'),
(5100, '3.30', 'home activities', 'making bed, changing linens'),
(5110, '5.00', 'home activities', 'maple syruping/sugar bushing (including carrying buckets, carrying wood)'),
(5120, '5.80', 'home activities', 'moving furniture, household items, carrying boxes'),
(5121, '5.00', 'home activities', 'moving, lifting light loads'),
(5125, '4.80', 'home activities', 'organizing room'),
(5130, '3.50', 'home activities', 'scrubbing floors, on hands and knees, scrubbing bathroom, bathtub, moderate effort'),
(5131, '2.00', 'home activities', 'scrubbing floors, on hands and knees, scrubbing bathroom, bathtub, light effort'),
(5132, '6.50', 'home activities', 'scrubbing floors, on hands and knees, scrubbing bathroom, bathtub, vigorous effort'),
(5140, '4.00', 'home activities', 'sweeping garage, sidewalk or outside of house'),
(5146, '3.50', 'home activities', 'standing, packing/unpacking boxes, occasional lifting of lightweight household items, loading or unloading items in car, moderate effort'),
(5147, '3.00', 'home activities', 'implied walking, putting away household items, moderate effort'),
(5148, '2.50', 'home activities', 'watering plants'),
(5149, '2.50', 'home activities', 'building a fire inside'),
(5150, '9.00', 'home activities', 'moving household items upstairs, carrying boxes or furniture'),
(5160, '2.00', 'home activities', 'standing, light effort tasks (pump gas, change light bulb, etc.)'),
(5165, '3.50', 'home activities', 'walking, ffort tasks, non-cleaning (readying to leave, shut/lock doors, close windows, etc.)'),
(5170, '2.20', 'home activities', 'sitting, playing with child(ren), light effort, only active periods'),
(5171, '2.80', 'home activities', 'standing, playing with child(ren) light effort, only active periods'),
(5175, '3.50', 'home activities', 'walking/running, playing with child(ren), moderate effort, only active periods'),
(5180, '5.80', 'home activities', 'walking/running, playing with child(ren), vigorous effort, only active periods'),
(5181, '3.00', 'home activities', 'walking and carrying small child, child weighing 15 lbs or more'),
(5182, '2.30', 'home activities', 'walking and '),
(5183, '2.00', 'home activities', 'standing, holding child'),
(5184, '2.50', 'home activities', 'child care, infant, general '),
(5185, '2.00', 'home activities', 'child care, sitting/kneeling (e.g., dressing, bathing, grooming, feeding, occasional lifting of child), light effort, general'),
(5186, '3.00', 'home activities', 'child care, standing (e.g., dressing, bathing, grooming, feeding, occasional lifting of child), moderate effort'),
(5188, '1.50', 'home activities', 'reclining with baby'),
(5189, '2.00', 'home activities', 'breastfeeding, sitting or reclining '),
(5190, '2.50', 'home activities', 'sit, playing with animals, light effort, only active periods'),
(5191, '2.80', 'home activities', 'stand, playing with animals, light effort, only active periods'),
(5192, '3.00', 'home activities', 'walk/run, playing with animals, general, light effort, only active periods'),
(5193, '4.00', 'home activities', 'walk/run, playing with animals, moderate effort, only active periods'),
(5194, '5.00', 'home activities', 'walk/run, playing with animals, vigorous effort, only active periods'),
(5195, '3.50', 'home activities', 'standing, bathing dog'),
(5197, '2.30', 'home activities', 'animal care, household animals, general '),
(5200, '4.00', 'home activities', 'elder care, disabled adult, bathing, dressing, moving into and out of bed, only active periods'),
(5205, '2.30', 'home activities', 'elder care, disabled adult, feeding, combing hair, light effort, only active periods'),
(6010, '3.00', 'home repair', 'airplane repair'),
(6020, '4.00', 'home repair', 'automobile body work'),
(6030, '3.30', 'home repair', 'automobile repair, light or moderate effort'),
(6040, '3.00', 'home repair', 'carpentry, general, workshop (Taylor Code 620)'),
(6050, '6.00', 'home repair', 'carpentry, outside house, installing rain gutters (Taylor Code 640),carpentry, outside house, building a fence'),
(6052, '3.80', 'home repair', 'carpentry, outside house, building a fence '),
(6060, '3.30', 'home repair', 'carpentry, finishing or refinishing cabinets or furniture'),
(6070, '6.00', 'home repair', 'carpentry, sawing hardwood'),
(6072, '4.00', 'home repair', 'carpentry, home remodeling tasks, moderate effort '),
(6074, '2.30', 'home repair', 'carpentry, home remodeling tasks, light effort  '),
(6080, '5.00', 'home repair', 'caulking, chinking log cabin'),
(6090, '4.50', 'home repair', 'caulking, except log cabin'),
(6100, '5.00', 'home repair', 'cleaning gutters'),
(6110, '5.00', 'home repair', 'excavating garage'),
(6120, '5.00', 'home repair', 'hanging storm windows'),
(6122, '5.00', 'home repair', 'hanging sheet rock inside house '),
(6124, '3.00', 'home repair', 'hammering nails '),
(6126, '2.50', 'home repair', 'home repair, general, light effort '),
(6127, '4.50', 'home repair', 'home repair, general, moderate effort '),
(6128, '6.00', 'home repair', 'home repair, general, vigorous effort '),
(6130, '4.50', 'home repair', 'laying or removing carpet'),
(6140, '3.80', 'home repair', 'laying tile or linoleum,repairing appliances'),
(6144, '3.00', 'home repair', 'repairing appliances '),
(6150, '5.00', 'home repair', 'painting, outside home (Taylor Code 650)'),
(6160, '3.30', 'home repair', 'painting inside house,wallpapering, scraping paint'),
(6165, '4.50', 'home repair', 'painting, (Taylor Code 630)'),
(6167, '3.00', 'home repair', 'plumbing, general '),
(6170, '3.00', 'home repair', 'put on and removal of tarp - sailboat'),
(6180, '6.00', 'home repair', 'roofing'),
(6190, '4.50', 'home repair', 'sanding floors with a power sander'),
(6200, '4.50', 'home repair', 'scraping and painting sailboat or powerboat'),
(6205, '2.00', 'home repair', 'sharpening tools '),
(6210, '5.00', 'home repair', 'spreading dirt with a shovel'),
(6220, '4.50', 'home repair', 'washing and waxing hull of sailboat or airplane'),
(6225, '2.00', 'home repair', 'washing and waxing car '),
(6230, '4.50', 'home repair', 'washing fence, painting fence, moderate effort'),
(6240, '3.30', 'home repair', 'wiring, tapping-splicing'),
(7010, '1.00', 'inactivity quiet/light', 'lying quietly and watching television'),
(7011, '1.30', 'inactivity quiet/light', 'lying quietly, doing nothing, lying in bed awake, listening to music (not talking or reading)'),
(7020, '1.30', 'inactivity quiet/light', 'sitting quietly and watching television'),
(7021, '1.30', 'inactivity quiet/light', 'sitting quietly, general'),
(7022, '1.50', 'inactivity quiet/light', 'sitting quietly, fidgeting, general, fidgeting hands'),
(7023, '1.80', 'inactivity quiet/light', 'sitting, fidgeting feet'),
(7024, '1.30', 'inactivity quiet/light', 'sitting, smoking'),
(7025, '1.50', 'inactivity quiet/light', 'sitting, listening to music (not talking or reading) or watching a movie in a theater'),
(7026, '1.30', 'inactivity quiet/light', 'sitting at a desk, resting head in hands'),
(7030, '0.95', 'inactivity quiet/light', 'sleeping'),
(7040, '1.30', 'inactivity quiet/light', 'standing quietly, standing in a line'),
(7041, '1.80', 'inactivity quiet/light', 'standing, fidgeting'),
(7050, '1.30', 'inactivity quiet/light', 'reclining, writing'),
(7060, '1.30', 'inactivity quiet/light', 'reclining, talking or talking on phone'),
(7070, '1.30', 'inactivity quiet/light', 'reclining, reading'),
(7075, '1.00', 'inactivity quiet/light', 'meditating'),
(8009, '3.30', 'lawn and garden', 'carrying, loading or stacking wood, loading/unloading or carrying lumber, light-to-moderate effort '),
(8010, '5.50', 'lawn and garden', 'carrying, loading or stacking wood, loading/unloading or carrying lumber'),
(8019, '4.50', 'lawn and garden', 'chopping wood, splitting logs, moderate effort'),
(8020, '6.30', 'lawn and garden', 'chopping wood, splitting logs, vigorous effort'),
(8025, '3.50', 'lawn and garden', 'clearing light brush, thinning garden, moderate effort '),
(8030, '6.30', 'lawn and garden', 'clearing brush/land, undergrowth, or ground, hauling branches, wheelbarrow chores, vigorous effort'),
(8040, '5.00', 'lawn and garden', 'digging sandbox, shoveling sand'),
(8045, '3.50', 'lawn and garden', 'digging, spading, filling garden, composting, light-to-moderate effort'),
(8050, '5.00', 'lawn and garden', 'digging, spading, filling garden, compositing, (Taylor Code 590)'),
(8052, '7.80', 'lawn and garden', 'digging, spading, filling garden, composting, vigorous effort '),
(8055, '2.80', 'lawn and garden', 'driving tractor '),
(8057, '8.30', 'lawn and garden', 'felling trees, large size'),
(8058, '5.30', 'lawn and garden', 'felling trees, small-medium size'),
(8060, '5.80', 'lawn and garden', 'gardening with heavy power tools, tilling a garden, chain saw'),
(8065, '2.30', 'lawn and garden', 'gardening, using containers, older adults > 60 years '),
(8070, '4.00', 'lawn and garden', 'irrigation channels, opening and closing ports '),
(8080, '6.30', 'lawn and garden', 'laying crushed rock'),
(8090, '5.00', 'lawn and garden', 'laying sod'),
(8095, '5.50', 'lawn and garden', 'mowing lawn, general'),
(8100, '2.50', 'lawn and garden', 'mowing lawn, riding mower (Taylor Code 550)'),
(8110, '6.00', 'lawn and garden', 'mowing lawn, walk, hand mower (Taylor Code 570)'),
(8120, '5.00', 'lawn and garden', 'mowing lawn, walk, power mower, moderate or vigorous effort'),
(8125, '4.50', 'lawn and garden', 'mowing lawn, power mower, light or moderate effort (Taylor Code 590)'),
(8130, '2.50', 'lawn and garden', 'operating snow blower, walking'),
(8135, '2.00', 'lawn and garden', 'planting, potting, transplanting seedlings or plants, light effort '),
(8140, '4.30', 'lawn and garden', 'planting seedlings, shrub, stooping, moderate effort'),
(8145, '4.30', 'lawn and garden', 'planting crops or garden, stooping, moderate effort '),
(8150, '4.50', 'lawn and garden', 'planting trees'),
(8160, '3.80', 'lawn and garden', 'raking lawn or leaves, moderate effort'),
(8165, '4.00', 'lawn and garden', 'raking lawn (Taylor Code 600)'),
(8170, '4.00', 'lawn and garden', 'raking roof with snow rake'),
(8180, '3.00', 'lawn and garden', 'riding snow blower'),
(8190, '4.00', 'lawn and garden', 'sacking grass, leaves'),
(8192, '5.50', 'lawn and garden', 'shoveling dirt or mud '),
(8195, '5.30', 'lawn and garden', 'shoveling snow, by hand, moderate effort '),
(8200, '6.00', 'lawn and garden', 'shovelling snow, by hand (Taylor Code 610)'),
(8202, '7.50', 'lawn and garden', 'shoveling snow, by hand, vigorous effort'),
(8210, '4.00', 'lawn and garden', 'trimming shrubs or trees, manual cutter'),
(8215, '3.50', 'lawn and garden', 'trimming shrubs or trees, power cutter, using leaf blower, edge, moderate effort'),
(8220, '3.00', 'lawn and garden', 'walking, applying fertilizer or seeding a lawn, push applicator'),
(8230, '1.50', 'lawn and garden', 'watering lawn or garden, standing or walking'),
(8239, '3.50', 'lawn and garden', 'weeding, cultivating garden, light-to-moderate effort '),
(8240, '4.50', 'lawn and garden', 'weeding, cultivating garden (Taylor Code 580)'),
(8241, '5.00', 'lawn and garden', 'weeding, cultivating garden, using a hoe, moderate-to-vigorous effort'),
(8245, '3.80', 'lawn and garden', 'gardening, general, moderate effort'),
(8246, '3.50', 'lawn and garden', 'picking fruit off trees, picking fruits/vegetables, moderate effort'),
(8248, '4.50', 'lawn and garden', 'picking fruit off trees, gleaning fruits, picking fruits/vegetables, climbing ladder to pick fruit, vigorous effort '),
(8250, '3.30', 'lawn and garden', 'implied walking/standing - picking up yard, light, picking flowers or vegetables'),
(8251, '3.00', 'lawn and garden', 'walking, gathering gardening tools'),
(8255, '5.50', 'lawn and garden', 'wheelbarrow, pushing garden cart or wheelbarrow '),
(8260, '3.00', 'lawn and garden', 'yard work, general, light effort'),
(8261, '4.00', 'lawn and garden', 'yard work, general, moderate effort'),
(8262, '6.00', 'lawn and garden', 'yard work, general, vigorous effort'),
(9000, '1.50', 'miscellaneous', 'board game playing, sitting'),
(9005, '2.50', 'miscellaneous', 'casino gambling, standing'),
(9010, '1.50', 'miscellaneous', 'card playing,sitting'),
(9013, '1.50', 'miscellaneous', 'chess game, sitting'),
(9015, '1.50', 'miscellaneous', 'copying documents, standing '),
(9020, '1.80', 'miscellaneous', 'drawing, writing, painting, standing'),
(9025, '1.00', 'miscellaneous', 'laughing, sitting '),
(9030, '1.30', 'miscellaneous', 'sitting, reading, book, newspaper, etc.'),
(9040, '1.30', 'miscellaneous', 'sitting, writing, desk work, typing'),
(9045, '1.00', 'miscellaneous', 'sitting, playing traditional video game, computer game '),
(9050, '1.80', 'miscellaneous', 'standing, talking in person, on the phone, computer, or text messaging, light effort'),
(9055, '1.50', 'miscellaneous', 'sitting, talking in person, on the phone, computer, or text messaging, light effort'),
(9060, '1.30', 'miscellaneous', 'sitting, studying, general, including reading and/or writing, light effort'),
(9065, '1.80', 'miscellaneous', 'sitting, in class, general, including note-taking or class discussion'),
(9070, '1.80', 'miscellaneous', 'standing, reading'),
(9071, '2.50', 'miscellaneous', 'standing, miscellaneous'),
(9075, '1.80', 'miscellaneous', 'sitting, arts and crafts,  carving wood, weaving, spinning wool, light effort'),
(9080, '3.00', 'miscellaneous', 'sitting, arts and crafts,  carving wood, weaving, spinning wool, moderate effort'),
(9085, '2.50', 'miscellaneous', 'standing, arts and crafts, sand painting, carving, weaving, light effort'),
(9090, '3.30', 'miscellaneous', 'standing, arts and crafts, sand painting, carving, weaving, moderate effort'),
(9095, '3.50', 'miscellaneous', 'standing, arts and crafts, sand painting, carving, weaving, vigorous effort'),
(9100, '1.80', 'miscellaneous', 'retreat/family reunion activities involving sitting, relaxing, talking, eating'),
(9101, '3.00', 'miscellaneous', 'retreat/family reunion activities involving playing games with children'),
(9105, '2.00', 'miscellaneous', 'touring/traveling/vacation involving riding in a vehicle'),
(9106, '3.50', 'miscellaneous', 'touring/traveling/vacation involving walking'),
(9110, '2.50', 'miscellaneous', 'camping involving standing, walking, sitting, light-to-moderate effort'),
(9115, '1.50', 'miscellaneous', 'sitting at a sporting event, spectator'),
(10010, '1.80', 'music playing', 'accordion, sitting'),
(10020, '2.30', 'music playing', 'cello, sitting'),
(10030, '2.30', 'music playing', 'conducting orchestra, standing'),
(10035, '2.50', 'music playing', 'double bass, standing '),
(10040, '3.80', 'music playing', 'drums, sitting'),
(10045, '3.00', 'music playing', 'drumming (e.g., bongo, conga, benbe), moderate, sitting'),
(10050, '2.00', 'music playing', 'flute, sitting'),
(10060, '1.80', 'music playing', 'horn, standing'),
(10070, '2.30', 'music playing', 'piano, sitting'),
(10074, '2.00', 'music playing', 'playing musical instruments, general '),
(10077, '2.00', 'music playing', 'organ, sitting '),
(10080, '3.50', 'music playing', 'trombone, standing'),
(10090, '1.80', 'music playing', 'trumpet, standing'),
(10100, '2.50', 'music playing', 'violin, sitting'),
(10110, '1.80', 'music playing', 'woodwind, sitting'),
(10120, '2.00', 'music playing', 'guitar, classical, folk, sitting'),
(10125, '3.00', 'music playing', 'guitar, rock and roll band, standing'),
(10130, '4.00', 'music playing', 'marching band, baton twirling, walking, moderate pace, general'),
(10131, '5.50', 'music playing', 'marching band, playing an instrument, walking, brisk pace, general '),
(10135, '3.50', 'music playing', 'marching band, drum major, walking'),
(11003, '2.30', 'occupation', 'active workstation, treadmill desk, walking '),
(11006, '3.00', 'occupation', 'airline flight attendant '),
(11010, '4.00', 'occupation', 'bakery, general, moderate effort'),
(11015, '2.00', 'occupation', 'bakery, light effort'),
(11020, '2.30', 'occupation', 'bookbinding'),
(11030, '6.00', 'occupation', 'building road, driving heavy machinery'),
(11035, '2.00', 'occupation', 'building road, directing traffic, standing'),
(11038, '2.50', 'occupation', 'carpentry, general, light effort '),
(11040, '4.30', 'occupation', 'carpentry, general, moderate effort'),
(11042, '7.00', 'occupation', 'carpentry, general, heavy or vigorous effort '),
(11050, '8.00', 'occupation', 'carrying heavy loads (e.g., bricks, tools)'),
(11060, '8.00', 'occupation', 'carrying moderate loads up stairs, moving boxes 25-49 lbs'),
(11070, '4.00', 'occupation', 'chambermaid, hotel housekeeper, making bed, cleaning bathroom, pushing cart'),
(11080, '5.30', 'occupation', 'coal mining, drilling coal, rock'),
(11090, '5.00', 'occupation', 'coal mining, erecting supports'),
(11100, '5.50', 'occupation', 'coal mining, general'),
(11110, '6.30', 'occupation', 'coal mining, shoveling coal'),
(11115, '2.50', 'occupation', 'cook, chef'),
(11120, '4.00', 'occupation', 'construction, outside, remodeling, new structures (e.g., roof repair, miscellaneous)'),
(11125, '2.30', 'occupation', 'custodial work, light effort (e.g., cleaning sink and toilet, dusting, vacuuming, light cleaning)'),
(11126, '3.80', 'occupation', 'custodial work, moderate effort (e.g., electric buffer, feathering arena floors, mopping, taking out trash, vacuuming)'),
(11130, '3.30', 'occupation', 'electrical work (e.g., hook up wire, tapping-splicing)'),
(11135, '1.80', 'occupation', 'engineer (e.g., mechanical or electrical)'),
(11145, '7.80', 'occupation', 'farming, vigorous effort (e.g., baling hay, cleaning barn) '),
(11146, '4.80', 'occupation', 'farming, moderate effort (e.g., feeding animals, chasing cattle by walking and/or horseback, spreading manure, harvesting crops)'),
(11147, '2.00', 'occupation', 'farming, light effort (e.g., cleaning animal sheds, preparing animal feed) '),
(11170, '2.80', 'occupation', 'farming, driving tasks (e.g., driving tractor or harvester) '),
(11180, '3.50', 'occupation', 'farming, feeding small animals'),
(11190, '4.30', 'occupation', 'farming, feeding cattle, horses'),
(11191, '4.30', 'occupation', 'farming, hauling water for animals, general hauling water,farming, general hauling water'),
(11192, '4.50', 'occupation', 'farming, taking care of animals (e.g., grooming, brushing, shearing sheep, assisting with birthing, medical care, branding), general'),
(11195, '3.80', 'occupation', 'farming, rice, planting, grain milling activities'),
(11210, '3.50', 'occupation', 'farming, milking by hand, cleaning pails, moderate effort'),
(11220, '1.30', 'occupation', 'farming, milking by machine, light effort'),
(11240, '8.00', 'occupation', 'fire fighter, general'),
(11244, '6.80', 'occupation', 'fire fighter, rescue victim, automobile accident, using pike pole'),
(11245, '8.00', 'occupation', 'fire fighter, raising and climbing ladder with full gear, simulated fire supression'),
(11246, '9.00', 'occupation', 'fire fighter, hauling hoses on ground, carrying/hoisting equipment, breaking down walls etc., wearing full gear'),
(11247, '3.50', 'occupation', 'fishing, commercial, light effort'),
(11248, '5.00', 'occupation', 'fishing, commercial, moderate effort'),
(11249, '7.00', 'occupation', 'fishing, commercial, vigorous effort'),
(11250, '9.99', 'occupation', 'forestry, ax chopping, very fast, 1.25 kg axe, 51 blows/min, extremely vigorous effort'),
(11260, '5.00', 'occupation', 'forestry, ax chopping, slow, 1.25 kg axe, 19 blows/min, moderate effort'),
(11262, '8.00', 'occupation', 'forestry, ax chopping, fast, 1.25 kg axe, 35 blows/min, vigorous effort'),
(11264, '4.50', 'occupation', 'forestry, moderate effort (e.g., sawing wood with power saw, weeding, hoeing)'),
(11266, '8.00', 'occupation', 'forestry, vigorous effort (e.g., barking, felling, or trimming trees, carrying or stacking logs, planting seeds, sawing lumber by hand)'),
(11370, '4.50', 'occupation', 'furriery'),
(11375, '4.00', 'occupation', 'garbage collector, walking, dumping bins into truck'),
(11378, '1.80', 'occupation', 'hairstylist (e.g., plaiting hair, manicure, make-up artist)'),
(11380, '7.30', 'occupation', 'horse grooming, including , '),
(11381, '4.30', 'occupation', 'horse, feeding, watering, cleaning stalls, implied walking and lifting loads'),
(11390, '7.30', 'occupation', 'horse racing, galloping'),
(11400, '5.80', 'occupation', 'horse racing, trotting'),
(11410, '3.80', 'occupation', 'horse racing, walking'),
(11413, '3.00', 'occupation', 'kitchen maid '),
(11415, '4.00', 'occupation', 'lawn keeper, yard work, general'),
(11418, '3.30', 'occupation', 'laundry worker'),
(11420, '3.00', 'occupation', 'locksmith'),
(11430, '3.00', 'occupation', 'machine tooling (e.g., machining, working sheet metal, machine fitter, operating lathe, welding) light-to-moderate effort'),
(11450, '5.00', 'occupation', 'Machine tooling, operating punch press, moderate effort'),
(11472, '1.80', 'occupation', 'manager, property'),
(11475, '2.80', 'occupation', 'manual or unskilled labor, general, light effort'),
(11476, '4.50', 'occupation', 'manual or unskilled labor, general, moderate effort'),
(11477, '6.50', 'occupation', 'manual or unskilled labor, general, vigorous effort'),
(11480, '4.30', 'occupation', 'masonry, concrete, moderate effort'),
(11482, '2.50', 'occupation', 'masonry, concrete, light effort '),
(11485, '4.00', 'occupation', 'massage therapist, standing'),
(11490, '7.50', 'occupation', 'moving, carrying or pushing heavy objects, 75 lbs or more, only active time (e.g., desks, moving van work)'),
(11495, '9.99', 'occupation', 'skindiving or SCUBA diving as a frogman, Navy Seal'),
(11500, '2.50', 'occupation', 'operating heavy duty equipment, automated, not driving'),
(11510, '4.50', 'occupation', 'orange grove work, picking fruit'),
(11514, '3.30', 'occupation', 'painting,house, furniture, moderate effort'),
(11516, '3.00', 'occupation', 'plumbing activities '),
(11520, '2.00', 'occupation', 'printing, paper industry worker, standing'),
(11525, '2.50', 'occupation', 'police, directing traffic, standing'),
(11526, '2.50', 'occupation', 'police, driving a squad car, sitting'),
(11527, '1.30', 'occupation', 'police, riding in a squad car, sitting'),
(11528, '4.00', 'occupation', 'police, making an arrest, standing'),
(11529, '2.30', 'occupation', 'postal carrier, walking to deliver mail'),
(11530, '2.00', 'occupation', 'shoe repair, general'),
(11540, '7.80', 'occupation', 'shoveling, digging ditches'),
(11550, '8.80', 'occupation', 'shoveling, more than 16 lbs/minute, deep digging, vigorous effort'),
(11560, '5.00', 'occupation', 'shoveling, less than 10 lbs/minute, moderate effort'),
(11570, '6.50', 'occupation', 'shoveling, 10 to 15 lbs/minute, vigorous effort'),
(11580, '1.50', 'occupation', 'sitting tasks, light effort (e.g., office work, chemistry lab work, computer work, light assembly repair, watch repair, reading, desk work)'),
(11585, '1.50', 'occupation', 'sitting meetings, light effort, general, and/or with talking involved (e.g., eating at a business meeting)'),
(11590, '2.50', 'occupation', 'sitting tasks, moderate effort (e.g., pushing heavy levers, riding mower/forklift, crane operation)'),
(11593, '2.80', 'occupation', 'sitting, teaching stretching or yoga, or light effort exercise class'),
(11600, '3.00', 'occupation', 'standing tasks, light effort (e.g., bartending, store clerk, assembling, filing, duplicating, librarian, putting up a Christmas tree, standing and talking at work, changing clothes when teaching physical education, standing)'),
(11610, '3.00', 'occupation', 'standing, light/moderate effort (e.g., assemble/repair heavy parts, welding,stocking parts,auto repair,standing, packing boxes, nursing patient care)'),
(11615, '4.50', 'occupation', 'standing, moderate effort, lifting items continuously, 10 – 20 lbs, with limited walking or resting'),
(11620, '3.50', 'occupation', 'standing, moderate effort, intermittent lifting 50 lbs, hitch/twisting ropes'),
(11630, '4.50', 'occupation', 'standing, moderate/heavy tasks (e.g., lifting more than 50 lbs, masonry, painting, paper hanging)'),
(11708, '5.30', 'occupation', 'steel mill, moderate effort (e.g., fettling, forging, tipping molds)'),
(11710, '8.30', 'occupation', 'steel mill, vigorous effort (e.g., hand rolling, merchant mill rolling, removing slag, tending furnace)'),
(11720, '2.30', 'occupation', 'tailoring, cutting fabric'),
(11730, '2.50', 'occupation', 'tailoring, general'),
(11740, '1.80', 'occupation', 'tailoring, hand sewing'),
(11750, '2.50', 'occupation', 'tailoring, machine sewing'),
(11760, '3.50', 'occupation', 'tailoring, pressing'),
(11763, '2.00', 'occupation', 'tailoring, weaving, light effort (e.g., finishing operations, washing, dyeing, inspecting cloth, counting yards, paperwork)'),
(11765, '4.00', 'occupation', 'tailoring, weaving, moderate effort (e.g., spinning and weaving operations, delivering boxes of yam to spinners, loading of warp bean, pinwinding, conewinding, warping, cloth cutting)'),
(11766, '6.50', 'occupation', 'truck driving, loading and unloading truck, tying down load, standing, walking and carrying heavy loads'),
(11767, '2.00', 'occupation', 'truck, driving delivery truck, taxi, shuttlebus, school bus'),
(11770, '1.30', 'occupation', 'typing, electric, manual or computer'),
(11780, '6.30', 'occupation', 'using heavy power tools such as pneumatic tools (e.g., jackhammers, drills)'),
(11790, '8.00', 'occupation', 'using heavy tools (not power) such as shovel, pick, tunnel bar, spade'),
(11791, '2.00', 'occupation', 'walking on job, less than 2.0 mph, very slow speed, in office or lab area'),
(11792, '3.50', 'occupation', 'walking on job, 3.0 mph, in office, moderate speed, not carrying anything'),
(11793, '4.30', 'occupation', 'walking on job, 3.5 mph, in office, brisk speed, not carrying anything'),
(11795, '3.50', 'occupation', 'walking on job, 2.5 mph, slow speed and carrying light objects less than 25 lbs'),
(11796, '3.00', 'occupation', 'walking, gathering things at work, ready to leave'),
(11797, '3.80', 'occupation', 'walking, 2.5 mph, slow speed, carrying heavy objects more than 25 lbs'),
(11800, '4.50', 'occupation', 'walking, 3.0 mph, moderately and carrying light objects less than 25 lbs'),
(11805, '3.50', 'occupation', 'walking, pushing a wheelchair'),
(11810, '4.80', 'occupation', 'walking, 3.5 mph, briskly and carrying objects less than 25 lbs'),
(11820, '5.00', 'occupation', 'walking or walk downstairs or standing, carrying objects about 25 to 49 lbs'),
(11830, '6.50', 'occupation', 'walking or walk downstairs or standing, carrying objects about 50 to 74 lbs'),
(11840, '7.50', 'occupation', 'walking or walk downstairs or standing, carrying objects about 75 to 99 lbs'),
(11850, '8.50', 'occupation', 'walking or walk downstairs or standing, carrying objects about 100 lbs or more'),
(11870, '3.00', 'occupation', 'working in scene shop, theater actor, backstage employee'),
(12010, '6.00', 'running', 'jog/walk combination (jogging component of less than 10 minutes) (Taylor Code 180)'),
(12020, '7.00', 'running', 'jogging, general'),
(12025, '8.00', 'running', 'jogging, in place'),
(12027, '4.50', 'running', 'jogging, on a mini-tramp'),
(12029, '6.00', 'running', 'Running, 4 mph (15 min/mile) '),
(12030, '8.30', 'running', 'running, 5 mph (12 min/mile)'),
(12040, '9.00', 'running', 'running, 5.2 mph (11.5 min/mile)'),
(12050, '9.80', 'running', 'running, 6 mph (10 min/mile)'),
(12060, '9.99', 'running', 'running, 6.7 mph (9 min/mile)'),
(12070, '9.99', 'running', 'running, 7 mph (8.5 min/mile)'),
(12080, '9.99', 'running', 'running, 7.5 mph (8 min/mile)'),
(12090, '9.99', 'running', 'running, 8 mph (7.5 min/mile)'),
(12100, '9.99', 'running', 'running, 8.6 mph (7 min/mile)'),
(12110, '9.99', 'running', 'running, 9 mph (6.5 min/mile)'),
(12120, '9.99', 'running', 'running, 10 mph (6 min/mile)'),
(12130, '9.99', 'running', 'running, 11 mph (5.5 min/mile)'),
(12132, '9.99', 'running', 'running, 12 mph (5 min/mile) '),
(12134, '9.99', 'running', 'running, 13 mph (4.6 min/mile)'),
(12135, '9.99', 'running', 'running, 14 mph (4.3 min/mile) '),
(12140, '9.00', 'running', 'running, cross country'),
(12150, '8.00', 'running', 'running, (Taylor code 200)'),
(12170, '9.99', 'running', 'running, stairs, up'),
(12180, '9.99', 'running', 'running, on a track, team practice'),
(12190, '8.00', 'running', 'running, training, pushing a wheelchair or baby carrier'),
(12200, '9.99', 'running', 'running, marathon'),
(13000, '2.30', 'self care', 'getting ready for bed, general, standing'),
(13009, '1.80', 'self care', 'sitting on toilet, eliminating while standing or squating'),
(13010, '1.50', 'self care', 'bathing, sitting'),
(13020, '2.50', 'self care', 'dressing, undressing, standing or sitting'),
(13030, '1.50', 'self care', 'eating, sitting'),
(13035, '2.00', 'self care', 'talking and eating or eating only, standing'),
(13036, '1.50', 'self care', 'taking medication, sitting or standing'),
(13040, '2.00', 'self care', 'grooming, washing hands, shaving, brushing teeth, putting on make-up, sitting or standing'),
(13045, '2.50', 'self care', 'hairstyling, standing'),
(13046, '1.30', 'self care', 'having hair or nails done by someone else, sitting'),
(13050, '2.00', 'self care', 'showering, toweling off, standing'),
(14010, '2.80', 'sexual activity', 'active, vigorous effort'),
(14020, '1.80', 'sexual activity', 'general, moderate effort'),
(14030, '1.30', 'sexual activity', 'passive, light effort, kissing, hugging'),
(15000, '5.50', 'sports', 'Alaska Native Games, Eskimo Olympics, general '),
(15010, '4.30', 'sports', 'archery, non-hunting'),
(15020, '7.00', 'sports', 'badminton, competitive (Taylor Code 450)'),
(15030, '5.50', 'sports', 'badminton, social singles and doubles, general'),
(15040, '8.00', 'sports', 'basketball, game (Taylor Code 490)'),
(15050, '6.00', 'sports', 'basketball, non-game, general (Taylor Code 480)'),
(15055, '6.50', 'sports', 'basketball, general '),
(15060, '7.00', 'sports', 'basketball, officiating (Taylor Code 500)'),
(15070, '4.50', 'sports', 'basketball, shooting baskets'),
(15072, '9.30', 'sports', 'basketball, drills, practice '),
(15075, '7.80', 'sports', 'basketball, wheelchair'),
(15080, '2.50', 'sports', 'billiards'),
(15090, '3.00', 'sports', 'bowling (Taylor Code 390)'),
(15092, '3.80', 'sports', 'bowling, indoor, bowling alley '),
(15100, '9.99', 'sports', 'boxing, in ring, general'),
(15110, '5.50', 'sports', 'boxing, punching bag'),
(15120, '7.80', 'sports', 'boxing, sparring'),
(15130, '7.00', 'sports', 'broomball'),
(15135, '5.80', 'sports', 'children’s games, adults playing (e.g., hopscotch, 4-square, dodgeball, playground apparatus, t-ball, tetherball, marbles, arcade games), moderate effort'),
(15138, '6.00', 'sports', 'cheerleading, gymnastic moves, competitive '),
(15140, '4.00', 'sports', 'coaching, football, soccer, basketball, baseball, swimming, etc.'),
(15142, '8.00', 'sports', 'coaching, actively playing sport with players '),
(15150, '4.80', 'sports', 'cricket, batting, bowling, fielding'),
(15160, '3.30', 'sports', 'croquet'),
(15170, '4.00', 'sports', 'curling'),
(15180, '2.50', 'sports', 'darts, wall or lawn'),
(15190, '6.00', 'sports', 'drag racing, pushing or driving a car'),
(15192, '8.50', 'sports', 'auto racing, open wheel'),
(15200, '6.00', 'sports', 'fencing'),
(15210, '8.00', 'sports', 'football, competitive'),
(15230, '8.00', 'sports', 'football, touch, flag, general (Taylor Code 510)'),
(15232, '4.00', 'sports', 'football, touch, flag, light effort'),
(15235, '2.50', 'sports', 'football or baseball, playing catch'),
(15240, '3.00', 'sports', 'frisbee playing, general'),
(15250, '8.00', 'sports', 'frisbee, ultimate'),
(15255, '4.80', 'sports', 'golf, general'),
(15265, '4.30', 'sports', 'golf, walking, carrying clubs'),
(15270, '3.00', 'sports', 'golf, miniature, driving range'),
(15285, '5.30', 'sports', 'golf, walking, pulling clubs '),
(15290, '3.50', 'sports', 'golf, using power cart (Taylor Code 070)'),
(15300, '3.80', 'sports', 'gymnastics, general'),
(15310, '4.00', 'sports', 'hacky sack'),
(15320, '9.99', 'sports', 'handball, general (Taylor Code 520)'),
(15330, '8.00', 'sports', 'handball, team'),
(15335, '4.00', 'sports', 'high ropes course, multiple elements'),
(15340, '3.50', 'sports', 'hang gliding'),
(15350, '7.80', 'sports', 'hockey, field'),
(15360, '8.00', 'sports', 'hockey, ice, general'),
(15362, '9.99', 'sports', 'hockey, ice, competitive'),
(15370, '5.50', 'sports', 'horseback riding, general'),
(15375, '4.30', 'sports', 'horse chores, feeding, watering, cleaning stalls, implied walking and lifting loads '),
(15380, '4.50', 'sports', 'saddling, cleaning, grooming, harnessing and unharnessing horse'),
(15390, '5.80', 'sports', 'horseback riding, trotting'),
(15395, '7.30', 'sports', 'horseback riding, canter or gallop '),
(15400, '3.80', 'sports', 'horseback riding,walking'),
(15402, '9.00', 'sports', 'horseback riding, jumping '),
(15408, '1.80', 'sports', 'horse cart, driving, standing or sitting'),
(15410, '3.00', 'sports', 'horseshoe pitching, quoits'),
(15420, '9.99', 'sports', 'jai alai'),
(15425, '5.30', 'sports', 'martial arts, different types, slower pace, novice performers, practice'),
(15430, '9.99', 'sports', 'martial arts, different types, moderate pace (e.g., judo, jujitsu, karate, kick boxing, tae kwan do, tai-bo, Muay Thai boxing)'),
(15440, '4.00', 'sports', 'juggling'),
(15450, '7.00', 'sports', 'kickball'),
(15460, '8.00', 'sports', 'lacrosse'),
(15465, '3.30', 'sports', 'lawn bowling, bocce ball, outdoor '),
(15470, '4.00', 'sports', 'moto-cross, off-road motor sports, all-terrain vehicle, general'),
(15480, '9.00', 'sports', 'orienteering'),
(15490, '9.99', 'sports', 'paddleball, competitive'),
(15500, '6.00', 'sports', 'paddleball, casual, general (Taylor Code 460)'),
(15510, '8.00', 'sports', 'polo, on horseback'),
(15520, '9.99', 'sports', 'racquetball, competitive'),
(15530, '7.00', 'sports', 'racquetball, general (Taylor Code 470)'),
(15533, '8.00', 'sports', 'rock or mountain climbing (Taylor Code 470) '),
(15535, '7.50', 'sports', 'rock climbing, ascending rock, high difficulty'),
(15537, '5.80', 'sports', 'rock climbing, ascending or traversing rock, low-to-moderate difficulty '),
(15540, '5.00', 'sports', 'rock climbing, rappelling'),
(15542, '4.00', 'sports', 'rodeo sports, general, light effort'),
(15544, '5.50', 'sports', 'rodeo sports, general, moderate effort'),
(15546, '7.00', 'sports', 'rodeo sports, general, vigorous effort'),
(15550, '9.99', 'sports', 'rope jumping, fast pace, 120-160 skips/min'),
(15551, '9.99', 'sports', 'rope jumping, moderate pace, 100-120 skips/min, general,  2 foot skip, plain bounce'),
(15552, '8.80', 'sports', 'rope jumping, slow pace, < 100 skips/min, 2 foot skip, rhythm bounce'),
(15560, '8.30', 'sports', 'rugby, union, team, competitive'),
(15562, '6.30', 'sports', 'rugby, touch, non-competitive'),
(15570, '3.00', 'sports', 'shuffleboard'),
(15580, '5.00', 'sports', 'skateboarding, general, moderate effort'),
(15582, '6.00', 'sports', 'skateboarding, competitive, vigorous effort '),
(15590, '7.00', 'sports', 'skating, roller (Taylor Code 360)'),
(15591, '7.50', 'sports', 'rollerblading, in-line skating, 14.4 km/h (9.0 mph), recreational pace'),
(15592, '9.80', 'sports', 'rollerblading, in-line skating, 17.7 km/h (11.0 mph), moderate pace, exercise training'),
(15593, '9.99', 'sports', 'rollerblading, in-line skating, 21.0 to 21.7 km/h (13.0 to 13.6 mph), fast pace, exercise training'),
(15594, '9.99', 'sports', 'rollerblading, in-line skating, 24.0 km/h (15.0 mph), maximal effort'),
(15600, '3.50', 'sports', 'skydiving, base jumping, bungee jumping '),
(15605, '9.99', 'sports', 'soccer, competitive'),
(15610, '7.00', 'sports', 'soccer, casual, general (Taylor Code 540)'),
(15620, '5.00', 'sports', 'softball or baseball, fast or slow pitch, general (Taylor Code 440)'),
(15625, '4.00', 'sports', 'softball, practice '),
(15630, '4.00', 'sports', 'softball, officiating'),
(15640, '6.00', 'sports', 'softball,pitching'),
(15645, '3.30', 'sports', 'sports spectator, very excited, emotional, physically moving  '),
(15650, '9.99', 'sports', 'squash (Taylor Code 530)'),
(15652, '7.30', 'sports', 'squash, general '),
(15660, '4.00', 'sports', 'table tennis, ping pong (Taylor Code 410)'),
(15670, '3.00', 'sports', 'tai chi, qi gong, general'),
(15672, '1.50', 'sports', 'tai chi, qi gong, sitting, light effort'),
(15675, '7.30', 'sports', 'tennis, general'),
(15680, '6.00', 'sports', 'tennis, doubles (Taylor Code 430)');
INSERT INTO `activity` (`metCode`, `mets`, `majorHeading`, `specificActivities`) VALUES
(15685, '4.50', 'sports', 'tennis, doubles'),
(15690, '8.00', 'sports', 'tennis, singles (Taylor Code 420)'),
(15695, '5.00', 'sports', 'tennis, hitting balls, non-game play, moderate effort '),
(15700, '3.50', 'sports', 'trampoline, recreational'),
(15702, '4.50', 'sports', 'trampoline, competitive'),
(15710, '4.00', 'sports', 'volleyball (Taylor Code 400)'),
(15711, '6.00', 'sports', 'volleyball, competitive, in gymnasium'),
(15720, '3.00', 'sports', 'volleyball, non-competitive, 6 - 9 member team, general'),
(15725, '8.00', 'sports', 'volleyball, beach, in sand'),
(15730, '6.00', 'sports', 'wrestling (one match = 5 minutes)'),
(15731, '7.00', 'sports', 'wallyball, general'),
(15732, '4.00', 'sports', 'track and field (e.g., shot, discus, hammer throw)'),
(15733, '6.00', 'sports', 'track and field (e.g., high jump, long jump, triple jump, javelin, pole vault)'),
(15734, '9.99', 'sports', 'track and field (e.g., steeplechase, hurdles)'),
(16010, '2.50', 'transportation', 'automobile or light truck (not a semi) driving'),
(16015, '1.30', 'transportation', 'riding in a car or truck'),
(16016, '1.30', 'transportation', 'riding in a bus or train'),
(16020, '1.80', 'transportation', 'flying airplane or helicopter'),
(16030, '2.80', 'transportation', 'motor scooter, motorcycle'),
(16035, '6.30', 'transportation', 'pulling rickshaw '),
(16040, '6.00', 'transportation', 'pushing plane in and out of hangar'),
(16050, '2.50', 'transportation', 'truck, semi, tractor, > 1 ton, or bus, driving'),
(16060, '3.50', 'transportation', 'walking for transportation, 2.8-3.2 mph, level, moderate pace, firm surface '),
(17010, '7.00', 'walking', 'backpacking (Taylor Code 050)'),
(17012, '7.80', 'walking', 'backpacking, hiking or organized walking with a daypack'),
(17020, '5.00', 'walking', 'carrying 15 pound load (e.g. suitcase), level ground or downstairs'),
(17021, '2.30', 'walking', 'carrying 15 lb child, slow walking'),
(17025, '8.30', 'walking', 'carrying load upstairs, general'),
(17026, '5.00', 'walking', 'carrying 1 to 15 lb load, upstairs'),
(17027, '6.00', 'walking', 'carrying 16 to 24 lb load, upstairs'),
(17028, '8.00', 'walking', 'carrying 25 to 49 lb load, upstairs'),
(17029, '9.99', 'walking', 'carrying 50 to 74 lb load, upstairs'),
(17030, '9.99', 'walking', 'carrying > 74 lb load, upstairs'),
(17031, '3.50', 'walking', 'loading /unloading a car, implied walking'),
(17033, '6.30', 'walking', 'climbing hills, no load'),
(17035, '6.50', 'walking', 'climbing hills with 0 to 9 lb load'),
(17040, '7.30', 'walking', 'climbing hills with 10 to 20 lb load'),
(17050, '8.30', 'walking', 'climbing hills with 21 to 42 lb load'),
(17060, '9.00', 'walking', 'climbing hills with 42+ lb load'),
(17070, '3.50', 'walking', 'descending stairs'),
(17080, '6.00', 'walking', 'hiking, cross country (Taylor Code 040)'),
(17082, '5.30', 'walking', 'hiking or walking at a normal pace through fields and hillsides '),
(17085, '2.50', 'walking', 'bird watching, slow walk'),
(17088, '4.50', 'walking', 'marching, moderate speed, military, no pack'),
(17090, '8.00', 'walking', 'marching rapidly, military, no pack'),
(17100, '4.00', 'walking', 'pushing or pulling stroller with child or walking with children, 2.5 to 3.1 mph'),
(17105, '3.80', 'walking', 'pushing a wheelchair, non-occupational '),
(17110, '6.50', 'walking', 'race walking'),
(17130, '8.00', 'walking', 'stair climbing, using or climbing up ladder (Taylor Code 030)'),
(17133, '4.00', 'walking', 'stair climbing, slow pace'),
(17134, '8.80', 'walking', 'stair climbing, fast pace'),
(17140, '5.00', 'walking', 'using crutches'),
(17150, '2.00', 'walking', 'walking, household'),
(17151, '2.00', 'walking', 'walking, less than 2.0 mph, level, strolling, very slow'),
(17152, '2.80', 'walking', 'walking, 2.0 mph, level, slow pace, firm surface'),
(17160, '3.50', 'walking', 'walking for pleasure (Taylor Code 010)'),
(17161, '2.50', 'walking', 'walking from house to car or bus, from car or bus to go places, from car or bus to and from the worksite'),
(17162, '2.50', 'walking', 'walking to neighbor’s house or family’s house for social reasons'),
(17165, '3.00', 'walking', 'walking the dog'),
(17170, '3.00', 'walking', 'walking, 2.5 mph, level, firm surface'),
(17180, '3.30', 'walking', 'walking, 2.5 mph, downhill'),
(17190, '3.50', 'walking', 'walking, 2.8 to 3.2 mph, level, moderate pace, firm surface'),
(17200, '4.30', 'walking', 'walking, 3.5 mph, level, brisk, firm surface, walking for exercise'),
(17210, '5.30', 'walking', 'walking, 2.9 to 3.5 mph, uphill, 1 to 5% grade'),
(17211, '8.00', 'walking', 'walking, 2.9 to 3.5 mph, uphill, 6% to 15% grade'),
(17220, '5.00', 'walking', 'walking, 4.0 mph, level, firm surface, very brisk pace'),
(17230, '7.00', 'walking', 'walking, 4.5 mph, level, firm surface, very, very brisk'),
(17231, '8.30', 'walking', 'walking, 5.0 mph, level, firm surface'),
(17235, '9.80', 'walking', 'walking, 5.0 mph, uphill, 3% grade'),
(17250, '3.50', 'walking', 'walking, for pleasure, work break'),
(17260, '4.80', 'walking', 'walking, grass track'),
(17262, '4.50', 'walking', 'walking, normal pace, plowed field or sand '),
(17270, '4.00', 'walking', 'walking, to work or class (Taylor Code 015)'),
(17280, '2.50', 'walking', 'walking, to and from an outhouse'),
(17302, '4.80', 'walking', 'walking, for exercise, 3.5 to 4 mph, with ski poles, Nordic walking, level, moderate pace '),
(17305, '9.50', 'walking', 'walking, for exercise, 5.0 mph, with ski poles, Nordic walking, level, fast pace '),
(17310, '6.80', 'walking', 'walking, for exercise, with ski poles, Nordic walking, uphill'),
(17320, '6.00', 'walking', 'walking, backwards, 3.5 mph, level '),
(17325, '8.00', 'walking', 'walking, backwards, 3.5 mph, uphill, 5% grade'),
(18010, '2.50', 'water activities', 'boating, power, driving'),
(18012, '1.30', 'water activities', 'boating, power, passenger, light '),
(18020, '4.00', 'water activities', 'canoeing, on camping trip (Taylor Code 270)'),
(18025, '3.30', 'water activities', 'canoeing, harvesting wild rice, knocking rice off the stalks'),
(18030, '7.00', 'water activities', 'canoeing, portaging'),
(18040, '2.80', 'water activities', 'canoeing, rowing, 2.0-3.9 mph, light effort'),
(18050, '5.80', 'water activities', 'canoeing, rowing, 4.0-5.9 mph, moderate effort'),
(18060, '9.99', 'water activities', 'canoeing, rowing, kayaking, competition, >6 mph, vigorous effort'),
(18070, '3.50', 'water activities', 'canoeing, rowing, for pleasure, general (Taylor Code 250)'),
(18080, '9.99', 'water activities', 'canoeing, rowing, in competition, or crew or sculling (Taylor Code 260)'),
(18090, '3.00', 'water activities', 'diving, springboard or platform'),
(18100, '5.00', 'water activities', 'kayaking, moderate effort'),
(18110, '4.00', 'water activities', 'paddle boat'),
(18120, '3.00', 'water activities', 'sailing, boat and board sailing, windsurfing, ice sailing, general (Taylor Code 235)'),
(18130, '4.50', 'water activities', 'sailing, in competition'),
(18140, '3.30', 'water activities', 'sailing, Sunfish/Laser/Hobby Cat, Keel boats, ocean sailing, yachting, leisure'),
(18150, '6.00', 'water activities', 'skiing, water or wakeboarding (Taylor Code 220)'),
(18160, '7.00', 'water activities', 'jet skiing, driving, in water'),
(18180, '9.99', 'water activities', 'skindiving, fast'),
(18190, '9.99', 'water activities', 'skindiving, moderate'),
(18200, '7.00', 'water activities', 'skindiving, scuba diving, general (Taylor Code 310)'),
(18210, '5.00', 'water activities', 'snorkeling (Taylor Code 310)'),
(18220, '3.00', 'water activities', 'surfing, body or board, general'),
(18222, '5.00', 'water activities', 'surfing, body or board, competitive'),
(18225, '6.00', 'water activities', 'paddle boarding, standing'),
(18230, '9.80', 'water activities', 'swimming laps, freestyle, fast, vigorous effort'),
(18240, '5.80', 'water activities', 'swimming laps, freestyle, front crawl, slow, light or moderate effort'),
(18250, '9.50', 'water activities', 'swimming, backstroke, general, training or competition'),
(18255, '4.80', 'water activities', 'swimming, backstroke, recreational'),
(18260, '9.99', 'water activities', 'swimming, breaststroke, general, training or competition'),
(18265, '5.30', 'water activities', 'swimming, breaststroke, recreational '),
(18270, '9.99', 'water activities', 'swimming, butterfly, general'),
(18280, '9.99', 'water activities', 'swimming, crawl, fast speed, ~75 yards/minute, vigorous effort'),
(18290, '8.30', 'water activities', 'swimming, crawl, medium speed, ~50 yards/minute, vigorous effort'),
(18300, '6.00', 'water activities', 'swimming, lake, ocean, river (Taylor Codes 280, 295)'),
(18310, '6.00', 'water activities', 'swimming, leisurely, not lap swimming, general'),
(18320, '7.00', 'water activities', 'swimming, sidestroke, general'),
(18330, '8.00', 'water activities', 'swimming, synchronized'),
(18340, '9.80', 'water activities', 'swimming, treading water, fast, vigorous effort'),
(18350, '3.50', 'water activities', 'swimming, treading water, moderate effort, general'),
(18352, '2.30', 'water activities', 'tubing, floating on a river, general'),
(18355, '5.50', 'water activities', 'water aerobics, water calisthenics'),
(18360, '9.99', 'water activities', 'water polo'),
(18365, '3.00', 'water activities', 'water volleyball'),
(18366, '9.80', 'water activities', 'water jogging'),
(18367, '2.50', 'water activities', 'water walking, light effort, slow pace'),
(18368, '4.50', 'water activities', 'water walking, moderate effort, moderate pace'),
(18369, '6.80', 'water activities', 'water walking, vigorous effort, brisk pace'),
(18370, '5.00', 'water activities', 'whitewater rafting, kayaking, or canoeing'),
(18380, '5.00', 'water activities', 'windsurfing, not pumping for speed'),
(18385, '9.99', 'water activities', 'windsurfing or kitesurfing, crossing trial'),
(18390, '9.99', 'water activities', 'windsurfing, competition, pumping for speed'),
(19005, '7.50', 'winter activities', 'dog sledding, mushing '),
(19006, '2.50', 'winter activities', 'dog sledding, passenger '),
(19010, '6.00', 'winter activities', 'moving ice house, set up/drill holes'),
(19011, '2.00', 'winter activities', 'ice fishing, sitting '),
(19018, '9.99', 'winter activities', 'skating, ice dancing'),
(19020, '5.50', 'winter activities', 'skating, ice, 9 mph or less'),
(19030, '7.00', 'winter activities', 'skating, ice, general (Taylor Code 360)'),
(19040, '9.00', 'winter activities', 'skating, ice, rapidly, more than 9 mph, not competitive'),
(19050, '9.99', 'winter activities', 'skating, speed, competitive'),
(19060, '7.00', 'winter activities', 'ski jumping, climb up carrying skis'),
(19075, '7.00', 'winter activities', 'skiing, general'),
(19080, '6.80', 'winter activities', 'skiing, cross country, 2.5 mph, slow or light effort, ski walking'),
(19090, '9.00', 'winter activities', 'skiing, cross country, 4.0-4.9 mph, moderate speed and effort, general'),
(19100, '9.99', 'winter activities', 'skiing, cross country, 5.0-7.9 mph, brisk speed, vigorous effort'),
(19110, '9.99', 'winter activities', 'skiing, cross country, >8.0 mph, elite skier, racing'),
(19130, '9.99', 'winter activities', 'skiing, cross country, hard snow, uphill, maximum, snow mountaineering'),
(19135, '9.99', 'winter activities', 'skiing, cross-country, skating '),
(19140, '9.99', 'winter activities', 'skiing, cross-country, biathlon, skating technique '),
(19150, '4.30', 'winter activities', 'skiing, downhill, alpine or snowboarding, light effort, active time only'),
(19160, '5.30', 'winter activities', 'skiing, downhill, alpine or snowboarding, moderate effort, general, active time only'),
(19170, '8.00', 'winter activities', 'skiing, downhill, vigorous effort, racing'),
(19175, '9.99', 'winter activities', 'skiing, roller, elite racers'),
(19180, '7.00', 'winter activities', 'sledding, tobogganing, bobsledding, luge (Taylor Code 370)'),
(19190, '5.30', 'winter activities', 'snow shoeing, moderate effort'),
(19192, '9.99', 'winter activities', 'snow shoeing, vigorous effort'),
(19200, '3.50', 'winter activities', 'snowmobiling, driving, moderate'),
(19202, '2.00', 'winter activities', 'snowmobiling, passenger'),
(19252, '5.30', 'winter activities', 'snow shoveling, by hand, moderate effort'),
(19254, '7.50', 'winter activities', 'snow shoveling, by hand, vigorous effort'),
(19260, '2.50', 'winter activities', 'snow blower, walking and pushing'),
(20000, '1.30', 'religious activities', 'sitting in church, in service, attending a ceremony, sitting quietly'),
(20001, '2.00', 'religious activities', 'sitting, playing an instrument at church'),
(20005, '1.80', 'religious activities', 'sitting in church, talking or singing, attending a ceremony, sitting, active participation'),
(20010, '1.30', 'religious activities', 'sitting, reading religious materials at home'),
(20015, '1.30', 'religious activities', 'standing quietly in church, attending a ceremony'),
(20020, '2.00', 'religious activities', 'standing, singing in church, attending a ceremony, standing, active participation'),
(20025, '1.30', 'religious activities', 'kneeling in church or at home, praying'),
(20030, '1.80', 'religious activities', 'standing, talking in church'),
(20035, '2.00', 'religious activities', 'walking in church'),
(20036, '2.00', 'religious activities', 'walking, less than 2.0 mph, very slow'),
(20037, '3.50', 'religious activities', 'walking, 3.0 mph, moderate speed, not carrying anything'),
(20038, '4.30', 'religious activities', 'walking, 3.5 mph, brisk speed, not carrying anything'),
(20039, '2.00', 'religious activities', 'walk/stand combination for religious purposes, usher'),
(20040, '5.00', 'religious activities', 'praise with dance or run, spiritual dancing in church'),
(20045, '2.50', 'religious activities', 'serving food at church'),
(20046, '2.00', 'religious activities', 'preparing food at church'),
(20047, '3.30', 'religious activities', 'washing dishes, cleaning kitchen at church'),
(20050, '1.50', 'religious activities', 'eating at church'),
(20055, '2.00', 'religious activities', 'eating/talking at church or standing eating, American Indian Feast days'),
(20060, '3.30', 'religious activities', 'cleaning church'),
(20061, '4.00', 'religious activities', 'general yard work at church'),
(20065, '3.50', 'religious activities', 'standing, moderate effort (e.g., lifting heavy objects, assembling at fast rate)'),
(20095, '4.50', 'religious activities', 'Standing, moderate-to-heavy effort, manual labor, lifting ≥ 50 lbs, heavy maintenance'),
(20100, '1.30', 'religious activities', 'typing, electric, manual, or computer'),
(21000, '1.50', 'volunteer activities', 'sitting, meeting, general, and/or with talking involved'),
(21005, '1.50', 'volunteer activities', 'sitting, light office work, in general'),
(21010, '2.50', 'volunteer activities', 'sitting, moderate work'),
(21015, '2.30', 'volunteer activities', 'standing, light work (filing, talking, assembling)'),
(21016, '2.00', 'volunteer activities', 'sitting, child care, only active periods'),
(21017, '3.00', 'volunteer activities', 'standing, child care, only active periods'),
(21018, '3.50', 'volunteer activities', 'walk/run play with children, moderate, only active periods'),
(21019, '5.80', 'volunteer activities', 'walk/run play with children, vigorous, only active periods'),
(21020, '3.00', 'volunteer activities', 'standing, light/moderate work (e.g., pack boxes, assemble/repair, set up chairs/furniture)'),
(21025, '3.50', 'volunteer activities', 'standing, moderate (lifting 50 lbs., assembling at fast rate)'),
(21030, '4.50', 'volunteer activities', 'standing, moderate/heavy work'),
(21035, '1.30', 'volunteer activities', 'typing, electric, manual, or computer'),
(21040, '2.00', 'volunteer activities', 'walking, less than 2.0 mph, very slow'),
(21045, '3.50', 'volunteer activities', 'walking, 3.0 mph, moderate speed, not carrying anything'),
(21050, '4.30', 'volunteer activities', 'walking, 3.5 mph, brisk speed, not carrying anything'),
(21055, '3.50', 'volunteer activities', 'walking, 2.5 mph slowly and carrying objects less than 25 lbs'),
(21060, '4.50', 'volunteer activities', 'walking, 3.0 mph moderately and carrying objects less than 25 lbs, pushing something'),
(21065, '4.80', 'volunteer activities', 'walking, 3.5 mph, briskly and carrying objects less than 25 lbs'),
(21070, '3.00', 'volunteer activities', 'walk/stand combination, for volunteer purposes');

-- --------------------------------------------------------

--
-- Table structure for table `activityLog`
--

CREATE TABLE IF NOT EXISTS `activityLog` (
  `activityID` int(11) NOT NULL,
  `actID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `metCode` int(5) NOT NULL COMMENT 'activity dictionary ID',
  `duration` int(11) NOT NULL,
  `calsBurned` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `activity_old`
--

CREATE TABLE IF NOT EXISTS `activity_old` (
  `activityID` int(11) NOT NULL,
  `type` text NOT NULL,
  `intensity` int(11) NOT NULL,
  `duration` int(11) NOT NULL COMMENT 'minutes',
  `calsBurned` int(11) NOT NULL COMMENT 'cals us'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `dateLog`
--

CREATE TABLE IF NOT EXISTS `dateLog` (
  `dateID` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dateLog`
--

INSERT INTO `dateLog` (`dateID`, `date`) VALUES
(3, '2021-10-13');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE IF NOT EXISTS `food` (
  `foodID` int(11) NOT NULL,
  `foodType` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `measurement` int(11) NOT NULL COMMENT '0 cups, 1 mls, 2 tbsp, 3 tsp, 4 g, 5 oz, 6 serving',
  `calories` int(11) NOT NULL,
  `protein` int(11) NOT NULL,
  `fat` int(11) NOT NULL,
  `carbs` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`foodID`, `foodType`, `quantity`, `measurement`, `calories`, `protein`, `fat`, `carbs`) VALUES
(1, 'Caramel Frappe', 16, 5, 380, 4, 16, 55),
(2, 'acorn squash', 1, 6, 172, 3, 0, 45),
(10, 'Steamed Rice', 1, 1, 200, 4, 1, 45),
(11, 'Tomato', 1, 7, 60, 1, 1, 6),
(12, 'Prawn Curry', 2, 1, 600, 14, 4, 50),
(15, 'Steamed Rice', 1, 2, 200, 4, 1, 50),
(16, 'Fruit Loops', 2, 1, 300, 3, 10, 60),
(17, 'Soy Milk', 1, 1, 100, 4, 3, 10),
(18, 'Chicken', 1, 6, 15, 4, 4, 4),
(19, 'Hot Chocolate', 1, 3, 100, 0, 1, 5),
(20, '', 0, 0, 0, 0, 0, 0),
(21, 'asbaskjdaskjdb', 1, 2, 200, 14, 10, 5),
(22, 'Clif Bar, Peanut Butter', 1, 7, 250, 11, 6, 30);

-- --------------------------------------------------------

--
-- Table structure for table `foodLog`
--

CREATE TABLE IF NOT EXISTS `foodLog` (
  `food_logID` int(11) NOT NULL,
  `actID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `foodID` int(11) NOT NULL,
  `foodTypeEntry` text NOT NULL,
  `quantityEntry` int(11) NOT NULL,
  `measurementEntry` int(11) NOT NULL,
  `caloriesEntry` int(11) NOT NULL COMMENT 'us cals',
  `proteinEntry` int(11) NOT NULL COMMENT 'grams',
  `fatEntry` int(11) NOT NULL COMMENT 'grams',
  `carbsEntry` int(11) NOT NULL COMMENT 'grams'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodLog`
--

INSERT INTO `foodLog` (`food_logID`, `actID`, `dateID`, `foodID`, `foodTypeEntry`, `quantityEntry`, `measurementEntry`, `caloriesEntry`, `proteinEntry`, `fatEntry`, `carbsEntry`) VALUES
(1, 9, 3, 1, 'Caramel Frappe', 16, 5, 380, 4, 16, 55);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `actID` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `dob` date NOT NULL,
  `centimetres` int(11) NOT NULL,
  `kg` int(11) NOT NULL,
  `gender` tinyint(1) NOT NULL COMMENT '0:m, 1:f',
  `kgGoal` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`actID`, `fname`, `lname`, `dob`, `centimetres`, `kg`, `gender`, `kgGoal`) VALUES
(9, 'Kierin', 'Christopher', '1996-10-30', 180, 81, 1, 82);

-- --------------------------------------------------------

--
-- Table structure for table `sleepLog`
--

CREATE TABLE IF NOT EXISTS `sleepLog` (
  `sleepID` int(11) NOT NULL,
  `actID` int(11) NOT NULL,
  `dateID` int(11) NOT NULL,
  `sleepTime` int(11) NOT NULL,
  `quality` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sleepLog`
--

INSERT INTO `sleepLog` (`sleepID`, `actID`, `dateID`, `sleepTime`, `quality`) VALUES
(1, 9, 3, 425, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`metCode`),
  ADD UNIQUE KEY `metCode` (`metCode`);

--
-- Indexes for table `activityLog`
--
ALTER TABLE `activityLog`
  ADD PRIMARY KEY (`activityID`),
  ADD KEY `actID` (`actID`),
  ADD KEY `dateID` (`dateID`),
  ADD KEY `a_ID` (`metCode`),
  ADD KEY `activityID` (`metCode`),
  ADD KEY `metCode` (`metCode`);

--
-- Indexes for table `activity_old`
--
ALTER TABLE `activity_old`
  ADD PRIMARY KEY (`activityID`);

--
-- Indexes for table `dateLog`
--
ALTER TABLE `dateLog`
  ADD PRIMARY KEY (`dateID`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`foodID`);

--
-- Indexes for table `foodLog`
--
ALTER TABLE `foodLog`
  ADD PRIMARY KEY (`food_logID`),
  ADD KEY `actID` (`actID`),
  ADD KEY `dateID` (`dateID`),
  ADD KEY `foodID` (`foodID`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`actID`);

--
-- Indexes for table `sleepLog`
--
ALTER TABLE `sleepLog`
  ADD PRIMARY KEY (`sleepID`),
  ADD KEY `actID` (`actID`),
  ADD KEY `dateID` (`dateID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activityLog`
--
ALTER TABLE `activityLog`
  MODIFY `activityID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dateLog`
--
ALTER TABLE `dateLog`
  MODIFY `dateID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `foodID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `foodLog`
--
ALTER TABLE `foodLog`
  MODIFY `food_logID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `actID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sleepLog`
--
ALTER TABLE `sleepLog`
  MODIFY `sleepID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `activityLog`
--
ALTER TABLE `activityLog`
  ADD CONSTRAINT `activityLog_ibfk_1` FOREIGN KEY (`actID`) REFERENCES `profile` (`actID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activityLog_ibfk_2` FOREIGN KEY (`dateID`) REFERENCES `dateLog` (`dateID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `activityLog_ibfk_3` FOREIGN KEY (`metCode`) REFERENCES `activity` (`metCode`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `foodLog`
--
ALTER TABLE `foodLog`
  ADD CONSTRAINT `foodLog_ibfk_1` FOREIGN KEY (`actID`) REFERENCES `profile` (`actID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foodLog_ibfk_2` FOREIGN KEY (`dateID`) REFERENCES `dateLog` (`dateID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foodLog_ibfk_3` FOREIGN KEY (`foodID`) REFERENCES `food` (`foodID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sleepLog`
--
ALTER TABLE `sleepLog`
  ADD CONSTRAINT `sleepLog_ibfk_1` FOREIGN KEY (`dateID`) REFERENCES `dateLog` (`dateID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sleepLog_ibfk_2` FOREIGN KEY (`actID`) REFERENCES `profile` (`actID`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

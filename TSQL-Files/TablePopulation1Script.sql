USE [residentialLivingComplex];
GO

INSERT INTO residentialComplexBuilding VALUES ('Shady Shoals Residential Living', '225-196-4761')

INSERT INTO address SELECT '196 Residential Avenue', 'Hill Valley', 'CA', 'United States of America', '14641-6561', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'First Floor Recreation Lounge East Wing', '225-196-1001', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'First Floor Recreation Lounge West Wing', '225-196-1002', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Second Floor Recreation Lounge East Wing','225-196-1003', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Second Floor Recreation Lounge West Wing','225-196-1004', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Third Floor Recreation Lounge East Wing','225-196-1005', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Third Floor Recreation Lounge West Wing','225-196-1006', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Fourth Floor Recreation Lounge East Wing','225-196-1007', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Fourth Floor Recreation Lounge West Wing','225-196-1008', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Fifth Floor Recreation Lounge East Wing','225-196-1009', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Fifth Floor Recreation Lounge West Wing','225-196-1010', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Sixth Floor Recreation Lounge East Wing','225-196-1011', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Sixth Floor Recreation Lounge West Wing','225-196-1012', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Seventh Floor Recreation Lounge East Wing','225-196-1013', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Seventh Floor Recreation Lounge West Wing','225-196-1014', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Eighth Floor Recreation Lounge East Wing','225-196-1015', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO recreationLounge SELECT 'Eighth Floor Recreation Lounge West Wing','225-196-1016', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'First Floor Work and Computer Center East Wing','225-196-2001', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'First Floor Work and Computer Center West Wing','225-196-2002', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Second Floor Work and Computer Center East Wing','225-196-2003', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Second Floor Work and Computer Center West Wing','225-196-2004', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Third Floor Work and Computer Center East Wing','225-196-2005', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Third Floor Work and Computer Center West Wing','225-196-2006', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Fourth Floor Work and Computer Center East Wing','225-196-2007', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Fourth Floor Work and Computer Center West Wing','225-196-2008', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Fifth Floor Work and Computer Center East Wing','225-196-2009', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Fifth Floor Work and Computer Center West Wing','225-196-2010', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Sixth Floor Work and Computer Center East Wing','225-196-2011', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Sixth Floor Work and Computer Center West Wing','225-196-2012', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Seventh Floor Work and Computer Center East Wing','225-196-2013', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Seventh Floor Work and Computer Center West Wing','225-196-2014', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Eighth Floor Work and Computer Center East Wing','225-196-2015', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO workAndComputerCenter SELECT 'Eighth Floor Work and Computer Center West Wing','225-196-2016', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'First Floor Exercise Facility North Wing','225-196-3001', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'First Floor Exercise Facility South Wing','225-196-3002', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Second Floor Exercise Facility North Wing','225-196-3003', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Second Floor Exercise Facility South Wing','225-196-3004', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Third Floor Exercise Facility North Wing','225-196-3005', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Third Floor Exercise Facility South Wing','225-196-3006', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Fourth Floor Exercise Facility North Wing','225-196-3007', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Fourth Floor Exercise Facility South Wing','225-196-3008', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Fifth Floor Exercise Facility North Wing','225-196-3009', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Fifth Floor Exercise Facility South Wing','225-196-3010', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Sixth Floor Exercise Facility North Wing','225-196-3011', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Sixth Floor Exercise Facility South Wing','225-196-3012', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Seventh Floor Exercise Facility North Wing','225-196-3013', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Seventh Floor Exercise Facility South Wing','225-196-3014', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Eighth Floor Exercise Facility North Wing','225-196-3015', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO exerciseRoom SELECT 'Eighth Floor Exercise Facility South Wing','225-196-3016', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'First Floor Daycare Center North Wing','225-196-4001', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'First Floor Daycare Center South Wing','225-196-4002', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Second Floor Daycare Center North Wing','225-196-4003', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Second Floor Daycare Center South Wing','225-196-4004', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Third Floor Daycare Center North Wing','225-196-4005', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Third Floor Daycare Center South Wing','225-196-4006', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Fourth Floor Daycare Center North Wing','225-196-4007', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Fourth Floor Daycare Center South Wing','225-196-4008', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Fifth Floor Daycare Center North Wing','225-196-4009', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Fifth Floor Daycare Center South Wing','225-196-4010', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Sixth Floor Daycare Center North Wing','225-196-4011', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Sixth Floor Daycare Center South Wing','225-196-4012', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Seventh Floor Daycare Center North Wing','225-196-4013', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Seventh Floor Daycare Center South Wing','225-196-4014', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Eighth Floor Daycare Center North Wing','225-196-4015', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO dayCare SELECT 'Eighth Floor Daycare Center South Wing','225-196-4016', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO parkingArea SELECT 'East Side Parking Area','225-196-4020', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO parkingArea SELECT 'West Side Parking Area','225-196-4030', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO snackBar SELECT 'Salty Sea Snack Bar','225-196-5001', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO pool SELECT 'Shady Shoals Pool','225-196-5000', snackBarId, residentialComplexBuilding.complexId
FROM snackBar, residentialComplexBuilding
WHERE snackBarName = 'Salty Sea Snack Bar' and complexName = 'Shady Shoals Residential Living'

INSERT INTO playground SELECT 'Phillip J. Fry Playground','225-196-6000', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

INSERT INTO restaurant SELECT 'Shady Shoals Gourmet Restaurant','225-196-7000', complexId
FROM residentialComplexBuilding
WHERE complexName = 'Shady Shoals Residential Living'

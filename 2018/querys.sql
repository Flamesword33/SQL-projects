CREATE VIEW PersonProfile AS
SELECT P.personName, PD.importance, PD.perferNonSmoking, PD.musicPreference1, 
PD.musicPreference2, PD.musicPreference3, PD.sameGender
FROM Person AS P, preferredDriver AS PD
WHERE P.username = PD.username 
ORDER BY P.personName, PD.importance;

CREATE VIEW DriverProfile AS
SELECT P.personName, D.ownsVehicle, D.musicPreference1, D.musicPreference2, D.musicPreference3,
PP.importance, PP.sameGender, PP.sober
FROM Person AS P, Driver AS D, preferredPassenger AS PP
WHERE D.username = PP.username
AND D.username = P.username
ORDER BY D.username, PP.importance;

CREATE VIEW VehicleOwners AS
SELECT P.personName, O.licensePlateNum, V.vehicleModel 
FROM Person AS P, Driver AS D, owns AS O, Vehicle AS V
WHERE O.licensePlateNum = V.licensePlateNum
AND P.username = D.username
AND D.username = O.username
ORDER BY P.personName, O.licensePlateNum;


CREATE VIEW AvailibleDrivers AS
SELECT P.personName, P.personType, L.city, L.address, T.departureDate, T.departureTime
FROM Person AS P, take, Trip AS T, toLocation AS tl, Location AS L
WHERE P.username = take.driverUsername
AND take.tripId = T.tripId
AND T.tripId = tl.tripId
AND tl.city = L.city
AND tl.address = L.address
ORDER BY P.personType, L.city, L.address, T.departureDate, T.departureTime;












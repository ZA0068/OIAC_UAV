names = {'GPS_Status', 'Latitude', 'Longitude', 'Altitude'};
dimensions = [1, 1, 1, 1];
datatypes = {'boolean', 'int32', 'int32', 'int32'};
busManager.addBusElement(names, dimensions, datatypes);
busManager.createBus('GPSBusObject');
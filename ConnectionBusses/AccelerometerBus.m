names = {'Accelerometer_Status', 'Accelerometer_X', 'Accelerometer_Y', 'Accelerometer_Z'};
dimensions = [1, 1, 1, 1];
datatypes = {'boolean', 'single', 'single', 'single'};
busManager.addBusElement(names, dimensions, datatypes);
busManager.createBus('AccelerometerBusObject');

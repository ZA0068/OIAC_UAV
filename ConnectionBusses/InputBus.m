% Define input bus element names, dimensions, and datatypes (nested buses)
names = {'Attitude', 'RC', 'Gyro', 'Accelerometer', 'GPS'};
dimensions = [1, 1, 1, 1, 1];  % All have dimension 1
datatypes = {'Bus: AttitudeBusObject', 'Bus: RCBusObject', 'Bus: GyroBusObject', 'Bus: AccelerometerBusObject', 'Bus: GPSBusObject'};

% Add the bus elements to the BusManager
busManager.addBusElement(names, dimensions, datatypes);

% Create and assign the InputBus to the base workspace
busManager.createBus('InputBusObject');
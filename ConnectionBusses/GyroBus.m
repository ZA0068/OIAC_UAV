% Define gyro bus element names, dimensions, and datatypes
names = {'Gyro_status', 'Gyro_X', 'Gyro_Y', 'Gyro_Z'};
dimensions = [1, 1, 1, 1];
datatypes = {'boolean', 'single', 'single', 'single'};

% Add the bus elements to the BusManager
busManager.addBusElement(names, dimensions, datatypes);

% Create and assign the GyroBus to the base workspace
busManager.createBus('GyroBusObject');

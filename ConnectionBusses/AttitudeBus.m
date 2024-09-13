% Define Attitude bus element names, dimensions, and datatypes
names = {'Attitude_Status', 'Attitude_Quaternions'};
dimensions = [1, 4];  % Attitude_Quaternions has 4 dimensions
datatypes = {'boolean', 'single'};

% Add the bus elements to the BusManager
busManager.addBusElement(names, dimensions, datatypes);

% Create and assign the AttitudeBus to the base workspace
busManager.createBus('AttitudeBusObject');

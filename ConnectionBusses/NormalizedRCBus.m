% Define input bus element names, dimensions, and datatypes (nested buses)
names = {'Throttle', 'Roll', 'Pitch', 'Yaw'};
dimensions = [1, 1, 1, 1];  % All have dimension 1
datatypes = {'double', 'double', 'double', 'double'};

% Add the bus elements to the BusManager
busManager.addBusElement(names, dimensions, datatypes);

% Create and assign the InputBus to the base workspace
busManager.createBus('NormalizedRCBus');
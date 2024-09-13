% Define RC bus element names, dimensions, and datatypes
names = {'RC_Status', 'Throttle', 'Desired_Roll', 'Desired_Pitch', 'Desired_Yaw', 'RC_Arming'};
dimensions = [1, 1, 1, 1, 1, 1];
datatypes = {'uint8', 'uint16', 'uint16', 'uint16', 'uint16', 'uint16'};

% Add the bus elements to the BusManager
busManager.addBusElement(names, dimensions, datatypes);

% Create and assign the RCBus to the base workspace
busManager.createBus('RCBusObject');
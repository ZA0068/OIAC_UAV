% Define input bus element names, dimensions, and datatypes (nested buses)
names = {'Arm', 'Failsafe', 'MotorSpeeds'};
dimensions = [1, 1, 4];  % All have dimension 1
datatypes = {'boolean', 'boolean', 'uint16'};

% Add the bus elements to the BusManager
busManager.addBusElement(names, dimensions, datatypes);

% Create and assign the InputBus to the base workspace
busManager.createBus('OutputBusObject');
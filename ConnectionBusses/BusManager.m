classdef BusManager < handle
    properties
        BusElements = Simulink.BusElement.empty;  % Initialize as an empty BusElement array
        lastIndex = 0;  % Track the last index for appending elements
    end

    methods
        % Method to add bus elements
        function addBusElement(obj, names, dimensions, datatypes)
            if length(names) ~= length(dimensions) || length(dimensions) ~= length(datatypes)
                error('Names, dimensions, and datatypes must have the same length');
            end
            for i = 1:length(names)
                obj.insertBusElement(names{i}, dimensions(i), datatypes{i});
            end
        end

        % Method to create and assign bus object to base workspace
        function createBus(obj, bus_name)
            if isempty(obj.BusElements)
                error("Bus element is empty! Add bus elements with 'addBusElement()' function.")
            end
            obj.assignBusObject(bus_name);
            obj.resetValues();
        end
    end
    
    methods(Access = private)
        % Private method to insert a bus element
        function insertBusElement(obj, name, dimension, datatype)
            element = obj.createElement(name, dimension, datatype);
            obj.appendElement(element);
        end

        % Private method to create a bus element
        function element = createElement(~, name, dimension, datatype)
            element = Simulink.BusElement;
            element.Name = name;
            element.Dimensions = dimension;
            element.DataType = datatype;
        end

        % Private method to append an element to the bus
        function appendElement(obj, element)
            obj.BusElements(obj.lastIndex + 1) = element;
            obj.lastIndex = obj.lastIndex + 1;
        end

        % Private method to reset values after bus creation
        function resetValues(obj)
            obj.BusElements = Simulink.BusElement.empty;
            obj.lastIndex = 0;
        end

        % Private method to assign the bus object to the base workspace
        function assignBusObject(obj, bus_name)
            BusObject = Simulink.Bus;
            BusObject.Elements = obj.BusElements;
            assignin('base', bus_name, BusObject);
        end
    end
end
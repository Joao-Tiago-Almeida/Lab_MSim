function c = set_controller(question)
    % Declares controller struct
    
    % default: state-space model
    if nargin == 0
        question = 6;
    end
    
    c = struct('name', 'Controlador');
    
    c.samptime = 1e-2;  % sampling time
    c.schematic = question; % switch input based on system schematic
    
end
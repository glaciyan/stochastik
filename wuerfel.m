classdef wuerfel < zufallvar
    %WUERFEL Summary of this class goes here
    %   Detailed explanation goes here
    
    methods
        function wObj = wuerfel(sides)
            vals = unique(sides);
            probs = hist(sides, length(vals));
            wObj@zufallvar(array2table([vals;probs./length(sides)]));
        end
    end
end


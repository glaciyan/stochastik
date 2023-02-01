classdef zufallvar
    %ZUFALLVAR Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        table
    end
    
    methods
        function obj = zufallvar(Var)
            %ZUFALLVAR Construct an instance of this class
            %   Detailed explanation goes here
            if ~istable(Var)
                Var = array2table(Var);
            end

            obj.table = Var;
        end

        function res = kummu(obj)
            res(1) = 0;
            for i = 1:width(obj.table)
                res(i + 1) = res(i) + obj.table{2, i};
            end
        end

        function res = erwartungsWert(obj)
            res = sum(obj.table{1, :}.*obj.table{2, :});
        end

        % Varianz
        function res = var(obj)
            res = sum(obj.table{1, :}.^2.*obj.table{2, :}) - obj.erwartungsWert()^2;
        end

        % Standardabweichung
        function res = std(obj)
            res = sqrt(obj.var());
        end

        function plotVerteilung(obj)
            bar(obj.table{2, :})
            ylim([0 1])
        end

        function plotVerteilungsfunktion(obj)
            v = obj.kummu();
            stairs(0:length(v), [v 1])
            axis padded
        end
    end
end


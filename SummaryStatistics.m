classdef SummaryStatistics
    %SUMMARYSTATISTICS Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        data
        Modalwert
        Mittelwert
        Median
        Standardabweichung
        Varianz
        Interquartilsabstand
        Spannweite
        Quartile
        Dezile
    end
    
    methods
        function obj = SummaryStatistics(data)
            obj.data = sort(data);
            obj.Modalwert = modalwert(data);
            obj.Mittelwert = mean(data);
            obj.Median = median(data);
            obj.Standardabweichung = std(data);
            obj.Varianz = var(data);
            obj.Interquartilsabstand = quantile(data, .75) - quantile(data, .25);
            obj.Spannweite = max(data)-min(data);
            obj.Quartile = quantile(data, [.25 .5 .75]);
            obj.Dezile = quantile(data, 0.1:0.1:0.9);
        end
        
        function y = quantile(obj, p)
            y = quantile(obj.data, p);
        end
    end
end


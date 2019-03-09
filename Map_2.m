clear all
clear

[~,~,pop_data] = xlsread('population_density_by_area_2.xlsx');
pop_data_table = cell2table(pop_data(2:end,:));
pop_data_table.Properties.VariableNames = ["area_code", "all_ages"];

% LSOA_Boundaries = shaperead('LLSOA_2001_Boundaries.shp','UseGeoCoords', true);
LSOA_Boundaries_table = struct2table(LSOA_Boundaries);

%for n=1:34378
%    fill(LSOA_Boundaries(n).Lon,LSOA_Boundaries(n).Lat,'r');
%    hold on
%end
%hold off

% LSOA_Boundaries = shaperead('LAD_Pop_EngWales2011.shp', 'UseGeoCoords', true);
% figure
% % worldmap(latlim,lonlim);
% geoshow(LSOA_Boundaries);
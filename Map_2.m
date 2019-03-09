clear all
clear

[~,~,pop_data] = xlsread('population_density_by_area_2.xlsx');
LSOA_Boundaries = shaperead('LLSOA_2001_Boundaries.shp','UseGeoCoords', true);


for n=1:34378
    fill(LSOA_Boundaries(n).Lon,LSOA_Boundaries(n).Lat,'r');
    hold on
end
hold off

% LSOA_Boundaries = shaperead('LAD_Pop_EngWales2011.shp', 'UseGeoCoords', true);
% figure
% % worldmap(latlim,lonlim);
% geoshow(LSOA_Boundaries);
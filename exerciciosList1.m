
% Q3
rx =  [1 0 0 0; 0 cosd(45) -sind(45) 0; 0 sind(45) cosd(45) 0; 0 0 0 1];
ry = [cosd(60) 0 sind(60) 0; 0 1 0 0; -sind(60) 0 cosd(60) 0; 0 0 0 1];
display(ry*rx);


%Q4
p0 = [1; 1; 2; 1];
result = ry*rx*p0;
display(result);

%Q5
p0 = [1; 1; 2; 1];
result5 = rx*ry*p0;
display(result5);

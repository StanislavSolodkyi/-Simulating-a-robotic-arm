clc 
clear  
close all 

x1 = 1; 
y1 = 1; 
z1 = 1; 
l1 = 300; 
l2 = 300; 
l3 = 200; 
phi1 =30; 
phi2 =60; 
phi3 =45; 
quiver3(x1,y1,z1,100,0,0,'r','LineWidth',1);   
quiver3(x1,y1,z1,0,100,0,'g','LineWidth',1); 
quiver3(x1,y1,z1,0,0,100,'b','LineWidth',1); 
v0 = [x1, y1, z1, 1]; 
A = Rz(phi1) * Tz(l1) * v0'; 
A = A' ; 
plot3([v0(1), A(1)], [v0(2), A(2)], [v0(3), A(3)], 'LineWidth', 2, 'Color', 'b'); 
hold on; 
plot3(v0(1), v0(2), v0(3), 'ro', 'MarkerSize', 6, 'MarkerFaceColor', 'r');  
plot3(A(1), A(2), A(3), 'ro', 'MarkerSize', 6, 'MarkerFaceColor', 'r');  
quiver3(A(1),A(2),A(3),100,0,0,'r','LineWidth',1);   
quiver3(A(1),A(2),A(3),0,100,0,'g','LineWidth',1); 
quiver3(A(1),A(2),A(3),0,0,100,'b','LineWidth',1); 
B = Rz(phi1) * Tz(l1) * Ry(phi2) *Tz(l2) * v0' 
B = B'  
plot3([A(1), B(1)], [A(2), B(2)], [A(3), B(3)], 'LineWidth', 2, 'Color', 'b'); 
plot3(B(1), B(2), B(3), 'ro', 'MarkerSize', 6, 'MarkerFaceColor', 'r');  
quiver3(B(1),B(2),B(3),100,0,0,'r','LineWidth',1);   
quiver3(B(1),B(2),B(3),0,100,0,'g','LineWidth',1); 
quiver3(B(1),B(2),B(3),0,0,100,'b','LineWidth',1); 
C = Rz(phi1) * Tz(l1) * Ry(phi2) *Tz(l2)* Ry(phi3) *Tz(l3) * v0' 
C = C'; 
plot3([B(1), C(1)], [B(2), C(2)], [B(3), C(3)], 'LineWidth', 2, 'Color', 'b'); 
plot3(C(1), C(2), C(3), 'ro', 'MarkerSize', 6, 'MarkerFaceColor', 'r'); 
quiver3(C(1),C(2),C(3),100,0,0,'r','LineWidth',1);   
quiver3(C(1),C(2),C(3),0,100,0,'g','LineWidth',1); 
quiver3(C(1),C(2),C(3),0,0,100,'b','LineWidth',1); 
axis equal; 
axis([-600 600 -600 600 0 600]); 
grid on; 
xlabel('X'); 

ylabel('Y'); 
zlabel('Z'); 
function Rotatex = Rx(phi) 
Rotatex = [1 0 0 0; 0 cosd(phi) -sind(phi) 0; 0 sind(phi) cosd(phi) 0; 0 0 0 1]; 
end 
function Rotatey = Ry(phi) 
Rotatey = [cosd(phi) 0 sind(phi) 0; 0 1 0 0; -sind(phi) 0 cosd(phi) 0; 0 0 0 1];  
end 
function Rotatez = Rz(phi1) 
Rotatez = [cosd(phi1) -sind(phi1) 0 0; sind(phi1) cosd(phi1) 0 0; 0 0 1 0; 0 0 0 1]; 
end 
function Translatex = Tx(l) 
Translatex = [1 0 0 l; 0 1 0 0; 0 0 1 0; 0 0 0 1]; 
end 
function Translatey = Ty(l) 
Translatey = [1 0 0 0; 0 1 0 l; 0 0 1 0; 0 0 0 1]; 
end 
function Translatez = Tz(l) 
Translatez = [1 0 0 0; 0 1 0 0; 0 0 1 l; 0 0 0 1]; 
end 

for phi2= -50:2:130 
  for phi3= -30:2:60   
C = Rz(0) * Tz(l1) * Ry(phi2) *Tz(l2)* Ry(phi3) *Tz(l3) * v0' 
C = C' 
plot3(C(1), C(2), C(3), '-o', 'Color', 'r', 'MarkerSize', 5, 'MarkerFaceColor', 'r'); 
  end 
end 
axis equal;  
axis([-900 900 -900 900 -900 900]);  
grid on;  
xlabel('X');  
ylabel('Y');  
zlabel('Z'); 

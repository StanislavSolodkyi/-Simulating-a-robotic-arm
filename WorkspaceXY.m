for phi1= -160:2:160 
  for phi2= -50:10:130 
    for phi3= -30:10:60          
    C = Rz(phi1) * Tz(l1) * Ry(phi2) *Tz(l2)* Ry(phi3) *Tz(l3) * v0' 
    C = C' 
    plot3(C(1), C(2), 0, '-o', 'Color', 'r', 'MarkerSize', 5, 'MarkerFaceColor', 'r'); 
 
    end 
  end 
end 
xlabel('X');  
ylabel('Y');  
zlabel('Z'); 

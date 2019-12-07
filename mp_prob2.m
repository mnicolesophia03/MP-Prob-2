function mp_prob2(x1, x2, x3, y1, y2, y3)
    
    X1 = x1^2 + y1^2;
    X2 = x2^2 + y2^2;
    X3 = x3^2 + y3^2;
    
    C = [x1,y1,1;x2,y2,1;x3,y3,1];
    D = [X1,y1,1;X2,y2,1;X3,y3,1];
    E = [X1,x1,1;X2,x2,1;X3,x3,1];
    F = [X1,x1,y1;X2,x2,y2;X3,x3,y3];
        
    h = -((-round(det(D)))) / (2*(round(det(C))));
    k = -((round(det(E)))) / (2*(round(det(C))));
    
    D_val = (-round(det(D))) / (round(det(C)));
    E_val = (round(det(E))) / (round(det(C)));
    F_val = (-round(det(F))) / (round(det(C)));
    
    r = sqrt((h - x1)^2 + (k - y1)^2);
    
    fprintf('Center: (%.2f , %.2f)\n',h,k);
    fprintf('Radius: r = %.2f units\n',r);
    fprintf('Vector: [ %.0f , %.0f , %.0f ]\n',D_val,E_val,F_val);
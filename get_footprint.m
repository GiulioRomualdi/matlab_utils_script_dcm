lf_x = [ ];
lf_y = [ ];
lf_yaw = [];

rf_x = [ ];
rf_y = [ ];
rf_yaw = [ ];


leftzero = 1;
rightzero = 1;


for i = 1:length(rf_des_z)

    if(leftzero ~= 0)
        if(lf_des_z(i) == 0)
            lf_x = [lf_x, lf_des_x(i)];
            lf_y = [lf_y, lf_des_y(i)];
            lf_yaw = [lf_yaw, lf_des_yaw(i)];
            
            leftzero = 0;
        end
    else
        if(lf_des_z(i) ~= 0)
            leftzero = 1;
        end
    end
    
    if(rightzero ~= 0)
        if(rf_des_z(i) == 0)
            rf_x = [rf_x, rf_des_x(i)];
            rf_y = [rf_y, rf_des_y(i)];
            rf_yaw = [rf_yaw, rf_des_yaw(i)];
            
            rightzero = 0;
        end
    else
        if(rf_des_z(i) ~= 0)
            rightzero = 1;
        end
    end
    
end
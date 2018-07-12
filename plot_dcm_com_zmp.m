t_min = 0;
t_max = inf;

plot_data(time, dcm_des_x, dcm_des_y, dcm_x, dcm_y, [t_min t_max], 'DCM', 'DCM');
plot_data(time, zmp_des_x, zmp_des_y, zmp_x, zmp_y, [t_min t_max], 'ZMP', 'ZMP');
plot_data(time, com_des_x, com_des_y, com_x, com_y, [t_min t_max], 'CoM', 'CoM');
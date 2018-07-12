function plot_3d_angular(time, des_r, des_p, des_y, r, p, y, time_interval, Title)


error = generate_error(des_r, des_p, des_y, r, p, y);

figure;
subplot(2,2,1)
plot(time, 180/pi*des_r, time, 180/pi*r);
xlim(time_interval);
plot_aesthetic([Title ' - roll'], 'Time (s)', 'Angle (deg)','', 'Desired', 'Measured');

subplot(2,2,2)
plot(time, 180/pi*des_p, time, 180/pi*p);
xlim(time_interval);
plot_aesthetic([Title ' - pitch'], 'Time (s)', 'Angle (deg)' ,'', 'Desired', 'Measured');

subplot(2,2,3)
plot(time, 180/pi*des_y, time, 180/pi*y);
xlim(time_interval);
plot_aesthetic([Title ' - yaw'], 'Time (s)', 'Angle (deg)' ,'', 'Desired', 'Measured');


subplot(2,2,4)
plot(time, 180/pi*error);
xlim(time_interval);
plot_aesthetic([Title, ' - Error'], 'Time (s)', ...
    ['$|$','skew','$(R R_d ^\top)^{\vee}|$ (deg)'], '');
end
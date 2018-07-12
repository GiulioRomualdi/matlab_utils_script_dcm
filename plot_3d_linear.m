function plot_3d_linear(time, des_x, des_y, des_z, x, y, z, time_interval, Title)

figure;
subplot(2,2,1)
plot(time, des_x, time, x);
xlim(time_interval);
plot_aesthetic([Title ' - x axis'], 'Time (s)', 'Position (m)','', 'Desired', 'Measured');

subplot(2,2,2)
plot(time, des_y, time, y);
xlim(time_interval);
plot_aesthetic([Title ' - y axis'], 'Time (s)', 'Position (m)' ,'', 'Desired', 'Measured');

subplot(2,2,3)
plot(time, des_z, time, z);
xlim(time_interval);
plot_aesthetic([Title ' - z axis'], 'Time (s)', 'Position (m)' ,'', 'Desired', 'Measured');


subplot(2,2,4)
plot(time, des_x - x, time, des_y - y, time, des_z - z);
xlim(time_interval);
plot_aesthetic([Title ' - Errors'], 'Time (s)', 'Position (m)' ,'', 'x', 'y', 'z');
end
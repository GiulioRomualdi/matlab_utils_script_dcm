function plot_data(time, des_x, des_y, x, y, time_interval, Title, Symbol)
figure;

subplot(2,2,1);
plot(time, x, time, des_x);
xlim(time_interval);
plot_aesthetic([Title, ' x axis'], 'Time (s)', 'Position (m)', ' ',...
    'Measured', 'Desired');

subplot(2,2,2);
plot(time, des_x - x);
xlim(time_interval);
plot_aesthetic([Title, ' x axis - Error'], 'Time (s)', 'Position (m)',' ');

subplot(2,2,3);
plot(time, y, time, des_y);
xlim(time_interval);
plot_aesthetic([Title, ' y axis'], 'Time (s)', 'Position (m)', ' ',...
    'Measured', 'Desired');

subplot(2,2,4);
plot(time, des_y - y);
xlim(time_interval);
plot_aesthetic([Title, ' y axis - Error'], 'Time (s)', 'Position (m)', ' ');
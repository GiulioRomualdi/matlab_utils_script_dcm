figure;
subplot(1,2,1)


plot(time(74:1823)-time(74), zmp_des_x(74:1823), time(74:1823)-time(74), zmp_des_x1(1:1750));

plot_aesthetic('ZMP x axis','Time (s)', 'Position (m)','', 'Instantaneous', 'MPC')
xlim([0 inf])

subplot(1,2,2)
plot(time(74:1823)-time(74), zmp_des_y(74:1823), time(74:1823)-time(74), zmp_des_y1(1:1750));
plot_aesthetic('ZMP y axis','Time (s)', 'Position (m)', '','Instantaneous', 'MPC')
xlim([0 inf])

% subplot(2,2,3)
% 
% 
% plot(time(74:1823)-time(74), zmp_des_x(74:1823), time(74:1823)-time(74), zmp_des_x1(1:1750));
% 
% plot_aesthetic('ZMP x axis','Time (s)', 'Position (m)','', 'Instantantaneous', 'MPC')
% xlim([0 inf])
% 
% subplot(2,2,4)
% plot(time(74:1823)-time(74), zmp_des_y(74:1823), time(74:1823)-time(74), zmp_des_y1(1:1750));
% plot_aesthetic('ZMP y axis','Time (s)', 'Position (m)', '','Instantantaneous', 'MPC')
% xlim([0 inf])
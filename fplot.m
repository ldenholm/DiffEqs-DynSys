lambda1 = -5;
lambda2 = -1;
lambda3 = 0;
lambda4 = 0.01;
lambda5 = 0.1;


% We can use the ode45 function w/ signature (odefun, tspan, x0)
% to solve our ODE. dx/dt = e^(lambda*t), with x(0) = 2
% The expression looks like:
% [t, x] = ode45(odefun, tspan, x0)

% we will use a vector to store the time boundary
% time = [t_min t_max]
time = [0 5];
% store initial condition
x0 = 2

% [t, y] are output vars
[t1, x1] = ode45(@(t1, x1)myode(t1, x1, lambda1),time, x0);
[t2, x2] = ode45(@(t2, x2)myode(t2, x2, lambda2),time, x0);
[t3, x3] = ode45(@(t3, x3)myode(t3, x3, lambda3),time, x0);
[t4, x4] = ode45(@(t4, x4)myode(t4, x4, lambda4),time, x0);
[t5, x5] = ode45(@(t5, x5)myode(t5, x5, lambda5),time, x0);

% plot
plot(t1, x1, 'b', 'LineWidth', 1, t2, x2,'r', t3, x3, 'k', t4, x4, 'g', t5, x5, 'c');
set(gca, 'linewidth', 1, 'fontsize', '16');
xlabel('>> doc xlabel');
ylabel('>> doc ylabel');
grid on


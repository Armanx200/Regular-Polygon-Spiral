% Config
NUM_SIDES = 4;
PLOT_SIZE = 10;
HOW_MANY_TIMES = 20;
color = ['black', '-'];
%COLOR = {'r','g','b','y'};


% loading...
n = PLOT_SIZE/4;
direction = {'l','r','d','l'};  % ltr rtl dtb ltr
fig_center = {[n,n], [-n,n], [n,-n], [-n,-n]};
angle_dist = HOW_MANY_TIMES/6;
n = PLOT_SIZE / 2;
x_bordar = [n, -n, -n, 0, 0, n, n, -n, -n, 0];
y_bordar = [0, 0, n, n, -n, -n, n, n, -n, -n];

% rgb if you want
%left_color = [1 1 1]; % white
%right_color = [0 0.25 0.5]; % color according to the attached image
%gradient = [left_color; right_color]


% Plot
figure;
hold on;
plot(x_bordar, y_bordar, 'black', 'LineWidth', 2);
for i=1:4
Polygon(NUM_SIDES, fig_center{i}, PLOT_SIZE/3, HOW_MANY_TIMES, angle_dist, color, direction{i});
end

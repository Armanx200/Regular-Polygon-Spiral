🎨 Animated Polygon Generator 🌀

This MATLAB script generates animated polygon drawings with customizable parameters such as the number of sides, figure center, radius, iteration count, angle distribution, color, and direction. It utilizes the GNU General Public License for distribution and modification. ✨


<p align="center">
  <img src="https://github.com/Armanx200/Regular-Polygon-Spiral/blob/main/pic.png?raw=true" alt="Polygon">
</p>

### Features:
- Generate animated polygon drawings with varying properties. 🖼️
- Customizable parameters for number of sides, figure center, radius, iteration count, angle distribution, color, and direction. 🛠️
- Utilizes MATLAB's plotting capabilities for dynamic visualizations. 🌈

### Usage:
1️⃣ Define parameters like number of sides, figure center, radius, etc.
2️⃣ Call the `Polygon` function with desired parameters to generate animated polygons.
3️⃣ Customize colors, direction, and other visual aspects for diverse animations. 🎥

<p align="center">
  <img src="https://github.com/Armanx200/Regular-Polygon-Spiral/blob/main/pic2.jpg?raw=true" alt="Polygon" width="500" height="400">
</p>

### Example:
```matlab
NUM_SIDES = 4;
PLOT_SIZE = 10;
HOW_MANY_TIMES = 10;
color = 'k'; % Default color is black
direction = {'l','r','d','l'};  % ltr rtl dtb ltr
fig_center = {[n,n], [-n,n], [n,-n], [-n,-n]};
angle_dist = HOW_MANY_TIMES/6;

% Plot
figure;
hold on;
plot(x_bordar, y_bordar, 'black', 'LineWidth', 2);
for i=1:4
    Polygon(NUM_SIDES, fig_center{i}, PLOT_SIZE/3, HOW_MANY_TIMES, angle_dist, color, direction{i});
end

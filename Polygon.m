## Copyright (C) 2024 Arman
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} Polygon (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Arman <Arman@DESKTOP-TK7L5JA>
## Created: 2024-04-24

function Polygon(num_sides, fig_center, radius, num_iter, angle_dist, color, dir)
    % Default input values
    if nargin < 1
        num_sides = 4;
    end
    if nargin < 2
        fig_center = [0.0, 0.0];
    end
    if nargin < 3
        radius = 1;
    end
    if nargin < 4
        num_iter = 12;
    end
    if nargin < 5
        angle_dist = 2;
    end
    if nargin < 6
        color = 'k'; % Default color is black
    end
    if nargin < 7
        dir = 'l'; % Default direction option is ltr
    end

    delta_angle = (angle_dist * 180.0 / num_sides) / num_iter;
    acc_angle = 0.0;
    acc_radius = radius;
    step_angle = 360.0 / num_sides;

    % Create figure


    axis equal;

    % Animation loop
    for j = 1:num_iter
        % Draw polygon
        for i = 1:num_sides
            angle = i * step_angle - (step_angle / 2.0) - acc_angle;
            x = fig_center(1) + acc_radius * cos(deg2rad(angle));
            y = fig_center(2) + acc_radius * sin(deg2rad(angle));

            if i > 1
                if dir=='r'
                    plot([-x - 1.5*radius, -last_x- 1.5*radius], [y, last_y], color, 'LineWidth', 2);
                elseif dir=='d'
                    plot([x, last_x], [-y- 1.5*radius, -last_y- 1.5*radius], color, 'LineWidth', 2);
                else
                    plot([x, last_x], [y, last_y], color, 'LineWidth', 2);
                end
            end

            if i == num_sides
                if dir=='r'
                    plot([-x- 1.5*radius, -first_x- 1.5*radius], [y, first_y], color, 'LineWidth', 2);
                elseif dir=='d'
                    plot([x, first_x], [-y- 1.5*radius, -first_y- 1.5*radius], color, 'LineWidth', 2);
                else
                    plot([x, first_x], [y, first_y], color, 'LineWidth', 2);
                end
            end

            last_x = x;
            last_y = y;

            if i == 1
                first_x = x;
                first_y = y;
            end
        end

        % Reverse calculations for smaller squares
        delta_radius = acc_radius * 0.1; % Decrease by 10%
        acc_radius = acc_radius - delta_radius; % Shrink the radius

        acc_angle = acc_angle + delta_angle;

        % pause(0.1); % Pause for animation
    end
end


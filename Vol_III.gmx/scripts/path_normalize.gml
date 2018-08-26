var path, size, xx, yy, xx_prev, yy_prev, dir, dir_prev, xs1, ys1, xs2, ys2, i, j;
path = argument0;
size = path_get_number(path);
dir = '';

for (i = 0; i < size; i += 1)
{
    xx = path_get_point_x(path, i);
    yy = path_get_point_y(path, i);
    if i > 0
    {
        if xx > xx_prev
            dir = 'right';
        if xx < xx_prev
            dir = 'left';
        if yy > yy_prev
            dir = 'down';
        if yy < yy_prev
            dir = 'up';
    }
    if i > 1
    {
        if dir_prev != dir and dir_prev != ''
        {
            xs1 = 0;
            ys1 = 0;
            xs2 = 0;
            ys2 = 0;
            
            switch dir_prev
            {
                case 'right': xs1 = -cell_width; break;
                case 'left': xs1 = cell_width; break;
                case 'down': ys1 = -cell_height; break;
                case 'up': ys1 = cell_height; break;
            }
            switch dir
            {
                case 'right': xs2 = -cell_width; break;
                case 'left': xs2 = cell_width; break;
                case 'down': ys2 = -cell_height; break;
                case 'up': ys2 = cell_height; break;
            }
            
            j = 1;            
            while (true)
            {
                xx += xs1;
                yy += ys1;
                if (position_empty(xx, yy) and
                    path_get_point_x(path, i - 1 - j) == xx + xs2 and
                    path_get_point_y(path, i - 1 - j) == yy + ys2)
                {
                    path_change_point(path, i - j, xx, yy, path_get_speed(path, i - j));
                }
                else
                {
                    if j > 1
                        i = i - j + 1;
                    else
                        i = i - j;
                    break;
                }
                j += 1;
            }
            
            xx = path_get_point_x(path, i);
            yy = path_get_point_y(path, i);

            dir = '';
        }
    }
    xx_prev = xx;
    yy_prev = yy;
    dir_prev = dir;
}

return path;
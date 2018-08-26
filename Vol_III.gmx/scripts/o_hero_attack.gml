attacker = argument0
prey = argument1

if attacker.movement_points > 0 && abs(attacker.grid_x - prey.grid_x) <= 1 && abs(attacker.grid_y - prey.grid_y) <= 1
{
    attacker.movement_points -= 1;
    prey.hp -= 10;
}
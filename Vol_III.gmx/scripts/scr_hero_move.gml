/***************************************************
  ���������� ������ ������������ �����.
  argument 0 - x ����;
  argument 1 - y ����.
 ***************************************************/
var xshift, yshift;
xshift = argument0 - x;
yshift = argument1 - y;

if abs(xshift) > spd
{
    x += sign(xshift) * spd;
}
else
{
    x += xshift;
}
    
if abs(yshift) > spd
{
    y += sign(yshift) * spd;
}
else
{
    y += yshift;
}
/***************************************************
  ������ ������ ����� � �����.
  ��������� ��� � � ������� draw_text.
 ***************************************************/
var color, alpha;
color = draw_get_color();
alpha = draw_get_alpha();

draw_set_alpha(0.2 * alpha);
draw_set_color(c_black);
draw_text(argument0 + 1, argument1 + 1, argument2);

draw_set_alpha(alpha);
draw_set_color(color);
draw_text(argument0, argument1, argument2);
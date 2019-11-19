shader_type canvas_item;

uniform vec3 color = vec3(1., 1., 1.);

void fragment()
{
	COLOR = vec4(color, 1.);
}
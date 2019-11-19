shader_type canvas_item;

void fragment()
{
	vec2 coord = UV * 1.;
	vec3 color = vec3(1., 0., 0.);
	
	if(coord.x < 0.02 || coord.x > 0.98)
	{
		color = vec3(0., 0., 0.);
	}
	
	if(coord.y < 0.05 || coord.y > 0.95)
	{
		color = vec3(0., 0., 0.);
	}
	
	COLOR = vec4(color, 1.);
}
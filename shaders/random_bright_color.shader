shader_type canvas_item;

uniform vec3 color;

void fragment()
{
	vec2 coord = UV * 1.;
	vec4 final_color = vec4(0., 0., 0., 1.);
	
	if(coord.x < 0.02 || coord.x > 0.98)
	{
		final_color += vec4(0., 0., 0., 1.);
	}
	
	if(coord.y < 0.05 || coord.y > 0.95)
	{
		final_color += vec4(0., 0., 0., 1.);
	}
	
	final_color -= vec4(0., 0., 0., 1.);
	
	COLOR = vec4(final_color);
}
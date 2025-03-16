#version 410

uniform vec3 u_colour;			// colour as a 3D vector (r,g,b)
uniform vec2 u_screenSize;  	// screen dimensions in pixels

layout(location = 0) out vec4 o_colour;	// output to colour buffer

void main() {
   vec2 p = gl_FragCoord.xy / u_screenSize;   // scale p into range (0,0) to (1,1)
   //float d = distance(p, vec2(0.25, 0.30));     // calculate distance to midpoint
   vec2 v = abs(p - vec2(0.25, 0.30));
   float d = v.x+v.y;                             //Is this bc diagonal distances look further?
  
   if (d < 0.12) {
      o_colour = vec4(u_colour, 1);
   }
   else {
      o_colour = vec4(0.46f, 0.24f, 0.34f, 1.0f); // BLACK >> Mauve Pink??
   }
}
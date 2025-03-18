#version 410

in vec4 a_position;	/* vertex position */
in vec3 a_colour;
out vec3 v_colour;   // RGB to the fragment shader

void main() {
    gl_Position = a_position;
    
    //Pass through here to fragement shader
    v_colour = a_colour;
}


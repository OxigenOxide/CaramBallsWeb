attribute vec4 a_color;
attribute vec3 a_position;
attribute vec2 a_texCoord0;
uniform mat4 u_projTrans;
uniform float angle;
uniform float intensity;
varying vec4 v_color;
varying float v_angle;
varying float v_intensity;
varying vec2 v_texCoord0;


void main(){
    v_angle=angle;
    v_color = a_color;
    v_intensity=intensity;
    v_texCoord0 = a_texCoord0;
    gl_Position = u_projTrans * vec4(a_position, 1.);
}
// v prefix is convention for varying variables, 
// it is used to pass variables between the vertex & fragment shader.
// In this case the position of the vertex
varying vec3 vPosition;

uniform float uTime;

void main() {
  vPosition = position; // position is a variable automatically set by ThreeJS

  vec3 pos = position;
  pos.x += uTime;

  vec4 mvPosition = modelViewMatrix * vec4( pos, 1.0 );
  gl_Position = projectionMatrix * mvPosition;
  gl_PointSize = 8.0 / -mvPosition.z;
}

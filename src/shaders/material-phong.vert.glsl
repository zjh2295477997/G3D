precision highp float;

attribute vec3 aPosition;
attribute vec3 aNormal;

uniform mat4 uPMatrix;
uniform mat4 uVMatrix;
uniform mat4 uMMatrix;

varying vec3 vPosition;
varying vec3 vNormal;

#ifdef PHONG_TEXTURE
attribute vec2 aUV;
varying vec2 vUV;
#endif

void main() {

    gl_Position = uPMatrix * uVMatrix * uMMatrix * vec4(aPosition, 1.0);

    vNormal = normalize((uMMatrix * vec4( aNormal, 0.0)).xyz);
    vPosition = (uMMatrix * vec4(aPosition, 1.0)).xyz;

    #ifdef PHONG_TEXTURE
    vUV = aUV;
    #endif
}

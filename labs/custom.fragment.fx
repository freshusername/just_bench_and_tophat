#ifdef GL_ES
    precision highp float;
    #endif

    varying vec2 vPosition;
    varying vec2 vUV;

    uniform sampler2D grass;
    uniform sampler2D dirt;

    void main(void) {
     vec3 color = mix(texture2D(dirt, vUV).xyz, texture2D(grass, vUV).xyz, 0.5);
     gl_FragColor = vec4(color, 1.0);
    }
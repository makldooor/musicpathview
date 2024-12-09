#version 440
layout(location = 0) in vec2 coord;
layout(location = 0) out vec4 fragColor;
layout(std140, binding = 0) uniform buf {
    mat4 qt_Matrix;
    float qt_Opacity;
    float framx;
    float framy;
    float bug;
};

layout(binding = 1) uniform sampler2D src;
void main() {
    vec4 tex = texture(src, coord);

    if (coord.x  > framx)
    {
        fragColor = vec4(0., 1., 0., 1);
    } else{
        fragColor = vec4(tex.rgb, 0.05 );


    }
}

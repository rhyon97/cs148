#version 330

out vec4 fragColor;
uniform float inputTime;

void main() 
{
    vec4 finalColor = vec4(1);

    finalColor.x = finalColor.x - sin(inputTime);
    finalColor.y = finalColor.y + 2*sin(inputTime);
    finalColor.z = finalColor.z + sin(inputTime);


    fragColor = finalColor;
}

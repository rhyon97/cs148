#version 330

layout(location = 0) in vec4 vertexPosition;
uniform float inputTime;

void main()
{
    vec4 modifiedVertexPosition = vertexPosition;

    //modifiedVertexPosition.x = modifiedVertexPosition.x * inputTime;

    if(sin(inputTime) > 0){
    	modifiedVertexPosition.y = modifiedVertexPosition.y - sin(inputTime);
    }
    else{
    	modifiedVertexPosition.y = modifiedVertexPosition.y + sin(inputTime);
    }

    gl_Position = modifiedVertexPosition;
}

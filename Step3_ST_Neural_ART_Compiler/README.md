# ST_Neural_ART_Compiler

</BR>1.Installing X-CUBE-AI
</BR><https://www.st.com/en/embedded-software/x-cube-ai.html>
</BR>It is recommended to install it along with STM32CubeMX.
</BR><https://www.st.com/en/development-tools/stm32cubemx.html>

</BR>2.Installing STEdgeAI-NPU
</BR><https://www.st.com/en/development-tools/stedgeai-core.html>

</BR>3.Modify the stedgeai_generate.bat File
</BR>ST_EdgeAI_PATH – Enter the installation path of X-CUBE-AI and STEdgeAI-NPU.
</BR>AI_Model_Name – Enter the name of the TFLite or ONNX NN model located in the current directory.
</BR>GCC_Tool_Objcopy – Enter the path to arm-none-eabi-objcopy.exe included in STM32CubeIDE.

</BR>4.Run the stedgeai_generate.bat File

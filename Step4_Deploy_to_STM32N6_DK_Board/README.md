# Deploy_to_STM32N6_DK_Board

</BR>Download the n6-ai-getstarted Code
</BR><https://www.st.com/en/development-tools/stm32n6-ai.html>

Getting started example codes:
</BR>Simple AI code examples and tutorials describing how to implement an AI application using STMicroelectronics' Neural-ART Accelerator
Optional link with the STM32 model zoo resources

</BR>en.n6-ai-getstarted-v1.0.0\application_code\object_detection\STM32N6

</BR># Replace network.c and "network_ecblobs.h" with the files in the current folder.
</BR>en.n6-ai-getstarted-v1.0.0\application_code\object_detection\STM32N6\Model\network.c
</BR>en.n6-ai-getstarted-v1.0.0\application_code\object_detection\STM32N6\Model\network_ecblobs.h


</BR># Write "network_data.hex" to 0x70380000 of the external Flash on the STM32N6-DK using STM32CubeProgrammer.
</BR># Add the code from "Code_to_add.txt" to the app_config.h file.

@echo off

set ST_EdgeAI_PATH="C:\Users\xxx_user_name_xxx\STM32Cube\Repository\Packs\STMicroelectronics\X-CUBE-AI\10.0.0\Utilities\windows"
::set ST_EdgeAI_NAME=stedgeai.exe
set ST_EdgeAI_NAME=stedgeai.exe
set AI_Model_Name="stm32n6_dk_yolov8n_wider_face_UF_256.tflite"
set JSON_Name="test@user_neuralart.json"
set GCC_Tool_Objcopy="C:\ST\STM32CubeIDE_1.18.0\STM32CubeIDE\plugins\com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.13.3.rel1.win32_1.0.0.202411081344\tools\bin\arm-none-eabi-objcopy.exe" 


if exist "%ST_EdgeAI_PATH%\%ST_EdgeAI_NAME%" (
	echo Step 1) 
	set FolderName=Output_%date:~5,2%_%date:~8,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%
	set FolderName=%FolderName: =0%
	set FolderName=%FolderName:/=-%
	set FullFolderPath=%CD%\%FolderName%

	mkdir "%FullFolderPath%"

	echo Folder created at: %FullFolderPath%

	echo Step 2) 
	echo "%ST_EdgeAI_PATH%\%ST_EdgeAI_NAME%" -m %AI_Model_Name% --target stm32n6 --st-neural-art %JSON_Name% --output %FullFolderPath%
	%ST_EdgeAI_PATH%\%ST_EdgeAI_NAME% -m %AI_Model_Name% --target stm32n6 --st-neural-art %JSON_Name% -o "%FullFolderPath%"  

	echo Step 3) .raw to .bin 
	for %%f in (%FolderName%\*.raw) do (
		echo %%f
		copy "%%f" "%FolderName%\%%~nf.bin"
	)

	echo %FullFolderPath%
	cd /d %FullFolderPath%
	%GCC_Tool_Objcopy% -I binary network_atonbuf.xSPI2.bin --change-addresses 0x70380000 -O ihex network_data.hex

	echo Complete 
	cmd /k
) else (
    echo %ST_EdgeAI_PATH%\%ST_EdgeAI_NAME% not found.
	cmd /k
)



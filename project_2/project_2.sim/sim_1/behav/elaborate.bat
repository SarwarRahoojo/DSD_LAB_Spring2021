@echo off
set xv_path=D:\\xinlnxx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto f7171d60405a4736aba1ae1574b817bb -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot uart_tx_test_behav xil_defaultlib.uart_tx_test xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0

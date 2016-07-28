find ./ -name "*.java" -or -name "*.c" -or -name "*.cpp" -or -name "*.h" -or -name "*.dts" -or -name "*.dtsi" -or -name "*.aidl" -or -name "*.cxx" -or -name "*.cc" >cscope.files
cscope -bqk -i ./cscope.files

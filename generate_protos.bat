@rem Generate the C# code for .proto files

setlocal

@rem enter this directory
cd /d %~dp0

set TOOLS_PATH=packages\Grpc.Tools.1.1.0\tools\windows_x86

%TOOLS_PATH%\protoc.exe -I./suresecure-protos --csharp_out suresecure-ivs-sdk  ./suresecure-protos/suresecureivs.proto --grpc_out suresecure-ivs-sdk --plugin=protoc-gen-grpc=%TOOLS_PATH%\grpc_csharp_plugin.exe

endlocal

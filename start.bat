@ECHO OFF
start overlay.exe &
cd .\serve\
start cmd /c .\server\node.exe .\main.js
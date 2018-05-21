@echo off

set TAGS=*
if .%1==. goto execute
set TAGS=%1
:execute
pybot --pythonpath libs/ --pythonpath ../common/libs/ -e ignore -e bugs -i %TAGS% -x xunit.xml %CD% 

echo on
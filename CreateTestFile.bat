@echo off

set strTime=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
set strTime=%strTime: =0%
set batPath=%~dp0
set fileNameBase=uptest

set fileNamePrev=%batPath%%fileNameBase%_*.txt
set fileName=%batPath%%fileNameBase%_%strTime%.txt
ren %fileNamePrev% %fileNameBase%_%strTime%.txt
echo %fileName% >> %fileName%

::pause
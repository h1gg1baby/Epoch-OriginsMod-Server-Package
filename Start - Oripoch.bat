@echo off
set arma2oapath=I:\SteamLibrary\steamapps\common\Arma 2 Operation Arrowhead
set arma2path=I:\SteamLibrary\steamapps\common\Arma 2
set IP=11.111.111.11
set PORT=2302
set MODS=@OriginsMod;@DayZ_Epoch;
start ""  "%arma2oapath%\ArmA2OA_BE.exe" 0 0 -skipintro -mod=%MODS% -noSplash -noFilePatching -world=empty -connect=%IP% -port=%PORT%
@exit

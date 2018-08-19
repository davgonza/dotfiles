@echo off
:: BatchGotAdmin (Run as Admin code starts)
REM --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
echo Requesting administrative privileges...
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
:: BatchGotAdmin (Run as Admin code ends)

REM Windows version
REM This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
REM 1. first rename dotfile (remove dot), and place inside "dotfiles" folder (the one you cloned)
REM 2. run this script
REM 3. symlinks created for all specified dotfiles
REM 4. IMPORTANT: this script doesnt do it, so you have to manually clean out "dotfiles_old" folder after every rerun


REM orig is where we started off... hopefully the dotfiles folder
set orig=%CD%

REM up one level should be our "HOME"
cd..
set THING=%CD%

REM change back to where we were originally, we got our home variable
cd %orig%

REM From there we can carry on 
set dir="%THING%\dotfiles"
set olddir="%THING%\dotfiles_old"
set files=bash_aliases bashrc gitignore bash_profile gitconfig vimrc

echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir %olddir%
echo "...done"

echo "Changing to the $dir directory"
cd %dir%
echo "...done"
set /p DUMMY=Hit ENTER to continue...

for %%i in (%files%) do (mv %THING%\.%%i %olddir% & mklink %THING%\.%%i %THING%\dotfiles\%%i)

set /p DUMMY=Hit ENTER to continue...




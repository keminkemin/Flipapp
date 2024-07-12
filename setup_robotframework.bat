@echo off
echo Setting up Robot Framework environment...

REM Step 1: Install Python (Assuming Python installer is in the same directory)
echo Installing Python...
start /wait python-3.12.3-amd64.exe /quiet InstallAllUsers=1 PrependPath=1

REM Step 2: Upgrade pip (Python Package Installer)
echo Upgrading pip...
python -m pip install --upgrade pip

REM Step 3: Install Robot Framework
echo Installing Robot Framework...
pip install robotframework

REM Step 4: Install libraries for mobile app testing
echo Installing Libraries...
pip install robotframework-appiumlibrary

REM Step 5: Install Appium Server (if not already installed)
echo Downloading Appium Server...
curl -O https://github.com/appium/appium-desktop/releases/download/v1.22.3-4/Appium-Server-GUI-windows-1.22.3-4.exe
start /wait Appium-Server-GUI-windows-1.22.3-4.exe /quiet

echo Installation complete!

REM Verify installations
echo Verifying installations...
python --version
pip --version
robot --version

echo Setup complete. You can now run your Robot Framework tests.

pause

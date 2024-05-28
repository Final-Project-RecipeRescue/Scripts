@echo off

REM Set up ngrok path and command
set NGROK_PATH=ngrok.exe
set NGROK_COMMAND=http --domain oyster-proven-swift.ngrok-free.app 8000

REM Echo the command to be executed
echo Starting ngrok with command: %NGROK_PATH% %NGROK_COMMAND%

REM Start ngrok in a new command prompt window
start cmd /k "%NGROK_PATH% %NGROK_COMMAND%"

REM Change directory to the project directory and activate virtual environment
cd "C:\Users\danie\Desktop\Projects\RecipeRescue"
call .\.venv\Scripts\activate

REM Start FastAPI server
uvicorn main:app --reload

REM Pause the script to keep the window open (optional)
REM pause

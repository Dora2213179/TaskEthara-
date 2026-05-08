@echo off
echo ==========================================
echo Starting NexTask Project Management App...
echo ==========================================

:: Start the Spring Boot Backend in a new window
echo Starting Backend (Java Spring Boot)...
start "NexTask Backend" cmd /k "cd backend && ..\apache-maven-3.9.6\bin\mvn.cmd spring-boot:run"

:: Wait for a few seconds to let backend initialize
timeout /t 5 /nobreak > nul

:: Start the React Frontend in a new window
echo Starting Frontend (React + Vite)...
start "NexTask Frontend" cmd /k "cd frontend && npm run dev"

echo.
echo Both servers are starting in separate windows!
echo - Backend will be available at: http://localhost:8081
echo - Frontend will be available at: http://localhost:5173
echo.
echo Please leave the black terminal windows open while you are using the app.
pause

#!/bin/bash
echo "Starting ManahSthiti Project..."
echo "Starting backend server..."
cd backend && npm start &
echo "Starting frontend server..."
cd frontend && npm run dev &
echo "Project is starting up! Check http://localhost:5173 for frontend"
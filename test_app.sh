#!/bin/bash

# Check if the application is running
echo "Running basic tests..."

# Test the root endpoint
curl -f http://localhost:5000/ || { echo "Root endpoint failed"; exit 1; }

# Test the health endpoint
curl -f http://localhost:5000/health || { echo "Health endpoint failed"; exit 1; }

echo "All tests passed successfully!"

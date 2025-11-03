#!/bin/bash

# Helper script to test the server
# Run this in a separate terminal while the server is running

echo "Connecting to server on localhost:3000..."
echo ""

# Send a test message
echo "Hello from client!" | nc localhost 3000

echo ""
echo "Message sent! Check the server terminal for output."

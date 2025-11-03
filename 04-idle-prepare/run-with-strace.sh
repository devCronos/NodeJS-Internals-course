#!/bin/bash

# Run the Node.js script with strace in a Linux Docker container
# This will trace system calls and save output to a file

echo "Starting Node.js server in Docker container with strace..."
echo "The server will run for 30 seconds on port 3000"
echo ""
echo "To test, open another terminal and run:"
echo "  telnet localhost 3000"
echo "  (then type something and press Enter)"
echo ""
echo "Or use netcat:"
echo "  echo 'Hello Server' | nc localhost 3000"
echo ""

docker run -it --rm \
  -v "$(pwd)":/workspace \
  -w /workspace \
  -p 3000:3000 \
  node:20-alpine \
  sh -c "apk add --no-cache strace && strace -f -t -o 04-idle-prepare/output.txt node 04-idle-prepare/040-idleprepare.js"

echo ""
echo "Script finished. Check 04-idle-prepare/output.txt for strace output"

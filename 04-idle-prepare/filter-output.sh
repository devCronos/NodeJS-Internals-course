#!/bin/bash

# Filter strace output to show only relevant system calls for Node.js event loop analysis
# Focuses on: network I/O, file I/O, epoll operations, and timer-related calls

INPUT_FILE="${1:-04-idle-prepare/output.txt}"
OUTPUT_FILE="${2:-04-idle-prepare/output-relevant.txt}"

echo "Filtering $INPUT_FILE -> $OUTPUT_FILE"
echo "Keeping only relevant system calls for Node.js event loop analysis..."
echo ""

# Filter for relevant system calls:
# - epoll_* : event loop polling mechanism
# - read/write/readv/writev : I/O operations
# - socket/bind/listen/accept/connect : network operations
# - send/recv/sendto/recvfrom : network data transfer
# - poll/select : alternative polling mechanisms
# - timer_* : timer operations
# - close : closing file descriptors
# - pipe* : inter-process communication
# - eventfd* : event notification
# - futex : fast user-space locking (thread synchronization)

grep -E '(epoll_|read\(|write\(|readv|writev|socket|bind|listen|accept|connect|send|recv|poll|select|timer_|close\(|pipe|eventfd|futex)' "$INPUT_FILE" > "$OUTPUT_FILE"

echo "Filtering complete!"
echo ""
echo "Summary of filtered calls:"
echo "=========================="
echo "epoll operations:"
grep -c 'epoll_' "$OUTPUT_FILE" || echo "0"
echo ""
echo "read/write operations:"
grep -cE '(read\(|write\(|readv|writev)' "$OUTPUT_FILE" || echo "0"
echo ""
echo "socket operations:"
grep -cE '(socket|bind|listen|accept|connect|send|recv)' "$OUTPUT_FILE" || echo "0"
echo ""
echo "Total relevant lines: $(wc -l < "$OUTPUT_FILE")"
echo ""
echo "View the filtered output:"
echo "  cat $OUTPUT_FILE"
echo "  or"
echo "  less $OUTPUT_FILE"

## Pending callbacks (Delayed callbacks - TCP errors)

- callbacks with low priority
- callbacks from TCP errors
- execution of callback happens on the next loop in this phase
- node exception: loopback (127.0.0.1) takes priority = no point in delaying

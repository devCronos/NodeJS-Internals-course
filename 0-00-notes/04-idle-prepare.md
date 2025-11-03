## Idle, prepare (internal for node)

- used by lib_uv
- is not exposed, internal to node

### Idle

- executes internal tasks every iteration

### Prepare

- used to initialize internal structures to prepare for io
  - epoll_ctl() add the connection to control to start listening

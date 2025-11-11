## Poll phase

2 things are happening

### I/O is being polled

- listen on socket
- read/write connections
- accept connections
- read/write files

### Callbacks are executed

- onRead
- onConnect
- onListen

#### Dinamic imports also happen here

### Blocking

- Node will block in poll phase
- only when there insn't anything going on (epoll_wait for connections)
- except when there are timers (epoll_wait without a timer)

### IO in Node

- asyncronous enabled by lib_uv
- network IO is implementod differently from file IO (depending on kernel)

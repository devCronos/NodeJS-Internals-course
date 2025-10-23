- Timers
- File I/O
- Network I/O

Event loop

- single threaded
- has phases that do something have queues of callbacks
- terminates when there is no callback left
- simplified

  - code execution
  - optionally register callback
  - execute callback that may register more callbacks
  - run until the queues are empty

- phases
  - execute code + redister cb
  - pick up first cb
  - repat

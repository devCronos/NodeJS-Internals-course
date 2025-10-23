## Timer phase

- done by libuv
- timer callbacks get scheduled, sorted by duration
- not accurate - can be slowed down
- implementation
  - ask OS to sleep on libuv thread for the smallest time scheduled
  - run main loop normally
  - OS wakes up and marks the timer as "ready"
  - main thread loop enters timer phase, picks up she ready callbacks and executes it
  - OS sleeps again for the smallest remaining timer

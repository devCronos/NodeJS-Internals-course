Node Architecture

Interpreted language

- machine code (binary instruction 32/64bit) is specific to CPU architecture = reduced RISC (like just add/substract) [arm] vs complex CISC (many complex specific) [intel]
- assembly is one level higher and sometimes instructions are CPU specific
- high level language [c] - abstraction int is like 4 byte mem location hides complexity => needs to be compiled >against a CPU architecture< to be understandable by the CPU. Link many files into an executable file. Compilers [gcc, clang, rustc]. Linker [Id, gold, lld, mold]
- interpreted languade = runtimes [node, python] are compiled programs that work on every OS/CPU. Runtime code runs and execution runs. Runtime translates js code into V8 Bytecode = intermediade level code
  Role of V8

- does interpretation
- has tricks:
  - JIT can compile js (cause it's expensive to interpret everytime) code to machine code directly and stores it directly into the heap and marks that memory as executable
  - Garbage Collection is part of runtime. Managed by runtime. Mem locations ledger
  - Efficient heap memory management - js can be dynamically typed
    - primitives in the stack
    - objects (and arrays) are in the heap. prop values/names are stored in separate arrays at corresponding indexes
  - Inline caching - caching offsets for expensive lookups ^. Cache uses hashing for easier find

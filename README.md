

// ===== what happens if importing conflicting packages ===== //


Directory Contents
==================

```shell
.
├── Makefile
├── README
├── TestConflict.java
├── class
├── tmp1
│   └── Steven.java
└── tmp2
    └── Steven.java
```


- `Makefile`: for ease of compiling and executing this example
- `TestConflict.java`: the main source code where conflict happens (when calling func() function)
- `tmp1/Steven.java`: the first package containing func()
- `tmp2/Steven.java`: the second package containing func()
- `class/`: originally empty directory for our java classes

Usage
=====

Compiling
---------

Simply use `$make compile` to compile our java codes.

Executing
---------

`$make run` will run our main code (`TestConflict.java`); however, there would be no conflicts, warnings, or errors if you're in `master` branch.

To product the conflict error, execute the following 3 commands:
```shell=
$ git checkout conflict
$ make clean
$ make compile
```
, there will be an error like this:
```shell
error: reference to Steven is ambiguous
both class tmp2.steven.Steven in tmp2.steven and class tmp1.steven.Steven in tmp1.steven match
```
; there you go!


Clean-up
--------

Simply use `$make clean` to remove all java classes.


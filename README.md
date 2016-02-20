# fsnotifier for OpenBSD and FreeBSD

The fsnotifier is used by IntelliJ for detecting file changes.  This 
version supports FreeBSD and OpenBSD via libinotify and is a 
replacement for the bundled Linux-only version coming with the 
IntelliJ IDEA Community Edition.

To compile run `make`. Copy `fsnotifier` somewhere.

Edit `bin/idea.properties` and add:
```
idea.filewatcher.executable.path=/path/to/your/fsnotifier
```

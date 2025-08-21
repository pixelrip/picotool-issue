# Picotool Issue

In this example the `Guy` module requires the logging utility. But unless the logging utility is ALSO required
in main.lua (this file) the build crashes.

To reproduce run:

```bash
$ ./scripts/build.sh
```





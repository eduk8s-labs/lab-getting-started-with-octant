If you need to access a container and interact with the processes running in it, the same as if running ``kubectl -it exec sh`` from the command line, select the **Terminal** tab.

This will result in the display of a terminal and terminal shell prompt will be shown.

![Pod Terminal](octant-pod-terminal.png)

Octant perhaps tries to be helpful by executing for you the ``whoami`` command so you can see what user you are running as in the container. This could though be some left over debug as it isn't actually that helpful and can be confusing.

At the prompt you can now enter commands and interact with any processes running inside of the container. When finished navigate away from the tab and the session will be closed.

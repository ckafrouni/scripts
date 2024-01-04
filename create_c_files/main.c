#include <stdio.h>
#include <stdlib.h>

#include "colors.h"

#define ASCIIMOJI COLORIZE(";)", BOLD BG_YELLOW)

int main(int argc, char *argv[])
{
    (void)argc;
    (void)argv;

    printf(ASCIIMOJI " " COLORIZE("Hello, world!" BOLD, UNDERLINE) " " ASCIIMOJI "\n");

    return EXIT_SUCCESS;
}

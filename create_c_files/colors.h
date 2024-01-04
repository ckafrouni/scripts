#ifndef __COLORS_H__
#define __COLORS_H__

// Foreground colors
#define BBLACK "\033[1;30m"
#define BRED "\033[1;31m"
#define BGREEN "\033[1;32m"
#define BYELLOW "\033[1;33m"
#define BBLUE "\033[1;34m"
#define BPURPLE "\033[1;35m"
#define BCYAN "\033[1;36m"
#define BWHITE "\033[1;37m"

#define BLACK "\033[30m"
#define RED "\033[31m"
#define GREEN "\033[32m"
#define YELLOW "\033[33m"
#define BLUE "\033[34m"
#define PURPLE "\033[35m"
#define CYAN "\033[36m"
#define WHITE "\033[37m"

// Background colors
#define BG_BLACK "\033[40m"
#define BG_RED "\033[41m"
#define BG_GREEN "\033[42m"
#define BG_YELLOW "\033[43m"
#define BG_BLUE "\033[44m"
#define BG_PURPLE "\033[45m"
#define BG_CYAN "\033[46m"
#define BG_WHITE "\033[47m"

// Styles
#define RESET "\033[0m"
#define BOLD "\033[1m"
#define UNDERLINE "\033[4m"

// COLORIZE variadic macro, takes a string, and a list of styles
#define COLORIZE(str, ...) __VA_ARGS__ str RESET

#endif // __COLORS_H__

#include <stdio.h>

static char input[2048];

int main(int argc, char **argv) {
  puts("Lispy. Control + C to exit.\n");

  while (1) {
    fputs("lispy> ", stdout);

    fgets(input, 2048, stdin);

    printf("No you are a %s", input);
  }

  return 0;
}

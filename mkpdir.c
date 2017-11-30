#include <stdlib.h>

int main(int argc, char** argv)
{
  system("mkdir bin");
  system("mkdir obj");
  system("mkdir src");
  system("touch bin/.init");
  system("touch obj/.init");

  if (argc > 1) {
    if (argv[1][0] == '-' && argv[1][1] == 'i') {
      system("mkdir include");
      system("touch include/.init");
    }
  }
  return 0;
}

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

int main() {

  int i;

  for (i = 0; i < 32; i++) {
    int pid = fork();
    if(pid < 0) {
      exit(1);
    }
    else if (pid > 0) {
      /* parent process */
    }
    else {
      /* child process */
      sleep(60);
      exit(0);
    }
  }

  for (i = 0; i < 32; i++) {
    int status;
    pid_t pid = wait(&status);
  }

  exit(0);

}

#include <stdio.h>
#include <syslog.h>

int main(int argc, char* argv[]) {
    openlog("writer-log", 0, LOG_USER);
 

    if (argc < 3) {
        syslog(LOG_ERR, "Invalid number of arguments");
        return 1;
    }

  
  
    FILE *writeFile = fopen(argv[1], "w");

    if (writeFile == NULL) {
        syslog(LOG_ERR, "Failed to open file");
        return 1;
    } 
    else {
        syslog(LOG_DEBUG, "Writing string %s to file %s", argv[2], argv[1]);
        fprintf(writeFile, argv[2]);
        fclose(writeFile);

    }

    return 0;
}
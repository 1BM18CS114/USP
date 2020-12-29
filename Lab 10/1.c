//fork()
//Negative Value: creation of a child process was unsuccessful.
//Zero: Returned to the newly created child process.
//Positive value: Returned to parent or caller. The value contains process ID of newly created child process.

#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int main(int argc,char* argv[])
{
	
	pid_t pid;

	pid = fork();

	if(pid == 0)
	{
		printf("\nChild Process Created!\n");
		printf("PID(Child)= %d",getpid() );
		printf("\nPPID=%d",getppid());
	}

	else if(pid <0)	
	{
		fprintf(stderr,"%s","Child process creation failed");
		return 1;
	}
	else
	{	sleep(3);
		printf("\nParent Process--");
		printf("\nChild PID=%d",pid);
		printf("\nPPID=%d",getppid());
		printf("\nPID=%d",getpid());
	}


	return 0;
}

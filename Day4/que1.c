#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
int main()
{
	int i;
	pid_t pid[5];
	printf("\nCreating a 5 Processes\n");
	for(i=1;i<=5;i++)
	{
		pid[i]=fork();


		//For a child process, pid is 0
		if(pid[i]==0)
		{
			sleep(5);
			printf("\n Child process created");
			printf("\n Child process ID: %d",getpid());
			printf("\n Child parent process ID: %d",getppid());
			exit(0);
	//		sleep(15);
			//		while(1);
			//		exit(0);		
		}
		
	}	
	/*for( )	
	//		sleep(10);
			printf("\nParent process created");
			printf("\nParent Process ID: %d",getpid());
			printf("\nChild's process ID: %d",pid);
			//		sleep(40);
	//		sleep(50);
			int status;
			waitpid(pid,&status,NULL);
			printf("\n Status of exited process: %d",status);
		printf("\nBoth processes at the end");
	*/	
	return 0;
}

#include<stdio.h>
#include<stdlib.h>
#include<sys/wait.h>
#include<sys/types.h>
#include<unistd.h>

int main()
{
	pid_t pid[5];

	for(int i=0;i<5;i++)
	{
	//	sleep(6);
		pid[i]=fork();
	//	sleep(5);
		if(pid[i]==0)
		{
			printf("\n Child Process [ %d ] with ID: [ %d ]",(i+1),getpid());
			printf("\n Child\'s  Process [ %d ] with Parent Process ID: [ %d ]",(i+1),getppid());
			sleep(10);
		}

		else
		{
			int status;
			waitpid(pid[i],&status,0);
		//	sleep(5);
			if(WIFEXITED(status))
			{
				printf("\n Process [ %d ] exited by WEXITSTATUS with [ %d ]",(i+1),WEXITSTATUS(status));	
			}
			if(WIFSIGNALED(status))
			{
				printf("\n Process [ %d ] exited by WTERMSIG(wstatus) with [ %d ]",(i+1),WTERMSIG(status));	
			}
		//	sleep(5);
		}
//		exit(0);
	}

	return 0;
}

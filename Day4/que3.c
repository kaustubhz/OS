#include<stdio.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<unistd.h>

int main()
{
	//Path of binaries
	const char *path[]={"/usr/bin/gedit","/usr/bin/firefox","/usr/bin/vi","/snap/bin/gnome-calculator","/usr/bin/gnome-calendar"};	
	//Actual commands which launchs the applications
	const char *args[]={"gedit","firefox","vi","gnome-calculator","gnome-calendar"};	

	pid_t pid[5];

	for(int i=0;i<5;i++)
	{
		pid[i]=fork();

		if(pid[i]==0)
		{
			sleep(5);
			printf("\n Child Process with ID: [ %d ]",getpid());
			printf("\n Child Process with  Parent ID: [ %d ]",getppid());
			execl(path[i],args[i] ,NULL);
		}
		else
		{
			sleep(5);
			int status;
			waitpid(pid[i],&status,0);
			if(WIFEXITED(status))
			{
				printf("\n Process  exited by WEXITSTATUS [ %d ]",WEXITSTATUS(status));
			}
			if(WIFSIGNALED(status))
			{
				printf("\n Process  exited by WTERMSIG [ %d ]",WTERMSIG(status));
			}
		}
	}
	return 0;
}

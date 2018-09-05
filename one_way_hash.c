#include <stdio.h>
#include <string.h>
int *getkey(char **argv){
	int *key = malloc(8*4);
	for(int i=0; i<8; i++){
		key[i] = atoi(argv[i+1]);
	}
	return key;
}


int main(int argc, char **argv){
	if(argc !=9){
		printf("usage: <private key> of the form 8 bits 1 0 1 0 0 1 0 1");	
		exit(-1);
	}
	int *key = getkey(argv);
	char msg[10];
	printf("enter 10 character string for hashing");
	scanf("%s", msg);
	
}
	
	


}

#include <stdio.h>
#include <stdlib.h>
#include <sys/resource.h>

int main() {
	int    i, *ptr; struct rusage r_usage;

	getrusage(RUSAGE_SELF,&r_usage);
	printf("Start usage: %ld bytes\n",r_usage.ru_maxrss);

	for ( i = 0; i < 100000; i++ ) {

		ptr = (int*) malloc(1000 * sizeof(int));

		// do something with ptr ...
	}

	getrusage(RUSAGE_SELF,&r_usage);
	printf("  End usage: %ld bytes\n",r_usage.ru_maxrss);

	return 0;
}

#include <stdio.h>
//#include <string.h>
#include <stdlib.h>
#include <sys/times.h>

double time()
{
    struct tms t;
    times(&t);
    return (t.tms_utime+t.tms_stime)/100.0;
}


int main ( int argc, char **argv )
{
    long count;
    long size;
    unsigned char *a;
    long i,x=0;
    long j;
    double start, end;

    size  = argc > 1 ? atol(argv[1]) : 10000000;
    count = argc > 2 ? atol(argv[2]) : 100;

    a = (unsigned char *)malloc(size);

    start = time();
    for ( i = 0; i < count; i++ ) {
        for ( j = 0; j < size; j += count ) {
            x ^= a[j];
        }
    }
    end = time();
    printf("x = %ld\n",x);
    printf("used %10.4f\n",end-start);
    printf("pages access %ld\n",size/4096);
    printf("bytes access %ld\n",count*size/4096);
    printf("bytes per second = %10.2g\n",count*size/4096.0/(end-start));

    return 0;
}

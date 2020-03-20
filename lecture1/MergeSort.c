// C program for insertion sort
#include <stdio.h>
#include <math.h>
#include <sys/time.h>
#include <vector>
int arr[] = {12, 11, 13, 5, 6, 1, 3, 2, 14, 19};

void merge(int arr[], int l, int r)
{
    
}

/* Function to sort an array using insertion sort*/
void MergeSort(int arr[], int i, int r)
{
    //write your own code here!!!
    
} 

// A utility function ot print an array of size n
void printArray(int arr[], int n)
{
    int i;
    for (i=0; i < n; i++)
        printf("%d ", arr[i]);
    printf("\n");
}
   
/* Driver program to test insertion sort */
int main()
{      
    timeval start;
    timeval end;
	int len = atoi(argv[1]);
    //long int arr[] = {12, 11, 13, 5, 6, 1, 3, 2, 14, 19};
    int *arr = new int[len];
    ifstream fin("10K.in");
    for (int i=0; i<len; i++) {
    	fin >> arr[i];	
		//cout << i << ":" << arr[i] << " "; 		
    }		 
    gettimeofday(&start, NULL);
    MergeSort(arr, 0, len-1); 
    printArray(arr, n);
    gettimeofday(&end, NULL);
    long int diff = 1000000*(end.tv_sec-start.tv_sec)+end.tv_usec-start.tv_usec;
    cout << "Sorting " << len << " numbers takes " << diff << " usec.\n";          
    return 0;
}

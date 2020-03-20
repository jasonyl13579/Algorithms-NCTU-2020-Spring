// C++ program for insertion sort
#include <iostream>
#include <fstream>
#include <sys/time.h>
using namespace std;
const int SIZE = 100;

/* Function to sort an array using insertion sort*/
void insertionSort(long int arr[], long int n)
{	
    //write your own code here!!!
	for (int j=1;j<n;j++){
		int key = arr[j];
		int i = j-1;
		while (i >= 0 && arr[i] > key){
			arr[i+1] = arr[i];
			i --;
		}
		arr[i+1] = key;
	}
} 

// A utility function ot print an array of size n
void printArray(long int arr[], long int n)
{
    for (long int i=0; i < n; i++)
        cout << arr[i] << " ";
    cout << endl;
}
   
/* Driver program to test insertion sort */
int main(int argc, char **argv)
{
    //long int arr[] = {12, 11, 13, 5, 6, 1, 3, 2, 14, 19};
	timeval start;
    timeval end;
	if (argc == 1){
		cout << "usage: ./isort 100" << endl;
		return 0;
	}
	int len = atoi(argv[1]);
    long int arr[len] = {0};
    ifstream fin("100K.in");
    for (long int i=0; i<len; i++) {
    	fin >> arr[i];	
	//cout << i << ":" << arr[i] << " "; 		
    }		
    //int n = sizeof(arr)/sizeof(arr[0]);
    gettimeofday(&start, NULL);           
    insertionSort(arr, len);
    //printArray(arr, n);
    gettimeofday(&end, NULL);
    long int diff = 1000000*(end.tv_sec-start.tv_sec)+end.tv_usec-start.tv_usec;
    cout << "Sorting " << len << " numbers takes " << diff << " usec.\n";                        
    return 0;
}

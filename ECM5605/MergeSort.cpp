// C++ program for merge sort
#include <bits/stdc++.h>
#include <sys/time.h>
#include <iostream>
#include <fstream>
#include <cstring>
using namespace std; 
const int RUN = 32; 

/* Function to sort an array using merge sort*/
void Merge(int arr[], int l, int m, int r) 
{
	int n1 = m-l+1;				//size of 1st half
	int n2 = r-(m+1)+1;			//size of 2nd half
	//int *la = new int[n1];
	//int *la = new int[n1];
	int *la = new int[n1+1];
	int *ra = new int[n2+1];
	la[n1] = ra[n2] = 65535;
	for (int i=0; i<n1; i++)	//copy 1st half to la 
		la[i] = arr[l+i];
	for (int i=0; i<n2; i++)	//copy 2nd half to ra
		ra[i] = arr[m+1+i];
	
	int i = 0;
	int j = 0; 
	int p = l;
	/*while (i<n1 && j<n2)
		arr[p++] = ((la[i]<ra[j])? la[i++]:ra[j++]);
	while (i<n1)
		arr[p++] = la[i++];
	while (j<n2)
		arr[p++] = ra[j++];*/
	for (int p=l; p<=r; p++) 
		arr[p] = ((la[i]<ra[j])? la[i++]: ra[j++]);
	

	delete [] la;
	delete [] ra;
}

void inMerge(int arr[], int l, int m, int r) {
	int i = l;
	int j = m+1;
	while (i<=m && j<=r) {
		if (arr[i]<arr[j])
			i++;
		else {
			int tmp = arr[j];
			//copy A[i..j-1] to A[i+1...j]
			for (int k=j-1; k>=i; k--)
				arr[k+1] = arr[k]; 
			arr[i] = tmp;
			i++; m++; j++;
		}	
	}
}
	
void MergeSort(int arr[], int l, int r)
{
    //write your own code here!!!
    if (l<r) { 
		//recursively sort and combine
		int m = (l+r)/2;
		MergeSort(arr, l, m);
		MergeSort(arr, m+1, r);
		Merge(arr, l, m, r);
		//inMerge(arr, l, m, r);
	}	
} 


// A utility function ot print an array of size n
void printArray(int arr[], int n)
{
    for (long int i=0; i < n; i++)
        cout << arr[i] << " ";
    cout << endl;
}
   
/* Driver program to test insertion sort */
int main(int argc, char **argv)
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
    //printf("Given Array is\n"); 
    //printArray(arr, n); 
    gettimeofday(&start, NULL);
    MergeSort(arr, 0, len-1); 
    gettimeofday(&end, NULL);
    long int diff = 1000000*(end.tv_sec-start.tv_sec)+end.tv_usec-start.tv_usec;
    cout << "Sorting " << len << " numbers takes " << diff << " usec.\n";
	//printf("After Sorting Array is\n"); 
	//printArray(arr, len);
	   	
    return 0; 
}

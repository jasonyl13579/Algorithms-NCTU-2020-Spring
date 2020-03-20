// C++ program for merge sort
#include <bits/stdc++.h>
#include <sys/time.h>
#include <iostream>
#include <fstream>
#include <cstring>
#include <vector>
using namespace std; 

void merge(vector<int>& arr, int l, int r)
{
    int m = (l+r)/2;
	vector<int> A(m-l+2);
	vector<int> B(r-m+1);
	A[m-l+1] = INT_MAX; 
	B[r-m] = INT_MAX;
	for (int i=l;i<=m;i++) A[i-l] = arr[i];
	for (int i=m+1;i<=r;i++) B[i-m-1] = arr[i];
	/*for (auto a : A) cout << a << " ";
	cout << endl;
	for (auto a : B) cout << a << " ";	
	cout << endl;*/
	int i=l, ai=0, bi=0;
	while (i <= r){
		//cout << i << "," << ai << "," << bi << endl;
		/*if (ai+l > m) arr[i++] = B[bi++];
		else if(bi+m+1 > r) arr[i++] = A[ai++];
		else arr[i++] = A[ai] < B[bi] ? A[ai++] : B[bi++];*/
		arr[i++] = A[ai] < B[bi] ? A[ai++] : B[bi++];
	}
}

/* Function to sort an array using insertion sort*/
void MergeSort(vector<int>& arr, int l, int r)
{
    //write your own code here!!!
	//cout << l << "," << r << endl;
	if (l == r) return;
	int m = (l+r)/2;
    MergeSort(arr, l, m);
	MergeSort(arr, m+1, r);
	merge(arr, l, r);
} 

// A utility function ot print an array of size n
void printArray(vector<int> arr, int n)
{
    int i;
    for (i=0; i < n; i++)
        printf("%d ", arr[i]);
    printf("\n");
}
   
/* Driver program to test insertion sort */
int main(int argc, char **argv)
{      
    timeval start;
    timeval end;
	if (argc == 1){
		cout << "usage: ./msort 100" << endl;
		return 0;
	}
	int len = atoi(argv[1]);
    //long int arr[] = {12, 11, 13, 5, 6, 1, 3, 2, 14, 19};
	vector<int> arr(len);
    ifstream fin("100K.in");
    for (int i=0; i<len; i++) {
    	fin >> arr[i];	
		//cout << i << ":" << arr[i] << " "; 		
    }		 
    gettimeofday(&start, NULL);
    MergeSort(arr, 0, len-1); 
    //printArray(arr, len);
    gettimeofday(&end, NULL);
    long int diff = 1000000*(end.tv_sec-start.tv_sec)+end.tv_usec-start.tv_usec;
    cout << "Sorting " << len << " numbers takes " << diff << " usec.\n";          
    return 0;
}

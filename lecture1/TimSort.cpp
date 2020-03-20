// C++ program to perform TimSort. Source: https://www.geeksforgeeks.org/timsort/ 
#include <bits/stdc++.h>
#include <iostream>
#include <fstream>
#include <sys/time.h>
#include <vector>
using namespace std; 
const long int RUN = 32; 

// this function sorts array from left index to 
// to right index which is of size atmost RUN 
void insertionSort(vector<int>& arr, int l, int r)
{	
    //write your own code here!!!
	for (int j=l+1;j<=r;j++){
		int key = arr[j];
		int i = j-1;
		while (i >= l && arr[i] > key){
			arr[i+1] = arr[i];
			i --;
		}
		arr[i+1] = key;
	}
} 
  
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
	if (r - l + 1 < RUN){
		insertionSort(arr, l, r);
		return;
	}
	int m = (l+r)/2;
    MergeSort(arr, l, m);
	MergeSort(arr, m+1, r);
	merge(arr, l, r);
}  
  
// iterative Timsort function to sort the 
// array[0...n-1] (similar to merge sort) 
void TimSort(vector<int>& arr, int l, int r) 
{ 
    int n = r - l + 1;
	MergeSort(arr, l, r);
} 
  
// utility function to print the Array 
void printArray(vector<int>& arr, long int n) 
{ 
    for (long int i = 0; i < n; i++) 
        printf("%d  ", arr[i]); 
    printf("\n"); 
} 
  
// Driver program to test above function 
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
    TimSort(arr, 0, len-1); 
    //printArray(arr, len);
    gettimeofday(&end, NULL);
    long int diff = 1000000*(end.tv_sec-start.tv_sec)+end.tv_usec-start.tv_usec;
    cout << "Sorting " << len << " numbers takes " << diff << " usec.\n";   
    return 0; 
} 

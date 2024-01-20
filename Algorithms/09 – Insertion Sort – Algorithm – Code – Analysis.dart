/**
  Insertion sort is a simple sorting algorithm that works similar to the way you sort playing cards in your hands.
  The array is virtually split into a sorted and an unsorted part. 
  Values from the unsorted part are picked and placed at the correct position in the sorted part.




  Insertion Sort Algorithm
  To sort an array of size N in ascending order iterate over the array and compare the current element (key) to its predecessor, 
  if the key element is smaller than its predecessor, compare it to the elements before. 
  Move the greater elements one position up to make space for the swapped element.
  
 */

void main() {
  print(insertionSortByTwoForLoops([12, 11, 13, 5, 6]));
  print(selectionSortByWhileLoop([12, 11, 13, 5, 6]));
}

List<int> insertionSortByTwoForLoops(List<int> unSortedList) {
  for (int i = 1; i < unSortedList.length; i++) {
    // o(n)
    int key = unSortedList[i]; // o(n)
    for (int j = i - 1; j >= 0; j--) {
      // o(n)  * n   --> o(n^2)
      if (key < unSortedList[j]) {
        // o(n)  * n   --> o(n^2)
        unSortedList[j + 1] = unSortedList[j]; // o(n)  * n   --> o(n^2)
      } else {
        break; // o(n)  * n   --> o(n^2)
      }
      unSortedList[j] = key; // o(n)
    }
  }
  return unSortedList; // o(1)
}
// as a culculs func: n +  n + n^2 + n^2 + n^2 + n^2 + n + 1 --> o(n^2)
// f(n) = 4n^2 + 3n + 1
// f(n) = Θ(n^2) as n -->oo
// Time Complexity: O(n^2)

List<int> selectionSortByWhileLoop(List<int> unSortedList) {
  for (int i = 1; i < unSortedList.length; i++) {
    int key = unSortedList[i];
    int j = i - 1;

    while (j >= 0 && unSortedList[j] > key) {
      unSortedList[j + 1] = unSortedList[j];
      unSortedList[j] = key;
      j--;
    }
  }
  return unSortedList;
}

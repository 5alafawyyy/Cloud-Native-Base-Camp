void main() {
  List<int> arr1 = [8, 65, 9, 7, 3, 5, 54];
  List<int> arr2 = [5, 2, 4, 7, 1, 3, 2, 6];

  print('The UnSorted Array is: ${arr1}');
  mergeSort(arr1);
  print('The Sorted Array is:   ${arr1}');
  print('---------------------------------------');
  print('The UnSorted Array is: ${arr2}');
  mergeSort(arr2);
  print('The Sorted Array is:   ${arr2}');
}

// MERGESORT:
void mergeSort(List<int> arr) {
  // 1. READ array, Start, End

  // 2. if end <= start: STOP
  if (arr.length <= 1) return;

  // 3. CALC midPoint = (Start + End) / 2
  int midPoint = arr.length ~/ 2;

  // 4. Divide the array into NEW two Arrays
  List<int> left = arr.sublist(0, midPoint);
  List<int> right = arr.sublist(midPoint);

  // 5. Call yourself, one for right, other for left
  mergeSort(left);
  mergeSort(right);

  // 6. MERGE TWO PORTION
  // MERGE:

  int i = 0;
  int j = 0;
  int k = 0;
  // 1. READ array , Start, midPoint, End
  // 2. Create two new arrays for each side

  // 3. Compare, sort
  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      arr[k] = left[i];
      i++;
    } else {
      arr[k] = right[j];
      j++;
    }
    k++;
  }

  // 4. Move remain items in each array to original array
  while (i < left.length) {
    arr[k] = left[i];
    i++;
    k++;
  }
  while (j < right.length) {
    arr[k] = right[j];
    j++;
    k++;
  }
}

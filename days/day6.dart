void main() {
  Set<String> passengerNames = {'Alice', 'Bob', 'Charlie', 'David', 'Eve'};

  passengerNames.add('Bob'); // Duplicate, will not be added
  if (passengerNames.contains('Alice')) {
    print('Alice is on the passenger list.');
  }

  List<String> passengerList = passengerNames.toList(); // Convert Set to List
  print('Passenger List: $passengerList');

  List<int> numbers = [1, 2, 2, 3, 4, 4, 5];
  Set<int> uniqueNumbers = numbers
      .toSet(); // Convert List to Set to remove duplicates
  print('Unique Numbers: $uniqueNumbers');
}

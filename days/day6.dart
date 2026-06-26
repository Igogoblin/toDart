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
  forMap();
  print('Unique Tags: $uniqueTags'); // Output: {dart, flutter, web, ui}

  Map<String, String> userRoles = {'Alice': 'Admin', 'Bob': 'User'};
  Map<String, String> updatedRoles = {}; // Create a copy of the original map
  for (var entry in userRoles.entries) {
    updatedRoles[entry.value] = entry.key; // Copy each key-value pair
  }

  print('Original Roles: $userRoles');
  print('Updated Roles: $updatedRoles');
}

void forMap() {
  Map<String, int> productPrices = {'Apple': 2, 'Banana': 1, 'Orange': 3};

  print(productPrices['Apple']); // Output: 2
  print(productPrices['Milk']); // Output: null
  productPrices['Milk'] = 4; // Adding a new key-value pair
  print(productPrices['Milk']); // Output: 4
  productPrices.remove('Banana'); // Removing a key-value pair
  print(productPrices); // Output: {Apple: 2, Orange: 3, Milk: 4}
}

List<String> articleTags = [
  'dart',
  'flutter',
  'dart',
  'web',
  'flutter',
  'ui',
  'dart',
];

Set<String> uniqueTags = articleTags
    .toSet(); // Convert List to Set to remove duplicates

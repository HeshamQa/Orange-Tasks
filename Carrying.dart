import 'dart:io';

void main() {
  print("Enter your first name : ");
  String? firstName = stdin.readLineSync();
  print("Enter your middle name : ");
  String? middleName = stdin.readLineSync();
  print("Enter your last name : ");
  String? lastName = stdin.readLineSync();
  final fullName = FullName(firstName!)(middleName!)(lastName!);
  print(fullName);
}

Function FullName(
  String fName,
) {
  return (String mName) {
    return (String lName) {
      return "$fName $mName $lName";
    };
  };
}

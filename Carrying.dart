import 'dart:io';

void main() {
  print("Enter your first name : ");
  String? firstName = stdin.readLineSync();
  print("Enter your middle name : ");
  String? middleName = stdin.readLineSync();
  print("Enter your last name : ");
  String? lastName = stdin.readLineSync();
  final fullName = CarryingName(firstName!)(middleName!)(lastName!);
  print(fullName);
}

Function CarryingName(String fName) {
  return (String mName) {
    return (String lName) {
      return FullName(fName, mName, lName);
    };
  };
}

String FullName(String fname, String mname, String lname) {
  return "$fname $mname $lname";
}

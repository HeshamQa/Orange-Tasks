class Company {
  var name;
  var address;
  var phoneNumber;

  Company(this.name, this.address, this.phoneNumber);

  String printCompanyDetails() {
    return "Name: $name \nAddress: $address \nPhone Number: $phoneNumber\n";
  }
}

class Department extends Company {
  String departmentName;

  Department(super.name, super.address, super.phoneNumber,
      {required this.departmentName});

  void printDepartment() {
    print("$departmentName\n");
  }
}

class Employee extends Company {
  var employeeId;
  var firstName;
  var lastName;

  Employee(super.name, super.address, super.phoneNumber,
      {required this.employeeId,
      required this.firstName,
      required this.lastName});

  String printEmployeeDetails() {
    return "$employeeId - $firstName $lastName\n";
  }
}

void main() {
  Company OrangeCompany = Company("Orange", "abdali", "0777777777");

  Department CodingSchoolDepartment = Department(
      OrangeCompany.name, OrangeCompany.address, OrangeCompany.phoneNumber,
      departmentName: "Orange Coding School");

  Employee emp1 = Employee(CodingSchoolDepartment.name,
      CodingSchoolDepartment.address, CodingSchoolDepartment.phoneNumber,
      employeeId: 1, firstName: "Laheeb", lastName: "Abbady");

  Employee emp2 = Employee(CodingSchoolDepartment.name,
      CodingSchoolDepartment.address, CodingSchoolDepartment.phoneNumber,
      employeeId: 2, firstName: "Ahmed", lastName: "Zaytoon");

  print("Company Details:");
  print(OrangeCompany.printCompanyDetails());
  print("Department Details:");
  CodingSchoolDepartment.printDepartment();
  print("Employee Details:");
  print(emp1.printEmployeeDetails());
  print(emp2.printEmployeeDetails());
}

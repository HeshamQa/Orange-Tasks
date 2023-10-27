class Company {
  var name;
  var address;
  var phoneNumber;

  Company(this.name, this.address, this.phoneNumber);

  String getDetails() {
    return "Name: $name \nAddress: $address \nPhone Number: $phoneNumber\n";
  }
}

class Department extends Company {
  String departmentName;

  Department(
      this.departmentName, String name, String address, String phoneNumber)
      : super(name, address, phoneNumber);

  @override
  String getDetails() {
    return super.getDetails() + "Department: $departmentName\n";
  }
}

class Employee extends Company {
  var employeeId;
  var firstName;
  var lastName;

  Employee(this.employeeId, this.firstName, this.lastName, String name,
      String address, String phoneNumber)
      : super(name, address, phoneNumber);

  @override
  String getDetails() {
    return super.getDetails() +
        "Employee: $employeeId - $firstName $lastName\n";
  }
}

void main() {
  Company OrangeCompany = Company("Orange", "Abdali", "0777777777");

  Department CodingSchoolDepartment = Department("Orange Coding School",
      OrangeCompany.name, OrangeCompany.address, OrangeCompany.phoneNumber);

  Employee emp1 = Employee(1, "Laheeb", "Abbady", CodingSchoolDepartment.name,
      CodingSchoolDepartment.address, CodingSchoolDepartment.phoneNumber);

  print("Company Details:");
  print(OrangeCompany.getDetails());
  print("Department Details:");
  print(CodingSchoolDepartment.getDetails());
  print("Employee Details:");
  print(emp1.getDetails());
}

abstract class Abstract {
  void abstractMethod();
}

abstract class Interface {
  void interFaceMethod();
}

class implementation extends Abstract implements Interface {
  @override
  void interFaceMethod() {
    print("This is the implementation of the interface method ");
  }

  @override
  void abstractMethod() {
    print("This is the implementation of the abstract method");
  }
}

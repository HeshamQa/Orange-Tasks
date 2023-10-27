class car {
  var _carType;
  var _carModel;
  var _carYear;
  get CarModel => _carModel;
  set carModel(String value) {
    _carModel = value;
  }

  get CarYear => _carYear;
  set carYear(int value) {
    _carYear = value;
  }

  get CarType => _carType;
  set carType(String value) {
    _carType = value;
  }

  car({
    required carType,
    required carModel,
    required carYear,
  }) {
    this._carType = carType;
    this._carModel = carModel;
    this._carYear = carYear;
  }
}

void main() {
  car c1 = new car(carType: "Mercedese", carModel: "S350", carYear: 2022);
  print("${c1.CarType}, ${c1.CarModel}, ${c1.CarYear}");
}

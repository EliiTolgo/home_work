//A smart home system controls different devices such as lights, air conditioners, and security cameras.
//Each device has an on and off functionality.
//Some devices have additional functionalities, e.g., adjusting temperature or motion detection.
//The system should allow multiple devices to be controlled together.
//Question:
//How would you design a system where different devices share common functionalities but also have
//unique behaviors?

void main() {
  lights light1 = lights();
  AirConditioner ac1 = AirConditioner();
  SecurityCamera camera1 = SecurityCamera();
  SmartHomeSystem homeSystem = SmartHomeSystem();
  homeSystem.addDevice(light1);
  homeSystem.addDevice(ac1);
  homeSystem.addDevice(camera1);
  homeSystem.turnAllOn();
  light1.changeColor("Blue");
  ac1.setTemperature(22);
  camera1.detectMotion();
  homeSystem.turnAllOff();
}

abstract class SmartDevice {
  bool isDevicesON = false;

  void turnOn() {
    isDevicesON = true;
  }

  void turnOff() {
    isDevicesON = false;
  }

  void uniqueFunctionality() {}
}

class lights extends SmartDevice {
  String colorLights = 'white';
  int degreeOfLight = 5;
  void changeColor(String newColor) {
    colorLights = newColor;
    print('the color Lights is $colorLights');
  }

  @override
  void uniqueFunctionality() {
    print('you can change the degree Of Light');
    degreeOfLight++;
  }
}

class AirConditioner extends SmartDevice {
  int temperature = 24;
  void setTemperature(int newTemperature) {
    temperature = newTemperature;
    print("Air Conditioner set to $temperature");
  }

  @override
  void uniqueFunctionality() {
    print("You can raise the air conditioner level by one degree .");
    temperature++;
  }
}

class SecurityCamera extends SmartDevice {
  bool motionDetected = false;
  String dataCamira = 'Data of the Security Camera';
  void detectMotion() {
    motionDetected = true;
    print("Pay attention!!, the camera detected a strange movement");
  }

  @override
  void uniqueFunctionality() {
    print(
      "If there are any strange movements, what was captured by the surveillance cameras will be displayed.",
    );
    if (motionDetected) {
      print('this is the data $dataCamira');
    } else {
      print('There is none motion Detected');
    }
  }
}

class SmartHomeSystem {
  List<SmartDevice> _devices = [];

  void addDevice(SmartDevice device) {
    _devices.add(device);
  }

  void turnAllOn() {
    for (var device in _devices) {
      device.turnOn();
      print('all device turn on');
    }
  }

  void turnAllOff() {
    for (var device in _devices) {
      device.turnOff();
      print('all device turn off');
    }
  }
}

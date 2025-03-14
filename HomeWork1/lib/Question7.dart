//Given this code, identify any errors and explain why they occur: ```dart void main(){ String name = "Alice"; name = 123; print(name); } ```
void main() {
  String name = "Alice";
  //name = 123; //error
  print(name);
  // The variable is a name that is defined as a string. It cannot be assigned an integer or non-string value
//Only possible if it is defined as Dynamic Value
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_fruits2/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUPState> {
  SignUpCubit() : super(SignUPInitial());

  String firstName = '';
  String lastName = '';
  String email = '';
  String pass = '';

  void updateFirstName(String value) {
    firstName = value.trim();
  }

  void updateLastName(String value) {
    lastName = value.trim();
  }

  void updateEmail(String value) {
    email = value.trim();
  }

  void updatePass(String value) {
    pass = value.trim();
  }

  void validateSignUp() {
    if (firstName.isNotEmpty &&
        lastName.isNotEmpty &&
        email.isNotEmpty &&
        pass.isNotEmpty) {
      Future.delayed(Duration(milliseconds: 300), () {
        emit(SignUPValid());
      });
    } else {
      emit(SignUPInvalid());
    }
  }
}

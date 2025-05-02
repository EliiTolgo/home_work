import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fresh_fruits2/Styles/app_colors.dart';
import 'package:fresh_fruits2/Styles/app_text_styles.dart';
import 'package:fresh_fruits2/Widget/app_button.dart';
import 'package:fresh_fruits2/cubit/sign_up_cubit.dart';
import 'package:fresh_fruits2/cubit/sign_up_state.dart';
import '../Widget/condition.dart';
import '../Widget/custom_text_field.dart';
import '../constants/assets.dart';

class CreateAnAccount extends StatelessWidget {
  CreateAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: BlocListener<SignUpCubit, SignUPState>(
              listener: (context, state) {
                if (state is SignUPValid) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Registered successfully')),
                  );
                } else if (state is SignUPInvalid) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please fill in all the information'),
                    ),
                  );
                }
              },
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(top: 0, child: Image.asset(Assets.vegetable)),
                  Positioned(top: 0, child: Image.asset(Assets.overlay)),
                  Positioned(
                    top: 52,
                    left: 36,
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: 288,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFAFEFC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 28,
                          left: 28,
                          right: 28,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Create your account',
                                  style: AppTextStyles.semiBold20,
                                ),
                                CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.black,
                                  child: Icon(
                                    Icons.close,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 49),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 39,
                                      child: CustomTextField(
                                        onChanged:
                                            (value) => context
                                                .read<SignUpCubit>()
                                                .updateFirstName(value),
                                        hintText: 'First name ',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Expanded(
                                    child: SizedBox(
                                      height: 39,
                                      child: CustomTextField(
                                        onChanged:
                                            (value) => context
                                                .read<SignUpCubit>()
                                                .updateLastName(value),
                                        hintText: 'Last name',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: CustomTextField(
                                onChanged:
                                    (value) => context
                                        .read<SignUpCubit>()
                                        .updateEmail(value),
                                hintText: 'Enter Email',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: CustomTextField(
                                onChanged:
                                    (value) => context
                                        .read<SignUpCubit>()
                                        .updatePass(value),
                                hintText: 'Enter pass',
                                ispass: true,
                              ),
                            ),
                            Condition(),
                            Padding(
                              padding: const EdgeInsets.only(top: 41),
                              child: AppButton(
                                color: AppColors.primary,
                                text: 'Create an account',
                                textcolor: Colors.black,
                                isborder: false,
                                onPressed: () {
                                  context.read<SignUpCubit>().validateSignUp();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:e_pharmacy/common/custom_alert_dialog.dart';
import 'package:e_pharmacy/common/custom_textfiled.dart';
import 'package:e_pharmacy/pages/login/forgetPassword/controller/forget_password_controller.dart';
import 'package:e_pharmacy/pages/login/forgetPassword/controller/forget_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_validators/form_validators.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordTab extends ConsumerWidget {
  ForgetPasswordTab({super.key});
  final TextEditingController forgetPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forgetPasswordState = ref.watch(forgetPasswordProvider);
    final status = forgetPasswordState.status;
    ref.listen<ForgetPasswordState>(forgetPasswordProvider,
        (previous, current) {
      if (current.status.isSubmissionFailure) {
        GoRouter.of(context).pop();
        alertDialog(context: context, title: "${current.errorMessage}");
      }
    });
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              maxLine: 1,
              hintText: "Please enter your email",
              errorText:
                  Email.showEmailErrorMessage(forgetPasswordState.email.error),
              onChanged: (email) {
                ref.read(forgetPasswordProvider.notifier).onEmailChange(email);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: status.isSubmissionInProgress
                      ? null
                      : () {
                          GoRouter.of(context).pop();
                        },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: status.isSubmissionInProgress ||
                          status.isSubmissionSuccess
                      ? null
                      : () {
                          ref
                              .read(forgetPasswordProvider.notifier)
                              .forgetPassword();
                        },
                  child: Text(
                    _getButtontest(status),
                    style: const TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  String _getButtontest(FormzStatus status) {
    if (status == FormzStatus.submissionInProgress) {
      return "Requesting";
    } else if (status == FormzStatus.submissionFailure) {
      return "Failed";
    } else if (status == FormzStatus.submissionSuccess) {
      return "Done";
    } else {
      return "Request";
    }
  }
}

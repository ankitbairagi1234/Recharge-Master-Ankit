import 'package:flutter/material.dart';
import 'package:quick_pay/Auth/Verification/UI/verification_interactor.dart';
import 'package:quick_pay/Auth/Verification/UI/verification_ui.dart';

class VerificationPage extends StatefulWidget {
  final VoidCallback onVerificationDone;

  VerificationPage(this.onVerificationDone);

  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage>
    implements VerificationInteractor {
  @override
  Widget build(BuildContext context) {
    return VerificationUI(this);
  }

  @override
  void verificationDone() {
    widget.onVerificationDone();
  }

  @override
  void verifyNumber() {}
}

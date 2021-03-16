import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String labelText;
  final Function(String v) validator;
  final TextEditingController txtController;
  final bool isObscureText;
  Input({
    @required this.labelText,
    @required this.validator,
    @required this.txtController,
    this.isObscureText = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.circular(10),
      ),
      child: new TextFormField(
        decoration: new InputDecoration(
          labelText: this.labelText,
          // alignLabelWithHint: true,
          fillColor: Colors.white,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(10),
            borderSide: new BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        controller: this.txtController,
        validator: this.validator,
        keyboardType: TextInputType.emailAddress,
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: this.isObscureText,
      ),
    );
  }
}

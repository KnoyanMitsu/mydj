import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final void Function(String value) onChanged;
  const PasswordField({super.key, this.onChanged = _emptyFunction});

  static void _emptyFunction(String value) {}

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscure = true; // Variabel ini menjadi bagian dari state widget.

  void _toggleVisibilityIconButton() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscure,
      decoration: InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(),
        suffixIcon: IconButton(
          onPressed: _toggleVisibilityIconButton,
          icon: Icon(_obscure ? Icons.visibility_off : Icons.visibility),
        ),
      ),
      onChanged: widget.onChanged,
    );
  }
}

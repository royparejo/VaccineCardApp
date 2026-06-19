import 'package:flutter/material.dart';

class InputContainer extends StatelessWidget {
  const InputContainer({required this.child, super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(bottom: 20),
    //   child: Material(
    //     color: Colors.white,
    //     elevation: 8,
    //     shadowColor: const Color(0x40D3DBE3),
    //     borderRadius: BorderRadius.circular(16),
    //     child: child,
    //   ),
    // );
    BorderRadius? borderRadius;
    final border = Theme.of(context).inputDecorationTheme.border;
    if (border is OutlineInputBorder) {
      borderRadius = border.borderRadius;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFD3DBE3).withValues(alpha: 0.30),
            offset: const Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: child,
    );
  }
}

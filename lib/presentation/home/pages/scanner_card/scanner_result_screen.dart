import 'package:flutter/material.dart';
import 'package:vaccine_card_app/presentation/common/util/my_colors.dart';
import 'package:vaccine_card_app/presentation/common/widgets/helpers.dart';

class ScannerResultScreen extends StatelessWidget {
  const ScannerResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Certificado verificado')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: MyColors.accentColor,
                    radius: 50,
                  ),
                  sepx2,
                  Text(
                    'Alcántara Avalos Herman Daniel',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Container(height: 300, color: MyColors.accentColor),
        ],
      ),
    );
  }
}

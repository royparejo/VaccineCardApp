import 'package:flutter/material.dart';
import 'package:vaccine_card_app/presentation/common/theme/light_theme.dart';
import 'package:vaccine_card_app/presentation/common/util/dimens.dart';
import 'package:vaccine_card_app/presentation/common/widgets/helpers.dart';
import 'package:vaccine_card_app/presentation/home/pages/scanner_card/scanner_result_screen.dart';

class ScannerCardScreen extends StatelessWidget {
  const ScannerCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(Dimens.paddingContentx2 * 1.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            sepx2,
            sepx2,
            Text(
              'Escanea el código QR para ver el certificado de vacunación',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            sepx2,
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => ScannerResultScreen()),
                );
              },
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            sepx2,
            Text(
              'Escaneando Código...',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            ElevatedButton(
              style: flatButtonStyle,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
          ],
        ),
      ),
    );
  }
}

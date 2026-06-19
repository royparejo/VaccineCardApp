import 'package:flutter/material.dart';
import 'package:vaccine_card_app/presentation/common/util/dimens.dart';
import 'package:vaccine_card_app/presentation/common/util/my_colors.dart';
import 'package:vaccine_card_app/presentation/common/widgets/helpers.dart';

class VaccineCard extends StatelessWidget {
  const VaccineCard({
    required this.person,
    required this.onRemove,
    required this.onCertificate,
    super.key,
  });
  final String person;
  final Function() onRemove;
  final Function() onCertificate;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          right: 15,
          top: 15,
          child: Card(
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(Dimens.paddingContentx2),
              child: Column(
                children: [
                  Text(
                    person,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  sepx2,
                  Icon(Icons.qr_code, size: 150),
                  sepx2,
                  Text(
                    'Escanea este QR para ver el certificado',
                    style: TextStyle(
                      color: MyColors.textColor,
                      height: 1.3,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  sep,
                  TextButton(
                    onPressed: onCertificate,
                    child: Text('Ver el certificado'),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: IconButton.filled(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              elevation: 4,
              shadowColor: Colors.black26,
            ),
            color: Colors.red,
            onPressed: onRemove,
            icon: Icon(Icons.close),
          ),
        ),
      ],
    );
  }
}

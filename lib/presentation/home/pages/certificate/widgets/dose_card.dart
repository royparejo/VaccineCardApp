import 'package:flutter/material.dart';
import 'package:vaccine_card_app/presentation/common/util/dimens.dart';
import 'package:vaccine_card_app/presentation/common/util/my_colors.dart';
import 'package:vaccine_card_app/presentation/common/widgets/helpers.dart';

import 'my_label_row.dart';

class DoseCard extends StatelessWidget {
  const DoseCard({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Dimens.paddingCard),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                CircleAvatar(radius: 3, backgroundColor: MyColors.accentColor),
                SizedBox(width: 5),
                Text(title),
              ],
            ),
            sep,
            MyLabelRow(
              label: 'Fecha de vacunación',
              value: '23/08/2021',
              secondary: true,
            ),
            MyLabelRow(
              label: 'Fabricante y lote de vacuna',
              value: 'PFIZER (FF8841)',
              secondary: true,
            ),
            MyLabelRow(
              label: 'Lugar de vacunación',
              value:
                  'LA LIBERTAD - UPAO (Movil y Peatonal) - LA LIBERTAD TRUJILLO TRUJILLO',
              secondary: true,
            ),
          ],
        ),
      ),
    );
  }
}

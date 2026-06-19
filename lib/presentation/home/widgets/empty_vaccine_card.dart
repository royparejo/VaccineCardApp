import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:vaccine_card_app/presentation/common/theme/light_theme.dart';
import 'package:vaccine_card_app/presentation/common/util/dimens.dart';
import 'package:vaccine_card_app/presentation/common/util/my_colors.dart';

class EmptyVaccineCard extends StatelessWidget {
  const EmptyVaccineCard({required this.onAdd, super.key});
  final Function() onAdd;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimens.paddingContent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Symbols.cards_stack,
            fill: 1,
            color: MyColors.disabledColor,
            size: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.paddingContent * 2,
            ),
            child: Text(
              'Aqui aparecerán los carnets que agregues',
              style: TextStyle(
                color: MyColors.disabledColor,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: flatButtonStyle,
            onPressed: onAdd,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Symbols.add_box_rounded, fill: 1),
                SizedBox(width: 5),
                Text('Agregar un nuevo carnet'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vaccine_card_app/presentation/common/util/dimens.dart';
import 'package:vaccine_card_app/presentation/common/widgets/input_container.dart';
import 'package:vaccine_card_app/presentation/common/widgets/my_label.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  void chooseDate(BuildContext context) {
    showDatePicker(
      context: context,
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
  }

  void save(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Agregar carnet")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.paddingContent),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MyLabel("Tipo de documento"),
              InputContainer(
                child: DropdownButtonFormField(
                  items:
                      [
                            "DOCUMENTO NACIONAL DE IDENTIDAD", //8 exacto
                            "CARNET DE EXTRANJERIA", //12 max
                            "PASAPORTE", //12 max
                            "OTROS", //15 max
                          ]
                          .map(
                            (e) => DropdownMenuItem(value: e, child: Text(e)),
                          )
                          .toList(),
                  initialValue: "DOCUMENTO NACIONAL DE IDENTIDAD",
                  onChanged: (value) {
                    //
                  },
                ),
              ),
              MyLabel('Número de documento'),
              InputContainer(
                child: TextFormField(
                  decoration: InputDecoration(hintText: "8 dígitos"),
                  keyboardType: TextInputType.number,
                ),
              ),
              MyLabel("Fecha de nacimiento"),
              InputContainer(
                child: TextFormField(
                  decoration: InputDecoration(hintText: "dd/mm/yy"),
                  readOnly: true,
                  onTap: () => chooseDate(context),
                ),
              ),
              MyLabel("Fecha de emisión"),
              InputContainer(
                child: TextFormField(
                  decoration: InputDecoration(hintText: "dd/mm/yy"),
                  readOnly: true,
                  onTap: () => chooseDate(context),
                ),
              ),
              ElevatedButton(
                onPressed: () => save(context),
                child: Text("Agregar carnet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vaccine_card_app/presentation/common/theme/light_theme.dart';
import 'package:vaccine_card_app/presentation/common/util/dimens.dart';
import 'package:vaccine_card_app/presentation/common/widgets/helpers.dart';
import 'package:vaccine_card_app/presentation/home/pages/certificate/widgets/dose_card.dart';

import 'widgets/my_label_row.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Certificado de vacunación')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.paddingContent),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/logo_minsa.png', height: 60),
              Icon(Icons.qr_code, size: 150),
              MyLabelRow(
                label: 'Nombre:',
                value: 'ALCÁNTARA AVALOS HERMAN DANIEL',
              ),
              MyLabelRow(
                label: 'Documento de identidad:',
                value: 'DNI: 70452311',
              ),
              Row(
                children: [
                  Expanded(
                    child: MyLabelRow(
                      label: 'Fecha de nacimiento:',
                      value: '12/05/1989',
                    ),
                  ),
                  Expanded(
                    child: MyLabelRow(label: 'Sexo:', value: 'Masculino'),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: MyLabelRow(label: 'Nacionalidad:', value: 'PERU'),
                  ),
                  Expanded(
                    child: MyLabelRow(
                      label: 'Vacuna:',
                      value: 'Vacuna contra Covid',
                    ),
                  ),
                ],
              ),
              ...["2da dosis", "1ra dosis"].map((e) => DoseCard(title: e)),
              sep,
              MyLabelRow(
                label: 'Certificado emitido por:',
                value: 'Ministerio de Salud del Perú',
                secondary: true,
                textAlign: TextAlign.center,
              ),
              MyLabelRow(
                label: 'Fecha de emisión',
                value: '09/12/2021 a las 15:03',
                secondary: true,
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                style: dangerButtonStyle,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Icon(Icons.download),
                    SvgPicture.asset('assets/icons/download.svg'),
                    SizedBox(width: 10),
                    Text('Descargar pdf'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

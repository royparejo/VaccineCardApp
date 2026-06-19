import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:vaccine_card_app/presentation/auth/onboarding_screen.dart';
import 'package:vaccine_card_app/presentation/common/util/my_colors.dart';
import 'package:vaccine_card_app/presentation/home/pages/add_card/add_card_screen.dart';
import 'package:vaccine_card_app/presentation/home/pages/certificate/certificate_screen.dart';
import 'package:vaccine_card_app/presentation/home/pages/scanner_card/scanner_card_screen.dart';
import 'package:vaccine_card_app/presentation/home/widgets/empty_vaccine_card.dart';
import 'package:vaccine_card_app/presentation/common/util/dimens.dart';
import 'package:vaccine_card_app/presentation/home/widgets/vaccine_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final persons = ['Alcántara Avalos Herman Daniel', 'Roy Parejo Estrada'];

  int selectedIndex = 0;

  void changeIndex(int value) {
    selectedIndex = value;
    setState(() {});
  }

  void removePerson(int index) {
    persons.removeAt(index);
    setState(() {});
  }

  void openNewCard(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => AddCardScreen()));
  }

  void openCertificate(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => CertificateScreen()));
  }

  void openScanner(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => ScannerCardScreen()));
  }

  void backOnBoarding(BuildContext context) {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => OnboardingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VacunApp'),
        leading: IconButton(
          onPressed: () => backOnBoarding(context),
          icon: SvgPicture.asset(
            'assets/icons/logout.svg',
            colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              openNewCard(context);
            },
            icon: Icon(Symbols.add_box, fill: 1),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: Dimens.paddingContent),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (persons.length > 1)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  persons.length,
                  (i) => Container(
                    width: 8,
                    height: 8,
                    margin: EdgeInsets.symmetric(horizontal: 2.5),
                    decoration: BoxDecoration(
                      color: selectedIndex == i
                          ? MyColors.accentColor
                          : Colors.grey[350],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ).toList(),
              ),
            Expanded(
              child: (persons.isEmpty)
                  ? EmptyVaccineCard(
                      onAdd: () {
                        openNewCard(context);
                      },
                    )
                  : CarouselSlider.builder(
                      itemCount: persons.length,
                      itemBuilder: (_, i, __) => Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimens.paddingContent,
                        ).copyWith(bottom: Dimens.paddingContent),
                        // color: Colors.amber,
                        child: VaccineCard(
                          person: persons[i],
                          onRemove: () => removePerson(i),
                          onCertificate: () => openCertificate(context),
                        ),
                      ),
                      options: CarouselOptions(
                        initialPage: selectedIndex,
                        aspectRatio: 9 / 16,
                        viewportFraction: 1,
                        enableInfiniteScroll: false,
                        onPageChanged: (index, _) => changeIndex(index),
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.paddingContent,
              ),
              child: ElevatedButton(
                onPressed: () => openScanner(context),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Symbols.qr_code_scanner),
                    SizedBox(width: 5),
                    Text('Escanear QR'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

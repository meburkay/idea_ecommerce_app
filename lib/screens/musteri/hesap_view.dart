import 'package:flutter/material.dart';
import 'package:idea_ecommerce_app/app_constants/app_strings.dart';
import 'package:idea_ecommerce_app/widgets/page_appbar_title.dart';

class KullaniciHesabiView extends StatelessWidget {
  const KullaniciHesabiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        title: PageAppBarTitle(text: hesabimAppTitle)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Metin Çiçek',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            ),
            GestureDetector(
              onTap: () {
                print(
                  'siparişlerime gidecek',
                );
              },
              child: myCard(Icons.shopping_basket, 'Siparişlerim'),
            ),
            GestureDetector(
              onTap: () {
                print('cüzdanıma gidecek');
              },
              child: myCard(Icons.wallet_giftcard, 'Cüzdanım'),
            ),
            GestureDetector(
              onTap: () {
                print('favorilerime gidecek');
              },
              child: myCard(Icons.favorite, 'Favorilerim'),
            ),
            GestureDetector(
              onTap: () {
                print('Adreslerim sayfasına gidecek');
              },
              child: myCard(Icons.location_pin, 'Adreslerim'),
            ),
            GestureDetector(
              onTap: () {
                print('Değerlendirmelerim sayfasına gidecek');
              },
              child: myCard(Icons.stars, 'Değerlendirmelerim'),
            ),
            GestureDetector(
              onTap: () {
                print('Müşteri Hizmetleri sayfasına gidecek');
              },
              child: myCard(Icons.headphones, 'Müşteri Hizmetleri'),
            ),
            GestureDetector(
              onTap: () {
                print('ayarlarıma gidecek');
              },
              child: myCard(Icons.settings, 'Ayarlarım'),
            ),
          ],
        ),
      ),
    );
  }

  Card myCard(IconData icon, String text) {
    return Card(
      elevation: 5,
      child: SizedBox(
          height: 55,
          width: double.infinity,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icon, color: Colors.purple.shade400),
              ),
              Text(
                text,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ],
          )),
    );
  }
}

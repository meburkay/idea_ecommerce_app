import 'package:flutter/material.dart';
import 'anaSayfa_view.dart';
import 'favoriler_view.dart';
import 'hesap_view.dart';
import 'kategoriler_view.dart';
import 'sepet_view.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//*index değişkeni tanımladım ve varsayılan olarak 0 belirledim. Böylece ilk ekran açıldığında anasayfa geliyor. Bu index değişimine göre sayfa geçişleri yapılacak.
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
//*index durumuna göre body olarak kullanılacak sayfayı belirleyen turnery kodu
        body: index == 0
            ? AnaSayfa()
            : index == 1
                ? Favoriler()
                : index == 2
                    ? Sepet()
                    : index == 3
                        ? Kategoriler()
                        : Hesap(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (secilenIndex) {
            setState(() {
              index = secilenIndex;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          //selectedItemColor: Colors.blue,
          //fixedColor: Colors.blue,
//*Burada bottomnavigationbar da bulunacak tuşları ayarlıyoruz. items içine sırasıyla istediğimiz icon ve metinleri yazıyoruz. Aynı zamanda bu items içindeki elemanların indexi onTap deki secilenIndex oluyor ve ona göre ekran yeniden çiziliyor.
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Anasayfam"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorilerim"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Sepetim"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Kategoriler"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: "Hesabım"),
          ],
        ),
      ),
    );
  }
}
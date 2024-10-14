import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> bukuList = [
    {
      "Judul": "Sirah Nabawiyah",
      "Penulis": "Syaikh Shafiyyurrahman Al-Mubarakfuri",
      "Deskripsi":
          "Buku ini mengisahkan perjalanan hidup Nabi Muhammad SAW,dari lahir hingga wafatnya,serta peran beliau dalam menyebarkan Islam.",
      "Gambar": "assets/image/buku sirah nabawiyah.jpg"
    },
    {
      "Judul": "Tafsir al-Mishbah",
      "Penulis": "Buya Hamka",
      "Deskripsi":
          "Tafsir al-Mishbah merupakan salah satu karya monumental dari Buya Hamka yang membahas tafsir Al-Qur'an secara komprehensif. Dalam kitab ini, Buya Hamka mengupas berbagai ayat dalam Al-Qur'an dengan pendekatan yang mendalam, mengaitkannya dengan konteks sosial, sejarah, dan budaya."
              "Kitab ini bertujuan untuk memberikan pemahaman yang lebih baik tentang isi Al-Qur'an dan mengajak pembaca untuk merenungkan makna yang terkandung dalam ayat-ayat-Nya.",
      "Gambar": "assets/image/Tafsir al mishbah.jpg"
    },
    {
      "Judul": "Maulid Simtudduror",
      "Penulis": "Al-Habib Muhammad bin Alwi bin Ahmad Al-Haddad",
      "Deskripsi":
          "Maulid Simtudduror adalah kitab yang mengisahkan perjalanan hidup Nabi Muhammad SAW, menggambarkan keutamaan, akhlak, dan perilaku beliau. Kitab ini menjadi salah satu rujukan dalam perayaan Maulid Nabi di berbagai komunitas Muslim."
              "Dalam kitab ini, penulis mengungkapkan kecintaan dan penghormatan kepada Nabi Muhammad SAW serta menjelaskan berbagai peristiwa penting dalam hidup beliau, termasuk kelahiran, kenabian, dan mukjizat yang beliau terima.",
      "Gambar": "assets/image/maulid simtudduror.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: bukuList.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                contentPadding: const EdgeInsets.all(10.0),
                leading: Image.network(
                  bukuList[index]['Gambar']!,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(bukuList[index]['Judul']!),
                subtitle: Text('Penulis: ${bukuList[index]['Penulis']}'),
                trailing: ElevatedButton(
                  child: Text('Detail'),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/detail',
                      arguments: bukuList[index],
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/tentang');
        },
        tooltip: 'Tentang Aplikasi',
        child: const Icon(Icons.info),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(NewsPage());

class HotNews extends StatelessWidget {
  const HotNews({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('HOT NEWS')),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
            return ListTile(
              leading: CachedNetworkImage(
                imageUrl: 'https://mmc.tirto.id/image/share/socmed/2025/09/24/antarafoto-presiden-prabowo-pidato-dalam-sidang-pbb-1758676748_4377_ratio-16x9.jpg',
                width: 100,
                height: 100,
              ),
              title: Text('Pidato Presiden Prabowo Subianto di Sidang Umum PBB'
              ),
              subtitle: Text ('Presiden Prabowo Subianto menyampaikan pidato di hadapan Sidang Umum PBB ke-78 di New York, AS, Selasa (24/9/2024).'
              ),
              trailing: Icon(Icons.bookmark_border),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Mengalihkan ke halaman berita')),
                );
              },
            );
              case 1:
            return ListTile(
              leading: CachedNetworkImage(
                imageUrl: 'https://www.fcbarcelonanoticias.com/uploads/s1/15/22/99/7/jugadores-real-madrid-v-levante-laliga-25-26-2_9_1000x563.webp',
                width: 100,
                height: 100,
              ),
              title: Text('Real Madrid Berpesta di Kandang Levante'
              ),
              subtitle: Text ('Mbappe Cetak Brace, Vinicius Jr Sumbang Satu Gol dan Gol debut Mastantuono'
              ),
              trailing: Icon(Icons.bookmark_border),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Mengalihkan ke halaman berita')),
                );
              },
            );
              case 2:
            return ListTile(
               leading: CachedNetworkImage(
                imageUrl: 'https://nortenews.org/wp-content/uploads/2024/10/maxresdefault-1.jpg',
                width: 100,
                height: 100,
              ),
              title: Text('Mengenal Simeon Nikolov'
              ),
              subtitle: Text ('Atlit Voli 17 Tahun Sudah Tampil di Olympics'
              ),
              trailing: Icon(Icons.bookmark_border),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Mengalihkan ke halaman berita')),
                );
              },
            );
            }
          },
        )
     ),
   );
  }
}
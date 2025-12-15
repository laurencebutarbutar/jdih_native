import 'package:flutter/material.dart';
import 'widgets/home_menu_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(16),
      crossAxisCount: 3,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: const [
        HomeMenuItem(
          icon: Icons.poll_outlined,
          label: 'Survei',
          url: 'https://jdih.mpr.go.id/site/survei-kepuasan',
        ),
        HomeMenuItem(
          icon: Icons.public,
          label: 'Website',
          url: 'https://jdih.mpr.go.id',
        ),
        HomeMenuItem(
          icon: Icons.gavel,
          label: 'Peraturan',
          url: 'https://jdih.mpr.go.id/dokumen/peraturan',
        ),
        HomeMenuItem(
          icon: Icons.menu_book,
          label: 'Monografi',
          url: 'https://jdih.mpr.go.id/dokumen/monografi',
        ),
        HomeMenuItem(
          icon: Icons.article_outlined,
          label: 'Artikel',
          url: 'https://jdih.mpr.go.id/dokumen/artikel',
        ),
        HomeMenuItem(
          icon: Icons.balance,
          label: 'Putusan',
          url: 'https://jdih.mpr.go.id/dokumen/putusan',
        ),
        HomeMenuItem(
          icon: Icons.newspaper,
          label: 'Berita',
          url: 'https://jdih.mpr.go.id/berita/index',
        ),
      ],
    );
  }
}

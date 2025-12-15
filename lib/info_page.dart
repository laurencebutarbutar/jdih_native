import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  Future<void> _openLink(String url) async {
    final uri = Uri.parse(url);
    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _InfoCard(
          icon: Icons.history,
          title: 'Sekilas Sejarah',
          onTap: () => _openLink(
            'https://jdih.mpr.go.id/site/sekilas-sejarah',
          ),
        ),
        _InfoCard(
          icon: Icons.account_balance,
          title: 'Dasar Hukum',
          onTap: () => _openLink(
            'https://jdih.mpr.go.id/site/dasar-hukum',
          ),
        ),
        _InfoCard(
          icon: Icons.flag,
          title: 'Visi dan Misi',
          onTap: () => _openLink(
            'https://jdih.mpr.go.id/site/visi-misi',
          ),
        ),
        _InfoCard(
          icon: Icons.apartment,
          title: 'Struktur Organisasi',
          onTap: () => _openLink(
            'https://jdih.mpr.go.id/site/sto',
          ),
        ),
        _InfoCard(
          icon: Icons.groups,
          title: 'Tim JDIH',
          onTap: () => _openLink(
            'https://jdih.mpr.go.id/site/tim',
          ),
        ),
      ],
    );
  }
}


class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: const Color(0xFF1351AA),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


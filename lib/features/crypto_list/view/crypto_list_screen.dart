import 'package:crypto_coins_list/features/crypto_list/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});

  final String title;

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Currencies List'),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 10,
          itemBuilder: (context, i) {
            const coinName = 'Bitcoin';

            return const CryptoCoinTile(coinName: coinName);
          }),
    );
  }
}
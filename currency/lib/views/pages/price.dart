import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:currency/data/entity/price.dart';
import 'package:currency/data/repository/price.dart';
import 'package:currency/views/widgets/price.dart';

class PricePage extends StatefulWidget {
  final PriceRepository repository;
  const PricePage({
    Key? key,
    required this.repository,
  }) : super(key: key);

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  List<Price> prices = [];

  @override
  void initState() {
    super.initState();
    update();
  }

  Future<void> update() async {
    try {
      prices = await widget.repository.last("USD-BRL,EUR-BRL,JPY-BRL");
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          elevation: 10,
          content: Text(
            "Ocorreu um erro ao buscar os dados, tente novamente mais tarde.",
          ),
        ),
      );
    }

    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cotação"),
      ),
      body: RefreshIndicator(
        onRefresh: update,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
          ),
          child: ListView.builder(
            itemBuilder: (_, index) {
              return PriceView(price: prices[index]);
            },
            itemCount: prices.length,
          ),
        ),
      ),
    );
  }
}

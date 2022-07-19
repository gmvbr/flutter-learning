import 'package:flutter/material.dart';
import 'package:currency/data/entity/price.dart';

class PriceView extends StatelessWidget {
  final Price price;
  const PriceView({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "${price.code}",
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const Icon(Icons.arrow_right_alt),
                Expanded(
                  child: Text(
                    "${price.codein}",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Row(
            children: [
              Expanded(
                child: ListTile(
                  leading: const Icon(Icons.trending_down),
                  title: const Text("Mínimo"),
                  subtitle: Text(price.low),
                ),
              ),
              Expanded(
                child: ListTile(
                  leading: const Icon(Icons.trending_up),
                  title: const Text("Máximo"),
                  subtitle: Text(price.high),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ListTile(
                  leading: const Icon(Icons.shopping_cart),
                  title: const Text("Compra"),
                  subtitle: Text(price.bid),
                ),
              ),
              Expanded(
                child: ListTile(
                  leading: const Icon(Icons.sell),
                  title: const Text("Venda"),
                  subtitle: Text(price.ask),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              price.createDate,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          )
        ],
      ),
    );
  }
}

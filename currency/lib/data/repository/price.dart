import 'package:currency/data/entity/price.dart';

abstract class PriceRepository {

  /// Separar por , cada moeda ex: USD-BRL,EUR-BRL,BTC-BRL
  /// Opções disponível: https://economia.awesomeapi.com.br/xml/available
  Future<List<Price>> last(String symbols);
}

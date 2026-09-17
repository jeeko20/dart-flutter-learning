import '../../models/commodity.dart';

class MockCommodities {
  static final List<Commodity> items = [
    Commodity(name: 'Diri (Riz)', price: 250, unit: 'mamit', trend: -0.02),
    Commodity(name: 'Pwa nwa (Haricots noirs)', price: 180, unit: 'mamit', trend: 0.05),
    Commodity(name: 'Bannann (Banane plantain)', price: 75, unit: 'rejim', trend: -0.01),
    Commodity(name: 'Mayi (Maïs)', price: 150, unit: 'mamit', trend: 0.03),
    Commodity(name: 'Manyòk (Manioc)', price: 65, unit: 'mamit', trend: 0.0),
    Commodity(name: 'Zaboka (Avocat)', price: 25, unit: 'inite', trend: -0.04),
    Commodity(name: 'Zonyon (Oignon)', price: 120, unit: 'mamit', trend: 0.08),
    Commodity(name: 'Tomat (Tomate)', price: 100, unit: 'mamit', trend: 0.06),
  ];
}

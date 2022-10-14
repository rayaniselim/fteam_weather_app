import 'package:core_module/core_module.dart';

/// VIA MÉTODO

// void main() async {
//   final product = Product();
//   final dio = Dio();
// //  dio instancia // Dio dependencia

//   final list = product.fetchProducts(dio);
//   print(list);
// }

// class Product {
//   //               método
//   Future<List> fetchProducts(Dio dio) // via metodo
//   async {
//     final respose = await dio.get('path');
//     return respose.data;
//   }
// }

/// VIA GETTER E SETTER

// void main() {
//   final dio = Dio();
//   final product = Product();
// product.dio = dio;

// final list = product.fetchProducts();
//   print(list);

// }

// class Product {
//  var dio = Dio(); // coloca a interface publica como instancia unica

// Future<List> fetchProducts() async {
//     final respose = await dio.get('path');
//     return respose.data;
//   }
// }

/// VIA CONSTRUTOR com inversao de controle
// mas nao está totalmente desacoplado das dependencias

void main() {
  final dio = Dio();
  final dioService = DioService(dio);
  final product = Product(dioService);

  final list = product.fetchProducts();
  print(list);
}

abstract class IProductService {
  Future<dynamic> get(String product); // assinatura
}

class DioService implements IProductService {
  final Dio dio;

  DioService(this.dio);

  @override
  Future get(String product) async => (await dio.get('path')).data;
}

class Product {
  final IProductService service; // colocar como parametro de construtor

  Product(this.service);

  Future<List> fetchProducts() async {
    final respose = await service.get('path');
    return respose;
  }
}

// class MeuWidget extends InheritedWidget {
//   @override
//   final Widget child;

//   MeuWidget({
//     required Key key,
//     required this.child,
//   }) : super(
//           key: key,
//           child: child,
//         );

//   final Product _product = Product();
//   Product get product => _product;

//   static MeuWidget of(BuildContext context) {
//     return (context.dependOnInheritedWidgetOfExactType<MeuWidget>()
//         as MeuWidget);
//   }

//   @override
//   bool updateShouldNotify(MeuWidget oldWidget) {
//     return true;
//   }
// }

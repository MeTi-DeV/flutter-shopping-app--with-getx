import 'package:get/get.dart';
import 'package:untitled/constants/firebase.dart';
import 'package:untitled/models/product.dart';

class ProductsController extends GetxController {
  static ProductsController instance = Get.find();
  RxList<ProductModel> products = RxList<ProductModel>([]);
  String collections = "products";
  @override
  void onReady() {
    products.bindStream(getAllproducts());
    super.onReady();
  }

  Stream<List<ProductModel>> getAllproducts() =>
      firebaseFirestore.collection(collections).snapshots().map((query) =>
          query.docs.map((item) => ProductModel.fromMap(item.data())).toList());
}

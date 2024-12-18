import 'package:vania/vania.dart';
import 'package:vania_api/app/http/controllers/product_controller.dart';
import 'package:vania_api/app/http/controllers/customer_controller.dart';
import 'package:vania_api/app/http/controllers/vendor_controller.dart';
import 'package:vania_api/app/http/controllers/productnotes_controller.dart';
import 'package:vania_api/app/http/controllers/order_controller.dart';

class ApiRoute implements Route {
  @override
  void register() {
    /// Base RoutePrefix

    Router.basePrefix('api');

    Router.post("/product", productController.store);
    Router.get("/product", productController.index);
    Router.get("/product/{id}", productController.show);
    Router.put("/product/{id}", productController.update);
    Router.delete("/product/{id}", productController.destroy);

    Router.get("/customer", customerController.index);
    Router.post("/customer", customerController.store);
    Router.get("/customer/{custId}", customerController.show);
    Router.put("/customer/{custId}", customerController.update);
    Router.delete("/customer/{custId}", customerController.destroy);

    Router.get("/vendor", vendorController.index);
    Router.post("/vendor", vendorController.store);
    Router.get("/vendor/{vendorId}", vendorController.show);
    Router.put("/vendor/{vendorId}", vendorController.update);
    Router.delete("/vendor/{vendorId}", vendorController.destroy);

    Router.get("/productnotes", productnotesController.index);
    Router.post("/productnotes", productnotesController.store);
    Router.get("/productnotes/{id}", productnotesController.show);
    Router.put("/productnotes/{id}", productnotesController.update);
    Router.delete("/productnotes/{id}", productnotesController.destroy);

    Router.get("/order", orderController.index);
    Router.post("/order", orderController.store);
    Router.get("/order/{id}", orderController.show);
    Router.put("/order/{id}", orderController.update);
    Router.delete("/order/{id}", orderController.destroy);
  }
}

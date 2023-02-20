// class ProductService {
//   Future<ProductModel?> fecthProduct() async* {
//     try {
//       Map<String, String> headers = {
//         'Content-type': 'application/json',
//         'Accept': 'application/json',
//       };
//       final result =
//           await http.get(Url.pasre("http://localhost:3000/product"),header: headers,body:body,
//           );
//       if (result.status == true) {
//         final product = Product.formJson(result.body);
//         return product;
//       }
//       throw "error";
//     } catch (e) {
//       rethrow ;
//     }
//   }
// }

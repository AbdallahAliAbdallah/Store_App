import 'package:appstore/models/product_model.dart';
import 'package:appstore/services/update_product.dart';
import 'package:appstore/widgets/custom_Textformfield.dart';
import 'package:appstore/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
class UpdateProductpage extends StatefulWidget {
  UpdateProductpage();

  static String id = 'updateproduct';

  @override
  State<UpdateProductpage> createState() => _UpdateProductpageState();
}

class _UpdateProductpageState extends State<UpdateProductpage> {
  String? ProductName, description, image, price;
bool isloading =false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall:isloading,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Updateproduct',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  onChanged: (data) {
                    ProductName = data;
                  },
                  hintText: 'ProductName',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data) {
                    description = data;
                  },
                  hintText: 'description',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  inputType: TextInputType.number,
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: 'price',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'image',
                ),
                SizedBox(
                  height: 50,
                ),
                CustomButon(
                  text: 'Update',
                  onTap: () async {
                    print('Abdallah Ali Abdallah');
                    isloading = true;
                    setState(() {

                    });
                    try {
                    await  updateproduct(product);
                      print('successed');

                    }catch(e){
                      print(e.toString());
                    }
                    isloading=false;
                    setState(() {

                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
 Future<void> updateproduct(ProductModel  product)async{
    await UpdateProductService().updateProduct(
        title: ProductName == null ? product.title:ProductName!,
        price: price == null ? product.price.toString():price!,
        desc: description == null ? product.description:description!,
        image: image == null ? product.image:image!,
        id: product.id,
        category:product.category);

  }
}

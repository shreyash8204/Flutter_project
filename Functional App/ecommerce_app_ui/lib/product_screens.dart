import 'package:ecommerce_app_ui/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<ProductModel> productList = [];

  TextEditingController productNameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  List<Color> cardColors = [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(250, 232, 232, 1),
  ];

  void clearController(){
    productNameController.clear();
    descriptionController.clear();
    priceController.clear();
  }


  void submit(bool doEdit, [ProductModel? obj]){
    if(productNameController.text.isNotEmpty &&
       descriptionController.text.isNotEmpty &&
       priceController.text.isNotEmpty){
      if(doEdit) {
        obj!.productname = productNameController.text;
        obj.description = descriptionController.text;
        obj.price = priceController.text;

        Map<String, dynamic> mapObj = {
          'title': obj.productname,
          'description': obj.description,
          'date': obj.price,
          'id' : obj.id,
         };
         // TodoDatabase().updateTodoItem(mapObj);
        } else {
        productList.add(
          ProductModel(
            productname: productNameController.text,
            description: descriptionController.text,
            price: priceController.text,
          ),
        );
        Map<String, dynamic> dataMap = {
          'title': productNameController.text,
          'description': descriptionController.text,
          'date': priceController.text,
        };
        //TodoDatabase().insertTodoItem(dataMap);
      }
      clearController();
      Navigator.of(context).pop();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title : Text("Ecommerce App"),
        centerTitle: true,
        backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index){
          return productCard(productIndex: index);
        }
        ),
        
        floatingActionButton: SizedBox(
          height: 52,
          width: 52,
          child: FloatingActionButton(
            onPressed: () {
              addBottomSheet();
            },
            shape: CircleBorder(),
            backgroundColor: Colors.transparent,
            child:SvgPicture.asset("assets/svg/todo logo.svg",
                    height: 41,
                    fit: BoxFit.cover),
            
              ),
              
              
            ),
        ),

          
        );
    
      
    
  }

  Widget productCard({required int productIndex}){
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: cardColors[productIndex % cardColors.length],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10, vertical: 18),
              child: Row(
                children: [
                   CircleAvatar(
                    radius: 26,
                    backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                    child: SvgPicture.asset("assets/svg/todo logo.svg",
                    height: 41,
                    fit: BoxFit.cover),
                  ),
                  const SizedBox(width: 15),
                      
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productList[productIndex].productname,
                          style: GoogleFonts.quicksand(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 9),
                    
                        Text(
                          productList[productIndex].description,
                          style: GoogleFonts.quicksand(
                            fontSize: 14.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 0, 13, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productList[productIndex].price,
                    style: GoogleFonts.quicksand(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     SvgPicture.asset("assets/svg/edit.svg",
                  //     height: 15,
                  //     width: 15),
                  //     SizedBox(width: 13),
                      
                  //     SvgPicture.asset("assets/svg/delete.svg",
                  //     height: 15,
                  //     width: 15),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

 
  addBottomSheet(){
    return showModalBottomSheet(
      context: context, 
      builder: (BuildContext context){
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Create To-Do",
                    style: GoogleFonts.quicksand(
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Text(
                  "Title",
                  style: GoogleFonts.quicksand(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 139, 148, 1), 
                  ),
                  ),
                TextField(
                  controller: productNameController,
                  decoration: InputDecoration(
                    hintText: "Enter Title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                  ),
                ),
                SizedBox(height: 15),

                Text(
                  "Description",
                  style: GoogleFonts.quicksand(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 139, 148, 1),
                  ),
                  ),
                TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    hintText: "Enter Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    )
                  ),
                ),
                SizedBox(height: 15),

                 Text(
                  "Date",
                 style: GoogleFonts.quicksand(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(0, 139, 148, 1),
                 ),                  
                 ), 
                 TextField(
                  controller: priceController,
                  decoration: InputDecoration(
                    hintText: "Select Date",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                  
                  ),
          
                ),
                SizedBox(height: 20),

                  Center(
                    child: SizedBox(
                      width: 330,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(0, 139, 148, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {

                        }, 
                        child: Text(
                          "Submit",
                          style: GoogleFonts.inter(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color:Color.fromRGBO(255, 255, 255, 1),
                          ),
                          ),
                        ),
                    ),
                  ),
                
                  SizedBox(height: 30),
              ],
            ),
          ),
        );
      }
      );
  }
}

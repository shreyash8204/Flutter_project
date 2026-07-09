import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:google_fonts/google_fonts.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: companyApp(),
    );
  }
}

class companyApp extends StatefulWidget{
  const companyApp({super.key});

  @override
  State createState() => _CompanyAppState();
}

class _CompanyAppState extends State{

  List<Map> complist = [];

  TextEditingController titlecontroller = TextEditingController();
  TextEditingController logocontroller = TextEditingController();
  TextEditingController salarycontroller = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Company info",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: complist.length,
        itemBuilder: (BuildContext context , int index){
          return compcard(compindex: index);
        }
        ),
          floatingActionButton: SizedBox(
          height: 52,
          width: 52,
          child: FloatingActionButton(
            onPressed: () {
              addbottomsheet();
            },
            //child: Icon(Icons.add),
            shape: CircleBorder(),
            //backgroundColor: Colors.transparent,
            child:SvgPicture.asset(
              "assets/svg/add button.svg",
             // color: Colors.blue,
              fit: BoxFit.cover,
              ),
              
              
            ),
        ),
    );
  }

  Widget compcard({required int compindex}){
    
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 110,
        width: 330,
        decoration: BoxDecoration(
          color: Color.fromRGBO(250, 232, 232, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: NetworkImage(complist[compindex]['logo']
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 25),
      
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    complist[compindex]['title'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    ),

                    SizedBox(height: 10),
      
                    Text(
                      complist[compindex]['salary'],
                      style: TextStyle(
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
      
            // Padding(
            //   padding: const EdgeInsets.only(right: 15, ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       SvgPicture.asset("assets/svg/edit.svg",
            //       height: 15,
            //       width: 15),
            //       SizedBox(width: 13),
                          
            //       SvgPicture.asset("assets/svg/delete.svg",
            //       height: 15,
            //       width: 15),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
      
  addbottomsheet(){
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
                    "Company info",
                    style: GoogleFonts.quicksand(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                    ),
                ),
                SizedBox(height: 25),
            
                  TextField(
                    controller: titlecontroller,
                    decoration: InputDecoration(
                      hintText: "Enter company name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.purple
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
            
                  TextField(
                    controller: logocontroller,
                    decoration: InputDecoration(
                      hintText: "logo url",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.purple
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
            
                  TextField(
                    controller: salarycontroller,
                    decoration: InputDecoration(
                      hintText: "Expected Salary",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.purple
                        ),
                      )
                    ),
                  ),
                  SizedBox(height: 25),

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
                          String title = titlecontroller.text;
                          String logo = logocontroller.text;
                          String salary = salarycontroller.text;
                      
                          if(title != "" && logo != "" && salary != ""){
                            Map obj = {"title" : title, "logo" : logo, "salary" : salary};
                            complist.add(obj);
                            titlecontroller.clear();
                            logocontroller.clear();
                            salarycontroller.clear();
                            Navigator.of(context).pop();
                            setState(() {});
                          }
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
                  SizedBox(height: 15),
              ],
            ),
          ),
        );
      },
    );
  }
}
                 

          
      
        
        

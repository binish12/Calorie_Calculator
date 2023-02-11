
import 'package:bmi_calculator/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NewPage extends StatelessWidget {
  var maintain;
  
  
    NewPage(this.maintain, {super.key});
    
   
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: const Color(0xFF494949).withOpacity(0.06),
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        title: const Text(
          "Address",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: false,
      ),
      body: 
      Padding(
        padding: const EdgeInsets.only(top: 80,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                
                children: [

              
              
              Text('Your maintainance calorie is :',style: TextStyle(fontSize: 25),),
              SizedBox(height: 10,),
              Text('$maintain',style: TextStyle(fontSize: 35,color: Colors.redAccent),),
              ElevatedButton(
                onPressed: () {
                  Get.to(HomeScreen());
                },
                child: Text("button"),

              ),
              ],
              ),
            ),
            SizedBox(height: 10,),

          Text('For weight gain / Calorie surplus : $maintain + 300',style: TextStyle(fontSize: 20),),
          Text('For weight loss / Calorie deficit :',style: TextStyle(fontSize: 20),)

          
            
          ],
        ),
      ),
    );
  }
}
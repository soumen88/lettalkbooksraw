import 'package:flutter/material.dart';


class DisplayTimeTextField extends StatelessWidget{

  TextEditingController displayTimeController;

  DisplayTimeTextField({required this.displayTimeController});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: TextFormField(
        controller: displayTimeController,
        enabled: false,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.timer),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(10)
            ),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(10)
            ),
            hintText: "Pick time"
        ),
        validator: (String? input){
          if(input != null && input.isNotEmpty){
            return null;
          }
          else{
            return "Pick Valid time";
          }
        },
      ),
    );
  }


}
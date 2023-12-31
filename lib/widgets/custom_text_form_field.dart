import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  //Her bir textform field alanına yazılan metin ayrı ayrı kullanılacağı için ayrı ayrı controllerlara ihtiyacım var bunu da parametre ile gönderiyorum
  TextEditingController controller ;
   CustomTextFormField({super.key,required this.controller});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,),
      decoration: BoxDecoration(
        //container içini boyar
        color: Colors.white,
        //container ın köşelerini yuvarlar
        borderRadius: BorderRadius.circular(15)
      ),
      child: TextFormField(
        //parametreler stateful widget içerisinde çağrılırken widget. ifadesi ile birlikte çağrılır.
        controller: widget.controller,
        onChanged: (e){
          print("Textformfield alanına "+e + " yazıldı.");
        },
        onEditingComplete: (){
          print("yazma işlemi tamamlandı");
        },

      ),
    );
  }
}

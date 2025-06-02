import 'package:flutter/material.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({super.key,this.ontap});
  final void Function()?ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
        ),
        child: const Center(
          child: Text('save',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
    );
  }
}
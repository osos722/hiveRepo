import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        color:const Color(0xffFFcc80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title:const Text('flutter tips',
            style: TextStyle(color: Colors.black,
            fontSize: 26
            ),
            ),
            subtitle:  Text("build your career", style: TextStyle(color: Colors.black.withOpacity(0.4),
            fontSize: 20
            ),),
            trailing: IconButton(onPressed: (){},
             icon:const Icon(Icons.delete,size: 30,)),
          )
          ,
           Padding(
             padding: const EdgeInsets.only(right: 24,top: 16),
             child: Text('May22, 2022',style: TextStyle(color:Colors.black.withOpacity(0.4),fontSize: 16),
             ),
           )
        ],
      ),
    );
  }
}
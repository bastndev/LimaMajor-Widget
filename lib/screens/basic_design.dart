import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          // Image
          Image(image: AssetImage('assets/img/LimaMajor.jpg')),

          // Extract widget Title
          Title(),

          // Button Section
          ButtonSection(),

          // LoremText
          LoremText(),
          LoremText(),
          LoremText(),
          LoremText(),
          LoremText(),
        ],
      ),
    );
  }
}


// --- --- -- --- --- -- --- --- ---  Extract widget Title
class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),

      // ===Text Title And Description ===
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hello my name ins Mayer I am from Peru',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Peruvian Event!',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),

          // ===  Color and expand ===
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            size: 40,
            color: Colors.pink,
          ),
          const Text(
            '41',
          ),
        ],
      ),
    );
  }
}

// --- --- -- --- --- -- --- --- --- --- Button Section
class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key,});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 35),

      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [

            // CustomButton
            CustomButton( icon: Icons.call, text: 'CALL'),
            CustomButton( icon: Icons.room_outlined, text:'ROUTE',),
            CustomButton( icon: Icons.share, text: 'SHARE',),
    
        ],
      ),
    );
  }
}
// --- CustomButton
class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,color: Colors.pink, size: 40,),
        Text(text,style: const TextStyle(color: Colors.red),),
      ],
    );
  }
}

// --- --- -- --- --- -- --- --- --- --- LoremText
class LoremText extends StatelessWidget {
  const LoremText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container (
            margin:const  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: 
            Text('Pariatur eiusmod velit excepteur adipisicing exercitation. Nisi sint incididunt laboris qui consectetur. Eiusmod ipsum ad excepteur laborum exercitation consectetur cupidatat dolor ad tempor. Elit deserunt dolore Lorem enim ad enim. Voluptate minim et cupidatat ut.'),
            
    );
  }
}


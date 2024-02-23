import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
// Network Image
//         Image.network('https://img.freepik.com/free-photo/dumbbells-floor-gym-ai-generative_123827-23744.jpg?size=626&ext=jpg&ga=GA1.1.1448711260.1706572800&semt=ais')

          Image.asset('images/gym.jpg',),
        ],
      ),
    );
  }
}

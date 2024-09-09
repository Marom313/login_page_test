import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 87, 68, 68)),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}







// import 'package:flutter/material.dart';

// class MyTextField extends StatelessWidget {
//   final controller;
//   final String hintText;
//   final bool obscureText;

//   const MyTextField({
//     super.key,
//     required this.controller,
//     required this.hintText,
//     required this.obscureText,
//   });

//   @override
//   Widget build(context) {
//     //The container shades the whole padding area
//     return Container(
//       decoration:
//           BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [
//         BoxShadow(
//           color:
//               Colors.black.withOpacity(0.1), // Set the shadow color and opacity
//           spreadRadius: 5, // Set the spread radius
//           blurRadius: 7, // Set the blur radius
//           offset: Offset(0, 3), // Set the offset
//         ),
//       ]),
//       //Padded Textfield
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25.0),
//         child: TextField(
//           controller: controller,
//           obscureText: obscureText,
//           decoration: InputDecoration(
//               enabledBorder: const OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Color.fromARGB(255, 87, 68, 68)),
//               ),
//               fillColor: Colors.grey.shade200,
//               filled: true,
//               hintText: hintText,
//               hintStyle: TextStyle(color: Colors.grey[500])),
//         ),
//       ),
//     );
//   }
// }


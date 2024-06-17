import 'package:flutter/material.dart';

class FilmeWidget extends StatelessWidget {
  final String image;
  final String title;
  final String rating;
  final String type;

  const FilmeWidget({
    super.key,
    required this.image,
    required this.title,
    this.rating = '',
    this.type = 'asset',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey.shade300
            )
          ]
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10)
              ),
              child: type == 'network' ? 
                Image.network(
                  image,
                  width: 100,
                ) :
                Image.asset(
                  image,
                  width: 100,
                )
            ),
    
            const SizedBox(width: 25,),
    
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            ),
    
            const SizedBox(width: 50,),
    
            Text(
              rating,
              style: const TextStyle(
                fontSize: 20
              ),
            ),
            const SizedBox(width: 15,),
          ],
        ),
      ),
    );
  }
}
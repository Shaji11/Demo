import 'package:flutter/material.dart';

class GridViewDecoration extends StatefulWidget {
  final String rating;
  final String text1;
  final String text2;
  final String rupees;
  final List<String> imagePath;
  final Color color1;
  final IconData icon1;

  const GridViewDecoration(
      {super.key,
        required this.rating,
        required this.text1,
        required this.text2,
        required this.rupees,
        required this.imagePath,
        required this.color1,
        required this.icon1});

  @override
  State<GridViewDecoration> createState() => _GridViewDecorationState();
}

class _GridViewDecorationState extends State<GridViewDecoration> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 25),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, top: 10, bottom: 5),
                child: Container(
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: widget.color1,
                    image: DecorationImage(
                      image: AssetImage(
                        widget.imagePath[0],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: Container(
                          height: 28,
                          width: 60,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20)),
                            color: Colors.black26,
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 15,
                                color: Colors.yellow,
                              ),
                              const Padding(padding: EdgeInsets.only(left: 1,)),
                              Text(widget.rating,
                                style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
                          ),
                          ]
                        ),
                      ),
                     )
                    ],
                  ),
                ),
              ),
              Text(
                widget.text1,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.text2,
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: Text(
                      widget.rupees,
                      style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.brown[300],
                    ),
                    child: Icon(
                      widget.icon1,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

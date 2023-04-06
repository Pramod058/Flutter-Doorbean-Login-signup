import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class FirstCardContainer extends StatefulWidget {
  //This class (or a class that this class inherits from) is marked as '@immutable', but one or more of its instance fields aren't final: FirstCardContainer.rating
  final String category;
  final String image1;
  final String image2;
  final String image3;
  late double rating;
  final String address;
  final String description;
  final String author;
  final num amount;

  FirstCardContainer({
    Key? key,
    required this.category,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.rating,
    required this.address,
    required this.description,
    required this.author,
    required this.amount,
  }) : super(key: key);

  @override
  State<FirstCardContainer> createState() => _FirstCardContainerState();
}

class _FirstCardContainerState extends State<FirstCardContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.category,
                style: const TextStyle(fontSize: 18.0),
              ),
              const SizedBox(
                width: 175.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      "Everyday",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          height: 500.0, // set a fixed height here
          child: Flexible(
            flex: 1,
            child: Card(
              color: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
              elevation: 1.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(0.9),
                              child: Image.asset(
                                widget.image1,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 1.0, right: 0),
                                    child: Image.asset(
                                      widget.image2,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 0.3,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4.0,
                                      horizontal: 2.0,
                                    ),
                                    child: Image.asset(
                                      widget.image3,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RatingBar.readOnly(
                                initialRating: widget.rating,
                                filledIcon: Icons.star,
                                emptyIcon: Icons.star_border,
                                halfFilledIcon: Icons.star_half,
                                isHalfAllowed: true,
                                filledColor: Colors.black,
                                emptyColor: Colors.black,
                                halfFilledColor: Colors.black,
                                size: 15,
                              ),
                              Text(
                                widget.address,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            widget.description,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.author,
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.price_change_outlined),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    "NRS. ${widget.amount}",
                                    style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Icon(Icons.more_horiz),
        ),
      ],
    );
  }
}

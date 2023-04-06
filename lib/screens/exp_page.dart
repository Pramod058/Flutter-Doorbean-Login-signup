import 'package:flutter/material.dart';

import '../widgets/exp_page_container.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ExperiencePageState createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  final List<String> _options = [
    'Popular',
    'Recent',
  ];

  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          //company Icon
          backgroundColor: Colors.white,
          toolbarHeight: 60.0,
          leadingWidth: 150.0,
          leading: Image.asset("assets/doorbeen.png"),
        ),
        body: Column(
          children: [
            //Searchbar part is here...
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: const EdgeInsets.only(right: 9.0),
                height: 50.0,
                color: Colors.white,
                padding: const EdgeInsets.only(
                  top: 5.0,
                  left: 5.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 170.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 192, 192, 192)),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Search with keyword',
                          hintStyle: TextStyle(fontSize: 14.0),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 9.0),
                        ),
                      ),
                    ),
                    Container(
                      height: 30.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 150, 148, 148)),
                        borderRadius: BorderRadius.circular(3),
                        color: const Color.fromARGB(255, 184, 183, 183),
                      ),
                      child: Row(
                        children: [
                          DropdownButton<String>(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            iconSize: 15.0,
                            value: _selectedOption,
                            items: _options
                                .map((option) => DropdownMenuItem<String>(
                                      value: option,
                                      child: Text(option),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedOption = value;
                              });
                            },
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            hint: Text(
                              ' Popular',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80.0,
                      child: SizedBox(
                        height: 30.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.only(left: 6.0),
                            alignment: Alignment.centerLeft,
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Search',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.white),
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 20.0,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),

//Body part starts here.

            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    FirstCardContainer(
                      category: "Local",
                      image1: 'assets/rect1.png',
                      image2: 'assets/rect1.png',
                      image3: 'assets/rect1.png',
                      rating: 1,
                      address: 'Thankot, Ktm',
                      description:
                          'The beautiful place where you can stay, be relax, hiking, picnic, etc.',
                      author: 'Rajesh Maharjan',
                      amount: 0,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                       FirstCardContainer(
                      category: "Local",
                      image1: 'assets/rect1.png',
                      image2: 'assets/rect1.png',
                      image3: 'assets/rect1.png',
                      rating: 1,
                      address: 'Thankot, Ktm',
                      description:
                          'The beautiful place where you can stay, be relax, hiking, picnic, etc.',
                      author: 'Rajesh Maharjan',
                      amount: 0,
                    ),
                       const SizedBox(
                      height: 20.0,
                    ),
                       FirstCardContainer(
                      category: "Local",
                      image1: 'assets/rect1.png',
                      image2: 'assets/rect1.png',
                      image3: 'assets/rect1.png',
                      rating: 1,
                      address: 'Thankot, Ktm',
                      description:
                          'The beautiful place where you can stay, be relax, hiking, picnic, etc.',
                      author: 'Rajesh Maharjan',
                      amount: 10000,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image(
            image: AssetImage('assets/back_icon.png'),
          ),
        ),
        title: Text(
          'Course Details',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Image(image: AssetImage('assets/heart.png')),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(24),
                  ),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.darken),
                        image: AssetImage('assets/card1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: double.infinity,
                    height: 230,
                    child: Image(
                      image: AssetImage('assets/play_icon.png'),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 24, 0, 16),
                child: Text(
                  'Step design sprint for beginner',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 0, 16),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Chip(
                        elevation: 20,
                        label: Text(
                          '6 lessons',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 77, 201, 209),
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Chip(
                        elevation: 20,
                        label: Text(
                          'Design',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 0, 130, 205),
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Chip(
                        elevation: 20,
                        label: Text(
                          'Free',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        backgroundColor: Color.fromARGB(255, 141, 94, 242),
                        shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 24),
                child: Text(
                  "In this course I'll show the step by step, day by day process to build better products, just as Google, Slack, KLM and manu other do.",
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/pfp.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Positioned(
                            child: Icon(Icons.circle,
                                color: Colors.green, size: 16),
                            bottom: 0,
                            right: 0)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text(
                            'Laurel Seilha',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(12, 4, 0, 0),
                            child: Text(
                              'Product Designer',
                              style: TextStyle(
                                  fontSize: 13.5, color: Colors.grey[600]),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 24, 0, 12),
                child: Container(
                  height: 85,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Color.fromARGB(255, 246, 247, 250),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(6.5, 6.5, 16, 6.5),
                        child: Image(
                          image: AssetImage('assets/red_play_button.png'),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Text(
                            'How to get feedback on their products in just 5 days',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            softWrap:
                                true, // Ensure text wraps within available space
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0),
                child: Container(
                  height: 85,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Color.fromARGB(255, 246, 247, 250),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(6.5, 0, 16, 6.5),
                        child: Image(
                          image: AssetImage('assets/red_play_button.png'),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Text(
                            'How to decide which prototype to implement',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            softWrap:
                                true, // Ensure text wraps within available space
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 32),
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Wrap(children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 12),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 8,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(32, 24, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Available time',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                      child: Text(
                                        'Adjust to your schedule',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 16, 32, 0),
                                child: Image(
                                    image: AssetImage('assets/calendar.png')),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Container(
                              width: 200,
                              height: 200,
                              child: GridView.count(
                                crossAxisCount: 3,
                                crossAxisSpacing: 4.0,
                                mainAxisSpacing: .0,
                                children: List.generate(
                                  9,
                                  (index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 15,
                                        height: 10,
                                        decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'All',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(32, 16, 0, 0),
                            child: Text(
                              'Email',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(32, 4, 32, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(6),
                              ),
                              height: 56,
                              child: const TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintText: 'Placeholder',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(32, 16, 0, 0),
                            child: Text(
                              'Telephone Number',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(32, 4, 32, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(6),
                              ),
                              height: 56,
                              child: const TextField(
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(16),
                                  hintText: 'Placeholder',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(32, 16, 0, 0),
                            child: Text(
                              'Schedule date and time',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 9, 8, 0),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                  activeColor: Colors.redAccent[100],
                                  checkColor: Colors.red,
                                ),
                                Text(
                                  '12 October, 2023 at 09:45 AM',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(32, 32, 32, 40),
                            child: SizedBox(
                              height: 56,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.redAccent),
                                  elevation: MaterialStateProperty.all(4.0),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)))),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]);
                });
          },
          child: Container(
            height: 56,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Text(
              'Follow Class',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}

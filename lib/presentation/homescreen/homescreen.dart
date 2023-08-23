import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ajheryuk/presentation/coursecard/course_card.dart';
import 'package:ajheryuk/data/course_card.dart';
import 'package:ajheryuk/data/course_tags.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imagePaths = [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
    'assets/5.png',
    'assets/6.png',
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png'
  ];

  int _selectedIndex = 0;

  List<String> listOfStrings = [
    'All Categories',
    'UI/UX',
    'Illustration',
    '3D Animation',
    'Gaming'
  ];

  List<CourseData> courseList = [
    CourseData(
      'Course Title 1',
      '2 Weeks',
      CourseTags('UI/UX', 'Intermediate', 'Design', '\$99'),
      'Author Name 1',
      'Designation 1',
    ),
    CourseData(
      'Course Title 2',
      '1 Month',
      CourseTags('3D Animation', 'Advanced', 'Animation', '\$149'),
      'Author Name 2',
      'Designation 2',
    ),
    // Add more course data as needed
  ];

  final List<Widget> _list = <Widget>[
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24), // Circular border radius
          child: Image.asset(
            'assets/card1.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24), // Circular border radius
          child: Image.asset(
            'assets/card2.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24), // Circular border radius
          child: Image.asset(
            'assets/card1.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
  ];

  PageController controller = PageController();
  int _curr = 0;

  int selectedButtonIndex = 0; // Initialize with an invalid index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(8, 32, 8, 16),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 55,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/logo.png'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        const Text(
                          'Hello, Neeraj!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                    //const Icon(Icons.notifications)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[100],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.red, width: 3),
                    ),
                    child: Center(
                      child: Image.asset(
                        imagePaths[
                            index], // Use the image path for the current index
                        height: 60,
                        width: 60,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
              padding: EdgeInsets.fromLTRB(16, 28, 0, 16),
              child: Row(
                children: [
                  Text(
                    'Upcoming ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'course of this week',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              )),
          SizedBox(
            height: 55,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listOfStrings.length,
              itemBuilder: (context, index) {
                String text = listOfStrings[index];
                double textWidth = text.length * 10.0;

                return Padding(
                  padding: EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        // Update the color of the tapped button and its text
                        selectedButtonIndex = index;
                      });
                    },
                    child: Container(
                      width: textWidth,
                      height: 30,
                      decoration: BoxDecoration(
                        color: selectedButtonIndex == index
                            ? Colors.redAccent
                            : Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(
                            color: selectedButtonIndex == index
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
              child: PageView.builder(
            itemCount: courseList.length,
            itemBuilder: (context, index) {
              CourseData course = courseList[index];

              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          child: Image.asset(
                            'assets/${course.title.toLowerCase().replaceAll(' ', '_')}.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.blue, // Tag background color
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '${course.duration}',
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Text color on top of tag
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.green, // Tag background color
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '${course.tags.category}',
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Text color on top of tag
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.orange, // Tag background color
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '${course.tags.fee}',
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Text color on top of tag
                                  ),
                                ),
                              ),
                              Text(
                                course.title,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors
                                      .white, // Text color on top of tag
                                ),
                              ),
                              SizedBox(height: 4),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.purple, // Tag background color
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  '${course.author}',
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Text color on top of tag
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.teal, // Tag background color
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  course.authorDesignation,
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Text color on top of tag
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.menu,
              color: Colors.redAccent,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.explore,
              color: Colors.redAccent,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.mail,
              color: Colors.redAccent,
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.person,
              color: Colors.redAccent,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}

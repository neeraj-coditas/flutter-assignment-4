import 'package:ajheryuk/presentation/coursescreen/coursescreen.dart';
import 'package:ajheryuk/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:ajheryuk/data/message_item.dart';

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

  int _currentPage = 0;

  void navigateToCourseScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CourseScreen(),
      ),
    );
  }

  int selectedButtonIndex = 0; // Initialize with an invalid index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _courseList = <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: GestureDetector(
          onTap: () => {navigateToCourseScreen()},
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24), // Circular border radius
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.darken),
                    image: AssetImage('assets/card1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, top: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 252, 204, 117),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 3),
                          child: Text(
                            'Free e-book',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 110),
                        child: Text(
                          'Step design sprint for beginner',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: Row(
                          children: [
                            Image(image: AssetImage('assets/stopwatch.png')),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                '5h 32m',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 77, 201, 209),
                                shape: BoxShape.rectangle,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 3),
                                child: Text(
                                  '6 lessons',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Container(
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 0, 130, 205),
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 3),
                                  child: Text(
                                    'UI/UX',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Container(
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 141, 94, 242),
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 3),
                                  child: Text(
                                    'Free',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/pfp.png'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Laurel Silha',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 1),
                                    child: Text(
                                      'Product Designer',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
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

    final List<MessageItem> messages = [
      MessageItem(
        senderName: 'John Doe',
        message: 'Hello there!',
        profilePicture: 'assets/1.png',
        lastOnline: '15 min',
        messageCount: 3,
      ),
      MessageItem(
        senderName: 'Alice Smith',
        message: 'Hey, how are you?',
        profilePicture: 'assets/2.png',
        lastOnline: '15 min',
        messageCount: 0,
      ),
      MessageItem(
        senderName: 'Bob Johnson',
        message: 'Meeting at 3 PM today.',
        profilePicture: 'assets/3.png',
        lastOnline: '15 min',
        messageCount: 1,
      ),
      MessageItem(
        senderName: 'Emily Brown',
        message: 'Can you send me the report?',
        profilePicture: 'assets/4.png',
        lastOnline: '15 min',
        messageCount: 5,
      ),
      MessageItem(
        senderName: 'David Lee',
        message: 'Just checking in. How\'s it going?',
        profilePicture: 'assets/5.png',
        lastOnline: '15 min',
        messageCount: 12,
      ),
      MessageItem(
        senderName: 'Sophia Wilson',
        message: 'See you tomorrow!',
        profilePicture: 'assets/6.png',
        lastOnline: '15 min',
        messageCount: 0,
      ),
      MessageItem(
        senderName: 'Oliver Martinez',
        message: 'Did you watch the game?',
        profilePicture: 'assets/1.png',
        lastOnline: '15 min',
        messageCount: 6,
      ),
      MessageItem(
        senderName: 'Emma Davis',
        message: 'Happy birthday! 🎉🎂',
        profilePicture: 'assets/2.png',
        lastOnline: '15 min',
        messageCount: 0,
      ),
      MessageItem(
        senderName: 'Liam White',
        message: 'Let\'s catch up this weekend.',
        profilePicture: 'assets/3.png',
        lastOnline: '15 min',
        messageCount: 4,
      ),
      MessageItem(
        senderName: 'Ava Garcia',
        message: 'Can you help me with my homework?',
        profilePicture: 'assets/4.png',
        lastOnline: '15 min',
        messageCount: 0,
      ),
    ];

    int countChatsWithMessages(List<MessageItem> messages) {
      int count = 0;
      for (var message in messages) {
        if (message.messageCount > 0) {
          count++;
        }
      }
      return count;
    }

    int chatsWithMessagesCount = countChatsWithMessages(messages);

    return Scaffold(
      body: _selectedIndex == 0 || _selectedIndex == 1 || _selectedIndex == 3
          ? Column(
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
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8),
                        child: Stack(children: [
                          Container(
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.red, width: 3),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3),
                              child: Positioned(
                                top: 3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: Image.asset(
                                    imagePaths[
                                        index], // Use the image path for the current index
                                    height: 45,
                                    width: 45,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 1,
                              right: 1,
                              child: Image.asset('assets/live-circle.png'))
                        ]),
                      );
                    },
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.fromLTRB(16, 24, 0, 16),
                    child: Row(
                      children: [
                        Text(
                          'Upcoming ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'course of this week',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 56,
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
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: PageView(
                      children: _courseList,
                      onPageChanged: (value) {
                        setState(() {
                          _currentPage = value;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 8,
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(4, 4)),
                            shape: BoxShape.rectangle,
                            color: _currentPage == 0
                                ? Colors.redAccent
                                : Colors.grey),
                      ),
                      Container(
                        width: 20,
                        height: 8,
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(4, 4)),
                            shape: BoxShape.rectangle,
                            color: _currentPage == 1
                                ? Colors.redAccent
                                : Colors.grey),
                      ),
                      Container(
                        width: 20,
                        height: 8,
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(4, 4)),
                            shape: BoxShape.rectangle,
                            color: _currentPage == 2
                                ? Colors.redAccent
                                : Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            )
          : Padding(
              padding: EdgeInsets.fromLTRB(16, 60, 16, 0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('assets/3.png'),
                                      fit: BoxFit.fill)),
                            ),
                            Positioned(
                              child: Icon(Icons.circle,
                                  color: Colors.lightGreen, size: 12),
                              bottom: 0,
                              right: 0,
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            children: [
                              Text(
                                'My Messages',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 0),
                                child: Text(
                                  '$chatsWithMessagesCount new Messages',
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 14),
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Stack(
                            children: [
                              Icon(Icons.notifications),
                              Positioned(
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.red,
                                  size: 10,
                                ),
                                top: 0,
                                right: 0,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 32, 10, 0),
                      child: Container(
                        height: 56,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Search here',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.redAccent,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      child: Image(
                                        image: AssetImage('assets/search.png'),
                                        alignment: Alignment.center,
                                        width: 32,
                                        height: 32,
                                      )),
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 600,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: ListView.separated(
                            separatorBuilder:
                                (BuildContext context, int index) => Divider(),
                            itemCount: messages.length,
                            itemBuilder: ((context, index) {
                              final message = messages[index];
                              return ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage(message.profilePicture),
                                ),
                                title: Text(message.senderName),
                                subtitle: Text(message.message),
                                trailing: Visibility(
                                  visible: message.messageCount > 0,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          '${message.lastOnline}',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Container(
                                            height: 18,
                                            width: 18,
                                            decoration: BoxDecoration(
                                                color: Colors.blueAccent,
                                                shape: BoxShape.circle),
                                            child: Text(
                                              '${message.messageCount}',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ))
                                      ]),
                                ),
                              );
                            })),
                      ),
                    )
                  ],
                ),
              ),
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

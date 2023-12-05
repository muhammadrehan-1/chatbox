import 'package:chatbox/dummy_data/dummy_people_list.dart';
import 'package:chatbox/widgets/status_circle.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xff363F3B),
                  ),
                  color: appBarColor,
                ),
                child: const Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Text(
                'Home',
                style: const TextStyle().copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Caros',
                ),
              ),
              CircleAvatar(
                radius: 25,
                foregroundImage: AssetImage(dummyPeople[0].imageUrl),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...dummyPeople.map((e) {
                  return StatusCircle(
                      image: e.imageUrl, firstName: e.firstName);
                }).toList(),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...dummyPeople.map((e) {
                      return CustomListTile(
                          firstName: e.firstName,
                          image: e.imageUrl,
                          message: e.lastMessage,
                          time: e.lastMessageTime,
                          secondName: e.lastName);
                    })
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), label: 'Contacts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        selectedItemColor: greenColor,
        unselectedItemColor: greyColor2,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: const TextStyle().copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'Caros',
        ),
        selectedLabelStyle: const TextStyle().copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          fontFamily: 'Caros',
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.firstName,
      required this.image,
      required this.message,
      required this.time,
      required this.secondName});

  final String firstName;
  final String secondName;
  final String image;
  final String message;
  final String time;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        foregroundImage: AssetImage(image),
      ),
      title: Text(
        '$firstName $secondName',
        style: const TextStyle().copyWith(
          fontFamily: 'Caros',
          fontWeight: FontWeight.w500,
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      subtitle: Text(message,
          style: const TextStyle().copyWith(
            fontFamily: 'Caros',
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: greyColor2,
          )),
      trailing: Text(time),
    );
  }
}

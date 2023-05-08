import 'package:flutter/material.dart';
import 'package:talent_pitch_test/screens/connect_screen.dart';
import 'package:talent_pitch_test/screens/initial_screen.dart';
import 'package:talent_pitch_test/screens/pitch_screen.dart';
import 'package:talent_pitch_test/screens/profile_screen.dart';
import 'package:talent_pitch_test/screens/top_screen.dart';
import 'package:talent_pitch_test/utils/my_colors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 3;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: _selectedIndex,
          children: const [
            InitialScreen(),
            ConnectScreen(),
            PitchScreen(),
            TopScreen(),
            ProfileScreen(),
          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: MyColors.primaryOpacityColor,
        unselectedIconTheme: IconThemeData(
          color: MyColors.primaryOpacityColor,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: 'Conétacte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic_none_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.diamond_outlined,),
            label: 'Top',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'Yo',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: MyColors.primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

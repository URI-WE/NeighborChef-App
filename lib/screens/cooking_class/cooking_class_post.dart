import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/styles/style_button.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';
//import 'package:neighborchefapp/widgets/styles/sttyle_appbar.dart';

class CookingClassPost extends StatefulWidget {
  const CookingClassPost({Key? key}) : super(key: key);

  @override
  _CookingClassPostState createState() => _CookingClassPostState();
}

class _CookingClassPostState extends State<CookingClassPost> {
  DateTime _selectedDate = DateTime.now();
  String? _selectedTime;
  DateTime _selectedDateShelf = DateTime.now();
  String? _selectedTimeShelf;
  void _presentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime.now())
        .then((pickedDate) {
      // Check if no date is selected
      if (pickedDate == null) {
        return;
      }
      setState(() {
        // using state so that the UI will be rerendered when date is picked
        _selectedDate = pickedDate;
      });
    });
  }

  Future<void> _show() async {
    final TimeOfDay? result =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTime = result.format(context);
      });
    }
  }

  void _presentDatePickerShelf() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime(2040))
        .then((pickedDateShelf) {
      // Check if no date is selected
      if (pickedDateShelf == null) {
        return;
      }
      setState(() {
        // using state so that the UI will be rerendered when date is picked
        _selectedDateShelf = pickedDateShelf;
      });
    });
  }

  Future<void> _showShelf() async {
    final TimeOfDay? result =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTimeShelf = result.format(context);
      });
    }
  }

  var pageName = 'New Post';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          styleAppBar(context,
              styleAppBarIcon: null,
              styleAppBarIconText: 'next',
              styleAppBarIconTextColor: Colors.red,
              styleAppBarTitle: pageName,
              styleAppBarNavigate: null,
              styleAppBarIcon2: null),
          Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                styleButton(
                  context,
                  styleButtonIcon: Icons.food_bank,
                  styleButtonText: 'Food Shared',
                  styleButtonBorderColor: Color(0xFFFFFFFF),
                  styleButtonIconSize: 27,
                  styleButtonColor: Color(0xFFffffff),
                  styleButtonTextColor: Color(0xff000000),
                  styleButtonTextSize: 14,
                  styleButtonNavigatorState: Navigator.push,
                  styleButtonNavigate: CookingClassPost(),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xffF6F6F6),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffF6F6F6), width: 4.0),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFF6F6F6), width: 4.0),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: 'Recipe Name',
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.people,
                              size: 40,
                            ),
                            Column(
                              children: [
                                Text('Recruitment',
                                    style: TextStyle(
                                        color: Color(0xff9B9B9B),
                                        fontSize: 11)),
                                Text(
                                  'Number',
                                  style: TextStyle(
                                      color: Color(0xffFF7E55), fontSize: 13),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.directions_run,
                              size: 40,
                            ),
                            Column(
                              children: [
                                const Text(
                                  'Difficulty',
                                  style: TextStyle(
                                      color: Color(0xff9B9B9B), fontSize: 11),
                                ),
                                const Text(
                                  'pick',
                                  style: TextStyle(
                                      color: Color(0xffFF7E55), fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.update,
                              size: 40,
                            ),
                            Column(
                              children: [
                                const Text(
                                  'Total Time',
                                  style: TextStyle(
                                      color: Color(0xff9B9B9B), fontSize: 11),
                                ),
                                const Text(
                                  'Pick',
                                  style: TextStyle(
                                      color: Color(0xffFF7E55), fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width * 4 / 5,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Text('Created Data'))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: TextButton(
                            onPressed: _presentDatePicker,
                            child: Text(
                              '${_selectedDate.year}/${_selectedDate.month}/${_selectedDate.day}',
                              style:
                                  TextStyle(fontSize: 27, color: Colors.black),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: TextButton(
                            onPressed: _show,
                            child: Text(
                              _selectedTime != null ? _selectedTime! : '00:00',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 27),
                            )),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Text('shelf Data'))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: TextButton(
                            onPressed: _presentDatePickerShelf,
                            child: Text(
                              '${_selectedDateShelf.year}/${_selectedDateShelf.month}/${_selectedDateShelf.day}',
                              style:
                                  TextStyle(fontSize: 27, color: Colors.black),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: TextButton(
                            onPressed: _showShelf,
                            child: Text(
                              _selectedTimeShelf != null
                                  ? _selectedTimeShelf!
                                  : '00:00',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 27),
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: Color(0xffE2E2E2),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffE2E2E2), width: 4.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFFE2E2E2), width: 4.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          hintText: 'Explanation',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color(0xffE2E2E2),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffE2E2E2), width: 4.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFE2E2E2), width: 4.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            hintText: 'Category',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color(0xffE2E2E2),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5))),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color(0xffE2E2E2),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xffE2E2E2), width: 4.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFE2E2E2), width: 4.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            hintText: 'Category',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/sidebar/appbar.dart';
import 'package:neighborchefapp/widgets/styles/style_button.dart';
import 'package:image_picker/image_picker.dart';

class NewPostShareRecipe extends StatefulWidget {
  const NewPostShareRecipe({Key? key}) : super(key: key);

  @override
  _NewPostShareRecipeState createState() => _NewPostShareRecipeState();
}

class _NewPostShareRecipeState extends State<NewPostShareRecipe> {
  final ImagePicker _picker = ImagePicker();
  List<XFile> _pickedImages = [];
  String dropDownValue1 = '10 Minutes';
  String dropDownValue2 = 'Easy';
  List<String> items1 = [
    '10 Minutes',
    '30 Minutes',
    '60 Minutes',
    '90 Minutes',
    '120 Minutes'
  ];
  var items2 = ['Easy', 'Normal', 'Hard'];
  @override
  void initState() {
    super.initState();
  }

  Future<void> _pickImg() async {
    final List<XFile>? images = await _picker.pickMultiImage();
    if (images != null) {
      setState(() {
        _pickedImages = images;
      });
    }
  }

  Widget build(BuildContext context) {
    var pageName = 'New Post';
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            styleAppBar(context,
                styleAppBarIcon: null,
                styleAppBarIconText: 'next',
                styleAppBarIconTextColor: Colors.red,
                styleAppBarTitle: pageName,
                styleAppBarNavigate: null,
                styleAppBarIcon2: null),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  styleButton(
                    context,
                    styleButtonIcon: Icons.book,
                    styleButtonText: 'Shared Recipe',
                    styleButtonBorderColor: const Color(0xFFFFFFFF),
                    styleButtonIconSize: 27,
                    styleButtonColor: const Color(0xFFffffff),
                    styleButtonTextColor: const Color(0xff000000),
                    styleButtonTextSize: 14,
                    styleButtonNavigatorState: Navigator.push,
                    styleButtonNavigate: const NewPostShareRecipe(),
                  )
                ],
              ),
            ),
            SizedBox(
                height: 50,
                child: SizedBox(
                    child: SizedBox(
                  child: Container(
                    child: Center(
                      child: IconButton(
                          onPressed: () {
                            _pickImg();
                          },
                          icon: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.6),
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.image_search,
                                color: Theme.of(context).colorScheme.primary,
                              ))),
                    ),
                  ),
                ))),
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
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffF6F6F6),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.update, size: 40),
                                    Column(
                                      children: [
                                        Text('Total Time'),
                                        Text('Pick')
                                      ],
                                    ),
                                  ],
                                )),
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Pick Recruitment'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('10 minuts')),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('30 minuts')),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('60 minuts')),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('90 minuts')),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('120 minuts')),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('150 minuts')),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('180 minuts')),
                                  ],
                                ),
                                actions: <Widget>[
                                  TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'cancle'),
                                      child: const Text('cancle')),
                                  TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'OK'),
                                      child: const Text('OK'))
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: Row(
                                  children: [
                                    InkWell(
                                      child: Container(
                                        child: Row(),
                                      ),
                                    ),
                                    const Icon(Icons.directions_run, size: 40),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('Difficulty'),
                                        Text('Pick')
                                      ],
                                    ),
                                  ],
                                )),
                            onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Pick Recruitment'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextButton(
                                        onPressed: () {}, child: Text('Easy')),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('Normal')),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('Difficalt')),
                                  ],
                                ),
                                actions: <Widget>[
                                  TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'cancle'),
                                      child: const Text('cancle')),
                                  TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'OK'),
                                      child: const Text('OK'))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 0.5,
                      width: MediaQuery.of(context).size.width * 4 / 5,
                      color: Colors.black,
                    ),
                    Container(
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
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
                        color: Color(0xffE2E2E2),
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
                              hintText: 'ingredients',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                          child: Text(
                            'Step',
                            style: TextStyle(
                                fontSize: 24, color: const Color(0xffFF7E55)),
                          ),
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
                            hintText: 'Descript',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

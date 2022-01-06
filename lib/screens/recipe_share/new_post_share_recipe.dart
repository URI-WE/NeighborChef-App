import 'package:flutter/material.dart';
import 'package:neighborchefapp/widgets/styles/sttyle_appbar.dart';
import 'package:neighborchefapp/widgets/styles/style_button.dart';
import 'package:image_picker/image_picker.dart';

class NewPostShareRecipe extends StatefulWidget {
  const NewPostShareRecipe({Key? key}) : super(key: key);

  @override
  _NewPostShareRecipeState createState() => _NewPostShareRecipeState();
}

class _NewPostShareRecipeState extends State<NewPostShareRecipe> {
  final ImagePicker _picker = ImagePicker();
  List<XFile> _pickedImg = [];
  Future<void> _pickImg() async {
    final List<XFile>? images = await _picker.pickMultiImage();
    if (images != null) {
      setState(() {
        _pickedImg = images;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var pageName = 'New Post';
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          styleAppBar(
            context,
            styleAppBarTitle: pageName,
            styleAppBarIconText: 'Next',
            styleAppBarIcon: null,
            styleAppBarIconTextColor: Colors.red,
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                styleButton(
                  context,
                  styleButtonIcon: Icons.book,
                  styleButtonText: 'Shared Recipe',
                  styleButtonBorderColor: Color(0xFFFFFFFF),
                  styleButtonIconSize: 27,
                  styleButtonColor: Color(0xFFffffff),
                  styleButtonTextColor: Color(0xff000000),
                  styleButtonTextSize: 14,
                  styleButtonNavigatorState: Navigator.push,
                  styleButtonNavigate: NewPostShareRecipe(),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: styleButton(
              context,
              styleButtonIcon: Icons.image,
              styleButtonWidth: 78,
              styleButtonHeight: 50,
              styleButtonColor: Color(0xFFFFFFFF),
              styleButtonIconColor: Colors.amber,
              styleButtonTextColor: Color(0xFFFFFFFF),
              styleButtonBorderColor: Color(0xFFFFFFFF),
              styleButtonIconSize: 48,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Color(0xffF6F6F6),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 4),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    )),
                labelText: 'Recipe Name',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              color: Color(0xffF6F6F6),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                            width: 100,
                            height: 40,
                            child: Column(
                              children: [
                                Text('total time'),
                                Text('Pick'),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Container(
                            width: 100,
                            height: 40,
                            child: Column(
                              children: [
                                Text('difficulty'),
                                Text('Pick'),
                              ],
                            )),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xffE2E2E2),
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 4),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            )),
                        labelText: 'Category',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      width: 200,
                      height: 100,
                      color: Color(0xffE2E2E2),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

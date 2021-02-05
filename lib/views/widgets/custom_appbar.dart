import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double height;

  const CustomAppBar({Key key, this.height}) : super(key: key);
  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _CustomAppBarState extends State<CustomAppBar> {
  final areas = ["Tanuku", "Tadepalligudem", "Rajahmundry"];
  int _selectedArea = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Available in"),
                      content: Container(
                        width: double.minPositive,
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemCount: areas.length,
                          separatorBuilder: (context, index) {
                            return Divider(
                              indent: 1,
                              height: 0.1,
                              thickness: 1,
                              color: Colors.black38,
                            );
                          },
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                ListTile(
                                    title: Text(areas[index]),
                                    onTap: () {
                                      setState(() {
                                        _selectedArea = index;
                                      });
                                      Navigator.of(context).pop();
                                    })
                              ],
                            );
                          },
                        ),
                      ),
                    );
                  });
            },
            child: Row(
              children: [
                Icon(
                  Icons.location_on_sharp,
                  color: Colors.amber[900],
                ),
                Text(
                  areas[_selectedArea],
                  style: TextStyle(fontSize: 14),
                ),
                Icon(
                  Icons.expand_more,
                  color: Colors.amber[900],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

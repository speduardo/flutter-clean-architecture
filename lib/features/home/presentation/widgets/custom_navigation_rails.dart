Row(
children: <Widget>[
NavigationRail(
extended: _isTapped,
leading: Padding(
padding: EdgeInsets.only(bottom: 10, top: 20),
child: Container(
height: 60,
width: 60,
padding: EdgeInsets.only(left: 20),
alignment: Alignment.centerLeft,
child: CustomFabButton(
onPressed: (isTapped) {
setState(() {
_isTapped = isTapped;
});
},
),
),
),
minWidth: 100,
backgroundColor: Color.fromRGBO(22, 160, 133, 1),
selectedIndex: _selectedIndex,
onDestinationSelected: (int index) {
setState(() {
_selectedIndex = index;
});
},
labelType: NavigationRailLabelType.none,
selectedIconTheme: IconThemeData(color: Colors.white, opacity: 1.0),
unselectedIconTheme:
IconThemeData(color: Colors.white, opacity: 0.7),
destinations: [
..._navigationTabs.map(
(d) => NavigationRailDestination(
icon: Icon(
d.icon,
size: 44,
),
label: Text(
d.title,
style: TextStyle(
fontSize: 18.0,
color: d.index == _selectedIndex
? Colors.white
    : Colors.white60),
)),
),
],
),
VerticalDivider(thickness: 1, width: 1),
// This is the main content.
Expanded(
child: Center(
child: Text('selectedIndex: $_selectedIndex'),
),
)
],
),
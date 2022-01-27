import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(image: AssetImage('assets/blade_runner.jpg')),
        Title(),
        ButtonSection(),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut nisl a massa interdum pretium a ultricies mauris. Aliquam dapibus, odio ac fringilla sodales, velit est gravida leo, in efficitur nisl sapien quis sapien. Proin tristique nisl orci, sed euismod sem molestie non. Nullam facilisis justo eu faucibus semper. Proin at lacus id dui interdum volutpat. Etiam et nisl enim. Nulla massa tellus, ornare nec metus a, dignissim feugiat dolor.',
              textAlign: TextAlign.justify,
            ))
      ],
    ));
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'oeschinene Lake campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, switzerland',
                style: TextStyle(color: Colors.black45),
              )
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton('Call', Icons.phone),
          CustomButton('Route', Icons.send),
          CustomButton('Share', Icons.share)
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String textName;
  final IconData iconName;

  const CustomButton(this.textName, this.iconName);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconName,
          color: Colors.blue[300],
        ),
        SizedBox(
          height: 5,
        ),
        Text(textName, style: TextStyle(color: Colors.blue[300]))
      ],
    );
  }
}

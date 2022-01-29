import 'package:flutter/material.dart';
import 'package:designs_app/widgets/card_table.dart';
import 'package:designs_app/widgets/background.dart';
import 'package:designs_app/widgets/page_title.dart';
import 'package:designs_app/widgets/custom_bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Background(), _HomeBody()],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [PageTitle(), CardTable()],
      ),
    );
  }
}

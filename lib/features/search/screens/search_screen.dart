import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:starter_project_flutter/utils/utils.dart';
import 'package:starter_project_flutter/constants/constants.dart';
import 'package:starter_project_flutter/features/search/widgets/list_view_card.dart';
import 'package:starter_project_flutter/common/widgets/custom_textfields.dart';

class SearchScreen extends StatefulWidget {
  static const String routeName = "/search-screen";
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    super.initState();
    checkUserData();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.keyboard_backspace_outlined,
            color: Colors.black,
            size: 35,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            SearchTextField(text: "Search For items", controller: controller),
            const SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const ListViewCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class CratePost extends StatefulWidget {
  const CratePost({Key? key}) : super(key: key);

  @override
  State<CratePost> createState() => _CratePostState();
}

class _CratePostState extends State<CratePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Crate New Post',
                style: Theme.of(context).appBarTheme.titleTextStyle),
            actions: [
              TextButton(onPressed: () {}, child: const Text('Submit'))
            ]),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Text('Select Picture'),
            const SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(mainAxisSize: MainAxisSize.min, children: [
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(UniconsLine.camera),
                            label: const Text('Select from Camera')),
                        const Divider(),
                        TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(UniconsLine.picture),
                            label: const Text('Select From Gallery '))
                      ]);
                    });
              },
              child: Image.asset(
                'assets/came.png',
                height: 300,
                width: MediaQuery.of(context).size.width,
              ),
            )
          ],
        ));
  }
}

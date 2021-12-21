import 'package:familicouse_app/crate_post.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: false,
          title: const Text(
            'Timeline',
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const CratePost();
                  }
                  ));
                },
                icon: Icon(
                  UniconsLine.plus_square,
                  color: Theme.of(context).iconTheme.color,
                )
                )
          ]),
      body: ListView(padding: EdgeInsets.all(16), children: [
        Card(
          color: Theme.of(context).cardColor,
          margin: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/africa.jpg')),
                title: Text(
                  'Francis Agyei',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                subtitle: Text(
                  'One minute Ago',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                ),
                trailing: Icon(Icons.more_horiz,
                    color: Theme.of(context).iconTheme.color),
              ),
              Text(
                'This picture was taking in venezuala on my way home, it was an amazing day ',
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2021/11/19/05/08/bicycle-6808140_960_720.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        UniconsLine.thumbs_up,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(UniconsLine.comment_lines,
                          color: Theme.of(context).iconTheme.color),
                    ],
                  ),
                  Icon(UniconsLine.telegram_alt,
                      color: Theme.of(context).iconTheme.color),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}

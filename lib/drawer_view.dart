import 'package:flutter/material.dart';
import 'package:seminar_app/admin/seminar/new.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({super.key});

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).primaryColor,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("lib/images/sem.png",
                      height: 50,
                    )
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'My Menu'.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
          Divider(color: Colors.yellow,),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          Divider(color: Colors.white,),
          ListTile(
            leading: Icon(
              Icons.list,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            title: Text(
              'List Seminars',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
            onTap: () {
              // Handle item 1 click
            },
          ),
          Divider(color: Colors.white,),
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            title: Text(
              'Create Seminar',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AdminSeminarNew())
              );
            },
          ),
          Divider(color: Colors.white,),
          ListTile(
            leading: Icon(
              Icons.list,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            title: Text(
              'Seminar Bookings',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
            onTap: () {
              // Handle item 1 click
            },
          ),
          Divider(color: Colors.white,),
          ListTile(
            leading: Icon(
              Icons.house,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            title: Text(
              'Seminar Venues',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
            onTap: () {
              // Handle item 1 click
            },
          ),
          Divider(color: Colors.white,),
          ListTile(
            leading: Icon(
              Icons.payment,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            title: Text(
              'Payment Options',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
            onTap: () {
              // Handle item 1 click
            },
          ),
          Divider(color: Colors.white,),
          ListTile(
            leading: Icon(
              Icons.account_circle_sharp,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            title: Text(
              'User Accounts',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
            onTap: () {
              // Handle item 1 click
            },
          ),
          Divider(color: Colors.white,),
          ListTile(
            leading: Icon(
              Icons.feedback,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            title: Text(
              'Feedback',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
            onTap: () {
              // Handle item 1 click
            },
          ),
          Divider(color: Colors.white,),
          ListTile(
            leading: Icon(
              Icons.help,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            title: Text(
              'FAQ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
            onTap: () {
              // Handle item 1 click
            },
          ),
          Divider(color: Colors.white,),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.white,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            title: Text(
              'About Us',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
            onTap: () {
              // Handle item 1 click
            },
          ),
          Divider(color: Colors.white,),
        ],
      ),
    );
  }
}

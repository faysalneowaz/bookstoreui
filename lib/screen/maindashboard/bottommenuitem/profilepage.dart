import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 28.0,
          left: 8.0,
          right: 8.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                profileName(),
                imageAndButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column imageAndButton() {
    return Column(
      children: [
        const CircleAvatar(
          radius: 50.0,
          backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1676378385233-65e5615f7b3c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 1.5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            backgroundColor: const Color(0xFFFF6EA1),
          ),
          child: const Text("Edit Profile"),
        ),
      ],
    );
  }

  Column profileName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Faysal Neowaz",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        const SizedBox(
          height: 32.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: const [
                Text(
                  "21",
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Books",
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: const [
                Text(
                  "50k",
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Followers",
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: const [
                Text(
                  "30",
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Following",
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

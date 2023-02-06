import 'package:bookstore/model/topicmodel.dart';
import 'package:bookstore/screen/maindashboard/maindashscreen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<TopicModel> topicModelList = [
    TopicModel(
      id: 1,
      name: "Politics",
      imgUrl:
          "https://images.unsplash.com/photo-1575320181282-9afab399332c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    ),
    TopicModel(
      id: 2,
      name: "History",
      imgUrl:
          "https://images.unsplash.com/photo-1604580864964-0462f5d5b1a8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    ),
    TopicModel(
      id: 3,
      name: "Science",
      imgUrl:
          "https://images.unsplash.com/photo-1518152006812-edab29b069ac?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    ),
    TopicModel(
      id: 4,
      name: "Law",
      imgUrl:
          "https://images.unsplash.com/photo-1589994965851-a8f479c573a9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    ),
    TopicModel(
      id: 5,
      name: "Food",
      imgUrl:
          "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
    ),
    TopicModel(
      id: 6,
      name: "MEDICAL",
      imgUrl:
          "https://images.unsplash.com/photo-1614935151651-0bea6508db6b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1225&q=80",
    ),
    TopicModel(
      id: 7,
      name: "Design",
      imgUrl:
          "https://images.unsplash.com/photo-1476357471311-43c0db9fb2b4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    ),
    TopicModel(
      id: 8,
      name: "Culture",
      imgUrl:
          "https://images.unsplash.com/photo-1543906965-f9520aa2ed8a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    ),
    TopicModel(
      id: 9,
      name: "Sport",
      imgUrl:
          "https://images.unsplash.com/photo-1552674605-db6ffd4facb5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    ),
    TopicModel(
      id: 10,
      name: "Economy",
      imgUrl:
          "https://images.unsplash.com/photo-1614028674026-a65e31bfd27c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    ),
    TopicModel(
      id: 11,
      name: "Tech",
      imgUrl:
          "https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    ),
    TopicModel(
      id: 12,
      name: "Robotics",
      imgUrl:
          "https://images.unsplash.com/photo-1518314916381-77a37c2a49ae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
    ),
  ];
  List<bool> isSelected = [];
  List ss = [];
  _selected(int i) {
    setState(() {
      if (ss.contains(i)) {
        ss.remove(i);
      } else {
        ss.add(i);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          left: 12.0,
          top: 32.0,
          right: 12.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome\nChoose the topics",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              color: Colors.transparent,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.70,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  shrinkWrap: true,
                  itemCount: topicModelList.length,
                  itemBuilder: (ctx, index) {
                    return InkWell(
                      onTap: () => _selected(index),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 65,
                            backgroundImage:
                                NetworkImage(topicModelList[index].imgUrl!),
                            child: ss.contains(index)
                                ? CircleAvatar(
                                    radius: 65,
                                    backgroundColor: const Color(0xFFFF6EA1)
                                        .withOpacity(0.35),
                                    child: const Icon(
                                      Icons.check,
                                      size: 45,
                                      color: Colors.white,
                                    ),
                                  )
                                : null,
                          ),
                          Text(
                            topicModelList[index].name!,
                            style: TextStyle(
                              fontSize: 18,
                              color: ss.contains(index)
                                  ? const Color(0xFFFF6EA1)
                                  : Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Center(
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "More topics",
                      style: TextStyle(
                        color: Color(0xFFFF6EA1),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MainDashScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF6EA1),
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      padding: EdgeInsets.only(
                        top: 16.0,
                        bottom: 16.0,
                        right: MediaQuery.of(context).size.width * 0.35,
                        left: MediaQuery.of(context).size.width * 0.35,
                      ),
                    ),
                    child: const Text("Apply"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

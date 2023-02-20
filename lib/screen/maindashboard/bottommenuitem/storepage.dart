import 'package:bookstore/model/bookmodel.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  List<BookModel> bookModel = [
    BookModel(
        imgurl:
            "https://images.unsplash.com/photo-1629992101753-56d196c8aabb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=390&q=80",
        title: "NarNia",
        authorName: "C.S. Lewis",
        smallDetails:
            "The Chronicles of Narnia leather-bound rare book by Barnes and Noble New York"),

    BookModel(
        imgurl:
            "https://images.unsplash.com/photo-1641154748135-8032a61a3f80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80",
        title: "Company of One",
        authorName: "Paul Jarvis",
        smallDetails: "Company of One, Paul Jarvis"),
    BookModel(
        imgurl:
            "https://images.unsplash.com/photo-1633477189729-9290b3261d0a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=722&q=80",
        title: "Picture of Dorian Gray",
        authorName: "Oscar Wilde",
        smallDetails:
            "Oscar Wilde's The Picture of Dorian Gray (New York: Barnes and Noble Leatherbound Classics"),
    // BookModel(
    // imgurl: "",
    // title: "Company of One",
    // authorName: "Paul Jarvis",
    // smallDetails: "Company of One, Paul Jarvis"),
    // BookModel(
    // imgurl: "",
    // title: "Company of One",
    // authorName: "Paul Jarvis",
    // smallDetails: "Company of One, Paul Jarvis"),
    // BookModel(
    // imgurl: "",
    // title: "Company of One",
    // authorName: "Paul Jarvis",
    // smallDetails: "Company of One, Paul Jarvis"),
    // BookModel(
    // imgurl: "",
    // title: "Company of One",
    // authorName: "Paul Jarvis",
    // smallDetails: "Company of One, Paul Jarvis"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                      hintText: "Search books, Authors",
                      hintStyle: TextStyle(color: Colors.black38),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(
                        Icons.filter_list,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      focusColor: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: bookModel.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 180,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(bookModel[index].imgurl!),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  bookModel[index].title!,
                                  style: const TextStyle(
                                      fontSize: 22, color: Colors.black),
                                ),
                                Text(
                                  bookModel[index].authorName!,
                                  style: const TextStyle(
                                    color: Colors.black38,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  bookModel[index].smallDetails!,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.black38,
                                    fontSize: 16,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFFFF6EA1),
                                        textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        // padding: EdgeInsets.only(
                                        //   top: 16.0,
                                        //   bottom: 16.0,
                                        //   right: MediaQuery.of(context).size.width *
                                        //       0.35,
                                        //   left: MediaQuery.of(context).size.width *
                                        //       0.35,
                                        // ),
                                      ),
                                      child: const Text("Add to cart"),
                                    ),
                                    const SizedBox(
                                      width: 18,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xFFFF6EA1),
                                        textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        // padding: EdgeInsets.only(
                                        //   top: 16.0,
                                        //   bottom: 16.0,
                                        //   right: MediaQuery.of(context).size.width *
                                        //       0.35,
                                        //   left: MediaQuery.of(context).size.width *
                                        //       0.35,
                                        // ),
                                      ),
                                      child: const Text("Add to wishlist"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'model.dart';


class spoti extends StatefulWidget {
  const spoti({super.key});

  @override
  State<spoti> createState() => _spotiState();
}

class _spotiState extends State<spoti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(

        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
        {
          return [
            SliverAppBar(
             automaticallyImplyLeading: true,
              snap: false,
              pinned: true,
              floating: false,
              backgroundColor: Colors.blueGrey,
              title: Icon(Icons.arrow_back),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Vibe Time"),
                background: Column(
                  children: [
                    Row(
                      children: [


                      ],
                    ),
                    Image(
                        image: AssetImage("assets/spoti jk.jpg"),
                    )
                  ],
                ),
              ),
              expandedHeight: 300.5,
              ),
          ];
        },





          body: Column(
            children: [
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.add_circle),
                    Icon(Icons.downloading_rounded),
                    Icon(Icons.more_horiz),
                    Icon(Icons.shuffle),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF1DB954),
                        shape: BoxShape.circle
                      ),
                      child: Icon(Icons.play_arrow),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: abc.length,
                      itemBuilder: (BuildContext context, int index)
                      {
                        return Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [Color(0xfff121212),Color(0xfff121212)])
                          ),
                          child: ListTile(
                            leading: Container(
                              height: 600,
                              width: 65,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle
                              ),
                              child: Image(image: AssetImage(abc[index].image),
                              fit: BoxFit.fill,
                              ),
                            ),
                            title: Text(abc[index].text,style: TextStyle(color: Colors.white),),
                            trailing: Icon(Icons.more_vert,color: Colors.white,),
                          ),
                        );

                      }



                  )
              )

            ],
          ),
      )
    );
  }
}

import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Create A New Task'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'LINK',
              ),
              Tab(
                text: 'FILE',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 16,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(8.0),
                      hintText: 'Enter a new download link',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: double.infinity,
                  child: RaisedButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: Text('DOWNLOAD'),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: RichText(
                      text: TextSpan(
                          text: 'Pick a ',
                          style: TextStyle(
                              color: Theme.of(context).textTheme.title.color),
                          children: [
                            TextSpan(
                                text: '".torrent"',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                            TextSpan(text: ' or '),
                            TextSpan(
                                text: '".metalink"',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                            TextSpan(text: ' file from local storage.')
                          ]),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: double.infinity,
                  child: RaisedButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: Text('PICK'),
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

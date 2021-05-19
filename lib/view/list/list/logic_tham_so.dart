import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class LogicThamSo extends StatefulWidget {
  @override
  _LogicThamSoState createState() => _LogicThamSoState();
}

class _LogicThamSoState extends State<LogicThamSo> {
  List<String> items = <String>['1', '2','1', '2','1', '2'];
  //
  // void _list() {
  //   setState(() {
  //     items = items.reversed.toList();
  //   });
  // }

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list View"),
      ),
      body: SafeArea(
        child: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return KeepAlive(
                data: items[index],
                key: ValueKey<String>(items[index]),
              );
            },
              childCount: items.length,
              findChildIndexCallback: (Key key) {
                final ValueKey valueKey = key as ValueKey;
                final String data = valueKey.value;
                return items.indexOf(data);
              }
          ),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       TextButton(
      //         onPressed: () => _list(),
      //         child: Text('Reverse items'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class KeepAlive extends StatefulWidget {
  const KeepAlive({
    @required Key key,
    @required this.data,
  }) : super(key: key);

  final String data;

  @override
  _KeepAliveState createState() => _KeepAliveState();
}

class _KeepAliveState extends State<KeepAlive> with AutomaticKeepAliveClientMixin{
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Text(widget.data);
  }
}
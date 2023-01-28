import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class AppCardOne extends StatelessWidget {
  const AppCardOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
            title: Text('This is a title'),
            subtitle: Text("Ex et veniam dolore mollit esse in irure nulla. Laboris officia nisi cupidatat tempor. Enim sint et ea sit non fugiat cupidatat amet incididunt reprehenderit. Mollit est ea amet deserunt esse laborum aliqua ex irure nulla. Quis dolore est dolor velit dolor deserunt pariatur nulla laborum in laboris."),
          ),
          Padding(
            padding: const EdgeInsets.only(right:7.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed:() {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed:() {},
                  child: const Text('OK')
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:screva/notifiers/id.notifier.dart';

class AppProvider {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => IDnotifier()),
  ];
}

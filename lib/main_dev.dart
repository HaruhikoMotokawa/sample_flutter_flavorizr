import 'flavors.dart';
import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = FlavorType.dev;
  await runner.main();
}

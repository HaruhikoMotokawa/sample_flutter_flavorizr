import 'flavors.dart';
import 'main.dart' as runner;

Future<void> main() async {
  Flavor.appFlavor = FlavorType.dev;
  await runner.main();
}

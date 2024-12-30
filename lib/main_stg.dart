import 'flavors.dart';
import 'main.dart' as runner;

Future<void> main() async {
  Flavor.appFlavor = FlavorType.stg;
  await runner.main();
}

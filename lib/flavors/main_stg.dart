import '../main.dart' as runner;
import 'flavors.dart';

Future<void> main() async {
  Flavor.appFlavor = FlavorType.stg;
  await runner.main();
}

import 'flavors.dart';
import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = FlavorType.stg;
  await runner.main();
}

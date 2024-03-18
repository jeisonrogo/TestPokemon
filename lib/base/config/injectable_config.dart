import "package:fidelity/base/config/injectable_config.config.dart";
import "package:get_it/get_it.dart";
import "package:injectable/injectable.dart";

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: "init", // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();

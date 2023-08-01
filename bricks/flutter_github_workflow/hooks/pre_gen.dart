import 'package:mason/mason.dart';

void run(HookContext context) {
  final workFlowType = context.vars['workflow_type'].toString().toLowerCase();
  final isDartPackage = workFlowType == 'dart_package';
  final isFlutterPackage = workFlowType == 'flutter_package';

  context.vars = {
    ...context.vars,
    'isDartPackage': isDartPackage,
    'isFlutterPackage': isFlutterPackage,
  };
}

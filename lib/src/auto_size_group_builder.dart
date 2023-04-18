part of auto_size_text;

/// A Flutter widget that provides an [AutoSizeGroup] to its builder function.
class AutoSizeGroupBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, AutoSizeGroup autoSizeGroup)
      builder;

  /// Creates an [AutoSizeGroupBuilder] widget.
  const AutoSizeGroupBuilder({Key? key, required this.builder}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AutoSizeGroupBuilderState createState() => _AutoSizeGroupBuilderState();
}

class _AutoSizeGroupBuilderState extends State<AutoSizeGroupBuilder> {
  final _group = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _group);
  }
}


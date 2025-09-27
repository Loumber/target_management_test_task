import 'package:flutter/widgets.dart';

typedef SizeChangedCallback = void Function(Size size);

class MeasureSize extends StatefulWidget {
  const MeasureSize({super.key, required this.onChange, required this.child});

  final Widget child;
  final SizeChangedCallback onChange;

  @override
  State<MeasureSize> createState() => _MeasureSizeState();
}

class _MeasureSizeState extends State<MeasureSize> {
  Size _oldSize = Size.zero;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final render = context.findRenderObject();
      if (render is RenderBox) {
        final newSize = render.size;
        if (newSize != _oldSize) {
          _oldSize = newSize;
          widget.onChange(newSize);
        }
      }
    });
    return widget.child;
  }
}



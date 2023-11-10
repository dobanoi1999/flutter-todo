import 'package:flutter/material.dart';
import 'package:flutter_todo_app/themes/my_color.dart';
import 'package:flutter_todo_app/themes/styles.dart';

enum ButtonSize { small, medium, large }

final Map<ButtonSize, double> sizeMap = {
  ButtonSize.small: 40,
  ButtonSize.medium: 48,
  ButtonSize.large: 56,
};

class ButtonIcon {
  final IconData icon;
  final String position;
  ButtonIcon(this.icon, this.position);
}

class MyButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final ButtonSize? size;
  final ButtonIcon? buttonIcon;
  final bool? onlyIcon;

  const MyButton(this.text,
      {super.key,
      required this.onPressed,
      this.size = ButtonSize.medium,
      this.buttonIcon,
      this.onlyIcon = false});

  @override
  Widget build(BuildContext context) {
    if (onlyIcon == true) {
      return SizedBox(
        width: sizeMap[size] ?? sizeMap[ButtonSize.medium],
        height: sizeMap[size] ?? sizeMap[ButtonSize.medium],
        child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return MyColor.brandPressed;
            }
            return MyColor.brandDefault;
          }),
        ),
        onPressed: onPressed,
        child:Icon(buttonIcon?.icon, size: 24),
      ),
      );
    }
    return SizedBox(
        width: double.infinity,
        height: sizeMap[size] ?? sizeMap[ButtonSize.medium],
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0))),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return MyColor.brandPressed;
                }
                return MyColor.brandDefault;
              }),
              maximumSize: MaterialStateProperty.all(Size.infinite)),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (buttonIcon != null && buttonIcon?.position == 'left') ...[
                Icon(buttonIcon?.icon),
                const SizedBox(width: 4)
              ],
              Text(text, style: MyCustomStyles.titleStyle),
              if (buttonIcon != null && buttonIcon?.position == 'right') ...[
                const SizedBox(
                  width: 4,
                ),
                Icon(buttonIcon?.icon)
              ],
            ],
          ),
        ));
  }
}

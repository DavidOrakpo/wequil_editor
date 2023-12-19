import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:wequil_editor/wequil_editor.dart';

class WeQuilToolBar extends StatelessWidget {
  final WEquilEditorController editorController;
  final Color sectionDividerColor;

  const WeQuilToolBar({
    super.key,
    required this.editorController,
    required this.sectionDividerColor,
  });

  @override
  Widget build(BuildContext context) {
    return QuillToolbar.basic(
      toolbarIconSize: 20,
      controller: editorController.quillController,
      sectionDividerColor: sectionDividerColor,
      multiRowsDisplay: false,
      showBackgroundColorButton: false,
      showLink: false,
      showQuote: true,
      showUndo: false,
      showRedo: false,
      showIndent: true,
      showClearFormat: true,
      showFontSize: false,
      showSearchButton: true,
      showSuperscript: false,
      showSubscript: false,
      showInlineCode: true,
      showFontFamily: false,
      showDirection: false,
      showDividers: true,
      showHeaderStyle: true,
      showStrikeThrough: true,
      showCenterAlignment: true,
      showJustifyAlignment: true,
      showLeftAlignment: true,
      showRightAlignment: true,
      showColorButton: true,
      showSmallButton: false,
      showAlignmentButtons: true,
      showCodeBlock: true,
      showBoldButton: true,
      showItalicButton: true,
      showListCheck: true,
      showListBullets: true,
      showListNumbers: true,
      showUnderLineButton: true,
    );
  }
}

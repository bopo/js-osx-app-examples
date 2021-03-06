JsOsaDAS1.001.00bplist00�Vscript_�// NOTE: This builds on the NSWindow example
// NScomboBox: https://developer.apple.com/library/mac/documentation/Cocoa/Reference/ApplicationKit/Classes/nscombobox_Class/Reference/Reference.html

ObjC.import("Cocoa");

// See https://developer.apple.com/library/mac/documentation/Cocoa/Reference/ApplicationKit/Classes/nswindow_Class/Reference/Reference.html#//apple_ref/doc/constant_group/Window_Style_Masks
// For info about window masks
var styleMask = $.NSTitledWindowMask | $.NSClosableWindowMask | $.NSMiniaturizableWindowMask;

var window = $.NSWindow.alloc.initWithContentRectStyleMaskBackingDefer(
	$.NSMakeRect(0, 0, 400, 200),
	styleMask,
	$.NSBackingStoreBuffered,
	false
);

var comboBox = $.NSComboBox.alloc.initWithFrame($.NSMakeRect(25, 100, 350, 25));

var items = ["Item One", "Item Two", "Item Three", "Corn on the cob"];
comboBox.addItemsWithObjectValues(items);

window.contentView.addSubview(comboBox);

window.center;
window.title = "NSComboBox Example";
window.makeKeyAndOrderFront(window);
                               jscr  ��ޭ
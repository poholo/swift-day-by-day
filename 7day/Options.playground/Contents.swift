//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

/**
“不要误会，我们谈的是 Options，不是 Optional。后者已经被谈论太多了，我不想再在上面再多补充什么了。

我们来说说 Options，或者在 Objective-C 中的 NS_OPTIONS，在 Swift 中是怎样的形式吧。

在 Objective-C 中，我们有很多需要提供某些选项的 API，它们一般用来控制 API 的具体的行为配置等。举个例子，常用的 UIView 动画的 API 在使用时就可以进行选项指定：

[UIView animateWithDuration:0.3
delay:0.0
options:UIViewAnimationOptionCurveEaseIn |
UIViewAnimationOptionAllowUserInteraction
animations:^{
// ...
} completion:nil];
我们可以使用 | 或者 & 这样的按位逻辑符对这些选项进行操作，这是因为一般来说在 Objective-C 中的 Options 的定义都是类似这样的按位错开的：

typedef NS_OPTIONS(NSUInteger, UIViewAnimationOptions) {
UIViewAnimationOptionLayoutSubviews            = 1 <<  0,
UIViewAnimationOptionAllowUserInteraction      = 1 <<  1,
UIViewAnimationOptionBeginFromCurrentState     = 1 <<  2,

//...
”

摘录来自: 王巍 (onevcat). “Swifter - 100 个 Swift 必备 tips”。 iBooks.
*/
/*
“typedef NS_OPTIONS(NSUInteger, UIViewAnimationOptions) {
    UIViewAnimationOptionLayoutSubviews            = 1 <<  0,
    UIViewAnimationOptionAllowUserInteraction      = 1 <<  1,
    UIViewAnimationOptionBeginFromCurrentState     = 1 <<  2,
    ”
    
    摘录来自: 王巍 (onevcat). “Swifter - 100 个 Swift 必备 tips”。 iBooks.
*/
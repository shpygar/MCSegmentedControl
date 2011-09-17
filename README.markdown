
The color of a UISegmentedControl in the UIKit is customizable only in the bar style mode, so if one uses the plain or bordered mode, the only possible color is blue. This could be a problem if blue does not fit well in your app or in a view.

The only way to support other colors is to subclass the UISegmentedColor and draw the view yourself. That’s what I did in the MCSegmentedControl class, here’s how it looks with a green tint color.
![](http://matteocaldari.it/wp-content/uploads/Screen-shot-2010-05-24-at-09.53.17.png "green")

Here  compared with the standard UISegmentedControl, bordered style (mine is above):
![](http://matteocaldari.it/wp-content/uploads/Screen-shot-2010-05-24-at-09.51.49.png)


and plain style:
![](http://matteocaldari.it/wp-content/uploads/Screen-shot-2010-05-24-at-09.52.28.png)


This implementation is not pixel identical to the Apple one, but it is very similar.

I added support for customizing the tint (i.e. the background of the selected segment), the color of the not selected items and of the selected item, plus, if the segment has an image, it is drawn as a mask, so it will always be in the same color as the text.

At the moment, animations and the following UISegmentedControl methods are not supported:

```- (void)setWidth:(CGFloat)width forSegmentAtIndex:(NSUInteger)segment;
- (void)setContentOffset:(CGSize)offset forSegmentAtIndex:(NSUInteger)segment
```

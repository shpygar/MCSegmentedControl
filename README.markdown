
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

```
- (void)setWidth:(CGFloat)width forSegmentAtIndex:(NSUInteger)segment;
- (void)setContentOffset:(CGSize)offset forSegmentAtIndex:(NSUInteger)segment;
```

**License**

MCSegmentedControl 
Copyright (c) 2011, MCSegmentedControl and Matteo Caldari

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

*Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
*Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
*Neither the name of MCSegmentedControl or Matteo Caldari nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

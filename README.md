# HR-Dashboard
A modern, responsive &amp; adaptive HR dashboard UI built with Figma. Designed to visualize employee data, track performance metrics, and streamline HR workflows across devices. Ideal for showcasing clean layout design and adaptive interface principles.

[Figma UI Design Link](https://www.figma.com/design/1We4tG7Qwur9JbjT42sEiC/HR-Dashboard-Responsive--Community---Copy-?node-id=149-462&p=f&t=BSt11r9Tkf6CwZgs-0)

## Tools for Responsive UI
### MediaQuery 
Used to query the screen’s size, orientation, and other properties. Essential for adapting layouts dynamically.
### Layout Builder
Ideal for customizing UI based on the constraints of the parent widget.especially useful for adapting to different device types like tablets, mobiles, and desktops.
### Expanded 
Allocates the remaining available space to a widget within a Row, Column. Helps distribute space efficiently.
### Flexible
Gives a widget its natural size but allows it to shrink if space is limited.
### FittedBox
FittedBox takes a child widget and resizes it to fit within the space given by its parent. It scales the child up or down and aligns it so that it doesn’t overflow or get clipped.
### AspectRatio
Maintains a specific width-to-height ratio for its child. Useful for consistent sizing across devices.
### IntrinsicHeight / IntrinsicWidth
Measures the size of the largest child and adjusts the parent’s height or width accordingly.

### MediaQuery vs LayoutBuilder
- MediaQuery returns the actual size of the entire screen.
- LayoutBuilder returns the size of its parent widget’s constraints.

## Responsive Text Sizing
To ensure font sizes adapt smoothly across devices, use the following approach:

### 🔧 Key Concepts
- Base Font Size: The original font size used as a reference.
- Scale Factor: Adjusts font size based on device width.
    - Formula: `Scale Factor = currentWidth / widthPlatform` (where widthPlatform is the breakpoint width for Desktop, Tablet, or Mobile)
- Responsive Font Size: `Responsive Font Size = Base Font Size × Scale Factor`
- Limits
    - Lower Limit: `Lower Limit = Base Font Size × 0.8`
    - Upper Limit: `Upper Limit = Base Font Size × 1.2`
- Clamp the responsive size between the limits: Final Font Size = clamp(Lower Limit, Responsive Font Size, Upper Limit)

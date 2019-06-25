# breakpoints

A simple library for getting page breakpoints xs, sm, md, lg, xl

Inspired by [material-ui](https://material-ui.com/)

breakpoints:
```
xs: 0
sm: 600
md: 960
lg: 1280
xl: 1920
```
```
innerWidth  |xs      sm       md       lg       xl
            |--------|--------|--------|--------|-------->
width       |   xs   |   sm   |   md   |   lg   |   xl
```

## Install
```
dependencies:
  breakpoints:
```

## Usage
```
double width = MediaQuery.of(context).size.width;

Breakpoints.only(width, [BreakpointsKeys.xs, BreakpointsKeys.lg])
    ? Text('xs or lg')
    : Container()

Breakpoints.isSm(width) ? Text('isSm') : Container()

Breakpoints(200).toString() // xs
```
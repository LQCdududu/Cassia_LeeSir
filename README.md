# Cassia
iOS QQ侧边栏 抽屉样式

侧边栏，高仿QQ效果
首先，用一个viewController容器添加了左侧栏控制器和主控制器，让它成为window根控制器.这样做方便在点击左侧控制器cell的时候，通过根控制器跳转到其他页面。

滑动主控制器出现或隐藏左侧侧边栏，主要是通过两个手势，一个是UIPanGestureRecognizer，一个是UITapGestureRecognizer.计算视图位置来判断滑动。

![image](https://github.com/LQCdududu/Cassia_LeeSir/blob/master/demo.gif)

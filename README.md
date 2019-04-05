

###  使用范例：
>  准备条件：
>
>  将BackMode整个工程拖拽到项目中
>
>  配置 Capabilities  设置Background Modes 选择Audio, AirPlay, and Picture in Picture

####  1. 在需要进行后台线程常驻的时候，需要开启

```
 [[FMBackModeManager shared] activeBackMode];
```

####  2. 在不需要后台常驻的时候关闭即可

```
 [[FMBackModeManager shared] invalidBackModel];
```



#### 3. 音乐配置,开启背景提示音乐，关闭背景提示音乐
```
 [FMBackModeManager shared].soundActive = YES;
```


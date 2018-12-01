# android-image-resource-archiver

有些设计师会只导出 iOS 的切图。sketch 导出图片素材都在同一个文件夹下，而且不同分辨率有 `"@2x"` `"@3x"` 这样的后缀。此脚本可以将这种格式的切图归档到 android 的 `drawable-xhdpi` `drawable-xxhdpi` 文件夹下并去掉后缀。

运行环境为 **`Windows PowerShell`**

## 逻辑

- @1x -> drawable-mdpi
- @2x -> drawable-xhdpi
- @3x -> drawable-xxhdpi

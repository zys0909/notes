```java
public static Bitmap getDecodeBitmapFromFile(String filePath,int reqWidth, int reqHeight) {
        final BitmapFactory.Options options = new BitmapFactory.Options();
         // 值设为true那么将不返回实际的bitmap，也不给其分配内存空间这样就避免内存溢出了。	
  				//但是允许我们查询图片的信息这其中就包括图片大小信息
        options.inJustDecodeBounds = true;
        //将本地文件的图片信息读取到options中
        BitmapFactory.decodeFile(filePath, options);
        // 计算inSampleSize值
        options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight);
        // 使用获取到的inSampleSize值再次解析图片
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(filePath, options);
}

public static int calculateInSampleSize(BitmapFactory.Options options,int reqWidth, int reqHeight) {
    // 源图片的高度和宽度
    final int height = options.outHeight;
    final int width = options.outWidth;
    int inSampleSize = 1;//采样率默认为1，即原图
    //如果原图片的宽或者高大于我们需求的宽或者高才进行采样工作
    if (height > reqHeight || width > reqWidth) {
        // 计算出实际宽高和目标宽高的比率
        final int heightRatio = Math.round((float) height / (float) reqHeight);
        final int widthRatio = Math.round((float) width / (float) reqWidth);
        // 选择宽和高中最小的比率作为inSampleSize的值，这样可以保证最终图片的宽和高
        // 一定都会大于等于目标的宽和高。这样加载出来的图片不会被拉伸
        inSampleSize = heightRatio < widthRatio ? heightRatio : widthRatio;
    }
    return inSampleSize;
}
```


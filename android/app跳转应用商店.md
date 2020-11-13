```kotlin
var huaweiChal="appmarket://details?id=<PackageName>";//华为
var vivoChal="vivoMarket://details?id=<PackageName>";//vivo
var xiaomiChal="mimarket://details?id=<PackageName>";//小米
var meizuChal="mstore://details?package_name=<PackageName>";//魅族

var qqChal="tmast://appdetails?pname=<PackageName>";//应用宝  直接下载
var qqChal="tmast://appdetails?pname=<PackageName>";//应用宝  直接下载
var baiduChal="http://market.android.com/details?id=<PackageName>";//百度 搜狗 网页
var jinliChal="http://m.appgionee.com/marketdetail?id=<PackageName>";//金立 网页
var lenovoChal="http://market.lenovomm.com/details?id=<PackageName>";//联想
var anzhiChal="anzhimarket://details?id=<PackageName>";//安智市场

 val uri = Uri.parse(huaweiChal)
 startActivity(Intent(Intent.ACTION_VIEW, uri))


Build.MANUFACTURER 设备厂商
Build.BRAND 品牌
```


	[toc]



### 1. 为RecyclerView增加Item点击回调

```kotlin
fun RecyclerView.setOnItemClickListener(listener: (View, Int) -> Unit) {
    addOnItemTouchListener(object : RecyclerView.OnItemTouchListener {
        val gestureDetector = GestureDetector(context, object : GestureDetector.OnGestureListener {
            override fun onDown(e: MotionEvent?): Boolean = false

            override fun onShowPress(e: MotionEvent?) {
            }

            override fun onSingleTapUp(e: MotionEvent?): Boolean {
                e?.let {
                    findChildViewUnder(it.x, it.y)
                }?.also {
                    listener.invoke(it, getChildAdapterPosition(it))
                }
                return false
            }

            override fun onScroll(
                e1: MotionEvent?,
                e2: MotionEvent?,
                distanceX: Float,
                distanceY: Float
            ): Boolean = false

            override fun onLongPress(e: MotionEvent?) {
            }

            override fun onFling(
                e1: MotionEvent?,
                e2: MotionEvent?,
                velocityX: Float,
                velocityY: Float
            ): Boolean = false
        })

        override fun onInterceptTouchEvent(rv: RecyclerView, e: MotionEvent): Boolean {
            gestureDetector.onTouchEvent(e)
            return false
        }

        override fun onTouchEvent(rv: RecyclerView, e: MotionEvent) {
        }

        override fun onRequestDisallowInterceptTouchEvent(disallowIntercept: Boolean) {
        }

    })
}
```

### 2.控件按压效果

```xml
android:foreground="?attr/selectableItemBackgroundBorderless"
```


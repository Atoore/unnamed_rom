.class public Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;
.super Landroid/view/ViewGroup;
.source "SamsungWidgetPreviewDrawer.java"


# instance fields
.field private SNAP_VELOCITY:I

.field private mCurrentScreen:I

.field private mDownX:F

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mOrientation:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSnapToScreenDuration:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mOrientation:I

    .line 31
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    .line 53
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->SNAP_VELOCITY:I

    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 70
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchSlop:I

    .line 71
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mMaximumVelocity:I

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->SNAP_VELOCITY:I

    .line 78
    iget v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 79
    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_1
    const/16 v1, 0x258

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    goto :goto_0
.end method

.method private snapToDestination()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWhichScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(I)V

    .line 132
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollY:I

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->postInvalidate()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    if-eq v1, v4, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v0

    .line 103
    .local v0, count:I
    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    .line 104
    iput v4, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->postInvalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v0

    .line 400
    .local v0, childCount:I
    if-gtz v0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    if-le v0, v9, :cond_2

    .line 404
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-gez v7, :cond_3

    .line 405
    sub-int v7, v0, v9

    iput v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    .line 411
    :cond_2
    :goto_1
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    if-eq v7, v9, :cond_4

    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    move v5, v9

    .line 413
    .local v5, fastDraw:Z
    :goto_2
    if-eqz v5, :cond_5

    .line 414
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-ge v7, v0, :cond_0

    .line 415
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getDrawingTime()J

    move-result-wide v8

    invoke-virtual {p0, p1, v7, v8, v9}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0

    .line 406
    .end local v5           #fastDraw:Z
    :cond_3
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-lt v7, v0, :cond_2

    .line 407
    iput v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    goto :goto_1

    :cond_4
    move v5, v10

    .line 411
    goto :goto_2

    .line 418
    .restart local v5       #fastDraw:Z
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getDrawingTime()J

    move-result-wide v3

    .line 422
    .local v3, drawingTime:J
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    sub-int v2, v7, v8

    .line 423
    .local v2, diff:I
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    if-ltz v7, :cond_8

    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    if-ge v7, v0, :cond_8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ne v7, v9, :cond_8

    .line 424
    if-lez v2, :cond_7

    .line 425
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    sub-int v8, v0, v9

    if-ge v7, v8, :cond_6

    .line 426
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 431
    :cond_6
    :goto_3
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 432
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0

    .line 428
    :cond_7
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-lez v7, :cond_6

    .line 429
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    sub-int/2addr v7, v9

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_3

    .line 435
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v1

    .line 436
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    if-ge v6, v1, :cond_0

    .line 437
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 436
    add-int/lit8 v6, v6, 0x1

    goto :goto_4
.end method

.method getCurrentScreen()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    return v0
.end method

.method public getWhichScreen()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getMeasuredWidth()I

    move-result v2

    .line 111
    .local v2, screenWidth:I
    const/4 v4, 0x0

    .line 112
    .local v4, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v1

    .line 113
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    .line 114
    .local v3, scrollX:I
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v6

    sub-int v0, v5, v6

    .line 115
    .local v0, availableToScroll:I
    if-gez v3, :cond_0

    .line 116
    const/4 v4, 0x0

    .line 127
    :goto_0
    return v4

    .line 117
    :cond_0
    if-gtz v0, :cond_1

    .line 118
    sub-int v4, v1, v7

    goto :goto_0

    .line 120
    :cond_1
    if-lez v2, :cond_2

    .line 121
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    div-int v4, v5, v2

    goto :goto_0

    .line 123
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 191
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_0

    .line 192
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 194
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 197
    .local v0, action:I
    const/4 v9, 0x2

    if-ne v0, v9, :cond_1

    iget v9, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    if-eqz v9, :cond_1

    move v9, v10

    .line 255
    :goto_0
    return v9

    .line 201
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 202
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 204
    .local v6, y:F
    packed-switch v0, :pswitch_data_0

    .line 254
    :cond_2
    :goto_1
    iget v9, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    if-eqz v9, :cond_6

    move v1, v10

    .local v1, ret:Z
    :goto_2
    move v9, v1

    .line 255
    goto :goto_0

    .line 216
    .end local v1           #ret:Z
    :pswitch_0
    iget v9, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v4, v9

    .line 217
    .local v4, xDiff:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v7, v9

    .line 219
    .local v7, yDiff:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchSlop:I

    .line 220
    .local v2, touchSlop:I
    if-le v4, v2, :cond_4

    move v5, v10

    .line 221
    .local v5, xMoved:Z
    :goto_3
    if-le v7, v2, :cond_5

    move v8, v10

    .line 223
    .local v8, yMoved:Z
    :goto_4
    if-nez v5, :cond_3

    if-eqz v8, :cond_2

    .line 225
    :cond_3
    if-eqz v5, :cond_2

    .line 227
    iput v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto :goto_1

    .end local v5           #xMoved:Z
    .end local v8           #yMoved:Z
    :cond_4
    move v5, v11

    .line 220
    goto :goto_3

    .restart local v5       #xMoved:Z
    :cond_5
    move v8, v11

    .line 221
    goto :goto_4

    .line 236
    .end local v2           #touchSlop:I
    .end local v4           #xDiff:I
    .end local v5           #xMoved:Z
    .end local v7           #yDiff:I
    :pswitch_1
    iput v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    iput v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mDownX:F

    .line 237
    iput v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionY:F

    .line 244
    iput v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto :goto_1

    .line 250
    :pswitch_2
    iput v11, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto :goto_1

    :cond_6
    move v1, v11

    .line 254
    goto :goto_2

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v3

    .line 381
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 382
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 383
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 385
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 387
    add-int/2addr v1, v2

    .line 381
    .end local v2           #childWidth:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 390
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    .line 358
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 360
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 361
    .local v3, widthMode:I
    if-eq v3, v4, :cond_0

    .line 362
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 365
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 366
    .local v1, heightMode:I
    if-eq v1, v4, :cond_1

    .line 367
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v0

    .line 372
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 373
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "ev"

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 261
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 263
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 266
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 267
    .local v11, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    .line 269
    .local v14, y:F
    packed-switch v3, :pswitch_data_0

    .line 353
    :cond_1
    :goto_0
    const/16 v17, 0x1

    return v17

    .line 275
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_2

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 280
    :cond_2
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mDownX:F

    .line 281
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionY:F

    goto :goto_0

    .line 285
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v17, v17, v11

    move/from16 v0, v17

    float-to-int v0, v0

    move v5, v0

    .line 287
    .local v5, deltaX:I
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v4

    .line 290
    .local v4, childCount:I
    const/16 v17, 0x1

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v18

    mul-int v6, v17, v18

    .line 291
    .local v6, maxScrollX:I
    if-gez v5, :cond_4

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    neg-int v0, v0

    move v7, v0

    .line 293
    .local v7, minScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    move v1, v7

    if-le v0, v1, :cond_1

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    if-lez v17, :cond_3

    .line 295
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->scrollBy(II)V

    goto :goto_0

    .line 297
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move/from16 v0, v17

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->scrollBy(II)V

    goto/16 :goto_0

    .line 300
    .end local v7           #minScrollX:I
    :cond_4
    if-lez v5, :cond_1

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v6, v17, v18

    .line 303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    move v1, v6

    if-ge v0, v1, :cond_1

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    sub-int v17, v6, v17

    move/from16 v0, v17

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->scrollBy(II)V

    goto/16 :goto_0

    .line 308
    .end local v4           #childCount:I
    .end local v5           #deltaX:I
    .end local v6           #maxScrollX:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v17, v11, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v12, v0

    .line 309
    .local v12, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionY:F

    move/from16 v17, v0

    sub-float v17, v14, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v15, v0

    .line 311
    .local v15, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchSlop:I

    move v8, v0

    .line 312
    .local v8, touchSlop:I
    if-le v12, v8, :cond_7

    const/16 v17, 0x1

    move/from16 v13, v17

    .line 313
    .local v13, xMoved:Z
    :goto_1
    if-le v15, v8, :cond_8

    const/16 v17, 0x1

    move/from16 v16, v17

    .line 315
    .local v16, yMoved:Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v17

    if-lez v17, :cond_1

    if-nez v13, :cond_6

    if-eqz v16, :cond_1

    .line 317
    :cond_6
    if-eqz v13, :cond_1

    .line 320
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto/16 :goto_0

    .line 312
    .end local v13           #xMoved:Z
    .end local v16           #yMoved:Z
    :cond_7
    const/16 v17, 0x0

    move/from16 v13, v17

    goto :goto_1

    .line 313
    .restart local v13       #xMoved:Z
    :cond_8
    const/16 v17, 0x0

    move/from16 v16, v17

    goto :goto_2

    .line 328
    .end local v8           #touchSlop:I
    .end local v12           #xDiff:I
    .end local v13           #xMoved:Z
    .end local v15           #yDiff:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v9, v0

    .line 330
    .local v9, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object v0, v9

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 331
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v10, v0

    .line 333
    .local v10, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v4

    .line 334
    .restart local v4       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->SNAP_VELOCITY:I

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-le v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    move/from16 v17, v0

    if-ltz v17, :cond_a

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(I)V

    .line 344
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    .line 345
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 347
    .end local v4           #childCount:I
    .end local v9           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v10           #velocityX:I
    :cond_9
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto/16 :goto_0

    .line 337
    .restart local v4       #childCount:I
    .restart local v9       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v10       #velocityX:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->SNAP_VELOCITY:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v18, v4, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_b

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(I)V

    goto :goto_3

    .line 341
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToDestination()V

    goto :goto_3

    .line 350
    .end local v4           #childCount:I
    .end local v9           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v10           #velocityX:I
    :pswitch_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto/16 :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    .line 176
    return-void
.end method

.method snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    .line 135
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(II)V

    .line 136
    return-void
.end method

.method snapToScreen(II)V
    .locals 10
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v7

    .line 141
    .local v7, childCount:I
    sub-int v0, v7, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 143
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-eq p1, v0, :cond_3

    move v6, v1

    .line 145
    .local v6, changingScreens:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 146
    .local v8, focusedChild:Landroid/view/View;
    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v8, v0, :cond_0

    .line 147
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v0

    mul-int v9, p1, v0

    .line 151
    .local v9, newX:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    sub-int v3, v9, v0

    .line 153
    .local v3, delta:I
    if-gez p1, :cond_4

    .line 154
    sub-int p1, v7, v1

    .line 159
    :cond_1
    :goto_1
    iput p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    .line 161
    if-gez p2, :cond_2

    .line 162
    iget p2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->invalidate()V

    .line 168
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    .line 169
    return-void

    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v8           #focusedChild:Landroid/view/View;
    .end local v9           #newX:I
    :cond_3
    move v6, v2

    .line 143
    goto :goto_0

    .line 155
    .restart local v3       #delta:I
    .restart local v6       #changingScreens:Z
    .restart local v8       #focusedChild:Landroid/view/View;
    .restart local v9       #newX:I
    :cond_4
    if-lt p1, v7, :cond_1

    .line 156
    const/4 p1, 0x0

    goto :goto_1
.end method

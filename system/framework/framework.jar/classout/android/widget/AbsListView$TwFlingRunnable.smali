.class Landroid/widget/AbsListView$TwFlingRunnable;
.super Landroid/widget/AbsListView$FlingRunnable;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwFlingRunnable"
.end annotation


# instance fields
.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 4
    .parameter

    .prologue
    .line 3208
    iput-object p1, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    .line 3209
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 3216
    return-void
.end method

.method private endFling()V
    .registers 3

    .prologue
    .line 3253
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3255
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 3256
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1000(Landroid/widget/AbsListView;)V

    .line 3258
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3260
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 3261
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$1100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$PositionScroller;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3263
    :cond_28
    return-void
.end method


# virtual methods
.method edgeReached(I)V
    .registers 2
    .parameter "delta"

    .prologue
    .line 3369
    return-void
.end method

.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3266
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_116

    .line 3363
    :cond_9
    :goto_9
    return-void

    .line 3271
    :pswitch_a
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v10, :cond_18

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v10

    if-nez v10, :cond_1c

    .line 3272
    :cond_18
    invoke-direct {p0}, Landroid/widget/AbsListView$TwFlingRunnable;->endFling()V

    goto :goto_9

    .line 3276
    :cond_1c
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    iget v7, v10, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 3277
    .local v7, prevBounceExtent:F
    iget-object v8, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 3278
    .local v8, scroller:Landroid/widget/Scroller;
    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    .line 3279
    .local v5, more:Z
    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v9

    .line 3285
    .local v9, y:I
    iget v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    sub-int v1, v10, v9

    .line 3289
    .local v1, delta:I
    if-lez v1, :cond_97

    .line 3292
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v11, v11, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v11, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3293
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3294
    .local v2, firstView:Landroid/view/View;
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3297
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v11}, Landroid/widget/AbsListView;->access$1200(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v11}, Landroid/widget/AbsListView;->access$1300(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v13

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3311
    .end local v2           #firstView:Landroid/view/View;
    :goto_62
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    .line 3313
    .local v0, atEnd:Z
    cmpg-float v10, v7, v12

    if-gtz v10, :cond_76

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    iget v10, v10, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    cmpg-float v10, v10, v7

    if-ltz v10, :cond_84

    :cond_76
    cmpl-float v10, v7, v12

    if-ltz v10, :cond_85

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    iget v10, v10, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    cmpl-float v10, v10, v7

    if-lez v10, :cond_85

    .line 3316
    :cond_84
    const/4 v5, 0x0

    .line 3320
    :cond_85
    if-eqz v5, :cond_d1

    if-nez v0, :cond_d1

    .line 3321
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->invalidate()V

    .line 3322
    iput v9, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 3323
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    .line 3301
    .end local v0           #atEnd:Z
    :cond_97
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v10

    sub-int v6, v10, v13

    .line 3302
    .local v6, offsetToLast:I
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v11, v11, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v11, v6

    iput v11, v10, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 3304
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3305
    .local v4, lastView:Landroid/view/View;
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, v10, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 3308
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v10}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static {v11}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static {v11}, Landroid/widget/AbsListView;->access$1500(Landroid/widget/AbsListView;)I

    move-result v11

    sub-int/2addr v10, v11

    sub-int/2addr v10, v13

    neg-int v10, v10

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_62

    .line 3324
    .end local v4           #lastView:Landroid/view/View;
    .end local v6           #offsetToLast:I
    .restart local v0       #atEnd:Z
    :cond_d1
    if-eqz v0, :cond_111

    .line 3325
    invoke-direct {p0}, Landroid/widget/AbsListView$TwFlingRunnable;->endFling()V

    .line 3334
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mBounceEnabled:Z

    if-eqz v10, :cond_9

    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mBounceBlocked:Z

    if-nez v10, :cond_9

    .line 3335
    invoke-virtual {v8, v13}, Landroid/widget/Scroller;->getCurrVelocity(Z)F

    move-result v3

    .line 3337
    .local v3, lastFlingSpeed:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mMinimumVelocity:I
    invoke-static {v11}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_fe

    .line 3343
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/AbsListView$BounceRunnable;

    invoke-interface {v10, v3}, Landroid/widget/AbsListView$BounceRunnable;->start(F)V

    goto/16 :goto_9

    .line 3345
    :cond_fe
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    iget v10, v10, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_9

    .line 3346
    iget-object v10, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mBounceRunnable:Landroid/widget/AbsListView$BounceRunnable;

    invoke-interface {v10, v12}, Landroid/widget/AbsListView$BounceRunnable;->start(F)V

    goto/16 :goto_9

    .line 3351
    .end local v3           #lastFlingSpeed:F
    :cond_111
    invoke-direct {p0}, Landroid/widget/AbsListView$TwFlingRunnable;->endFling()V

    goto/16 :goto_9

    .line 3266
    :pswitch_data_116
    .packed-switch 0x4
        :pswitch_a
    .end packed-switch
.end method

.method start(I)V
    .registers 11
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 3227
    if-gez p1, :cond_1e

    move v2, v6

    .line 3228
    .local v2, initialY:I
    :goto_7
    iput v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 3229
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 3231
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3233
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3241
    return-void

    .end local v2           #initialY:I
    :cond_1e
    move v2, v1

    .line 3227
    goto :goto_7
.end method

.method startOverfling(I)V
    .registers 2
    .parameter "initialVelocity"

    .prologue
    .line 3375
    return-void
.end method

.method startScroll(II)V
    .registers 9
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 3244
    if-gez p1, :cond_1c

    const v0, 0x7fffffff

    move v2, v0

    .line 3245
    .local v2, initialY:I
    :goto_7
    iput v2, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mLastFlingY:I

    .line 3246
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 3247
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3249
    iget-object v0, p0, Landroid/widget/AbsListView$TwFlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3250
    return-void

    .end local v2           #initialY:I
    :cond_1c
    move v2, v1

    .line 3244
    goto :goto_7
.end method

.method startSpringback()V
    .registers 1

    .prologue
    .line 3381
    return-void
.end method

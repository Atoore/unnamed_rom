.class Landroid/webkit/WebView$DragTrackerHandler;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragTrackerHandler"
.end annotation


# static fields
.field private static final ANIMATING_STATE:I = 0x1

.field private static final DRAGGING_STATE:I = 0x0

.field private static final FINISHED_STATE:I = 0x2


# instance fields
.field private mCurrStretchX:F

.field private mCurrStretchY:F

.field private mInterp:Landroid/graphics/Interpolator;

.field private final mMaxDX:F

.field private final mMaxDY:F

.field private final mMinDX:F

.field private final mMinDY:F

.field private final mProxy:Landroid/webkit/WebView$DragTracker;

.field private mSX:I

.field private mSY:I

.field private final mStartX:F

.field private final mStartY:F

.field private mState:I

.field private mXY:[F

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;FFLandroid/webkit/WebView$DragTracker;)V
    .registers 14
    .parameter
    .parameter "x"
    .parameter "y"
    .parameter "proxy"

    .prologue
    .line 6589
    iput-object p1, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6581
    const/4 v6, 0x2

    new-array v6, v6, [F

    iput-object v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    .line 6590
    iput-object p4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mProxy:Landroid/webkit/WebView$DragTracker;

    .line 6592
    #calls: Landroid/webkit/WebView;->computeRealVerticalScrollRange()I
    invoke-static {p1}, Landroid/webkit/WebView;->access$1300(Landroid/webkit/WebView;)I

    move-result v6

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v7

    add-int v0, v6, v7

    .line 6593
    .local v0, docBottom:I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v5

    .line 6594
    .local v5, viewTop:I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    add-int v2, v5, v6

    .line 6596
    .local v2, viewBottom:I
    iput p3, p0, Landroid/webkit/WebView$DragTrackerHandler;->mStartY:F

    .line 6597
    neg-int v6, v5

    int-to-float v6, v6

    iput v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMinDY:F

    .line 6598
    sub-int v6, v0, v2

    int-to-float v6, v6

    iput v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMaxDY:F

    .line 6600
    sget-boolean v6, Landroid/webkit/DebugFlags;->DRAG_TRACKER:Z

    if-nez v6, :cond_56

    .line 6605
    :goto_2f
    #calls: Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I
    invoke-static {p1}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;)I

    move-result v1

    .line 6606
    .local v1, docRight:I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getScrollX()I

    move-result v3

    .line 6607
    .local v3, viewLeft:I
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v6

    add-int v4, v3, v6

    .line 6608
    .local v4, viewRight:I
    iput p2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mStartX:F

    .line 6609
    neg-int v6, v3

    int-to-float v6, v6

    iput v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMinDX:F

    .line 6610
    sub-int v6, v1, v4

    int-to-float v6, v6

    iput v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMaxDX:F

    .line 6612
    const/4 v6, 0x0

    iput v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mState:I

    .line 6613
    iget-object v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mProxy:Landroid/webkit/WebView$DragTracker;

    invoke-virtual {v6, p2, p3}, Landroid/webkit/WebView$DragTracker;->onStartDrag(FF)V

    .line 6616
    const v6, -0x1869f

    iput v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mSX:I

    .line 6617
    return-void

    .line 6601
    .end local v1           #docRight:I
    .end local v3           #viewLeft:I
    .end local v4           #viewRight:I
    :cond_56
    const-string/jumbo v6, "skia"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " dragtracker y= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " up/down= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMinDY:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMaxDY:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private buildBitmap(II)V
    .registers 11
    .parameter "sx"
    .parameter "sy"

    .prologue
    const-string v7, " "

    .line 6726
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    .line 6727
    .local v3, w:I
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    .line 6728
    .local v2, h:I
    invoke-direct {p0}, Landroid/webkit/WebView$DragTrackerHandler;->offscreenBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6729
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6730
    .local v1, canvas:Landroid/graphics/Canvas;
    neg-int v4, p1

    int-to-float v4, v4

    neg-int v5, p2

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6731
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V
    invoke-static {v4, v1}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;Landroid/graphics/Canvas;)V

    .line 6733
    sget-boolean v4, Landroid/webkit/DebugFlags;->DRAG_TRACKER:Z

    if-nez v4, :cond_31

    .line 6737
    :goto_2b
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mProxy:Landroid/webkit/WebView$DragTracker;

    invoke-virtual {v4, v0}, Landroid/webkit/WebView$DragTracker;->onBitmapChange(Landroid/graphics/Bitmap;)V

    .line 6738
    return-void

    .line 6734
    :cond_31
    const-string/jumbo v4, "skia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- buildBitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method private computeStretch(FFF)F
    .registers 7
    .parameter "delta"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 6620
    const/4 v0, 0x0

    .line 6621
    .local v0, stretch:F
    sub-float v1, p3, p2

    const/high16 v2, 0x4080

    cmpl-float v1, v1, v2

    if-lez v1, :cond_f

    .line 6622
    cmpg-float v1, p1, p2

    if-gez v1, :cond_10

    .line 6623
    sub-float v0, p1, p2

    .line 6628
    :cond_f
    :goto_f
    return v0

    .line 6624
    :cond_10
    cmpl-float v1, p1, p3

    if-lez v1, :cond_f

    .line 6625
    sub-float v0, p1, p3

    goto :goto_f
.end method

.method private hiddenHeightOfTitleBar()I
    .registers 3

    .prologue
    .line 6678
    iget-object v0, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    iget-object v1, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private offscreenBitmapConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    .prologue
    .line 6685
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method


# virtual methods
.method public dragTo(FF)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 6632
    iget v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mStartY:F

    sub-float/2addr v2, p2

    iget v3, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMinDY:F

    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMaxDY:F

    invoke-direct {p0, v2, v3, v4}, Landroid/webkit/WebView$DragTrackerHandler;->computeStretch(FFF)F

    move-result v1

    .line 6633
    .local v1, sy:F
    iget v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mStartX:F

    sub-float/2addr v2, p1

    iget v3, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMinDX:F

    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mMaxDX:F

    invoke-direct {p0, v2, v3, v4}, Landroid/webkit/WebView$DragTrackerHandler;->computeStretch(FFF)F

    move-result v0

    .line 6635
    .local v0, sx:F
    iget-object v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mSnapScrollMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_43

    .line 6636
    const/4 v1, 0x0

    .line 6641
    :cond_21
    :goto_21
    iget v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchX:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_2d

    iget v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchY:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_42

    .line 6642
    :cond_2d
    iput v0, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchX:F

    .line 6643
    iput v1, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchY:F

    .line 6644
    sget-boolean v2, Landroid/webkit/DebugFlags;->DRAG_TRACKER:Z

    if-nez v2, :cond_4f

    .line 6648
    :goto_35
    iget-object v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mProxy:Landroid/webkit/WebView$DragTracker;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView$DragTracker;->onStretchChange(FF)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 6649
    iget-object v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 6652
    :cond_42
    return-void

    .line 6637
    :cond_43
    iget-object v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mSnapScrollMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_21

    .line 6638
    const/4 v0, 0x0

    goto :goto_21

    .line 6645
    :cond_4f
    const-string/jumbo v2, "skia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- stretch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .registers 11
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 6692
    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchX:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_f

    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchY:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6a

    .line 6693
    :cond_f
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    .line 6694
    .local v2, sx:I
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    invoke-direct {p0}, Landroid/webkit/WebView$DragTrackerHandler;->hiddenHeightOfTitleBar()I

    move-result v5

    sub-int v3, v4, v5

    .line 6695
    .local v3, sy:I
    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mSX:I

    if-ne v4, v2, :cond_29

    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mSY:I

    if-eq v4, v3, :cond_30

    .line 6696
    :cond_29
    invoke-direct {p0, v2, v3}, Landroid/webkit/WebView$DragTrackerHandler;->buildBitmap(II)V

    .line 6697
    iput v2, p0, Landroid/webkit/WebView$DragTrackerHandler;->mSX:I

    .line 6698
    iput v3, p0, Landroid/webkit/WebView$DragTrackerHandler;->mSY:I

    .line 6701
    :cond_30
    iget v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mState:I

    if-ne v4, v7, :cond_57

    .line 6702
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mInterp:Landroid/graphics/Interpolator;

    iget-object v5, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v1

    .line 6703
    .local v1, result:Landroid/graphics/Interpolator$Result;
    sget-object v4, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v1, v4, :cond_45

    .line 6704
    const/4 v4, 0x2

    iput v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mState:I

    move v4, v8

    .line 6722
    .end local v1           #result:Landroid/graphics/Interpolator$Result;
    .end local v2           #sx:I
    .end local v3           #sy:I
    :goto_44
    return v4

    .line 6707
    .restart local v1       #result:Landroid/graphics/Interpolator$Result;
    .restart local v2       #sx:I
    .restart local v3       #sy:I
    :cond_45
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mProxy:Landroid/webkit/WebView$DragTracker;

    iget-object v5, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    aget v5, v5, v8

    iget-object v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView$DragTracker;->onStretchChange(FF)Z

    .line 6708
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->invalidate()V

    .line 6712
    .end local v1           #result:Landroid/graphics/Interpolator$Result;
    :cond_57
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 6713
    .local v0, count:I
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6714
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mProxy:Landroid/webkit/WebView$DragTracker;

    invoke-virtual {v4, p1}, Landroid/webkit/WebView$DragTracker;->onDraw(Landroid/graphics/Canvas;)V

    .line 6715
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move v4, v7

    .line 6716
    goto :goto_44

    .line 6718
    .end local v0           #count:I
    .end local v2           #sx:I
    .end local v3           #sy:I
    :cond_6a
    sget-boolean v4, Landroid/webkit/DebugFlags;->DRAG_TRACKER:Z

    if-nez v4, :cond_70

    :goto_6e
    move v4, v8

    .line 6722
    goto :goto_44

    .line 6719
    :cond_70
    const-string/jumbo v4, "skia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -- draw false "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e
.end method

.method public isFinished()Z
    .registers 3

    .prologue
    .line 6674
    iget v0, p0, Landroid/webkit/WebView$DragTrackerHandler;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public stopDrag()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 6655
    const/16 v0, 0xc8

    .line 6656
    .local v0, DURATION:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    long-to-int v2, v4

    .line 6657
    .local v2, now:I
    new-instance v4, Landroid/graphics/Interpolator;

    invoke-direct {v4, v8}, Landroid/graphics/Interpolator;-><init>(I)V

    iput-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mInterp:Landroid/graphics/Interpolator;

    .line 6658
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    iget v5, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchX:F

    aput v5, v4, v6

    .line 6659
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    iget v5, p0, Landroid/webkit/WebView$DragTrackerHandler;->mCurrStretchY:F

    aput v5, v4, v7

    .line 6661
    const/4 v4, 0x4

    new-array v1, v4, [F

    fill-array-data v1, :array_48

    .line 6662
    .local v1, blend:[F
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mInterp:Landroid/graphics/Interpolator;

    iget-object v5, p0, Landroid/webkit/WebView$DragTrackerHandler;->mXY:[F

    invoke-virtual {v4, v6, v2, v5, v1}, Landroid/graphics/Interpolator;->setKeyFrame(II[F[F)V

    .line 6663
    new-array v3, v8, [F

    fill-array-data v3, :array_54

    .line 6664
    .local v3, zerozero:[F
    iget-object v4, p0, Landroid/webkit/WebView$DragTrackerHandler;->mInterp:Landroid/graphics/Interpolator;

    add-int/lit16 v5, v2, 0xc8

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/graphics/Interpolator;->setKeyFrame(II[F[F)V

    .line 6665
    iput v7, p0, Landroid/webkit/WebView$DragTrackerHandler;->mState:I

    .line 6667
    sget-boolean v4, Landroid/webkit/DebugFlags;->DRAG_TRACKER:Z

    if-nez v4, :cond_3e

    .line 6670
    :goto_3d
    return-void

    .line 6668
    :cond_3e
    const-string/jumbo v4, "skia"

    const-string v5, "----- stopDrag, starting animation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 6661
    nop

    :array_48
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x40t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 6663
    :array_54
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

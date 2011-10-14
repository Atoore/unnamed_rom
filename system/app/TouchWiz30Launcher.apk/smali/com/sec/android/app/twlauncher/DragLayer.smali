.class public Lcom/sec/android/app/twlauncher/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragController;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/DragLayer$1;,
        Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;,
        Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;,
        Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;
    }
.end annotation


# instance fields
.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mAnimationType:I

.field private mBitmapOffsetX:I

.field private mBitmapOffsetY:I

.field private mCurrentPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

.field private mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

.field private mDownX:F

.field private mDownY:F

.field private mDragAction:I

.field private mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragIconAlpha:F

.field private mDragInfo:Ljava/lang/Object;

.field private mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;

.field private mDragRect:Landroid/graphics/Rect;

.field private mDragRegions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;

.field private mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

.field private mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mDragging:Z

.field private final mDropCoordinates:[I

.field private mEnteredRegion:Z

.field private mIconShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

.field private mIgnoredDropTarget:Landroid/view/View;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDragAnimation:Z

.field private mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastTouchAmbiguous:Z

.field private mLastTouchPoint:Landroid/graphics/PointF;

.field private mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

.field private mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

.field private mOriginator:Landroid/view/View;

.field private final mRect:Landroid/graphics/Rect;

.field private mReloadIconSurface:Z

.field private mResizeRatio:F

.field private mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

.field private mShadowSurface:Lcom/sec/android/app/twlauncher/ShadowSurface;

.field private mShadowSurfaceUpdateNeeded:Z

.field private mShadowX:I

.field private mShadowY:I

.field private mShouldDrop:Z

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F

.field private mTouchSlop:I

.field private mTransformEventEnabled:Z

.field private mVelTracker:Landroid/view/VelocityTracker;

.field private mVelTrackerNumItems:I

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    .line 83
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 85
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchAmbiguous:Z

    .line 89
    sget-object v3, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    .line 91
    sget-object v3, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mCurrentPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    .line 93
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    .line 95
    new-instance v3, Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    invoke-direct {v3}, Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIconShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    .line 104
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 127
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 139
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mRect:Landroid/graphics/Rect;

    .line 141
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDropCoordinates:[I

    .line 143
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVibrator:Landroid/os/Vibrator;

    .line 161
    new-instance v3, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;-><init>(Lcom/sec/android/app/twlauncher/DragLayer;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    .line 187
    iput v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    .line 195
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    .line 197
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTransformEventEnabled:Z

    .line 199
    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v3}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 201
    new-instance v3, Lcom/sec/android/app/twlauncher/ShadowSurface;

    invoke-direct {v3}, Lcom/sec/android/app/twlauncher/ShadowSurface;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurface:Lcom/sec/android/app/twlauncher/ShadowSurface;

    .line 203
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurfaceUpdateNeeded:Z

    .line 205
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    .line 207
    iput v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTrackerNumItems:I

    .line 211
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mResizeRatio:F

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 230
    .local v1, r:Landroid/content/res/Resources;
    const v3, 0x7f070009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 231
    .local v2, snagColor:I
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 232
    .local v0, estimatedPaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    const/high16 v3, 0x4040

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 234
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 236
    sget-object v3, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setDefaultPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    .line 238
    new-array v3, v6, [Lcom/sec/android/app/twlauncher/DragAnimation;

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    .line 240
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchSlop:I

    .line 242
    const v3, 0x7f0b002f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowX:I

    .line 243
    const v3, 0x7f0b0030

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowY:I

    .line 244
    return-void
.end method

.method private checkDraggingTouchSlop(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 870
    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDownX:F

    sub-float v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 871
    .local v1, xDiff:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDownY:F

    sub-float v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v3, v5

    .line 873
    .local v3, yDiff:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchSlop:I

    .line 874
    .local v0, touchSlop:I
    if-le v1, v0, :cond_2

    move v2, v7

    .line 875
    .local v2, xMoved:Z
    :goto_0
    if-le v3, v0, :cond_3

    move v4, v7

    .line 876
    .local v4, yMoved:Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v4, :cond_1

    .line 877
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    if-eqz v5, :cond_1

    .line 878
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->draggingOverTouchSlop()V

    .line 880
    :cond_1
    return-void

    .end local v2           #xMoved:Z
    .end local v4           #yMoved:Z
    :cond_2
    move v2, v6

    .line 874
    goto :goto_0

    .restart local v2       #xMoved:Z
    :cond_3
    move v4, v6

    .line 875
    goto :goto_1
.end method

.method private checkForScroll(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 885
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getTopMostScaledRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 887
    .local v0, panelRect:Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 888
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setDirection(I)V

    .line 900
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->isQueued()Z

    move-result v1

    if-nez v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    .line 902
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    const-wide/16 v2, 0x384

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    move v1, v4

    .line 904
    :goto_1
    return v1

    .line 891
    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 892
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setDirection(I)V

    goto :goto_0

    .line 895
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 896
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    move v1, v2

    .line 897
    goto :goto_1
.end method

.method private drawDragIconGL(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 501
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_4

    .line 503
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 504
    const v10, 0x3f19999a

    invoke-virtual {p1, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 506
    :cond_0
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationStartTime:J

    .line 508
    const/4 v10, 0x2

    iput v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    .line 511
    :cond_1
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 512
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationStartTime:J

    sub-long/2addr v10, v12

    long-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationDuration:I

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 514
    .local v5, normalized:F
    const/high16 v10, 0x3f80

    cmpl-float v10, v5, v10

    if-ltz v10, :cond_2

    .line 515
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 516
    const/4 v10, 0x1

    iput v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    .line 521
    :cond_2
    :goto_0
    const/high16 v10, 0x3f80

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 522
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, v5

    add-float v8, v10, v11

    .line 524
    .local v8, value:F
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationType:I

    packed-switch v10, :pswitch_data_0

    .line 547
    :goto_1
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_4

    .line 548
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 549
    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    .line 550
    .local v7, to:F
    const/high16 v10, 0x3f80

    iput v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    .line 551
    iput v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    .line 553
    .end local v7           #to:F
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->postInvalidate()V

    .line 573
    .end local v5           #normalized:F
    .end local v8           #value:F
    :cond_4
    :goto_2
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIsDragAnimation:Z

    if-eqz v10, :cond_d

    .line 574
    const/4 v1, 0x0

    .line 575
    .local v1, animate:Z
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    array-length v6, v10

    .line 576
    .local v6, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v6, :cond_c

    .line 577
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    aget-object v0, v10, v4

    .line 578
    .local v0, ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    if-eqz v0, :cond_6

    .line 579
    const/4 v9, 0x0

    .line 580
    .local v9, xOffset:I
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v10, :cond_5

    .line 581
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    iget-object v11, v0, Lcom/sec/android/app/twlauncher/DragAnimation;->mAnimationView:Landroid/view/View;

    invoke-interface {v10, v11}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->getDragAnimationXOffset(Landroid/view/View;)I

    move-result v9

    .line 583
    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 584
    iget v10, v0, Lcom/sec/android/app/twlauncher/DragAnimation;->mXOffset:F

    int-to-float v11, v9

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 585
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/DragAnimation;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 586
    const/4 v1, 0x1

    .line 590
    :goto_4
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 576
    .end local v9           #xOffset:I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 518
    .end local v0           #ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    .end local v1           #animate:Z
    .end local v4           #i:I
    .end local v6           #size:I
    .restart local v5       #normalized:F
    :cond_7
    const/4 v10, 0x3

    iput v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    goto :goto_0

    .line 526
    .restart local v8       #value:F
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 527
    .local v3, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 528
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 530
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f80

    sub-float/2addr v11, v8

    mul-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    mul-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 532
    invoke-virtual {p1, v8, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 533
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getIconPaintColor()[F

    move-result-object v2

    .line 534
    .local v2, color:[F
    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    const/4 v12, 0x2

    aget v12, v2, v12

    const/4 v13, 0x3

    aget v13, v2, v13

    invoke-virtual {p1, v10, v11, v12, v13}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 535
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIconShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    invoke-virtual {p1, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 536
    const-string v10, "additionalAlpha"

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragIconAlpha:F

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    .line 537
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    if-eqz v10, :cond_8

    .line 538
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v10, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 539
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    .line 542
    :cond_8
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v10, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 543
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_1

    .line 557
    .end local v2           #color:[F
    .end local v3           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v5           #normalized:F
    .end local v8           #value:F
    :cond_9
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 558
    iget v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    int-to-float v11, v11

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    add-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 560
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getIconPaintColor()[F

    move-result-object v2

    .line 561
    .restart local v2       #color:[F
    const/4 v10, 0x0

    aget v10, v2, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    const/4 v12, 0x2

    aget v12, v2, v12

    const/4 v13, 0x3

    aget v13, v2, v13

    invoke-virtual {p1, v10, v11, v12, v13}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 562
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIconShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    invoke-virtual {p1, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 563
    const-string v10, "additionalAlpha"

    iget v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragIconAlpha:F

    invoke-virtual {p1, v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    .line 564
    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    if-eqz v10, :cond_a

    .line 565
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 566
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    .line 568
    :cond_a
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v10, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 569
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_2

    .line 588
    .end local v2           #color:[F
    .restart local v0       #ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    .restart local v1       #animate:Z
    .restart local v4       #i:I
    .restart local v6       #size:I
    .restart local v9       #xOffset:I
    :cond_b
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    const/4 v11, 0x0

    aput-object v11, v10, v4

    goto/16 :goto_4

    .line 593
    .end local v0           #ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    .end local v9           #xOffset:I
    :cond_c
    if-eqz v1, :cond_e

    .line 594
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->postInvalidate()V

    .line 599
    .end local v1           #animate:Z
    .end local v4           #i:I
    .end local v6           #size:I
    :cond_d
    :goto_5
    return-void

    .line 596
    .restart local v1       #animate:Z
    .restart local v4       #i:I
    .restart local v6       #size:I
    :cond_e
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIsDragAnimation:Z

    goto :goto_5

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private drop(FF)Z
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v12, 0x0

    .line 963
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 965
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDropCoordinates:[I

    .line 966
    .local v10, coordinates:[I
    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {p0, v2, v3, v10}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v1

    .line 967
    .local v1, dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v2

    iput-object v1, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->dropParent:Ljava/lang/Object;

    .line 968
    const/4 v11, 0x0

    .line 969
    .local v11, res:Z
    if-eqz v1, :cond_1

    .line 970
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    aget v3, v10, v12

    aget v4, v10, v8

    iget v5, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/twlauncher/DropTarget;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 972
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move v4, p1

    move v5, p2

    invoke-interface/range {v2 .. v9}, Lcom/sec/android/app/twlauncher/DragSource;->onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V

    .line 974
    const/4 v11, 0x1

    .line 985
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->dropParent:Ljava/lang/Object;

    .line 986
    return v11

    .line 976
    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move v4, p1

    move v5, p2

    move v8, v12

    invoke-interface/range {v2 .. v9}, Lcom/sec/android/app/twlauncher/DragSource;->onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V

    .line 978
    const/4 v11, 0x1

    goto :goto_0

    .line 981
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    iget v6, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move v4, p1

    move v5, p2

    move v8, v12

    invoke-interface/range {v2 .. v9}, Lcom/sec/android/app/twlauncher/DragSource;->onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V

    .line 983
    const/4 v11, 0x1

    goto :goto_0
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 647
    sget-object v0, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDefaultPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    .line 648
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v0, :cond_2

    .line 649
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragEnd()V

    .line 660
    :cond_2
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mResizeRatio:F

    .line 661
    return-void
.end method

.method private findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/sec/android/app/twlauncher/DropTarget;
    .locals 20
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 995
    .local v16, r:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    .line 996
    .local v13, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v6

    add-int v17, p2, v6

    .line 997
    .local v17, scrolledX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    add-int v18, p3, v6

    .line 998
    .local v18, scrolledY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    move-object v15, v0

    .line 1000
    .local v15, ignoredDropTarget:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v6, v0

    if-eqz v6, :cond_0

    .line 1001
    const/4 v15, 0x0

    .line 1003
    :cond_0
    const/4 v6, 0x1

    sub-int v14, v13, v6

    .end local v13           #count:I
    .local v14, i:I
    :goto_0
    if-ltz v14, :cond_6

    .line 1004
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1005
    .local v12, child:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    if-eq v12, v15, :cond_5

    .line 1006
    instance-of v6, v12, Lcom/sec/android/app/twlauncher/DropTarget;

    if-eqz v6, :cond_2

    .line 1007
    move-object v0, v12

    check-cast v0, Lcom/sec/android/app/twlauncher/DropTarget;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/DropTarget;->getDropHitRect(Landroid/graphics/Rect;)V

    .line 1011
    :goto_1
    invoke-virtual/range {v16 .. v18}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1012
    const/16 v19, 0x0

    .line 1013
    .local v19, target:Lcom/sec/android/app/twlauncher/DropTarget;
    instance-of v6, v12, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 1014
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    sub-int p2, v17, v6

    .line 1015
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int p3, v18, v6

    .line 1016
    move-object v0, v12

    check-cast v0, Landroid/view/ViewGroup;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v19

    .line 1018
    :cond_1
    if-nez v19, :cond_4

    .line 1019
    instance-of v6, v12, Lcom/sec/android/app/twlauncher/DropTarget;

    if-eqz v6, :cond_5

    .line 1021
    move-object v0, v12

    check-cast v0, Lcom/sec/android/app/twlauncher/DropTarget;

    move-object v5, v0

    .line 1022
    .local v5, childTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v6, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {v5 .. v11}, Lcom/sec/android/app/twlauncher/DropTarget;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1023
    const/4 v6, 0x0

    aput p2, p4, v6

    .line 1024
    const/4 v6, 0x1

    aput p3, p4, v6

    .line 1025
    check-cast v12, Lcom/sec/android/app/twlauncher/DropTarget;

    .end local v12           #child:Landroid/view/View;
    move-object v6, v12

    .line 1037
    .end local v5           #childTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    .end local v19           #target:Lcom/sec/android/app/twlauncher/DropTarget;
    :goto_2
    return-object v6

    .line 1009
    .restart local v12       #child:Landroid/view/View;
    :cond_2
    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1027
    .restart local v5       #childTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    .restart local v19       #target:Lcom/sec/android/app/twlauncher/DropTarget;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .end local v5           #childTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    :cond_4
    move-object/from16 v6, v19

    .line 1031
    goto :goto_2

    .line 1003
    .end local v19           #target:Lcom/sec/android/app/twlauncher/DropTarget;
    :cond_5
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .line 1037
    .end local v12           #child:Landroid/view/View;
    :cond_6
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private getIconPaintColor()[F
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 917
    const/4 v1, 0x4

    new-array v0, v1, [F

    .line 918
    .local v0, rgba:[F
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragIconAlpha:F

    .line 919
    sget-object v1, Lcom/sec/android/app/twlauncher/DragLayer$1;->$SwitchMap$com$sec$android$app$twlauncher$DragLayer$PaintRegion:[I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mCurrentPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 953
    aput v3, v0, v4

    .line 954
    aput v3, v0, v5

    .line 955
    aput v3, v0, v6

    .line 956
    aput v3, v0, v7

    .line 959
    :goto_0
    return-object v0

    .line 921
    :pswitch_0
    aput v3, v0, v4

    .line 922
    aput v3, v0, v5

    .line 923
    aput v3, v0, v6

    .line 924
    const/high16 v1, 0x3f00

    aput v1, v0, v7

    goto :goto_0

    .line 928
    :pswitch_1
    aput v3, v0, v4

    .line 929
    const v1, 0x3f75c28f

    aput v1, v0, v5

    .line 930
    const/high16 v1, 0x3f80

    aput v1, v0, v6

    .line 931
    const/high16 v1, 0x3f00

    aput v1, v0, v7

    goto :goto_0

    .line 935
    :pswitch_2
    aput v3, v0, v4

    .line 936
    aput v3, v0, v5

    .line 937
    aput v3, v0, v6

    .line 938
    aput v3, v0, v7

    .line 939
    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragIconAlpha:F

    goto :goto_0

    .line 943
    :pswitch_3
    const v1, 0x3f1eb852

    aput v1, v0, v4

    .line 944
    aput v3, v0, v5

    .line 945
    aput v3, v0, v6

    .line 946
    const/high16 v1, 0x3f00

    aput v1, v0, v7

    goto :goto_0

    .line 919
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getPaintForPos(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "ev"

    .prologue
    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 446
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 448
    .local v2, y:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 449
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mRegion:Landroid/graphics/RectF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 450
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mPaintRegion:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    .line 463
    :goto_1
    return-void

    .line 448
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 458
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->checkForScroll(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    sget-object v3, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->TRANS:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    goto :goto_1

    .line 461
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    goto :goto_1
.end method


# virtual methods
.method public addDragRegion(Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addEvent2VelTracker(Landroid/view/MotionEvent;Ljava/lang/String;)V
    .locals 2
    .parameter "aEv"
    .parameter "aExtraMsg"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 749
    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTrackerNumItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTrackerNumItems:I

    .line 753
    :cond_0
    return-void
.end method

.method public cancelDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1173
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1174
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    .line 1175
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    if-eqz v0, :cond_0

    .line 1176
    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->drop(FF)Z

    .line 1177
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    .line 1180
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v0, :cond_3

    .line 1181
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    .line 1182
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1188
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v0, :cond_3

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragEnd()V

    .line 1192
    :cond_3
    return-void
.end method

.method public cancelPendingScroll()Z
    .locals 3

    .prologue
    .line 1165
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->isQueued()Z

    move-result v0

    .line 1166
    .local v0, pendingScroll:Z
    if-eqz v0, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1168
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    .line 1170
    :cond_0
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 474
    .local v0, time:J
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 497
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 5
    .parameter "canvas"

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v1, p1, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;)Z

    move-result v0

    .line 624
    .local v0, more:Z
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-eqz v1, :cond_1

    .line 625
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurfaceUpdateNeeded:Z

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurface:Lcom/sec/android/app/twlauncher/ShadowSurface;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/twlauncher/ShadowSurface;->update(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 627
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurfaceUpdateNeeded:Z

    .line 629
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 630
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 631
    const v1, 0x3f19999a

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 632
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurface:Lcom/sec/android/app/twlauncher/ShadowSurface;

    iget v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowX:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/app/twlauncher/ShadowSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;FF)V

    .line 636
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 639
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/DragLayer;->drawDragIconGL(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 640
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    .line 666
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 667
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchAmbiguous:Z

    .line 669
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    .line 670
    .local v0, glSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTransRefList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    .line 671
    :cond_0
    const-string v1, "Launcher.DragLayer"

    const-string v2, "this.getParent() or glSurfaceViewGroup.getTransRefList() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 672
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTransformEventEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTransRefList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 677
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->processTransformRefEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 683
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->isAbsRefEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchAmbiguous:Z

    .line 690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 691
    invoke-virtual {p1, v4, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0
.end method

.method findDropTarget(II[I)Lcom/sec/android/app/twlauncher/DropTarget;
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "dropCoordinates"

    .prologue
    .line 990
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(Landroid/view/ViewGroup;II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDragScroller()Lcom/sec/android/app/twlauncher/DragScroller;
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    .line 1126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    goto :goto_0
.end method

.method getDragAction()I
    .locals 1

    .prologue
    .line 1135
    iget v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAction:I

    return v0
.end method

.method getDraggedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    return-object v0
.end method

.method public getLastMotion()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 441
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    iget v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getLastTouchPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 1196
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 1197
    return-void
.end method

.method public isLastTouchAmbiguous()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastTouchAmbiguous:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 705
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 707
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 708
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 710
    .local v2, y:F
    packed-switch v0, :pswitch_data_0

    .line 735
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    return v3

    .line 716
    :pswitch_1
    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    .line 717
    iput v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    .line 718
    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDownX:F

    .line 719
    iput v2, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDownY:F

    .line 720
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    .line 721
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/DragLayer;->resetVelTracker(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 727
    :pswitch_2
    const-string v3, "onInterceptTouch"

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->addEvent2VelTracker(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 728
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->drop(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 729
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    .line 731
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->endDrag()V

    goto :goto_0

    .line 710
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29
    .parameter "ev"

    .prologue
    .line 773
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    move v6, v0

    if-nez v6, :cond_0

    .line 774
    const/4 v6, 0x0

    .line 858
    :goto_0
    return v6

    .line 776
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 777
    .local v13, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    .line 778
    .local v27, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    .line 779
    .local v28, y:F
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->addEvent2VelTracker(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 780
    packed-switch v13, :pswitch_data_0

    .line 858
    :goto_1
    :pswitch_0
    const/4 v6, 0x1

    goto :goto_0

    .line 787
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollX:I

    move/from16 v21, v0

    .line 788
    .local v21, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollY:I

    move/from16 v22, v0

    .line 790
    .local v22, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move/from16 v24, v0

    .line 791
    .local v24, touchX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move/from16 v25, v0

    .line 793
    .local v25, touchY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    move/from16 v18, v0

    .line 794
    .local v18, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    move/from16 v19, v0

    .line 796
    .local v19, offsetY:I
    move/from16 v0, v21

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    move v7, v0

    add-float/2addr v6, v7

    sub-float v6, v6, v24

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v17, v0

    .line 797
    .local v17, left:I
    move/from16 v0, v22

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    move v7, v0

    add-float/2addr v6, v7

    sub-float v6, v6, v25

    move/from16 v0, v19

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v23, v0

    .line 799
    .local v23, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v15, v0

    .line 800
    .local v15, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    .line 801
    .local v26, width:I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 803
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 804
    .local v20, rect:Landroid/graphics/Rect;
    const/4 v6, 0x1

    sub-int v6, v17, v6

    const/4 v7, 0x1

    sub-int v7, v23, v7

    add-int v8, v17, v26

    add-int/lit8 v8, v8, 0x1

    add-int v9, v23, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v20

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 806
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    .line 807
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    .line 809
    move/from16 v0, v21

    int-to-float v0, v0

    move v6, v0

    add-float v6, v6, v27

    sub-float v6, v6, v24

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v17, v0

    .line 810
    move/from16 v0, v22

    int-to-float v0, v0

    move v6, v0

    add-float v6, v6, v28

    sub-float v6, v6, v25

    move/from16 v0, v19

    int-to-float v0, v0

    move v7, v0

    sub-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v23, v0

    .line 813
    const/4 v6, 0x1

    sub-int v6, v17, v6

    const/4 v7, 0x1

    sub-int v7, v23, v7

    add-int v8, v17, v26

    add-int/lit8 v8, v8, 0x1

    add-int v9, v23, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v20

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDropCoordinates:[I

    move-object v14, v0

    .line 816
    .local v14, coordinates:[I
    move/from16 v0, v27

    float-to-int v0, v0

    move v6, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move v7, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->findDropTarget(II[I)Lcom/sec/android/app/twlauncher/DropTarget;

    move-result-object v5

    .line 817
    .local v5, dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    if-eqz v5, :cond_4

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object v6, v0

    if-ne v6, v5, :cond_2

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 836
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 838
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    .line 840
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/DragLayer;->getPaintForPos(Landroid/view/MotionEvent;)V

    .line 841
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->checkDraggingTouchSlop(FF)V

    goto/16 :goto_1

    .line 822
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object v6, v0

    if-eqz v6, :cond_3

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v7, v0

    const/4 v8, 0x0

    aget v8, v14, v8

    const/4 v9, 0x1

    aget v9, v14, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move v11, v0

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v12, v0

    invoke-interface/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 826
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v6, v0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move v9, v0

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v11, v0

    invoke-interface/range {v5 .. v11}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    goto :goto_2

    .line 830
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastDropTarget:Lcom/sec/android/app/twlauncher/DropTarget;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    move-object v7, v0

    const/4 v8, 0x0

    aget v8, v14, v8

    const/4 v9, 0x1

    aget v9, v14, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    move v10, v0

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    move v11, v0

    float-to-int v11, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    move-object v12, v0

    invoke-interface/range {v6 .. v12}, Lcom/sec/android/app/twlauncher/DropTarget;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    goto/16 :goto_2

    .line 844
    .end local v5           #dropTarget:Lcom/sec/android/app/twlauncher/DropTarget;
    .end local v14           #coordinates:[I
    .end local v15           #dragBitmap:Landroid/graphics/Bitmap;
    .end local v16           #height:I
    .end local v17           #left:I
    .end local v18           #offsetX:I
    .end local v19           #offsetY:I
    .end local v20           #rect:Landroid/graphics/Rect;
    .end local v21           #scrollX:I
    .end local v22           #scrollY:I
    .end local v23           #top:I
    .end local v24           #touchX:F
    .end local v25           #touchY:F
    .end local v26           #width:I
    :pswitch_2
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->checkDraggingTouchSlop(FF)V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mScrollRunnable:Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/DragLayer$ScrollRunnable;->setIsQueued(Z)V

    .line 847
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    move v6, v0

    if-eqz v6, :cond_5

    .line 848
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->drop(FF)Z

    .line 849
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    .line 851
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->endDrag()V

    goto/16 :goto_1

    .line 854
    :pswitch_3
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->checkDraggingTouchSlop(FF)V

    .line 855
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->endDrag()V

    goto/16 :goto_1

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDragRegion(Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRegions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public resetVelTracker(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "aEv"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 761
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTrackerNumItems:I

    .line 762
    const-string v0, "Initial Point"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->addEvent2VelTracker(Landroid/view/MotionEvent;Ljava/lang/String;)V

    .line 763
    return-void

    .line 759
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mVelTracker:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method public setDefaultPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 908
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    .line 909
    return-void
.end method

.method public setDragListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    .line 1050
    return-void
.end method

.method public setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    .line 1054
    return-void
.end method

.method public setDragMenuScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragMenuScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    .line 1046
    return-void
.end method

.method public setDragScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V
    .locals 0
    .parameter "scroller"

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragScroller:Lcom/sec/android/app/twlauncher/DragScroller;

    .line 1042
    return-void
.end method

.method setIgnoredDropTarget(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIgnoredDropTarget:Landroid/view/View;

    .line 1072
    return-void
.end method

.method public setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 912
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mCurrentPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mReloadIconSurface:Z

    .line 914
    return-void
.end method

.method setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V
    .locals 0
    .parameter "workspace"

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1062
    return-void
.end method

.method public startAnimation(Landroid/view/View;FFFFFFILcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;)V
    .locals 14
    .parameter "v"
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "duration"
    .parameter "lstnr"

    .prologue
    .line 1140
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    array-length v13, v4

    .line 1141
    .local v13, size:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 1142
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    aget-object v4, v4, v12

    if-nez v4, :cond_1

    .line 1143
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAnimation:[Lcom/sec/android/app/twlauncher/DragAnimation;

    new-instance v3, Lcom/sec/android/app/twlauncher/DragAnimation;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object v0, v3

    move-object v1, v5

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragAnimation;-><init>(Landroid/view/animation/Interpolator;Lcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;)V

    aput-object v3, v4, v12

    .local v3, ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    .line 1145
    invoke-virtual/range {v3 .. v11}, Lcom/sec/android/app/twlauncher/DragAnimation;->setAnimation(Landroid/view/View;FFFFFFI)V

    .line 1146
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mIsDragAnimation:Z

    .line 1147
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 1151
    .end local v3           #ani:Lcom/sec/android/app/twlauncher/DragAnimation;
    :cond_0
    return-void

    .line 1141
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method public startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 18
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v3, v0

    if-nez v3, :cond_0

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 294
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v3, v0

    if-eqz v3, :cond_7

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    move v6, v0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragStart(Landroid/view/View;FFLcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 303
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move v3, v0

    if-eqz v3, :cond_8

    .line 304
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setIsDragging(Z)V

    .line 309
    :cond_2
    :goto_1
    const/4 v3, 0x2

    move/from16 v0, p4

    move v1, v3

    if-ne v0, v1, :cond_3

    .line 310
    const v3, 0x7f06000b

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 311
    .local v10, child:Landroid/view/View;
    if-eqz v10, :cond_9

    .line 312
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    .line 313
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    .line 320
    .end local v10           #child:Landroid/view/View;
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 321
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 323
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v17

    .line 324
    .local v17, willNotCache:Z
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v11

    .line 329
    .local v11, color:I
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 331
    if-eqz v11, :cond_4

    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 334
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->buildDrawingCache()V

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 336
    .local v14, viewBitmap:Landroid/graphics/Bitmap;
    if-nez v14, :cond_a

    .line 337
    const-string v3, "Launcher.DragLayer"

    const-string v4, "startDrag().. drawing cache is a null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Failed to initialize dragging for the widget"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 343
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 344
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 345
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mMenuListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v3, v0

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v3, v0

    if-eqz v3, :cond_6

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v3, v0

    invoke-interface {v3}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragEnd()V

    .line 409
    :cond_6
    :goto_3
    return-void

    .line 298
    .end local v11           #color:I
    .end local v14           #viewBitmap:Landroid/graphics/Bitmap;
    .end local v17           #willNotCache:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v3, v0

    if-eqz v3, :cond_1

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mListener:Lcom/sec/android/app/twlauncher/DragController$DragListener;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    move v6, v0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-interface/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/DragController$DragListener;->onDragStart(Landroid/view/View;FFLcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 305
    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;

    move v3, v0

    if-eqz v3, :cond_2

    .line 306
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/BubbleTextView;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setIsDragging(Z)V

    goto/16 :goto_1

    .line 315
    .restart local v10       #child:Landroid/view/View;
    :cond_9
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    goto/16 :goto_2

    .line 353
    .end local v10           #child:Landroid/view/View;
    .restart local v11       #color:I
    .restart local v14       #viewBitmap:Landroid/graphics/Bitmap;
    .restart local v17       #willNotCache:Z
    :cond_a
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 354
    .local v16, width:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 356
    .local v12, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 357
    .local v13, tag:Ljava/lang/Object;
    if-eqz v13, :cond_d

    instance-of v3, v13, Lcom/sec/android/app/twlauncher/Widget;

    if-nez v3, :cond_b

    instance-of v3, v13, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v3, :cond_d

    .line 358
    :cond_b
    const v3, 0x3f866666

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    .line 362
    :goto_4
    const/high16 v3, 0x3f80

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationFrom:F

    .line 363
    const/16 v3, 0x64

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationDuration:I

    .line 364
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationState:I

    .line 365
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationType:I

    .line 367
    invoke-static {v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 368
    .local v15, viewCache:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v3, v0

    if-eqz v3, :cond_c

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 370
    :cond_c
    move/from16 v0, v16

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mResizeRatio:F

    move v4, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v4, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mResizeRatio:F

    move v5, v0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-static {v15, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 374
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 375
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 378
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v3, v16

    div-int/lit8 v3, v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetX:I

    .line 379
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v12

    div-int/lit8 v3, v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mBitmapOffsetY:I

    .line 381
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DragSource;->onPreDragStart(Landroid/view/View;I)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDefaultPaint:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->setPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    .line 385
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragging:Z

    .line 386
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mShouldDrop:Z

    .line 387
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mOriginator:Landroid/view/View;

    .line 388
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragAction:I

    .line 389
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSource:Lcom/sec/android/app/twlauncher/DragSource;

    .line 390
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mDragInfo:Ljava/lang/Object;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mVibrator:Landroid/os/Vibrator;

    move-object v3, v0

    const-wide/16 v4, 0x23

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 393
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mEnteredRegion:Z

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 406
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mShadowSurfaceUpdateNeeded:Z

    .line 408
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    .line 360
    .end local v15           #viewCache:Landroid/graphics/Bitmap;
    :cond_d
    const v3, 0x3f8ccccd

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DragLayer;->mAnimationTo:F

    goto/16 :goto_4
.end method

.method public startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V
    .locals 2
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"
    .parameter "offset"

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    .line 259
    iget v0, p5, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    .line 260
    iget v0, p5, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    .line 261
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/DragLayer;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 263
    return-void
.end method

.method public startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 4
    .parameter "v"
    .parameter "source"
    .parameter "dragInfo"
    .parameter "dragAction"

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mDragRect:Landroid/graphics/Rect;

    .line 267
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 269
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 271
    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionX:F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetX:F

    .line 272
    iget v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mLastMotionY:F

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/DragLayer;->mTouchOffsetY:F

    .line 273
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/DragLayer;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 274
    return-void
.end method

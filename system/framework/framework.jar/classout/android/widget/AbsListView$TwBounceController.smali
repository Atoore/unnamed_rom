.class public Landroid/widget/AbsListView$TwBounceController;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwBounceController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;
    }
.end annotation


# static fields
.field private static final BOUNCE_EXTENT_ADJUSTMENT:F = 0.5f

.field private static final BOUNCE_FROM_DRAG_DURATION_MAX:I = 0x3e8

.field private static final BOUNCE_FROM_DRAG_DURATION_MIN:I = 0x3e8

.field private static final BOUNCE_FROM_FLING_DURATION_MAX:I = 0x514

.field private static final BOUNCE_FROM_FLING_DURATION_MIN:I = 0x514

.field public static final BOUNCE_RUNNABLE_DEFAULT:I = 0x0

.field public static final BOUNCE_RUNNABLE_NUM:I = 0x1

.field public static final DEBUG_BOUNCE:Z = false

.field public static final DEBUG_SCROLL:Z = false

.field public static final HORIZONTAL:I = 0x0

.field private static final MAX_BOUNCE_RATIO:F = 0.5f

.field private static final MAX_FLING_SPEED:F = 8000.0f

.field public static final TAG:Ljava/lang/String; = "TwBounceController"

.field public static final VERTICAL:I = 0x1


# instance fields
.field public mBounceDrawInterpolator:Landroid/view/animation/Interpolator;

.field public mBounceEnabled:Z

.field public mBounceExtent:F

.field private mBounceRunnableClasses:[Ljava/lang/Class;

.field private mBounceRunnables:[Landroid/widget/AbsListView$BounceRunnable;

.field private mOrientation:I

.field private mScroller:Landroid/widget/Scroller;

.field private mTempRect:Landroid/graphics/Rect;

.field private mView:Landroid/view/ViewGroup;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Landroid/view/ViewGroup;)V
    .registers 6
    .parameter
    .parameter "bounceView"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5449
    iput-object p1, p0, Landroid/widget/AbsListView$TwBounceController;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5358
    iput-boolean v1, p0, Landroid/widget/AbsListView$TwBounceController;->mBounceEnabled:Z

    .line 5366
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 5375
    iput v1, p0, Landroid/widget/AbsListView$TwBounceController;->mOrientation:I

    .line 5385
    new-instance v0, Landroid/widget/AbsListView$TwBounceController$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$TwBounceController$1;-><init>(Landroid/widget/AbsListView$TwBounceController;)V

    iput-object v0, p0, Landroid/widget/AbsListView$TwBounceController;->mBounceDrawInterpolator:Landroid/view/animation/Interpolator;

    .line 5394
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView$TwBounceController;->mScroller:Landroid/widget/Scroller;

    .line 5402
    new-array v0, v1, [Landroid/widget/AbsListView$BounceRunnable;

    iput-object v0, p0, Landroid/widget/AbsListView$TwBounceController;->mBounceRunnables:[Landroid/widget/AbsListView$BounceRunnable;

    .line 5404
    new-array v0, v1, [Ljava/lang/Class;

    const-class v1, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/widget/AbsListView$TwBounceController;->mBounceRunnableClasses:[Ljava/lang/Class;

    .line 5537
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView$TwBounceController;->mTempRect:Landroid/graphics/Rect;

    .line 5450
    iput-object p2, p0, Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;

    .line 5452
    iput-boolean v2, p0, Landroid/widget/AbsListView$TwBounceController;->mBounceEnabled:Z

    .line 5453
    return-void
.end method

.method static synthetic access$4700(Landroid/widget/AbsListView$TwBounceController;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 5351
    iget v0, p0, Landroid/widget/AbsListView$TwBounceController;->mOrientation:I

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/AbsListView$TwBounceController;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5351
    iget-object v0, p0, Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public bounce(Landroid/graphics/Canvas;Z)I
    .registers 9
    .parameter "canvas"
    .parameter "clipToPadding"

    .prologue
    const/4 v5, 0x0

    .line 5540
    iget-boolean v2, p0, Landroid/widget/AbsListView$TwBounceController;->mBounceEnabled:Z

    if-eqz v2, :cond_63

    iget v2, p0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_63

    .line 5541
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 5543
    .local v0, saveCount:I
    invoke-virtual {p0}, Landroid/widget/AbsListView$TwBounceController;->getCanvasShift()F

    move-result v1

    .line 5545
    .local v1, shift:F
    if-eqz p2, :cond_56

    .line 5546
    iget-object v2, p0, Landroid/widget/AbsListView$TwBounceController;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 5547
    iget-object v2, p0, Landroid/widget/AbsListView$TwBounceController;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 5548
    iget-object v2, p0, Landroid/widget/AbsListView$TwBounceController;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 5549
    iget-object v2, p0, Landroid/widget/AbsListView$TwBounceController;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 5550
    iget-object v2, p0, Landroid/widget/AbsListView$TwBounceController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 5552
    iget-object v2, p0, Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 5556
    :cond_56
    iget v2, p0, Landroid/widget/AbsListView$TwBounceController;->mOrientation:I

    if-nez v2, :cond_5f

    .line 5557
    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_5d
    move v2, v0

    .line 5565
    .end local v0           #saveCount:I
    .end local v1           #shift:F
    :goto_5e
    return v2

    .line 5559
    .restart local v0       #saveCount:I
    .restart local v1       #shift:F
    :cond_5f
    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5d

    .line 5565
    .end local v0           #saveCount:I
    .end local v1           #shift:F
    :cond_63
    const/4 v2, -0x1

    goto :goto_5e
.end method

.method public getBounceRunnable(I)Landroid/widget/AbsListView$BounceRunnable;
    .registers 3
    .parameter "id"

    .prologue
    .line 5410
    if-nez p1, :cond_8

    .line 5411
    new-instance v0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;-><init>(Landroid/widget/AbsListView$TwBounceController;)V

    .line 5414
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getBounceRunnable(III)Landroid/widget/AbsListView$BounceRunnable;
    .registers 5
    .parameter "id"
    .parameter "dragInterpolator"
    .parameter "flingInterpolator"

    .prologue
    .line 5430
    if-nez p1, :cond_8

    .line 5431
    new-instance v0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;-><init>(Landroid/widget/AbsListView$TwBounceController;)V

    .line 5434
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getCanvasShift()F
    .registers 5

    .prologue
    .line 5494
    iget v2, p0, Landroid/widget/AbsListView$TwBounceController;->mOrientation:I

    if-nez v2, :cond_22

    .line 5495
    iget-object v2, p0, Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v0, v2

    .line 5500
    .local v0, listLen:F
    :goto_b
    const/high16 v2, 0x3f00

    iget v3, p0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v0

    mul-float/2addr v2, v3

    mul-float v1, v2, v0

    .line 5502
    .local v1, shift:F
    iget v2, p0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_21

    .line 5503
    const/high16 v2, -0x4080

    mul-float/2addr v1, v2

    .line 5506
    :cond_21
    return v1

    .line 5497
    .end local v0           #listLen:F
    .end local v1           #shift:F
    :cond_22
    iget-object v2, p0, Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .restart local v0       #listLen:F
    goto :goto_b
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 5382
    iget v0, p0, Landroid/widget/AbsListView$TwBounceController;->mOrientation:I

    return v0
.end method

.method public isBounceEnabled()Z
    .registers 2

    .prologue
    .line 5474
    iget-boolean v0, p0, Landroid/widget/AbsListView$TwBounceController;->mBounceEnabled:Z

    return v0
.end method

.method public makeScroller()Landroid/widget/Scroller;
    .registers 3

    .prologue
    .line 5486
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$TwBounceController;->mScroller:Landroid/widget/Scroller;

    .line 5488
    iget-object v0, p0, Landroid/widget/AbsListView$TwBounceController;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method public setEnableBounce(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 5461
    iput-boolean p1, p0, Landroid/widget/AbsListView$TwBounceController;->mBounceEnabled:Z

    .line 5463
    if-eqz p1, :cond_a

    .line 5464
    iget-object v0, p0, Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVerticalFadingEdgeEnabled(Z)V

    .line 5466
    :cond_a
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 5378
    iput p1, p0, Landroid/widget/AbsListView$TwBounceController;->mOrientation:I

    .line 5379
    return-void
.end method

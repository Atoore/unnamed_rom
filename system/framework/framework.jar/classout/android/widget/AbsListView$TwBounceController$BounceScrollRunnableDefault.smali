.class Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/widget/AbsListView$BounceRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$TwBounceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BounceScrollRunnableDefault"
.end annotation


# static fields
.field private static final EXP_COEFFICIENT_1:F = -10.0f

.field private static final EXP_COEFFICIENT_2:F = 26.0f

.field private static final MIN_BOUNCE_EXTENT:F = 1.0f

.field private static final SIN_COEFFICIENT:F = 0.01f

.field static final TAG:Ljava/lang/String; = "BounceScrollRunnableDefault"


# instance fields
.field mBounceDuration:F

.field mBounceExtentCoef:F

.field private mFirstRun:Z

.field private mScrollBounceUp:Z

.field private mStartFromDrag:Z

.field private mStartTime:J

.field final synthetic this$1:Landroid/widget/AbsListView$TwBounceController;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView$TwBounceController;)V
    .registers 3
    .parameter

    .prologue
    .line 5624
    iput-object p1, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5612
    const/high16 v0, 0x447a

    iput v0, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    .line 5614
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 5622
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mScrollBounceUp:Z

    .line 5625
    return-void
.end method

.method private computeBounceExtent(F)F
    .registers 6
    .parameter "timeFraction"

    .prologue
    const/high16 v2, -0x3ee0

    .line 5681
    iget-boolean v1, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    if-eqz v1, :cond_12

    .line 5691
    iget v1, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v0, v1, v2

    .line 5705
    .local v0, ret:F
    :goto_11
    return v0

    .line 5698
    .end local v0           #ret:F
    :cond_12
    iget v1, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    mul-float/2addr v1, p1

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v0, v1, v2

    .restart local v0       #ret:F
    goto :goto_11
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 5741
    iget-object v0, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    #getter for: Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v0}, Landroid/widget/AbsListView$TwBounceController;->access$4800(Landroid/widget/AbsListView$TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5742
    return-void
.end method

.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 5713
    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    iget v3, v3, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_d

    iget-boolean v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mFirstRun:Z

    if-eqz v3, :cond_49

    .line 5714
    :cond_d
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mFirstRun:Z

    .line 5715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5717
    .local v0, tNow:J
    iget-wide v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mStartTime:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    iget v4, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    div-float v2, v3, v4

    .line 5719
    .local v2, timeFraction:F
    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    invoke-direct {p0, v2}, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->computeBounceExtent(F)F

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 5720
    iget-boolean v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mScrollBounceUp:Z

    if-eqz v3, :cond_32

    .line 5721
    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    iget v4, v3, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    const/high16 v5, -0x4080

    mul-float/2addr v4, v5

    iput v4, v3, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 5728
    :cond_32
    const/high16 v3, 0x3f80

    cmpl-float v3, v2, v3

    if-lez v3, :cond_40

    .line 5729
    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    iput v6, v3, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 5730
    invoke-virtual {p0}, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->cancel()V

    .line 5738
    .end local v0           #tNow:J
    .end local v2           #timeFraction:F
    :goto_3f
    return-void

    .line 5734
    .restart local v0       #tNow:J
    .restart local v2       #timeFraction:F
    :cond_40
    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    #getter for: Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Landroid/widget/AbsListView$TwBounceController;->access$4800(Landroid/widget/AbsListView$TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 5737
    .end local v0           #tNow:J
    .end local v2           #timeFraction:F
    :cond_49
    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    #getter for: Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Landroid/widget/AbsListView$TwBounceController;->access$4800(Landroid/widget/AbsListView$TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_3f
.end method

.method public start(F)V
    .registers 11
    .parameter "flingSpeed"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, -0x4080

    const/high16 v4, 0x45fa

    const/4 v5, 0x0

    .line 5637
    iput-boolean v7, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mScrollBounceUp:Z

    .line 5639
    iput-boolean v8, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mFirstRun:Z

    .line 5640
    invoke-virtual {p0}, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->cancel()V

    .line 5642
    cmpl-float v3, p1, v5

    if-nez v3, :cond_59

    .line 5643
    iput-boolean v8, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    .line 5645
    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    iget v3, v3, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    #getter for: Landroid/widget/AbsListView$TwBounceController;->mOrientation:I
    invoke-static {v4}, Landroid/widget/AbsListView$TwBounceController;->access$4700(Landroid/widget/AbsListView$TwBounceController;)I

    move-result v4

    if-nez v4, :cond_4e

    iget-object v4, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    #getter for: Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v4}, Landroid/widget/AbsListView$TwBounceController;->access$4800(Landroid/widget/AbsListView$TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    :goto_2e
    int-to-float v4, v4

    div-float v0, v3, v4

    .line 5648
    .local v0, extentRatio:F
    mul-float v3, v5, v0

    const/high16 v4, 0x447a

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    .line 5651
    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    iget v3, v3, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    iput v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 5674
    .end local v0           #extentRatio:F
    :goto_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mStartTime:J

    .line 5676
    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    #getter for: Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Landroid/widget/AbsListView$TwBounceController;->access$4800(Landroid/widget/AbsListView$TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 5677
    return-void

    .line 5645
    :cond_4e
    iget-object v4, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    #getter for: Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v4}, Landroid/widget/AbsListView$TwBounceController;->access$4800(Landroid/widget/AbsListView$TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    goto :goto_2e

    .line 5653
    :cond_59
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_68

    .line 5654
    cmpg-float v3, p1, v5

    if-gez v3, :cond_a4

    move v3, v6

    :goto_66
    mul-float p1, v3, v4

    .line 5657
    :cond_68
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v2, v3, v4

    .line 5659
    .local v2, speedRatio:F
    iput-boolean v7, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mStartFromDrag:Z

    .line 5660
    mul-float v3, v5, v2

    const v4, 0x44a28000

    add-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mBounceDuration:F

    .line 5663
    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    #getter for: Landroid/widget/AbsListView$TwBounceController;->mOrientation:I
    invoke-static {v3}, Landroid/widget/AbsListView$TwBounceController;->access$4700(Landroid/widget/AbsListView$TwBounceController;)I

    move-result v3

    if-nez v3, :cond_a7

    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    #getter for: Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Landroid/widget/AbsListView$TwBounceController;->access$4800(Landroid/widget/AbsListView$TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    :goto_8a
    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float v1, v3, v4

    .line 5666
    .local v1, maxBounceExtent:F
    mul-float v3, v1, v2

    iput v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 5668
    cmpl-float v3, p1, v5

    if-lez v3, :cond_9c

    .line 5669
    iget v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    mul-float/2addr v3, v6

    iput v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    .line 5671
    :cond_9c
    iget v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    const/high16 v4, 0x41d0

    mul-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mBounceExtentCoef:F

    goto :goto_3e

    .line 5654
    .end local v1           #maxBounceExtent:F
    .end local v2           #speedRatio:F
    :cond_a4
    const/high16 v3, 0x3f80

    goto :goto_66

    .line 5663
    .restart local v2       #speedRatio:F
    :cond_a7
    iget-object v3, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->this$1:Landroid/widget/AbsListView$TwBounceController;

    #getter for: Landroid/widget/AbsListView$TwBounceController;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Landroid/widget/AbsListView$TwBounceController;->access$4800(Landroid/widget/AbsListView$TwBounceController;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    goto :goto_8a
.end method

.method public start(FZ)V
    .registers 3
    .parameter "flingSpeed"
    .parameter "isBounceUp"

    .prologue
    .line 5628
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->start(F)V

    .line 5629
    iput-boolean p2, p0, Landroid/widget/AbsListView$TwBounceController$BounceScrollRunnableDefault;->mScrollBounceUp:Z

    .line 5630
    return-void
.end method

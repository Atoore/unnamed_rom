.class public Lcom/android/mms/ui/MessageListView$TransDelAnim;
.super Ljava/lang/Object;
.source "MessageListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TransDelAnim"
.end annotation


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerDuration:F

.field protected mHandlerInterval:I

.field protected mHandlerTick:F

.field protected mIsRunningHandler:Z

.field protected mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

.field final synthetic this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 601
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-object v1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    .line 593
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    .line 595
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    .line 671
    iput-object v1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    .line 602
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    .line 603
    return-void
.end method


# virtual methods
.method public cancelTransAnimation()V
    .locals 1

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->stopTransAnimation()V

    .line 631
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onCancelTransDeleteAnimation()V

    .line 633
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 642
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    .line 646
    iget v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 647
    iget v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    iput v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    .line 649
    :cond_2
    iget v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    div-float v0, v2, v3

    .line 650
    .local v0, input:F
    mul-float v1, v0, v0

    .line 651
    .local v1, interpolatedTime:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_4

    .line 652
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v2, :cond_3

    .line 653
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v2, v1}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onApplyTransformation(F)V

    .line 654
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/mms/ui/MessageListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 655
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->invalidate()V

    goto :goto_0

    .line 656
    :cond_4
    cmpl-float v2, v1, v4

    if-nez v2, :cond_0

    .line 657
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    if-eqz v2, :cond_6

    .line 658
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    .line 659
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v2, :cond_5

    .line 660
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v2, v1}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onApplyTransformation(F)V

    .line 661
    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    iget v3, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    int-to-long v3, v3

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/mms/ui/MessageListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 662
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->invalidate()V

    goto :goto_0

    .line 664
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v2, :cond_0

    .line 665
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v2}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onEndTransDeleteAnimation()V

    goto :goto_0
.end method

.method protected setOnTransDelAnimListener(Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;)V
    .locals 0
    .parameter "onTransAnimationListener"

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    .line 675
    return-void
.end method

.method public startTransAnimation(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->stopTransAnimation()V

    .line 613
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mOnTransAnimationListener:Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;->onBeginTransDeleteAnimation()V

    .line 616
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    .line 617
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerTick:F

    .line 618
    int-to-float v0, p1

    iput v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerDuration:F

    .line 619
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandlerInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 621
    :cond_1
    return-void
.end method

.method public stopTransAnimation()V
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mIsRunningHandler:Z

    .line 625
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 627
    :cond_0
    return-void
.end method

.method public userRelease()V
    .locals 1

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->stopTransAnimation()V

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$TransDelAnim;->mHandler:Landroid/os/Handler;

    .line 638
    return-void
.end method

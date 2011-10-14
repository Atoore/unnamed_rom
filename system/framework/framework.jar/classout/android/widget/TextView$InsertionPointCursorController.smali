.class Landroid/widget/TextView$InsertionPointCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionPointCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_FADE_OUT:I = 0xbb8


# instance fields
.field private mCurrentOffset:I

.field private final mHandle:Landroid/widget/TextView$HandleView;

.field private final mHider:Ljava/lang/Runnable;

.field private mPreviousEnd:I

.field private mPreviousStart:I

.field private mSwapCursorController:Z

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 8688
    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8675
    iput v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousStart:I

    .line 8676
    iput v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousEnd:I

    .line 8679
    iput-boolean v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mSwapCursorController:Z

    .line 8682
    new-instance v0, Landroid/widget/TextView$InsertionPointCursorController$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InsertionPointCursorController$1;-><init>(Landroid/widget/TextView$InsertionPointCursorController;)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    .line 8689
    new-instance v0, Landroid/widget/TextView$HandleView;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$CursorController;I)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    .line 8690
    return-void
.end method

.method private hideDelayed(I)V
    .registers 6
    .parameter "msec"

    .prologue
    .line 8718
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8719
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8720
    return-void
.end method


# virtual methods
.method public doSwapCursorController()Z
    .registers 2

    .prologue
    .line 8816
    const/4 v0, 0x0

    return v0
.end method

.method public endHandleVisible()I
    .registers 2

    .prologue
    .line 8793
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8794
    const/4 v0, 0x1

    .line 8796
    :goto_9
    return v0

    :cond_a
    const/16 v0, 0x270f

    goto :goto_9
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 8785
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8786
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getHeight()I

    move-result v0

    .line 8788
    :goto_e
    return v0

    :cond_f
    const/16 v0, 0x270f

    goto :goto_e
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 8777
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8778
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->getWidth()I

    move-result v0

    .line 8780
    :goto_e
    return v0

    :cond_f
    const/16 v0, 0x270f

    goto :goto_e
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 8705
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->hide()V

    .line 8706
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8708
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mIsInTextSelectionMode:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v0, :cond_33

    .line 8709
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 8710
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 8712
    :cond_2b
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    .line 8715
    :cond_33
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 8723
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetChanged(Landroid/widget/TextView$HandleView;)Z
    .registers 5
    .parameter "handle"

    .prologue
    .line 8808
    const/4 v0, 0x0

    .line 8809
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousStart:I

    if-eq v1, v2, :cond_e

    const/4 v1, 0x1

    move v0, v1

    .line 8810
    :goto_d
    return v0

    .line 8809
    :cond_e
    const/4 v1, 0x0

    move v0, v1

    goto :goto_d
.end method

.method public onDetached()V
    .registers 3

    .prologue
    .line 8772
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8773
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 8761
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .parameter "isInTouchMode"

    .prologue
    .line 8765
    if-nez p1, :cond_5

    .line 8766
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 8768
    :cond_5
    return-void
.end method

.method public resetSwapCursorController()V
    .registers 2

    .prologue
    .line 8820
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mSwapCursorController:Z

    .line 8821
    return-void
.end method

.method public setPreviousOffset()V
    .registers 2

    .prologue
    .line 8803
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousStart:I

    .line 8804
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mPreviousEnd:I

    .line 8805
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 8694
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mIsCursorControllerOn:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 8702
    :goto_8
    return-void

    .line 8699
    :cond_9
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->updatePosition()V

    .line 8700
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$HandleView;->show()V

    .line 8701
    const/16 v0, 0xbb8

    invoke-direct {p0, v0}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed(I)V

    goto :goto_8
.end method

.method public updatePosition()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 8738
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 8740
    .local v0, offset:I
    if-gez v0, :cond_14

    .line 8742
    const-string v1, "TextView"

    const-string v2, "Update cursor controller position called with no cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8743
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 8758
    :cond_13
    :goto_13
    return-void

    .line 8747
    :cond_14
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView$HandleView;->positionAtCursor(IZ)V

    .line 8750
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$HandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v1}, Landroid/widget/TextView$CursorControllerMenu;->getCurrentMenuPosition()I

    move-result v1

    if-ne v1, v2, :cond_13

    .line 8752
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v1}, Landroid/widget/TextView$CursorControllerMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 8753
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v1}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 8755
    :cond_42
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    goto :goto_13
.end method

.method public updatePosition(Landroid/widget/TextView$HandleView;II)V
    .registers 7
    .parameter "handle"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8727
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 8728
    .local v1, previousOffset:I
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p2, p3, v1}, Landroid/widget/TextView;->getHysteresisOffset(III)I

    move-result v0

    .line 8730
    .local v0, offset:I
    if-eq v0, v1, :cond_1c

    .line 8731
    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/widget/TextView;->access$1000(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8732
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->updatePosition()V

    .line 8734
    :cond_1c
    const/16 v2, 0xbb8

    invoke-direct {p0, v2}, Landroid/widget/TextView$InsertionPointCursorController;->hideDelayed(I)V

    .line 8735
    return-void
.end method

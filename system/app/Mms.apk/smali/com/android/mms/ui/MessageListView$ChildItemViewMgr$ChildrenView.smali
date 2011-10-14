.class Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
.super Ljava/lang/Object;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildrenView"
.end annotation


# instance fields
.field protected mFromXDeltaTransfer:F

.field protected mFromYDeltaTransfer:F

.field protected mIsAlignLeft:Z

.field protected mIsNewChildView:Z

.field protected mIsTransfer:Z

.field protected mMoveXTransfer:F

.field protected mMoveYTransfer:F

.field protected mToXDeltaTransfer:F

.field protected mToYDeltaTransfer:F

.field protected mView:Landroid/view/View;

.field final synthetic this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 868
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 850
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 852
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 854
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 856
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 858
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 860
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 862
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 864
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 866
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 870
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 871
    iput-object v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 872
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;IIZLandroid/view/View;)V
    .locals 3
    .parameter
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 874
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 852
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 854
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 856
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 858
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 860
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 862
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 864
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 866
    iput v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 875
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userSetChildView(IIZLandroid/view/View;)V

    .line 876
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;Lcom/android/mms/ui/MessageListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 846
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;)V

    return-void
.end method

.method private userSetChildView(IIZLandroid/view/View;)V
    .locals 1
    .parameter "index"
    .parameter "position"
    .parameter "isNew"
    .parameter "view"

    .prologue
    .line 896
    iput-boolean p3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    .line 897
    iput-object p4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 900
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->isAlignLeft()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 901
    return-void
.end method


# virtual methods
.method public releaseChildView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 880
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 881
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    .line 882
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 883
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 884
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 885
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 886
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 887
    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 889
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsNewChildView:Z

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->removeViewInLayout(Landroid/view/View;)V

    .line 891
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .line 893
    :cond_0
    return-void
.end method

.method public userCalculateOffsetTransfer(IF)V
    .locals 8
    .parameter "index"
    .parameter "interpolatedTime"

    .prologue
    const/4 v7, 0x0

    .line 937
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    iget v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    float-to-int v5, v5

    move v2, v5

    .line 939
    .local v2, moveYTransfer:I
    :goto_0
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    iget v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p2

    float-to-int v5, v5

    move v1, v5

    .line 942
    .local v1, moveXTransfer:I
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v5, v5, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v5, v5, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v4

    .line 943
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 944
    move-object v0, v4

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object v3, v0

    .line 945
    .local v3, msgListItem:Lcom/android/mms/ui/MessageListItem;
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListItem;->getCheckBox()I

    move-result v5

    if-nez v5, :cond_3

    .line 946
    int-to-float v5, v2

    iget v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p0, v5, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userOffsetChildTopAndBottom(II)V

    .line 947
    int-to-float v5, v1

    iget v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p0, v5, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userOffsetLeftAndRight(II)V

    .line 948
    int-to-float v5, v1

    iput v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveXTransfer:F

    .line 952
    :goto_2
    int-to-float v5, v2

    iput v5, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    .line 954
    .end local v3           #msgListItem:Lcom/android/mms/ui/MessageListItem;
    :cond_0
    return-void

    .end local v1           #moveXTransfer:I
    .end local v2           #moveYTransfer:I
    .end local v4           #view:Landroid/view/View;
    :cond_1
    move v2, v7

    .line 937
    goto :goto_0

    .restart local v2       #moveYTransfer:I
    :cond_2
    move v1, v7

    .line 939
    goto :goto_1

    .line 950
    .restart local v1       #moveXTransfer:I
    .restart local v3       #msgListItem:Lcom/android/mms/ui/MessageListItem;
    .restart local v4       #view:Landroid/view/View;
    :cond_3
    int-to-float v5, v2

    iget v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mMoveYTransfer:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p0, v5, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userOffsetChildTopAndBottom(II)V

    goto :goto_2
.end method

.method public userGetChildView()Landroid/view/View;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public userOffsetChildTopAndBottom(II)V
    .locals 1
    .parameter "offset"
    .parameter "index"

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 909
    return-void
.end method

.method public userOffsetLeftAndRight(II)V
    .locals 1
    .parameter "offset"
    .parameter "index"

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->this$1:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->isAlignLeft(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    iget-object p0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/android/mms/ui/MessageListItem;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 923
    :goto_0
    return-void

    .line 921
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0
.end method

.method public userSetTransfer(FFFF)V
    .locals 1
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    .line 927
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsTransfer:Z

    .line 929
    iput p3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromYDeltaTransfer:F

    .line 930
    iput p4, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToYDeltaTransfer:F

    .line 931
    iput p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mFromXDeltaTransfer:F

    .line 932
    iput p2, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mToXDeltaTransfer:F

    .line 933
    return-void
.end method

.class Landroid/widget/AbsListView$PositionScroller;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3
    .parameter

    .prologue
    .line 3594
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3595
    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 3596
    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 3690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView;->getHeight()I

    move-result v15

    .line 3691
    .local v15, listHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    .line 3693
    .local v5, firstPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_29c

    .line 3817
    :cond_1e
    :goto_1e
    return-void

    .line 3695
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v21

    const/16 v22, 0x1

    sub-int v12, v21, v22

    .line 3696
    .local v12, lastViewIndex:I
    add-int v8, v5, v12

    .line 3698
    .local v8, lastPos:I
    if-ltz v12, :cond_1e

    .line 3702
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-ne v0, v1, :cond_4a

    .line 3704
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e

    .line 3708
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3709
    .local v9, lastView:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 3710
    .local v11, lastViewHeight:I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    .line 3711
    .local v14, lastViewTop:I
    sub-int v13, v15, v14

    .line 3712
    .local v13, lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move v0, v8

    move/from16 v1, v21

    if-ge v0, v1, :cond_b0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v21, v0

    move/from16 v4, v21

    .line 3714
    .local v4, extraScroll:I
    :goto_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    sub-int v22, v11, v13

    add-int v22, v22, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 3717
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3718
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-ge v0, v1, :cond_1e

    .line 3719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1e

    .line 3712
    .end local v4           #extraScroll:I
    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v4, v21

    goto :goto_7e

    .line 3725
    .end local v8           #lastPos:I
    .end local v9           #lastView:Landroid/view/View;
    .end local v11           #lastViewHeight:I
    .end local v12           #lastViewIndex:I
    .end local v13           #lastViewPixelsShowing:I
    .end local v14           #lastViewTop:I
    :pswitch_c5
    const/16 v19, 0x1

    .line 3726
    .local v19, nextViewIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 3728
    .local v3, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-eq v0, v1, :cond_1e

    const/16 v21, 0x1

    move v0, v3

    move/from16 v1, v21

    if-le v0, v1, :cond_1e

    add-int v21, v5, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1e

    .line 3732
    add-int/lit8 v16, v5, 0x1

    .line 3734
    .local v16, nextPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_114

    .line 3736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1e

    .line 3740
    :cond_114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3741
    .local v17, nextView:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v18

    .line 3742
    .local v18, nextViewHeight:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v20

    .line 3743
    .local v20, nextViewTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move v4, v0

    .line 3744
    .restart local v4       #extraScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_167

    .line 3745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int v23, v18, v20

    sub-int v23, v23, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 3748
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1e

    .line 3752
    :cond_167
    move/from16 v0, v20

    move v1, v4

    if-le v0, v1, :cond_1e

    .line 3753
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    sub-int v22, v20, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto/16 :goto_1e

    .line 3760
    .end local v3           #childCount:I
    .end local v4           #extraScroll:I
    .end local v16           #nextPos:I
    .end local v17           #nextView:Landroid/view/View;
    .end local v18           #nextViewHeight:I
    .end local v19           #nextViewIndex:I
    .end local v20           #nextViewTop:I
    :pswitch_17f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-ne v0, v1, :cond_199

    .line 3762
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1e

    .line 3766
    :cond_199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3767
    .local v6, firstView:Landroid/view/View;
    if-eqz v6, :cond_1e

    .line 3770
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 3771
    .local v7, firstViewTop:I
    if-lez v5, :cond_1e5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v21, v0

    move/from16 v4, v21

    .line 3773
    .restart local v4       #extraScroll:I
    :goto_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    sub-int v22, v7, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 3775
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3777
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v21, v0

    move v0, v5

    move/from16 v1, v21

    if-le v0, v1, :cond_1e

    .line 3778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1e

    .line 3771
    .end local v4           #extraScroll:I
    :cond_1e5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v4, v21

    goto :goto_1b5

    .line 3784
    .end local v6           #firstView:Landroid/view/View;
    .end local v7           #firstViewTop:I
    :pswitch_1fa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v21

    const/16 v22, 0x2

    sub-int v12, v21, v22

    .line 3785
    .restart local v12       #lastViewIndex:I
    if-ltz v12, :cond_1e

    .line 3788
    add-int v8, v5, v12

    .line 3790
    .restart local v8       #lastPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-ne v0, v1, :cond_226

    .line 3792
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1e

    .line 3796
    :cond_226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3797
    .restart local v9       #lastView:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 3798
    .restart local v11       #lastViewHeight:I
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    .line 3799
    .restart local v14       #lastViewTop:I
    sub-int v13, v15, v14

    .line 3800
    .restart local v13       #lastViewPixelsShowing:I
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3801
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-le v0, v1, :cond_278

    .line 3802
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v22, v0

    sub-int v22, v13, v22

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 3803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1e

    .line 3805
    :cond_278
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v21, v0

    sub-int v2, v15, v21

    .line 3806
    .local v2, bottom:I
    add-int v10, v14, v11

    .line 3807
    .local v10, lastViewBottom:I
    if-le v2, v10, :cond_1e

    .line 3808
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v21, v0

    sub-int v22, v2, v10

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto/16 :goto_1e

    .line 3693
    :pswitch_data_29c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_17f
        :pswitch_c5
        :pswitch_1fa
    .end packed-switch
.end method

.method start(I)V
    .registers 9
    .parameter "position"

    .prologue
    const/16 v6, 0x190

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 3599
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v0, v3, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3600
    .local v0, firstPos:I
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    sub-int v1, v3, v5

    .line 3602
    .local v1, lastPos:I
    const/4 v2, 0x0

    .line 3603
    .local v2, viewTravelCount:I
    if-gt p1, v0, :cond_2d

    .line 3604
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 3605
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 3614
    :goto_1b
    if-lez v2, :cond_36

    .line 3615
    div-int v3, v6, v2

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 3619
    :goto_21
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 3620
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 3621
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3623
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 3624
    :cond_2c
    return-void

    .line 3606
    :cond_2d
    if-lt p1, v1, :cond_2c

    .line 3607
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 3608
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1b

    .line 3617
    :cond_36
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_21
.end method

.method start(II)V
    .registers 14
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    const/16 v10, 0x190

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 3627
    if-ne p2, v9, :cond_a

    .line 3628
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 3683
    :cond_9
    :goto_9
    return-void

    .line 3632
    :cond_a
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3633
    .local v3, firstPos:I
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v3

    sub-int v4, v7, v8

    .line 3635
    .local v4, lastPos:I
    const/4 v6, 0x0

    .line 3636
    .local v6, viewTravelCount:I
    if-gt p1, v3, :cond_41

    .line 3637
    sub-int v1, v4, p2

    .line 3638
    .local v1, boundPosFromLast:I
    if-lt v1, v8, :cond_9

    .line 3643
    sub-int v7, v3, p1

    add-int/lit8 v5, v7, 0x1

    .line 3644
    .local v5, posTravel:I
    sub-int v2, v1, v8

    .line 3645
    .local v2, boundTravel:I
    if-ge v2, v5, :cond_3c

    .line 3646
    move v6, v2

    .line 3647
    const/4 v7, 0x4

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 3673
    .end local v1           #boundPosFromLast:I
    :goto_2a
    if-lez v6, :cond_58

    .line 3674
    div-int v7, v10, v6

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 3678
    :goto_30
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 3679
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 3680
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 3682
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    .line 3649
    .restart local v1       #boundPosFromLast:I
    :cond_3c
    move v6, v5

    .line 3650
    const/4 v7, 0x2

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_2a

    .line 3652
    .end local v1           #boundPosFromLast:I
    .end local v2           #boundTravel:I
    .end local v5           #posTravel:I
    :cond_41
    if-lt p1, v4, :cond_9

    .line 3653
    sub-int v0, p2, v3

    .line 3654
    .local v0, boundPosFromFirst:I
    if-lt v0, v8, :cond_9

    .line 3659
    sub-int v7, p1, v4

    add-int/lit8 v5, v7, 0x1

    .line 3660
    .restart local v5       #posTravel:I
    sub-int v2, v0, v8

    .line 3661
    .restart local v2       #boundTravel:I
    if-ge v2, v5, :cond_54

    .line 3662
    move v6, v2

    .line 3663
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_2a

    .line 3665
    :cond_54
    move v6, v5

    .line 3666
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_2a

    .line 3676
    .end local v0           #boundPosFromFirst:I
    :cond_58
    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_30
.end method

.method stop()V
    .registers 2

    .prologue
    .line 3686
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3687
    return-void
.end method

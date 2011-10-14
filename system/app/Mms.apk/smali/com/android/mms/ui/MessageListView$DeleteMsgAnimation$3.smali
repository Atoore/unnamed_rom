.class Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;
.super Ljava/lang/Object;
.source "MessageListView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->startAlphaDelAnim([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 26
    .parameter "animation"

    .prologue
    .line 381
    const/16 v16, 0x0

    .line 382
    .local v16, isItemNextEmpty:Z
    const/16 v20, 0x0

    .line 383
    .local v20, realEndY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    if-nez v2, :cond_12

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsAlphaAnim:Z

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->hideSelectedChildItems()V

    .line 387
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v2

    if-gt v3, v2, :cond_1

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v24

    .line 389
    .local v24, view:Landroid/view/View;
    if-eqz v24, :cond_0

    .line 390
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->clearAnimation()V

    .line 387
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 392
    .end local v24           #view:Landroid/view/View;
    :cond_1
    const/4 v15, 0x1

    .line 393
    .local v15, isEnd:Z
    const/16 v18, 0x0

    .line 394
    .local v18, lastIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    .end local v3           #i:I
    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    move v11, v2

    .line 395
    .local v11, endPoint:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v9

    .line 396
    .local v9, allChildItemsSize:I
    const/16 v23, 0x0

    .line 397
    .local v23, startY:I
    const/4 v13, 0x0

    .line 398
    .local v13, endY:I
    const/16 v22, 0x0

    .line 399
    .local v22, startX:I
    const/4 v12, 0x0

    .line 400
    .local v12, endX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    const/4 v3, 0x0

    aget v8, v2, v3

    .line 401
    .local v8, aboveDeleteIndexes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getBottom()I

    move-result v25

    .line 402
    .local v25, viewBottom:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v9, :cond_11

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getVisibleChildItemViewCount()I

    move-result v2

    if-gt v3, v2, :cond_f

    .line 404
    const/4 v14, 0x0

    .line 405
    .local v14, isDeleteItem:Z
    const/16 v17, 0x0

    .local v17, j:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    array-length v2, v2

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_2

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mVisibleDelItems:[I

    aget v2, v2, v17

    if-ne v3, v2, :cond_4

    .line 407
    const/4 v14, 0x1

    .line 412
    :cond_2
    if-eqz v14, :cond_5

    .line 413
    const/16 v16, 0x1

    .line 402
    .end local v14           #isDeleteItem:Z
    .end local v17           #j:I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 394
    .end local v3           #i:I
    .end local v8           #aboveDeleteIndexes:I
    .end local v9           #allChildItemsSize:I
    .end local v11           #endPoint:I
    .end local v12           #endX:I
    .end local v13           #endY:I
    .end local v22           #startX:I
    .end local v23           #startY:I
    .end local v25           #viewBottom:I
    :cond_3
    const/4 v2, 0x0

    move v11, v2

    goto :goto_1

    .line 405
    .restart local v3       #i:I
    .restart local v8       #aboveDeleteIndexes:I
    .restart local v9       #allChildItemsSize:I
    .restart local v11       #endPoint:I
    .restart local v12       #endX:I
    .restart local v13       #endY:I
    .restart local v14       #isDeleteItem:Z
    .restart local v17       #j:I
    .restart local v22       #startX:I
    .restart local v23       #startY:I
    .restart local v25       #viewBottom:I
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 417
    :cond_5
    move/from16 v0, v18

    move v1, v3

    if-lt v0, v1, :cond_6

    if-ge v3, v8, :cond_8

    .line 418
    :cond_6
    const/4 v15, 0x0

    .line 419
    const/16 v23, 0x0

    .line 420
    const/4 v13, 0x0

    .line 421
    const/16 v22, 0x0

    .line 422
    const/4 v12, 0x0

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v19

    .line 425
    .local v19, msgListItemView:Landroid/view/View;
    const/4 v10, 0x0

    .line 426
    .local v10, dateSeperatorView:Landroid/view/View;
    const/16 v21, 0x0

    .line 433
    .local v21, realItemViewWithoutCheckbox:Landroid/view/View;
    if-ge v3, v8, :cond_a

    .line 434
    if-eqz v19, :cond_7

    .line 435
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v21, v0

    .end local v21           #realItemViewWithoutCheckbox:Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageListItem;->getRight()I

    move-result v2

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v21, v0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v12, v2, v4

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    int-to-float v5, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    .line 444
    move v0, v11

    move/from16 v1, v25

    if-gt v0, v1, :cond_9

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v11

    move v11, v2

    .line 474
    :cond_7
    :goto_5
    add-int/lit8 v18, v18, 0x1

    .line 484
    .end local v10           #dateSeperatorView:Landroid/view/View;
    .end local v14           #isDeleteItem:Z
    .end local v17           #j:I
    .end local v19           #msgListItemView:Landroid/view/View;
    :cond_8
    :goto_6
    const/16 v16, 0x0

    goto :goto_4

    .restart local v10       #dateSeperatorView:Landroid/view/View;
    .restart local v14       #isDeleteItem:Z
    .restart local v17       #j:I
    .restart local v19       #msgListItemView:Landroid/view/View;
    :cond_9
    move/from16 v11, v25

    .line 444
    goto :goto_5

    .line 447
    .restart local v21       #realItemViewWithoutCheckbox:Landroid/view/View;
    :cond_a
    if-eqz v19, :cond_b

    .line 448
    if-eqz v16, :cond_d

    .line 449
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v13, v11, v2

    .line 450
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v20, v0

    .end local v20           #realEndY:I
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageListItem;->getRight()I

    move-result v2

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v20, v0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v12, v2, v4

    .line 457
    move/from16 v20, v13

    .line 458
    .restart local v20       #realEndY:I
    move v0, v11

    move/from16 v1, v25

    if-gt v0, v1, :cond_c

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v11

    move v11, v2

    .line 471
    .end local v21           #realItemViewWithoutCheckbox:Landroid/view/View;
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    int-to-float v5, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    goto :goto_5

    .restart local v21       #realItemViewWithoutCheckbox:Landroid/view/View;
    :cond_c
    move/from16 v11, v25

    .line 458
    goto :goto_7

    .line 460
    :cond_d
    move/from16 v13, v20

    .line 461
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v21, v0

    .end local v21           #realItemViewWithoutCheckbox:Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageListItem;->getRight()I

    move-result v2

    move-object/from16 v0, v19

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object/from16 v21, v0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v12, v2, v4

    .line 468
    move v0, v11

    move/from16 v1, v25

    if-gt v0, v1, :cond_e

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v11

    move v11, v2

    :goto_8
    goto :goto_7

    :cond_e
    move/from16 v11, v25

    goto :goto_8

    .line 477
    .end local v10           #dateSeperatorView:Landroid/view/View;
    .end local v14           #isDeleteItem:Z
    .end local v17           #j:I
    .end local v19           #msgListItemView:Landroid/view/View;
    :cond_f
    const/4 v15, 0x0

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemViewAt(I)Landroid/view/View;

    move-result-object v19

    .line 479
    .restart local v19       #msgListItemView:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v13, v11, v2

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    move/from16 v0, v22

    int-to-float v0, v0

    move v4, v0

    int-to-float v5, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v13

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->userSetTransfer(IFFFF)V

    .line 481
    add-int/lit8 v18, v18, 0x1

    .line 482
    move v0, v11

    move/from16 v1, v25

    if-gt v0, v1, :cond_10

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v11

    move v11, v2

    :goto_9
    goto/16 :goto_6

    :cond_10
    move/from16 v11, v25

    goto :goto_9

    .line 487
    .end local v19           #msgListItemView:Landroid/view/View;
    :cond_11
    if-eqz v15, :cond_13

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    .line 492
    .end local v3           #i:I
    .end local v8           #aboveDeleteIndexes:I
    .end local v9           #allChildItemsSize:I
    .end local v11           #endPoint:I
    .end local v12           #endX:I
    .end local v13           #endY:I
    .end local v15           #isEnd:Z
    .end local v18           #lastIndex:I
    .end local v22           #startX:I
    .end local v23           #startY:I
    .end local v25           #viewBottom:I
    :cond_12
    :goto_a
    return-void

    .line 490
    .restart local v3       #i:I
    .restart local v8       #aboveDeleteIndexes:I
    .restart local v9       #allChildItemsSize:I
    .restart local v11       #endPoint:I
    .restart local v12       #endX:I
    .restart local v13       #endY:I
    .restart local v15       #isEnd:Z
    .restart local v18       #lastIndex:I
    .restart local v22       #startX:I
    .restart local v23       #startY:I
    .restart local v25       #viewBottom:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    move-object v3, v0

    .end local v3           #i:I
    iget v3, v3, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTimeIntervalForTransfer:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->startTransAnimation(I)V

    goto :goto_a
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 497
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$3;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    invoke-interface {v0}, Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;->onBeginDeleteMsgAnimation()V

    .line 503
    :cond_0
    return-void
.end method

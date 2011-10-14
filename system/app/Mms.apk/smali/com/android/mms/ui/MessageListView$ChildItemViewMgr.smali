.class public Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;
.super Ljava/lang/Object;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChildItemViewMgr"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    }
.end annotation


# instance fields
.field protected mChildItemViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;",
            ">;"
        }
    .end annotation
.end field

.field protected mVisibleChildCount:I

.field final synthetic this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListView;)V
    .locals 1
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    .line 682
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mVisibleChildCount:I

    .line 685
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    .line 686
    return-void
.end method


# virtual methods
.method public addChildViewBelowWithInvisible([I)V
    .locals 27
    .parameter "orginalIndexes"

    .prologue
    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v20

    .line 733
    .local v20, size:I
    if-nez v20, :cond_1

    .line 786
    :cond_0
    return-void

    .line 736
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->removeChildWithAll()V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v17

    .line 739
    .local v17, positionTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 740
    .local v26, viewBottom:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListView;->getLastVisiblePosition()I

    move-result v16

    .line 742
    .local v16, positionBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mVisibleChildCount:I

    .line 743
    const/16 v24, 0x0

    .line 744
    .local v24, totalRemainViewSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListView;->getBottom()I

    move-result v25

    .line 745
    .local v25, totalScreenSize:I
    move/from16 v19, v16

    .line 746
    .local v19, realUnderPosition:I
    const/4 v14, 0x0

    .line 748
    .local v14, isChecked:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v22

    .line 749
    .local v22, sizeScreen:I
    const/16 v21, 0x0

    .line 750
    .local v21, sizeOfInvisibleBelowItems:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move v0, v7

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    move-object v11, v0

    new-instance v5, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    add-int v8, v17, v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object v6, v0

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v11, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 754
    const/4 v15, 0x0

    .local v15, j:I
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    if-ge v15, v5, :cond_3

    .line 755
    aget v5, p1, v15

    if-ne v7, v5, :cond_2

    const/4 v14, 0x1

    .line 754
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 757
    :cond_3
    if-nez v14, :cond_4

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object v5, v0

    invoke-virtual {v5, v7}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v24, v24, v5

    .line 759
    :cond_4
    const/4 v14, 0x0

    .line 750
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 763
    .end local v15           #j:I
    :cond_5
    const/4 v5, 0x1

    sub-int v5, v20, v5

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_0

    .line 765
    move-object/from16 v18, v26

    .line 766
    .local v18, previousView:Landroid/view/View;
    const/4 v13, 0x0

    .line 768
    .local v13, thisView:Landroid/view/View;
    const/4 v5, 0x1

    sub-int v5, v20, v5

    sub-int v21, v5, v16

    .line 769
    const/4 v7, 0x0

    :goto_2
    move v0, v7

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 770
    add-int v10, v22, v7

    .line 771
    .local v10, index:I
    add-int/lit8 v5, v16, 0x1

    add-int v11, v5, v7

    .line 772
    .local v11, position:I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v10

    move v3, v11

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->makeChildView(Landroid/view/View;II[I)Landroid/view/View;

    move-result-object v13

    .line 773
    if-nez v13, :cond_7

    .line 769
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 775
    :cond_7
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    move-object v5, v0

    new-instance v8, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    const/4 v12, 0x1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;IIZLandroid/view/View;)V

    invoke-virtual {v5, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 777
    add-int/lit8 v19, v19, 0x1

    .line 778
    move-object/from16 v18, v13

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    .line 781
    .local v23, tmpView:Landroid/view/View;
    if-eqz v23, :cond_6

    .line 782
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v24, v24, v5

    goto :goto_3
.end method

.method public calculateOffsetForTransDelAnim(IF)V
    .locals 2
    .parameter "index"
    .parameter "interpolatedTime"

    .prologue
    .line 835
    new-instance v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;Lcom/android/mms/ui/MessageListView$1;)V

    .line 836
    .local v0, childView:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    .line 838
    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userCalculateOffsetTransfer(IF)V

    .line 840
    :cond_0
    return-void
.end method

.method public getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 719
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    if-gtz v1, :cond_0

    move-object v1, v2

    .line 727
    .end local p0
    :goto_0
    return-object v1

    .line 722
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v0

    .line 723
    .local v0, size:I
    if-lez v0, :cond_1

    if-ltz p1, :cond_1

    if-gt v0, p1, :cond_2

    :cond_1
    move-object v1, v2

    .line 724
    goto :goto_0

    .line 726
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-object v1, p0

    goto :goto_0

    .restart local p0
    :cond_3
    move-object v1, v2

    .line 727
    goto :goto_0
.end method

.method public getChildItemCountWithAll()I
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getChildItemViewAt(I)Landroid/view/View;
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v0

    .line 711
    .local v0, size:I
    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    if-gt v0, p1, :cond_1

    :cond_0
    move-object v1, v2

    .line 715
    :goto_0
    return-object v1

    .line 714
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userGetChildView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 715
    goto :goto_0
.end method

.method public getVisibleChildItemViewCount()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mVisibleChildCount:I

    return v0
.end method

.method public isAlignLeft(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->mIsAlignLeft:Z

    return v0
.end method

.method protected makeChildView(Landroid/view/View;II[I)Landroid/view/View;
    .locals 11
    .parameter "previousView"
    .parameter "index"
    .parameter "position"
    .parameter "orginalIndexes"

    .prologue
    .line 790
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, p4

    if-ge v2, v6, :cond_1

    .line 791
    aget v6, p4, v2

    if-ne p3, v6, :cond_0

    const/4 v6, 0x0

    .line 823
    :goto_1
    return-object v6

    .line 790
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-interface {v6, p3, v7, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 796
    .local v5, thisView:Landroid/view/View;
    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getCacheColorHint()I

    move-result v6

    if-eqz v6, :cond_2

    .line 797
    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getCacheColorHint()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 799
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 800
    .local v4, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v4, :cond_3

    .line 801
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    .end local v4           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v6, -0x1

    const/4 v7, -0x2

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 803
    .restart local v4       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 808
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListView;->getListPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getListPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v4, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v6, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 810
    .local v1, childWidthSpec:I
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 812
    .local v3, lpHeight:I
    if-lez v3, :cond_4

    .line 813
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 817
    .local v0, childHeightSpec:I
    :goto_2
    invoke-virtual {v5, v1, v0}, Landroid/view/View;->measure(II)V

    .line 818
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 821
    iget-object v6, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->this$0:Lcom/android/mms/ui/MessageListView;

    const/4 v7, -0x1

    invoke-static {v6, v5, v7, v4}, Lcom/android/mms/ui/MessageListView;->access$000(Lcom/android/mms/ui/MessageListView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-object v6, v5

    .line 823
    goto/16 :goto_1

    .line 815
    .end local v0           #childHeightSpec:I
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_2
.end method

.method public removeChildWithAll()V
    .locals 4

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v2

    .line 690
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 691
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    .line 692
    .local v0, childView:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->releaseChildView()V

    .line 690
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    .end local v0           #childView:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->mChildItemViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    .line 698
    return-void
.end method

.method public userSetTransfer(IFFFF)V
    .locals 2
    .parameter "index"
    .parameter "fromXDelta"
    .parameter "toXDelta"
    .parameter "fromYDelta"
    .parameter "toYDelta"

    .prologue
    .line 828
    new-instance v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;-><init>(Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;Lcom/android/mms/ui/MessageListView$1;)V

    .line 829
    .local v0, childView:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildAtWithAll(I)Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;

    move-result-object v0

    .line 830
    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr$ChildrenView;->userSetTransfer(FFFF)V

    .line 832
    :cond_0
    return-void
.end method

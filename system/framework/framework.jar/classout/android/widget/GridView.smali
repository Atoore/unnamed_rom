.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 68
    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 70
    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 71
    iput v2, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 76
    iput-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 77
    iput-object v3, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/GridView;->mGravity:I

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 89
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setOverScrollMode(I)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setEnableExcessScroll(Z)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput v9, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 68
    iput v7, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 70
    iput v7, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 71
    iput v8, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 76
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 77
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 79
    iput v11, p0, Landroid/widget/GridView;->mGravity:I

    .line 81
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 100
    sget-object v6, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 103
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 105
    .local v2, hSpacing:I
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 107
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 109
    .local v5, vSpacing:I
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 111
    invoke-virtual {v0, v11, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 112
    .local v3, index:I
    if-ltz v3, :cond_3c

    .line 113
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 116
    :cond_3c
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 117
    .local v1, columnWidth:I
    if-lez v1, :cond_46

    .line 118
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 121
    :cond_46
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 122
    .local v4, numColumns:I
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 124
    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 125
    if-ltz v3, :cond_57

    .line 126
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setGravity(I)V

    .line 129
    :cond_57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    invoke-virtual {p0, v8}, Landroid/widget/GridView;->setOverScrollMode(I)V

    .line 134
    invoke-virtual {p0, v10}, Landroid/widget/GridView;->setEnableExcessScroll(Z)V

    .line 135
    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .registers 8
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 732
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, p3, :cond_1a

    .line 736
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, v3, p2

    .line 740
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, v3, p3

    .line 741
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 744
    .local v0, offset:I
    neg-int v3, v0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 746
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_1a
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .registers 8
    .parameter "childInSelectedRow"
    .parameter "topSelectionPixel"
    .parameter "bottomSelectionPixel"

    .prologue
    .line 760
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, p2, :cond_19

    .line 763
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v1, p2, v3

    .line 767
    .local v1, spaceAbove:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v2, p3, v3

    .line 768
    .local v2, spaceBelow:I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 771
    .local v0, offset:I
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 773
    .end local v0           #offset:I
    .end local v1           #spaceAbove:I
    .end local v2           #spaceBelow:I
    :cond_19
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .registers 7

    .prologue
    .line 1817
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 1819
    .local v1, childCount:I
    if-lez v1, :cond_29

    .line 1823
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_2a

    .line 1826
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1827
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 1828
    .local v2, delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eqz v3, :cond_20

    .line 1831
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    .line 1833
    :cond_20
    if-gez v2, :cond_23

    .line 1835
    const/4 v2, 0x0

    .line 1854
    :cond_23
    :goto_23
    if-eqz v2, :cond_29

    .line 1855
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 1858
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_29
    return-void

    .line 1839
    :cond_2a
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1840
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 1842
    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4a

    .line 1845
    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    .line 1848
    :cond_4a
    if-lez v2, :cond_23

    .line 1850
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x82

    const/16 v4, 0x21

    const/4 v3, 0x1

    .line 1422
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_c

    move v2, v6

    .line 1510
    :goto_b
    return v2

    .line 1426
    :cond_c
    iget-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v2, :cond_13

    .line 1427
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1430
    :cond_13
    const/4 v1, 0x0

    .line 1431
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1433
    .local v0, action:I
    if-eq v0, v3, :cond_24

    .line 1434
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v2, :cond_21

    .line 1435
    sparse-switch p1, :sswitch_data_a6

    .line 1448
    :cond_21
    sparse-switch p1, :sswitch_data_c4

    .line 1495
    :cond_24
    :goto_24
    if-nez v1, :cond_2a

    .line 1496
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1499
    :cond_2a
    if-eqz v1, :cond_8e

    move v2, v3

    .line 1500
    goto :goto_b

    .line 1443
    :sswitch_2e
    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelection()Z

    move v2, v3

    .line 1444
    goto :goto_b

    .line 1450
    :sswitch_33
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    .line 1451
    goto :goto_24

    .line 1454
    :sswitch_3a
    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    .line 1455
    goto :goto_24

    .line 1458
    :sswitch_41
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 1459
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_24

    .line 1462
    :cond_4c
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    .line 1464
    goto :goto_24

    .line 1467
    :sswitch_51
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 1468
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v1

    goto :goto_24

    .line 1470
    :cond_5c
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v1

    .line 1472
    goto :goto_24

    .line 1476
    :sswitch_61
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_70

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_70

    .line 1477
    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    :cond_70
    move v2, v3

    .line 1480
    goto :goto_b

    .line 1484
    :sswitch_72
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_7e

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_24

    .line 1485
    :cond_7e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-nez v2, :cond_89

    .line 1486
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v1

    goto :goto_24

    .line 1488
    :cond_89
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v1

    goto :goto_24

    .line 1502
    :cond_8e
    packed-switch v0, :pswitch_data_e2

    move v2, v6

    .line 1510
    goto/16 :goto_b

    .line 1504
    :pswitch_94
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1506
    :pswitch_9a
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1508
    :pswitch_a0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 1435
    :sswitch_data_a6
    .sparse-switch
        0x13 -> :sswitch_2e
        0x14 -> :sswitch_2e
        0x15 -> :sswitch_2e
        0x16 -> :sswitch_2e
        0x17 -> :sswitch_2e
        0x3e -> :sswitch_2e
        0x42 -> :sswitch_2e
    .end sparse-switch

    .line 1448
    :sswitch_data_c4
    .sparse-switch
        0x13 -> :sswitch_41
        0x14 -> :sswitch_51
        0x15 -> :sswitch_33
        0x16 -> :sswitch_3a
        0x17 -> :sswitch_61
        0x3e -> :sswitch_72
        0x42 -> :sswitch_61
    .end sparse-switch

    .line 1502
    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_94
        :pswitch_9a
        :pswitch_a0
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .registers 14
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    const/4 v9, 0x1

    .line 544
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, p3

    sub-int v6, v7, v9

    .line 545
    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v9

    if-ne v6, v7, :cond_60

    if-lez p3, :cond_60

    .line 547
    sub-int v7, p3, v9

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 550
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 552
    .local v4, lastBottom:I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 556
    .local v1, end:I
    sub-int v0, v1, v4

    .line 558
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 559
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 563
    .local v3, firstTop:I
    if-lez v0, :cond_60

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v7, :cond_39

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_60

    .line 564
    :cond_39
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_46

    .line 566
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 570
    :cond_46
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 571
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_60

    .line 574
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v8, :cond_61

    move v8, v9

    :goto_54
    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 577
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 581
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_60
    return-void

    .restart local v0       #bottomOffset:I
    .restart local v1       #end:I
    .restart local v2       #firstChild:Landroid/view/View;
    .restart local v3       #firstTop:I
    .restart local v4       #lastBottom:I
    .restart local v5       #lastChild:Landroid/view/View;
    :cond_61
    move v8, p1

    .line 574
    goto :goto_54
.end method

.method private correctTooLow(III)V
    .registers 15
    .parameter "numColumns"
    .parameter "verticalSpacing"
    .parameter "childCount"

    .prologue
    const/4 v10, 0x1

    .line 584
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_5e

    if-lez p3, :cond_5e

    .line 586
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 589
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 592
    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 595
    .local v6, start:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 599
    .local v0, end:I
    sub-int v7, v2, v6

    .line 600
    .local v7, topOffset:I
    sub-int v8, p3, v10

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 601
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 602
    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p3

    sub-int v5, v8, v10

    .line 606
    .local v5, lastPosition:I
    if-lez v7, :cond_5e

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-lt v5, v8, :cond_39

    if-le v3, v0, :cond_5e

    .line 607
    :cond_39
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_44

    .line 609
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 613
    :cond_44
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 614
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ge v5, v8, :cond_5e

    .line 617
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v8, :cond_5f

    move v8, v10

    :goto_52
    add-int/2addr v8, v5

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 620
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 624
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_5e
    return-void

    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_5f
    move v8, p1

    .line 617
    goto :goto_52
.end method

.method private determineColumns(I)V
    .registers 9
    .parameter "availableSpace"

    .prologue
    const/4 v6, 0x1

    .line 873
    iget v1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 874
    .local v1, requestedHorizontalSpacing:I
    iget v3, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 875
    .local v3, stretchMode:I
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 877
    .local v0, requestedColumnWidth:I
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_31

    .line 878
    if-lez v0, :cond_2d

    .line 880
    add-int v4, p1, v1

    add-int v5, v0, v1

    div-int/2addr v4, v5

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 891
    :goto_15
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    if-gtz v4, :cond_1b

    .line 892
    iput v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 895
    :cond_1b
    packed-switch v3, :pswitch_data_6e

    .line 903
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v4, v0

    sub-int v4, p1, v4

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v5, v6

    mul-int/2addr v5, v1

    sub-int v2, v4, v5

    .line 905
    .local v2, spaceLeftOver:I
    packed-switch v3, :pswitch_data_74

    .line 937
    .end local v2           #spaceLeftOver:I
    :goto_2c
    return-void

    .line 884
    :cond_2d
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_15

    .line 888
    :cond_31
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_15

    .line 898
    :pswitch_36
    iput v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 899
    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_2c

    .line 908
    .restart local v2       #spaceLeftOver:I
    :pswitch_3b
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v4, v2, v4

    add-int/2addr v4, v0

    iput v4, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 909
    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_2c

    .line 914
    :pswitch_45
    iput v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 915
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v4, v6, :cond_54

    .line 916
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v4, v6

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_2c

    .line 919
    :cond_54
    add-int v4, v1, v2

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_2c

    .line 925
    :pswitch_59
    iput v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 926
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v4, v6, :cond_69

    .line 927
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v4, v4, 0x1

    div-int v4, v2, v4

    add-int/2addr v4, v1

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_2c

    .line 930
    :cond_69
    add-int v4, v1, v2

    iput v4, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_2c

    .line 895
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_36
    .end packed-switch

    .line 905
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3b
        :pswitch_59
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 8
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 247
    const/4 v1, 0x0

    .line 249
    .local v1, selectedView:Landroid/view/View;
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 251
    .local v0, end:I
    :goto_c
    if-ge p2, v0, :cond_28

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v3, :cond_28

    .line 252
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 253
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_1a

    .line 254
    move-object v1, v2

    .line 259
    :cond_1a
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    .line 261
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    .line 262
    goto :goto_c

    .line 264
    .end local v2           #temp:Landroid/view/View;
    :cond_28
    return-object v1
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .registers 6
    .parameter "lastPosition"
    .parameter "nextBottom"

    .prologue
    const/4 v2, 0x1

    .line 375
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 376
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 378
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v2

    sub-int v0, v1, p1

    .line 379
    .local v0, invertedPosition:I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int p1, v1, v2

    .line 381
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 22
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 637
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 638
    .local v6, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v13, v0

    .line 639
    .local v13, selectedPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v8, v0

    .line 640
    .local v8, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move v15, v0

    .line 643
    .local v15, verticalSpacing:I
    const/4 v10, -0x1

    .line 645
    .local v10, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v16, v0

    if-nez v16, :cond_95

    .line 646
    rem-int v16, v13, v8

    sub-int v11, v13, v16

    .line 657
    .local v11, rowStart:I
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v14

    .line 658
    .local v14, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v6

    move v3, v8

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v5

    .line 661
    .local v5, bottomSelectionPixel:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v16, v0

    if-eqz v16, :cond_bd

    move/from16 v16, v10

    :goto_3f
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p1

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v12

    .line 663
    .local v12, sel:Landroid/view/View;
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v9, v0

    .line 666
    .local v9, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v14

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    .line 667
    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v14

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 669
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v16, v0

    if-nez v16, :cond_c0

    .line 670
    sub-int v16, v11, v8

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 671
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 672
    add-int v16, v11, v8

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v17

    add-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 680
    :goto_94
    return-object v12

    .line 648
    .end local v5           #bottomSelectionPixel:I
    .end local v9           #referenceView:Landroid/view/View;
    .end local v11           #rowStart:I
    .end local v12           #sel:Landroid/view/View;
    .end local v14           #topSelectionPixel:I
    :cond_95
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    sub-int v7, v16, v13

    .line 650
    .local v7, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    rem-int v17, v7, v8

    sub-int v17, v7, v17

    sub-int v10, v16, v17

    .line 651
    const/16 v16, 0x0

    sub-int v17, v10, v8

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v11

    .restart local v11       #rowStart:I
    goto/16 :goto_20

    .end local v7           #invertedSelection:I
    .restart local v5       #bottomSelectionPixel:I
    .restart local v14       #topSelectionPixel:I
    :cond_bd
    move/from16 v16, v11

    .line 661
    goto :goto_3f

    .line 674
    .restart local v9       #referenceView:Landroid/view/View;
    .restart local v12       #sel:Landroid/view/View;
    :cond_c0
    add-int v16, v10, v8

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v17

    add-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 675
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 676
    const/16 v16, 0x1

    sub-int v16, v11, v16

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v17, v17, v15

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto :goto_94
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 5
    .parameter "nextTop"

    .prologue
    .line 365
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 366
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 367
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 370
    :cond_1d
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 371
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .registers 22
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v14

    .line 386
    .local v14, selectedPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v8, v0

    .line 387
    .local v8, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v16, v0

    .line 390
    .local v16, verticalSpacing:I
    const/4 v11, -0x1

    .line 392
    .local v11, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-nez v17, :cond_80

    .line 393
    rem-int v17, v14, v8

    sub-int v12, v14, v17

    .line 401
    .local v12, rowStart:I
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 402
    .local v6, fadingEdgeLength:I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v6

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v15

    .line 404
    .local v15, topSelectionPixel:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a8

    move/from16 v17, v11

    :goto_34
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v13

    .line 405
    .local v13, sel:Landroid/view/View;
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v10, v0

    .line 409
    .local v10, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-nez v17, :cond_ab

    .line 410
    add-int v17, v12, v8

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v18

    add-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 411
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/GridView;->pinToBottom(I)V

    .line 412
    sub-int v17, v12, v8

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 413
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 425
    :goto_7f
    return-object v13

    .line 395
    .end local v6           #fadingEdgeLength:I
    .end local v10           #referenceView:Landroid/view/View;
    .end local v12           #rowStart:I
    .end local v13           #sel:Landroid/view/View;
    .end local v15           #topSelectionPixel:I
    :cond_80
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    sub-int v7, v17, v14

    .line 397
    .local v7, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    rem-int v18, v7, v8

    sub-int v18, v7, v18

    sub-int v11, v17, v18

    .line 398
    const/16 v17, 0x0

    sub-int v18, v11, v8

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v12

    .restart local v12       #rowStart:I
    goto/16 :goto_1c

    .end local v7           #invertedSelection:I
    .restart local v6       #fadingEdgeLength:I
    .restart local v15       #topSelectionPixel:I
    :cond_a8
    move/from16 v17, v12

    .line 404
    goto :goto_34

    .line 415
    .restart local v10       #referenceView:Landroid/view/View;
    .restart local v13       #sel:Landroid/view/View;
    :cond_ab
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    move v3, v8

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v5

    .line 417
    .local v5, bottomSelectionPixel:I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v17

    sub-int v9, v5, v17

    .line 418
    .local v9, offset:I
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 419
    const/16 v17, 0x1

    sub-int v17, v12, v17

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v18

    sub-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 420
    invoke-direct/range {p0 .. p1}, Landroid/widget/GridView;->pinToTop(I)V

    .line 421
    add-int v17, v11, v8

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v18

    add-int v18, v18, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 422
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_7f
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v12, 0x1

    .line 483
    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 486
    .local v6, numColumns:I
    const/4 v4, -0x1

    .line 488
    .local v4, motionRowEnd:I
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_1d

    .line 489
    rem-int v10, p1, v6

    sub-int v5, p1, v10

    .line 497
    .local v5, motionRowStart:I
    :goto_c
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_35

    move v10, v4

    :goto_11
    invoke-direct {p0, v10, p2, v12}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v8

    .line 500
    .local v8, temp:Landroid/view/View;
    iput v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 502
    iget-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 504
    .local v7, referenceView:Landroid/view/View;
    if-nez v7, :cond_37

    .line 505
    const/4 v10, 0x0

    .line 538
    :goto_1c
    return-object v10

    .line 491
    .end local v5           #motionRowStart:I
    .end local v7           #referenceView:Landroid/view/View;
    .end local v8           #temp:Landroid/view/View;
    :cond_1d
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v10, v12

    sub-int v3, v10, p1

    .line 493
    .local v3, invertedSelection:I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v10, v12

    rem-int v11, v3, v6

    sub-int v11, v3, v11

    sub-int v4, v10, v11

    .line 494
    const/4 v10, 0x0

    sub-int v11, v4, v6

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #motionRowStart:I
    goto :goto_c

    .end local v3           #invertedSelection:I
    :cond_35
    move v10, v5

    .line 497
    goto :goto_11

    .line 508
    .restart local v7       #referenceView:Landroid/view/View;
    .restart local v8       #temp:Landroid/view/View;
    :cond_37
    iget v9, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 513
    .local v9, verticalSpacing:I
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v10, :cond_63

    .line 514
    sub-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 515
    .local v0, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 516
    add-int v10, v5, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 518
    .local v1, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 519
    .local v2, childCount:I
    if-lez v2, :cond_5f

    .line 520
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 533
    :cond_5f
    :goto_5f
    if-eqz v8, :cond_86

    move-object v10, v8

    .line 534
    goto :goto_1c

    .line 523
    .end local v0           #above:Landroid/view/View;
    .end local v1           #below:Landroid/view/View;
    .end local v2           #childCount:I
    :cond_63
    add-int v10, v4, v6

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v1

    .line 524
    .restart local v1       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 525
    sub-int v10, v5, v12

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v0

    .line 527
    .restart local v0       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 528
    .restart local v2       #childCount:I
    if-lez v2, :cond_5f

    .line 529
    invoke-direct {p0, v6, v9, v2}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_5f

    .line 535
    :cond_86
    if-eqz v0, :cond_8a

    move-object v10, v0

    .line 536
    goto :goto_1c

    :cond_8a
    move-object v10, v1

    .line 538
    goto :goto_1c
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 9
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v5, 0x0

    .line 331
    const/4 v1, 0x0

    .line 333
    .local v1, selectedView:Landroid/view/View;
    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 335
    .local v0, end:I
    :goto_6
    if-le p2, v0, :cond_21

    if-ltz p1, :cond_21

    .line 337
    invoke-direct {p0, p1, p2, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    .line 338
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_11

    .line 339
    move-object v1, v2

    .line 342
    :cond_11
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    .line 344
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 346
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    .line 347
    goto :goto_6

    .line 349
    .end local v2           #temp:Landroid/view/View;
    :cond_21
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v3, :cond_2d

    .line 350
    add-int/lit8 v3, p1, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 353
    :cond_2d
    return-object v1
.end method

.method private getBottomSelectionPixel(IIII)I
    .registers 9
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "numColumns"
    .parameter "rowStart"

    .prologue
    const/4 v3, 0x1

    .line 695
    move v0, p1

    .line 696
    .local v0, bottomSelectionPixel:I
    add-int v1, p4, p3

    sub-int/2addr v1, v3

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_b

    .line 697
    sub-int/2addr v0, p2

    .line 699
    :cond_b
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .registers 5
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "rowStart"

    .prologue
    .line 712
    move v0, p1

    .line 713
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_4

    .line 714
    add-int/2addr v0, p2

    .line 716
    :cond_4
    return v0
.end method

.method private isCandidateSelection(II)Z
    .registers 11
    .parameter "childIndex"
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1684
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1685
    .local v0, count:I
    sub-int v4, v0, v6

    sub-int v1, v4, p1

    .line 1690
    .local v1, invertedIndex:I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v4, :cond_27

    .line 1691
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v4, p1, v4

    sub-int v3, p1, v4

    .line 1692
    .local v3, rowStart:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v4, v3

    sub-int/2addr v4, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1698
    .local v2, rowEnd:I
    :goto_1c
    sparse-switch p2, :sswitch_data_56

    .line 1713
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1694
    .end local v2           #rowEnd:I
    .end local v3           #rowStart:I
    :cond_27
    sub-int v4, v0, v6

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v5, v1, v5

    sub-int v5, v1, v5

    sub-int v2, v4, v5

    .line 1695
    .restart local v2       #rowEnd:I
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #rowStart:I
    goto :goto_1c

    .line 1702
    :sswitch_3c
    if-ne p1, v3, :cond_40

    move v4, v6

    .line 1711
    :goto_3f
    return v4

    :cond_40
    move v4, v7

    .line 1702
    goto :goto_3f

    .line 1705
    :sswitch_42
    if-nez v3, :cond_46

    move v4, v6

    goto :goto_3f

    :cond_46
    move v4, v7

    goto :goto_3f

    .line 1708
    :sswitch_48
    if-ne p1, v2, :cond_4c

    move v4, v6

    goto :goto_3f

    :cond_4c
    move v4, v7

    goto :goto_3f

    .line 1711
    :sswitch_4e
    sub-int v4, v0, v6

    if-ne v2, v4, :cond_54

    move v4, v6

    goto :goto_3f

    :cond_54
    move v4, v7

    goto :goto_3f

    .line 1698
    :sswitch_data_56
    .sparse-switch
        0x11 -> :sswitch_48
        0x21 -> :sswitch_4e
        0x42 -> :sswitch_3c
        0x82 -> :sswitch_42
    .end sparse-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .registers 17
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "where"

    .prologue
    .line 1240
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_1a

    .line 1242
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1243
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_1a

    .line 1246
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1258
    .end local v1           #child:Landroid/view/View;
    .local v9, child:Landroid/view/View;
    :goto_19
    return-object v9

    .line 1253
    .end local v9           #child:Landroid/view/View;
    :cond_1a
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1256
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    move-object v9, v1

    .line 1258
    .end local v1           #child:Landroid/view/View;
    .restart local v9       #child:Landroid/view/View;
    goto :goto_19
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .registers 19
    .parameter "startPos"
    .parameter "y"
    .parameter "flow"

    .prologue
    .line 268
    iget v8, p0, Landroid/widget/GridView;->mColumnWidth:I

    .line 269
    .local v8, columnWidth:I
    iget v10, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    .line 272
    .local v10, horizontalSpacing:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_50

    move v1, v10

    :goto_e
    add-int v4, v0, v1

    .line 275
    .local v4, nextLeft:I
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_52

    .line 276
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int v0, v0, p1

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 286
    .local v12, last:I
    :cond_1e
    :goto_1e
    const/4 v14, 0x0

    .line 288
    .local v14, selectedView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v9

    .line 289
    .local v9, hasFocus:Z
    invoke-virtual {p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v11

    .line 290
    .local v11, inClick:Z
    iget v13, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 292
    .local v13, selectedPosition:I
    const/4 v7, 0x0

    .line 293
    .local v7, child:Landroid/view/View;
    move/from16 v1, p1

    .local v1, pos:I
    :goto_2c
    if-ge v1, v12, :cond_76

    .line 295
    if-ne v1, v13, :cond_6f

    const/4 v0, 0x1

    move v5, v0

    .line 298
    .local v5, selected:Z
    :goto_32
    if-eqz p3, :cond_72

    const/4 v0, -0x1

    move v6, v0

    .local v6, where:I
    :goto_36
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    .line 299
    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v7

    .line 301
    add-int/2addr v4, v8

    .line 302
    const/4 v0, 0x1

    sub-int v0, v12, v0

    if-ge v1, v0, :cond_46

    .line 303
    add-int/2addr v4, v10

    .line 306
    :cond_46
    if-eqz v5, :cond_4d

    if-nez v9, :cond_4c

    if-eqz v11, :cond_4d

    .line 307
    :cond_4c
    move-object v14, v7

    .line 293
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 272
    .end local v1           #pos:I
    .end local v4           #nextLeft:I
    .end local v5           #selected:Z
    .end local v6           #where:I
    .end local v7           #child:Landroid/view/View;
    .end local v9           #hasFocus:Z
    .end local v11           #inClick:Z
    .end local v12           #last:I
    .end local v13           #selectedPosition:I
    .end local v14           #selectedView:Landroid/view/View;
    :cond_50
    const/4 v1, 0x0

    goto :goto_e

    .line 278
    .restart local v4       #nextLeft:I
    :cond_52
    add-int/lit8 v12, p1, 0x1

    .line 279
    .restart local v12       #last:I
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 281
    sub-int v0, v12, p1

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    if-ge v0, v1, :cond_1e

    .line 282
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v1, v12, p1

    sub-int/2addr v0, v1

    add-int v1, v8, v10

    mul-int/2addr v0, v1

    add-int/2addr v4, v0

    goto :goto_1e

    .line 295
    .restart local v1       #pos:I
    .restart local v7       #child:Landroid/view/View;
    .restart local v9       #hasFocus:Z
    .restart local v11       #inClick:Z
    .restart local v13       #selectedPosition:I
    .restart local v14       #selectedView:Landroid/view/View;
    :cond_6f
    const/4 v0, 0x0

    move v5, v0

    goto :goto_32

    .line 298
    .restart local v5       #selected:Z
    :cond_72
    sub-int v0, v1, p1

    move v6, v0

    goto :goto_36

    .line 311
    .end local v5           #selected:Z
    :cond_76
    iput-object v7, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    .line 313
    if-eqz v14, :cond_7e

    .line 314
    iget-object v0, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    .line 317
    :cond_7e
    return-object v14
.end method

.method private moveSelection(III)Landroid/view/View;
    .registers 27
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 789
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    .line 790
    .local v6, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 791
    .local v17, selectedPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v8, v0

    .line 792
    .local v8, numColumns:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v19, v0

    .line 796
    .local v19, verticalSpacing:I
    const/4 v14, -0x1

    .line 798
    .local v14, rowEnd:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_aa

    .line 799
    sub-int v20, v17, p1

    sub-int v21, v17, p1

    rem-int v21, v21, v8

    sub-int v10, v20, v21

    .line 801
    .local v10, oldRowStart:I
    rem-int v20, v17, v8

    sub-int v15, v17, v20

    .line 813
    .local v15, rowStart:I
    :goto_2a
    sub-int v13, v15, v10

    .line 815
    .local v13, rowDelta:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v18

    .line 816
    .local v18, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v6

    move v3, v8

    move v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v5

    .line 820
    .local v5, bottomSelectionPixel:I
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 825
    if-lez v13, :cond_10c

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_fa

    const/16 v20, 0x0

    move/from16 v9, v20

    .line 833
    .local v9, oldBottom:I
    :goto_54
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_108

    move/from16 v20, v14

    :goto_5e
    add-int v21, v9, v19

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .line 834
    .local v16, sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v12, v0

    .line 836
    .local v12, referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v18

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    .line 859
    .end local v9           #oldBottom:I
    :goto_7c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_18e

    .line 860
    sub-int v20, v15, v8

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 861
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 862
    add-int v20, v15, v8

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 869
    :goto_a9
    return-object v16

    .line 803
    .end local v5           #bottomSelectionPixel:I
    .end local v10           #oldRowStart:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v13           #rowDelta:I
    .end local v15           #rowStart:I
    .end local v16           #sel:Landroid/view/View;
    .end local v18           #topSelectionPixel:I
    :cond_aa
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    sub-int v7, v20, v17

    .line 805
    .local v7, invertedSelection:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    rem-int v21, v7, v8

    sub-int v21, v7, v21

    sub-int v14, v20, v21

    .line 806
    const/16 v20, 0x0

    sub-int v21, v14, v8

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 808
    .restart local v15       #rowStart:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    sub-int v21, v17, p1

    sub-int v7, v20, v21

    .line 809
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    rem-int v21, v7, v8

    sub-int v21, v7, v21

    sub-int v10, v20, v21

    .line 810
    .restart local v10       #oldRowStart:I
    const/16 v20, 0x0

    sub-int v21, v10, v8

    add-int/lit8 v21, v21, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_2a

    .line 830
    .end local v7           #invertedSelection:I
    .restart local v5       #bottomSelectionPixel:I
    .restart local v13       #rowDelta:I
    .restart local v18       #topSelectionPixel:I
    :cond_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBottom()I

    move-result v20

    move/from16 v9, v20

    goto/16 :goto_54

    .restart local v9       #oldBottom:I
    :cond_108
    move/from16 v20, v15

    .line 833
    goto/16 :goto_5e

    .line 837
    .end local v9           #oldBottom:I
    :cond_10c
    if-gez v13, :cond_154

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_144

    const/16 v20, 0x0

    move/from16 v11, v20

    .line 844
    .local v11, oldTop:I
    :goto_11a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_151

    move/from16 v20, v14

    :goto_124
    sub-int v21, v11, v19

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .line 845
    .restart local v16       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v12, v0

    .line 847
    .restart local v12       #referenceView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v18

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    goto/16 :goto_7c

    .line 841
    .end local v11           #oldTop:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v16           #sel:Landroid/view/View;
    :cond_144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v11, v20

    goto :goto_11a

    .restart local v11       #oldTop:I
    :cond_151
    move/from16 v20, v15

    .line 844
    goto :goto_124

    .line 852
    .end local v11           #oldTop:I
    :cond_154
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    if-nez v20, :cond_17e

    const/16 v20, 0x0

    move/from16 v11, v20

    .line 855
    .restart local v11       #oldTop:I
    :goto_160
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_18b

    move/from16 v20, v14

    :goto_16a
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v11

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v16

    .line 856
    .restart local v16       #sel:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    move-object v12, v0

    .restart local v12       #referenceView:Landroid/view/View;
    goto/16 :goto_7c

    .line 852
    .end local v11           #oldTop:I
    .end local v12           #referenceView:Landroid/view/View;
    .end local v16           #sel:Landroid/view/View;
    :cond_17e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v11, v20

    goto :goto_160

    .restart local v11       #oldTop:I
    :cond_18b
    move/from16 v20, v15

    .line 855
    goto :goto_16a

    .line 864
    .end local v11           #oldTop:I
    .restart local v12       #referenceView:Landroid/view/View;
    .restart local v16       #sel:Landroid/view/View;
    :cond_18e
    add-int v20, v14, v8

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v21

    add-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 865
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    .line 866
    const/16 v20, 0x1

    sub-int v20, v15, v20

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v19

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_a9
.end method

.method private pinToBottom(I)V
    .registers 7
    .parameter "childrenBottom"

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 440
    .local v1, count:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v3, v4, :cond_1d

    .line 441
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 442
    .local v0, bottom:I
    sub-int v2, p1, v0

    .line 443
    .local v2, offset:I
    if-lez v2, :cond_1d

    .line 444
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 447
    .end local v0           #bottom:I
    .end local v2           #offset:I
    :cond_1d
    return-void
.end method

.method private pinToTop(I)V
    .registers 5
    .parameter "childrenTop"

    .prologue
    .line 429
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v2, :cond_14

    .line 430
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 431
    .local v1, top:I
    sub-int v0, p1, v1

    .line 432
    .local v0, offset:I
    if-gez v0, :cond_14

    .line 433
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    .line 436
    .end local v0           #offset:I
    .end local v1           #top:I
    :cond_14
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .registers 32
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"
    .parameter "where"

    .prologue
    .line 1279
    if-eqz p6, :cond_11a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v20

    if-eqz v20, :cond_11a

    const/16 v20, 0x1

    move/from16 v13, v20

    .line 1280
    .local v13, isSelected:Z
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v20

    move v0, v13

    move/from16 v1, v20

    if-eq v0, v1, :cond_120

    const/16 v20, 0x1

    move/from16 v18, v20

    .line 1281
    .local v18, updateChildSelected:Z
    :goto_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v14, v0

    .line 1282
    .local v14, mode:I
    if-lez v14, :cond_126

    const/16 v20, 0x3

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_126

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_126

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 1284
    .local v12, isPressed:Z
    :goto_37
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v20

    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_12c

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 1286
    .local v17, updateChildPressed:Z
    :goto_44
    if-eqz p7, :cond_4e

    if-nez v18, :cond_4e

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v20

    if-eqz v20, :cond_132

    :cond_4e
    const/16 v20, 0x1

    move/from16 v15, v20

    .line 1290
    .local v15, needToMeasure:Z
    :goto_52
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1291
    .local v16, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_6d

    .line 1292
    new-instance v16, Landroid/widget/AbsListView$LayoutParams;

    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v20, -0x1

    const/16 v21, -0x2

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1295
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1297
    if-eqz p7, :cond_138

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v20, v0

    if-nez v20, :cond_138

    .line 1298
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1304
    :goto_96
    if-eqz v18, :cond_a3

    .line 1305
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1306
    if-eqz v13, :cond_a3

    .line 1307
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    .line 1311
    :cond_a3
    if-eqz v17, :cond_ab

    .line 1312
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1315
    :cond_ab
    if-eqz v15, :cond_151

    .line 1316
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 1319
    .local v6, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    const/high16 v21, 0x4000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    .line 1321
    .local v10, childWidthSpec:I
    move-object/from16 v0, p1

    move v1, v10

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1326
    .end local v6           #childHeightSpec:I
    .end local v10           #childWidthSpec:I
    :goto_e0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1327
    .local v19, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 1330
    .local v11, h:I
    if-eqz p4, :cond_155

    move/from16 v9, p3

    .line 1332
    .local v9, childTop:I
    :goto_ec
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mGravity:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x7

    packed-switch v20, :pswitch_data_192

    .line 1343
    :pswitch_f7
    move/from16 v7, p5

    .line 1347
    .local v7, childLeft:I
    :goto_f9
    if-eqz v15, :cond_175

    .line 1348
    add-int v8, v7, v19

    .line 1349
    .local v8, childRight:I
    add-int v5, v9, v11

    .line 1350
    .local v5, childBottom:I
    move-object/from16 v0, p1

    move v1, v7

    move v2, v9

    move v3, v8

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1356
    .end local v5           #childBottom:I
    .end local v8           #childRight:I
    :goto_108
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_119

    .line 1357
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1359
    :cond_119
    return-void

    .line 1279
    .end local v7           #childLeft:I
    .end local v9           #childTop:I
    .end local v11           #h:I
    .end local v12           #isPressed:Z
    .end local v13           #isSelected:Z
    .end local v14           #mode:I
    .end local v15           #needToMeasure:Z
    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v17           #updateChildPressed:Z
    .end local v18           #updateChildSelected:Z
    .end local v19           #w:I
    :cond_11a
    const/16 v20, 0x0

    move/from16 v13, v20

    goto/16 :goto_c

    .line 1280
    .restart local v13       #isSelected:Z
    :cond_120
    const/16 v20, 0x0

    move/from16 v18, v20

    goto/16 :goto_19

    .line 1282
    .restart local v14       #mode:I
    .restart local v18       #updateChildSelected:Z
    :cond_126
    const/16 v20, 0x0

    move/from16 v12, v20

    goto/16 :goto_37

    .line 1284
    .restart local v12       #isPressed:Z
    :cond_12c
    const/16 v20, 0x0

    move/from16 v17, v20

    goto/16 :goto_44

    .line 1286
    .restart local v17       #updateChildPressed:Z
    :cond_132
    const/16 v20, 0x0

    move/from16 v15, v20

    goto/16 :goto_52

    .line 1300
    .restart local v15       #needToMeasure:Z
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_138
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1301
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, v16

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_96

    .line 1323
    :cond_151
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_e0

    .line 1330
    .restart local v11       #h:I
    .restart local v19       #w:I
    :cond_155
    sub-int v20, p3, v11

    move/from16 v9, v20

    goto :goto_ec

    .line 1334
    .restart local v9       #childTop:I
    :pswitch_15a
    move/from16 v7, p5

    .line 1335
    .restart local v7       #childLeft:I
    goto :goto_f9

    .line 1337
    .end local v7           #childLeft:I
    :pswitch_15d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    sub-int v20, v20, v19

    div-int/lit8 v20, v20, 0x2

    add-int v7, p5, v20

    .line 1338
    .restart local v7       #childLeft:I
    goto :goto_f9

    .line 1340
    .end local v7           #childLeft:I
    :pswitch_16a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v20, v0

    add-int v20, v20, p5

    sub-int v7, v20, v19

    .line 1341
    .restart local v7       #childLeft:I
    goto :goto_f9

    .line 1352
    :cond_175
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    sub-int v20, v7, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1353
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v9, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_108

    .line 1332
    nop

    :pswitch_data_192
    .packed-switch 0x1
        :pswitch_15d
        :pswitch_f7
        :pswitch_15a
        :pswitch_f7
        :pswitch_16a
    .end packed-switch
.end method


# virtual methods
.method arrowScroll(I)Z
    .registers 13
    .parameter "direction"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x6

    const/4 v8, 0x1

    .line 1577
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1578
    .local v4, selectedPosition:I
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1583
    .local v3, numColumns:I
    const/4 v2, 0x0

    .line 1585
    .local v2, moved:Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v6, :cond_2f

    .line 1586
    div-int v6, v4, v3

    mul-int v5, v6, v3

    .line 1587
    .local v5, startOfRowPos:I
    add-int v6, v5, v3

    sub-int/2addr v6, v8

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1594
    .local v0, endOfRowPos:I
    :goto_1a
    sparse-switch p1, :sswitch_data_8a

    .line 1625
    :cond_1d
    :goto_1d
    if-eqz v2, :cond_29

    .line 1626
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->playSoundEffect(I)V

    .line 1627
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1630
    :cond_29
    if-eqz v2, :cond_2e

    .line 1631
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1634
    :cond_2e
    return v2

    .line 1589
    .end local v0           #endOfRowPos:I
    .end local v5           #startOfRowPos:I
    :cond_2f
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v8

    sub-int v1, v6, v4

    .line 1590
    .local v1, invertedSelection:I
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v8

    div-int v7, v1, v3

    mul-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1591
    .restart local v0       #endOfRowPos:I
    sub-int v6, v0, v3

    add-int/lit8 v6, v6, 0x1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .restart local v5       #startOfRowPos:I
    goto :goto_1a

    .line 1596
    .end local v1           #invertedSelection:I
    :sswitch_45
    if-lez v5, :cond_1d

    .line 1597
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1598
    sub-int v6, v4, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1599
    const/4 v2, 0x1

    goto :goto_1d

    .line 1603
    :sswitch_54
    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v6, v8

    if-ge v0, v6, :cond_1d

    .line 1604
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1605
    add-int v6, v4, v3

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1606
    const/4 v2, 0x1

    goto :goto_1d

    .line 1610
    :sswitch_69
    if-le v4, v5, :cond_1d

    .line 1611
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1612
    sub-int v6, v4, v8

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1613
    const/4 v2, 0x1

    goto :goto_1d

    .line 1617
    :sswitch_78
    if-ge v4, v0, :cond_1d

    .line 1618
    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1619
    add-int/lit8 v6, v4, 0x1

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1620
    const/4 v2, 0x1

    goto :goto_1d

    .line 1594
    :sswitch_data_8a
    .sparse-switch
        0x11 -> :sswitch_69
        0x21 -> :sswitch_45
        0x42 -> :sswitch_78
        0x82 -> :sswitch_54
    .end sparse-switch
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 10
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    const/4 v4, 0x1

    .line 1020
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .line 1023
    .local v0, animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_e

    .line 1024
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    .line 1025
    .restart local v0       #animationParams:Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 1028
    :cond_e
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 1029
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 1030
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    .line 1031
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p4, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    .line 1033
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v2, :cond_2d

    .line 1034
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1035
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v2, p3, v2

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    .line 1042
    :goto_2c
    return-void

    .line 1037
    :cond_2d
    sub-int v2, p4, v4

    sub-int v1, v2, p3

    .line 1039
    .local v1, invertedIndex:I
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v2, v4

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    .line 1040
    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    sub-int/2addr v2, v4

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_2c
.end method

.method protected computeVerticalScrollExtent()I
    .registers 14

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1862
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    .line 1863
    .local v1, count:I
    if-lez v1, :cond_6a

    .line 1864
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1865
    .local v4, numColumns:I
    add-int v10, v1, v4

    sub-int/2addr v10, v12

    div-int v7, v10, v4

    .line 1867
    .local v7, rowCount:I
    mul-int/lit8 v2, v7, 0x64

    .line 1869
    .local v2, extent:I
    invoke-virtual {p0, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1870
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1871
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1872
    .local v3, height:I
    if-lez v3, :cond_23

    .line 1873
    mul-int/lit8 v10, v8, 0x64

    div-int/2addr v10, v3

    add-int/2addr v2, v10

    .line 1876
    :cond_23
    sub-int v10, v1, v12

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1877
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1878
    .local v0, bottom:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1879
    if-lez v3, :cond_3d

    .line 1880
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v10

    sub-int v10, v0, v10

    mul-int/lit8 v10, v10, 0x64

    div-int/2addr v10, v3

    sub-int/2addr v2, v10

    .line 1883
    :cond_3d
    move v6, v2

    .line 1884
    .local v6, retVal:I
    iget-object v10, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    iget v10, v10, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_65

    invoke-virtual {p0}, Landroid/widget/GridView;->computeVerticalScrollRange()I

    move-result v10

    if-ge v2, v10, :cond_65

    .line 1885
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    iget v11, v11, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 1887
    .local v5, ratio:F
    int-to-float v10, v6

    mul-float/2addr v10, v5

    float-to-int v6, v10

    .line 1889
    .end local v5           #ratio:F
    :cond_65
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1891
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #numColumns:I
    .end local v6           #retVal:I
    .end local v7           #rowCount:I
    .end local v8           #top:I
    .end local v9           #view:Landroid/view/View;
    :goto_69
    return v10

    :cond_6a
    move v10, v11

    goto :goto_69
.end method

.method protected computeVerticalScrollOffset()I
    .registers 15

    .prologue
    .line 1896
    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v11, :cond_65

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_65

    .line 1897
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1898
    .local v9, view:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1899
    .local v8, top:I
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1900
    .local v1, height:I
    const/4 v4, 0x0

    .line 1901
    .local v4, retVal:I
    if-lez v1, :cond_42

    .line 1902
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1903
    .local v3, numColumns:I
    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    div-int v10, v11, v3

    .line 1904
    .local v10, whichRow:I
    iget v11, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/2addr v11, v3

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    div-int v5, v11, v3

    .line 1907
    .local v5, rowCount:I
    mul-int/lit8 v11, v10, 0x64

    mul-int/lit8 v12, v8, 0x64

    div-int/2addr v12, v1

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/view/View;->mScrollY:I

    int-to-float v12, v12

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    int-to-float v13, v5

    mul-float/2addr v12, v13

    const/high16 v13, 0x42c8

    mul-float/2addr v12, v13

    float-to-int v12, v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1910
    .end local v3           #numColumns:I
    .end local v5           #rowCount:I
    .end local v10           #whichRow:I
    :cond_42
    iget-object v11, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    iget v11, v11, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_63

    .line 1911
    iget-object v11, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    iget v6, v11, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 1912
    .local v6, savedBounceExtent:F
    invoke-virtual {p0}, Landroid/widget/GridView;->computeVerticalScrollExtent()I

    move-result v7

    .line 1913
    .local v7, shrinkedScrollExtent:I
    iget-object v11, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    const/4 v12, 0x0

    iput v12, v11, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 1914
    invoke-virtual {p0}, Landroid/widget/GridView;->computeVerticalScrollExtent()I

    move-result v2

    .line 1915
    .local v2, normalScrollExtent:I
    iget-object v11, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    iput v6, v11, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    .line 1916
    sub-int v0, v2, v7

    .line 1917
    .local v0, delta:I
    add-int/2addr v4, v0

    .end local v0           #delta:I
    .end local v2           #normalScrollExtent:I
    .end local v6           #savedBounceExtent:F
    .end local v7           #shrinkedScrollExtent:I
    :cond_63
    move v11, v4

    .line 1921
    .end local v1           #height:I
    .end local v4           #retVal:I
    .end local v8           #top:I
    .end local v9           #view:Landroid/view/View;
    :goto_64
    return v11

    :cond_65
    const/4 v11, 0x0

    goto :goto_64
.end method

.method protected computeVerticalScrollRange()I
    .registers 6

    .prologue
    .line 1927
    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 1928
    .local v0, numColumns:I
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/2addr v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    div-int v2, v3, v0

    .line 1929
    .local v2, rowCount:I
    mul-int/lit8 v3, v2, 0x64

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1930
    .local v1, result:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    if-eqz v3, :cond_28

    .line 1932
    iget v3, p0, Landroid/view/View;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 1934
    :cond_28
    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 1940
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_21

    const/4 v2, 0x1

    move v0, v2

    .line 1941
    .local v0, clipToPadding:Z
    :goto_a
    iget-object v2, p0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    invoke-virtual {v2, p1, v0}, Landroid/widget/AbsListView$TwBounceController;->bounce(Landroid/graphics/Canvas;Z)I

    move-result v1

    .line 1943
    .local v1, saveCount:I
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1945
    if-ltz v1, :cond_20

    .line 1946
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1947
    if-eqz v0, :cond_20

    .line 1948
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v2, v2, 0x22

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1950
    :cond_20
    return-void

    .line 1940
    .end local v0           #clipToPadding:Z
    .end local v1           #saveCount:I
    :cond_21
    const/4 v2, 0x0

    move v0, v2

    goto :goto_a
.end method

.method fillGap(Z)V
    .registers 9
    .parameter "down"

    .prologue
    const/4 v6, 0x1

    .line 207
    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 208
    .local v1, numColumns:I
    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 210
    .local v4, verticalSpacing:I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 212
    .local v0, count:I
    if-eqz p1, :cond_35

    .line 213
    if-lez v0, :cond_2f

    sub-int v5, v0, v6

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v4

    move v3, v5

    .line 215
    .local v3, startOffset:I
    :goto_19
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v2, v5, v0

    .line 216
    .local v2, position:I
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_24

    .line 217
    sub-int v5, v1, v6

    add-int/2addr v2, v5

    .line 219
    :cond_24
    invoke-direct {p0, v2, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    .line 220
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Landroid/widget/GridView;->correctTooHigh(III)V

    .line 233
    :goto_2e
    return-void

    .line 213
    .end local v2           #position:I
    .end local v3           #startOffset:I
    :cond_2f
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v5

    move v3, v5

    goto :goto_19

    .line 222
    :cond_35
    if-lez v0, :cond_54

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v4

    move v3, v5

    .line 224
    .restart local v3       #startOffset:I
    :goto_42
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 225
    .restart local v2       #position:I
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v5, :cond_5f

    .line 226
    sub-int/2addr v2, v1

    .line 230
    :goto_49
    invoke-direct {p0, v2, v3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    .line 231
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Landroid/widget/GridView;->correctTooLow(III)V

    goto :goto_2e

    .line 222
    .end local v2           #position:I
    .end local v3           #startOffset:I
    :cond_54
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    goto :goto_42

    .line 228
    .restart local v2       #position:I
    .restart local v3       #startOffset:I
    :cond_5f
    add-int/lit8 v2, v2, -0x1

    goto :goto_49
.end method

.method findMotionRow(I)I
    .registers 6
    .parameter "y"

    .prologue
    .line 451
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 452
    .local v0, childCount:I
    if-lez v0, :cond_34

    .line 454
    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    .line 455
    .local v2, numColumns:I
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1f

    .line 456
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_34

    .line 457
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1d

    .line 458
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 469
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :goto_1c
    return v3

    .line 456
    .restart local v1       #i:I
    .restart local v2       #numColumns:I
    :cond_1d
    add-int/2addr v1, v2

    goto :goto_d

    .line 462
    .end local v1           #i:I
    :cond_1f
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .restart local v1       #i:I
    :goto_22
    if-ltz v1, :cond_34

    .line 463
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_32

    .line 464
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1c

    .line 462
    :cond_32
    sub-int/2addr v1, v2

    goto :goto_22

    .line 469
    .end local v1           #i:I
    .end local v2           #numColumns:I
    :cond_34
    const/4 v3, -0x1

    goto :goto_1c
.end method

.method fullScroll(I)Z
    .registers 5
    .parameter "direction"

    .prologue
    const/4 v2, 0x2

    .line 1548
    const/4 v0, 0x0

    .line 1549
    .local v0, moved:Z
    const/16 v1, 0x21

    if-ne p1, v1, :cond_16

    .line 1550
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1551
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1552
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1553
    const/4 v0, 0x1

    .line 1561
    :cond_10
    :goto_10
    if-eqz v0, :cond_15

    .line 1562
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1565
    :cond_15
    return v0

    .line 1554
    :cond_16
    const/16 v1, 0x82

    if-ne p1, v1, :cond_10

    .line 1555
    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1556
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1557
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1558
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getStretchMode()I
    .registers 2

    .prologue
    .line 1781
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method protected layoutChildren()V
    .registers 23

    .prologue
    .line 1046
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    move v4, v0

    .line 1047
    .local v4, blockLayoutRequests:Z
    if-nez v4, :cond_f

    .line 1048
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1052
    :cond_f
    :try_start_f
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1054
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_2e

    .line 1057
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1058
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_1bd

    .line 1215
    if-nez v4, :cond_2d

    .line 1216
    :goto_25
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1219
    :cond_2d
    return-void

    .line 1062
    :cond_2e
    :try_start_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    .line 1063
    .local v8, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v7, v20, v21

    .line 1065
    .local v7, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    .line 1067
    .local v6, childCount:I
    const/4 v10, 0x0

    .line 1070
    .local v10, delta:I
    const/16 v17, 0x0

    .line 1071
    .local v17, oldSel:Landroid/view/View;
    const/16 v16, 0x0

    .line 1072
    .local v16, oldFirst:Landroid/view/View;
    const/4 v15, 0x0

    .line 1075
    .local v15, newSel:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_306

    .line 1094
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .line 1095
    .local v13, index:I
    if-ltz v13, :cond_81

    if-ge v13, v6, :cond_81

    .line 1096
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1100
    :cond_81
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1103
    .end local v13           #index:I
    :cond_8b
    :goto_8b
    :pswitch_8b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v9, v0

    .line 1104
    .local v9, dataChanged:Z
    if-eqz v9, :cond_95

    .line 1105
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V

    .line 1110
    :cond_95
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    if-nez v20, :cond_d7

    .line 1111
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    .line 1112
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1215
    if-nez v4, :cond_2d

    goto :goto_25

    .line 1077
    .end local v9           #dataChanged:Z
    :pswitch_a6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    .line 1078
    .restart local v13       #index:I
    if-ltz v13, :cond_8b

    if-ge v13, v6, :cond_8b

    .line 1079
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    goto :goto_8b

    .line 1088
    .end local v13           #index:I
    :pswitch_c0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v20, v0

    if-ltz v20, :cond_8b

    .line 1089
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v21, v0

    sub-int v10, v20, v21

    goto :goto_8b

    .line 1116
    .restart local v9       #dataChanged:Z
    :cond_d7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1120
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v11, v0

    .line 1121
    .local v11, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v18, v0

    .line 1123
    .local v18, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-eqz v9, :cond_105

    .line 1124
    const/4 v12, 0x0

    .local v12, i:I
    :goto_f2
    if-ge v12, v6, :cond_10c

    .line 1125
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1124
    add-int/lit8 v12, v12, 0x1

    goto :goto_f2

    .line 1128
    .end local v12           #i:I
    :cond_105
    move-object/from16 v0, v18

    move v1, v6

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1133
    :cond_10c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    .line 1135
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_316

    .line 1163
    if-nez v6, :cond_24e

    .line 1164
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v20, v0

    if-nez v20, :cond_220

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_130

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v20

    if-eqz v20, :cond_21c

    :cond_130
    const/16 v20, -0x1

    :goto_132
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1167
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v19

    .line 1189
    .local v19, sel:Landroid/view/View;
    :goto_140
    invoke-virtual/range {v18 .. v18}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1191
    if-eqz v19, :cond_2bd

    .line 1192
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->positionSelector(Landroid/view/View;)V

    .line 1193
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1202
    :cond_156
    :goto_156
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1203
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1204
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1205
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1207
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    .line 1209
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    if-lez v20, :cond_189

    .line 1210
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 1213
    :cond_189
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1215
    if-nez v4, :cond_2d

    goto/16 :goto_25

    .line 1137
    .end local v19           #sel:Landroid/view/View;
    :pswitch_190
    if-eqz v15, :cond_1a1

    .line 1138
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v8

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto :goto_140

    .line 1140
    .end local v19           #sel:Landroid/view/View;
    :cond_1a1
    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v19

    .line 1142
    .restart local v19       #sel:Landroid/view/View;
    goto :goto_140

    .line 1144
    .end local v19           #sel:Landroid/view/View;
    :pswitch_1aa
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1145
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v19

    .line 1146
    .restart local v19       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V
    :try_end_1bc
    .catchall {:try_start_2e .. :try_end_1bc} :catchall_1bd

    goto :goto_140

    .line 1215
    .end local v6           #childCount:I
    .end local v7           #childrenBottom:I
    .end local v8           #childrenTop:I
    .end local v9           #dataChanged:Z
    .end local v10           #delta:I
    .end local v11           #firstPosition:I
    .end local v15           #newSel:Landroid/view/View;
    .end local v16           #oldFirst:Landroid/view/View;
    .end local v17           #oldSel:Landroid/view/View;
    .end local v18           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v19           #sel:Landroid/view/View;
    :catchall_1bd
    move-exception v20

    if-nez v4, :cond_1c8

    .line 1216
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1215
    :cond_1c8
    throw v20

    .line 1149
    .restart local v6       #childCount:I
    .restart local v7       #childrenBottom:I
    .restart local v8       #childrenTop:I
    .restart local v9       #dataChanged:Z
    .restart local v10       #delta:I
    .restart local v11       #firstPosition:I
    .restart local v15       #newSel:Landroid/view/View;
    .restart local v16       #oldFirst:Landroid/view/View;
    .restart local v17       #oldSel:Landroid/view/View;
    .restart local v18       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    :pswitch_1c9
    :try_start_1c9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v19

    .line 1150
    .restart local v19       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_140

    .line 1153
    .end local v19           #sel:Landroid/view/View;
    :pswitch_1e1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .line 1154
    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_140

    .line 1156
    .end local v19           #sel:Landroid/view/View;
    :pswitch_1f9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .line 1157
    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_140

    .line 1160
    .end local v19           #sel:Landroid/view/View;
    :pswitch_211
    move-object/from16 v0, p0

    move v1, v10

    move v2, v8

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v19

    .line 1161
    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_140

    .line 1165
    .end local v19           #sel:Landroid/view/View;
    :cond_21c
    const/16 v20, 0x0

    goto/16 :goto_132

    .line 1169
    :cond_220
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v14, v20, v21

    .line 1170
    .local v14, last:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_238

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v20

    if-eqz v20, :cond_24b

    :cond_238
    const/16 v20, -0x1

    :goto_23a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 1172
    move-object/from16 v0, p0

    move v1, v14

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v19

    .line 1173
    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_140

    .end local v19           #sel:Landroid/view/View;
    :cond_24b
    move/from16 v20, v14

    .line 1170
    goto :goto_23a

    .line 1175
    .end local v14           #last:I
    :cond_24e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    if-ltz v20, :cond_283

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_283

    .line 1176
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v20, v0

    if-nez v17, :cond_27e

    move/from16 v21, v8

    :goto_272
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_140

    .end local v19           #sel:Landroid/view/View;
    :cond_27e
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v21

    goto :goto_272

    .line 1178
    :cond_283
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2b0

    .line 1179
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v20, v0

    if-nez v16, :cond_2ab

    move/from16 v21, v8

    :goto_29f
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_140

    .end local v19           #sel:Landroid/view/View;
    :cond_2ab
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v21

    goto :goto_29f

    .line 1182
    :cond_2b0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v19

    .restart local v19       #sel:Landroid/view/View;
    goto/16 :goto_140

    .line 1194
    :cond_2bd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v20, v0

    if-lez v20, :cond_2f3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2f3

    .line 1195
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1196
    .local v5, child:Landroid/view/View;
    if-eqz v5, :cond_156

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_156

    .line 1198
    .end local v5           #child:Landroid/view/View;
    :cond_2f3
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_304
    .catchall {:try_start_1c9 .. :try_end_304} :catchall_1bd

    goto/16 :goto_156

    .line 1075
    :pswitch_data_306
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_a6
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_c0
    .end packed-switch

    .line 1135
    :pswitch_data_316
    .packed-switch 0x1
        :pswitch_1aa
        :pswitch_190
        :pswitch_1c9
        :pswitch_1e1
        :pswitch_1f9
        :pswitch_211
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 6
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 191
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 192
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_b
    move v1, v2

    .line 199
    :goto_c
    return v1

    .line 196
    :cond_d
    if-ltz p1, :cond_13

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt p1, v1, :cond_15

    :cond_13
    move v1, v2

    .line 197
    goto :goto_c

    :cond_15
    move v1, p1

    .line 199
    goto :goto_c
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 13
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1639
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1641
    const/4 v1, -0x1

    .line 1642
    .local v1, closestChildIndex:I
    if-eqz p1, :cond_37

    if-eqz p3, :cond_37

    .line 1643
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p3, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 1647
    iget-object v6, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    .line 1648
    .local v6, otherRect:Landroid/graphics/Rect;
    const v4, 0x7fffffff

    .line 1649
    .local v4, minDistance:I
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    .line 1650
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    if-ge v3, v0, :cond_37

    .line 1652
    invoke-direct {p0, v3, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v7

    if-nez v7, :cond_24

    .line 1650
    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1656
    :cond_24
    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1657
    .local v5, other:Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1658
    invoke-virtual {p0, v5, v6}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1659
    invoke-static {p3, v6, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 1661
    .local v2, distance:I
    if-ge v2, v4, :cond_21

    .line 1662
    move v4, v2

    .line 1663
    move v1, v3

    goto :goto_21

    .line 1668
    .end local v0           #childCount:I
    .end local v2           #distance:I
    .end local v3           #i:I
    .end local v4           #minDistance:I
    .end local v5           #other:Landroid/view/View;
    .end local v6           #otherRect:Landroid/graphics/Rect;
    :cond_37
    if-ltz v1, :cond_40

    .line 1669
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setSelection(I)V

    .line 1673
    :goto_3f
    return-void

    .line 1671
    :cond_40
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    goto :goto_3f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1408
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 1413
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1418
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 24
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 942
    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 944
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 945
    .local v16, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 946
    .local v10, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 947
    .local v17, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 949
    .local v11, heightSize:I
    if-nez v16, :cond_45

    .line 950
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v18, v0

    if-lez v18, :cond_186

    .line 951
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    .line 955
    :goto_3f
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v18

    add-int v17, v17, v18

    .line 958
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v7, v18, v19

    .line 959
    .local v7, childWidth:I
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Landroid/widget/GridView;->determineColumns(I)V

    .line 961
    const/4 v5, 0x0

    .line 963
    .local v5, childHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    if-nez v18, :cond_1a2

    const/16 v18, 0x0

    :goto_72
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mItemCount:I

    .line 964
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v9, v0

    .line 965
    .local v9, count:I
    if-lez v9, :cond_114

    .line 966
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mIsScrap:[Z

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 968
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    .line 969
    .local v15, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v15, :cond_ae

    .line 970
    new-instance v15, Landroid/widget/AbsListView$LayoutParams;

    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x0

    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 972
    .restart local v15       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v4, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v18

    move/from16 v0, v18

    move-object v1, v15

    iput v0, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 975
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object v1, v15

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 977
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/16 v19, 0x0

    move-object v0, v15

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v6

    .line 979
    .local v6, childHeightSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mColumnWidth:I

    move/from16 v18, v0

    const/high16 v19, 0x4000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/16 v19, 0x0

    move-object v0, v15

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v8

    .line 981
    .local v8, childWidthSpec:I
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 983
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v18

    if-eqz v18, :cond_114

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 990
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childHeightSpec:I
    .end local v8           #childWidthSpec:I
    .end local v15           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_114
    if-nez v10, :cond_13a

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v18, v18, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    add-int v11, v18, v19

    .line 995
    :cond_13a
    const/high16 v18, -0x8000

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_177

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v14, v18, v19

    .line 998
    .local v14, ourSize:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mNumColumns:I

    move v13, v0

    .line 999
    .local v13, numColumns:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_161
    if-ge v12, v9, :cond_176

    .line 1000
    add-int/2addr v14, v5

    .line 1001
    add-int v18, v12, v13

    move/from16 v0, v18

    move v1, v9

    if-ge v0, v1, :cond_173

    .line 1002
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    move/from16 v18, v0

    add-int v14, v14, v18

    .line 1004
    :cond_173
    if-lt v14, v11, :cond_1ae

    .line 1005
    move v14, v11

    .line 1009
    :cond_176
    move v11, v14

    .line 1012
    .end local v12           #i:I
    .end local v13           #numColumns:I
    .end local v14           #ourSize:I
    :cond_177
    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    .line 1013
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 1014
    return-void

    .line 953
    .end local v5           #childHeight:I
    .end local v7           #childWidth:I
    .end local v9           #count:I
    :cond_186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v17, v18, v19

    goto/16 :goto_3f

    .line 963
    .restart local v5       #childHeight:I
    .restart local v7       #childWidth:I
    :cond_1a2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/widget/ListAdapter;->getCount()I

    move-result v18

    goto/16 :goto_72

    .line 999
    .restart local v9       #count:I
    .restart local v12       #i:I
    .restart local v13       #numColumns:I
    .restart local v14       #ourSize:I
    :cond_1ae
    add-int/2addr v12, v13

    goto :goto_161
.end method

.method pageScroll(I)Z
    .registers 8
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1522
    const/4 v0, -0x1

    .line 1524
    .local v0, nextPage:I
    const/16 v1, 0x21

    if-ne p1, v1, :cond_20

    .line 1525
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1530
    :cond_13
    :goto_13
    if-ltz v0, :cond_34

    .line 1531
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    .line 1532
    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    .line 1533
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    move v1, v4

    .line 1537
    :goto_1f
    return v1

    .line 1526
    :cond_20
    const/16 v1, 0x82

    if-ne p1, v1, :cond_13

    .line 1527
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v4

    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_13

    :cond_34
    move v1, v5

    .line 1537
    goto :goto_1f
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 7
    .parameter "adapter"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 149
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_d

    .line 150
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 153
    :cond_d
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    .line 154
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 155
    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 157
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 158
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 160
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_69

    .line 161
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 162
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 163
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 164
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 166
    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 167
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 169
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 172
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_64

    .line 173
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1, v4}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 177
    .local v0, position:I
    :goto_57
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    .line 178
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 179
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    .line 186
    .end local v0           #position:I
    :goto_60
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 187
    return-void

    .line 175
    :cond_64
    invoke-virtual {p0, v4, v3}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_57

    .line 181
    .end local v0           #position:I
    :cond_69
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    .line 183
    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_60
.end method

.method public setColumnWidth(I)V
    .registers 3
    .parameter "columnWidth"

    .prologue
    .line 1792
    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_9

    .line 1793
    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    .line 1794
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1796
    :cond_9
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .parameter "gravity"

    .prologue
    .line 1726
    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_9

    .line 1727
    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    .line 1728
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1730
    :cond_9
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .registers 3
    .parameter "horizontalSpacing"

    .prologue
    .line 1742
    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_9

    .line 1743
    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    .line 1744
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1746
    :cond_9
    return-void
.end method

.method public setNumColumns(I)V
    .registers 3
    .parameter "numColumns"

    .prologue
    .line 1806
    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_9

    .line 1807
    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    .line 1808
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1810
    :cond_9
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1371
    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1372
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1376
    :goto_9
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1377
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    .line 1378
    return-void

    .line 1374
    :cond_10
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_9
.end method

.method setSelectionInt(I)V
    .registers 10
    .parameter "position"

    .prologue
    const/4 v7, 0x1

    .line 1387
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1389
    .local v4, previousSelectedPosition:I
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    .line 1390
    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 1392
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2b

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    sub-int/2addr v5, v6

    move v0, v5

    .line 1394
    .local v0, next:I
    :goto_14
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_2f

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v5, v7

    sub-int/2addr v5, v4

    move v2, v5

    .line 1397
    .local v2, previous:I
    :goto_1d
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, v0, v5

    .line 1398
    .local v1, nextRow:I
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v2, v5

    .line 1400
    .local v3, previousRow:I
    if-eq v1, v3, :cond_2a

    .line 1401
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    .line 1404
    :cond_2a
    return-void

    .line 1392
    .end local v0           #next:I
    .end local v1           #nextRow:I
    .end local v2           #previous:I
    .end local v3           #previousRow:I
    :cond_2b
    iget v5, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move v0, v5

    goto :goto_14

    .restart local v0       #next:I
    :cond_2f
    move v2, v4

    .line 1394
    goto :goto_1d
.end method

.method public setStretchMode(I)V
    .registers 3
    .parameter "stretchMode"

    .prologue
    .line 1774
    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_9

    .line 1775
    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    .line 1776
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1778
    :cond_9
    return-void
.end method

.method public setVerticalSpacing(I)V
    .registers 3
    .parameter "verticalSpacing"

    .prologue
    .line 1759
    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_9

    .line 1760
    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    .line 1761
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    .line 1763
    :cond_9
    return-void
.end method

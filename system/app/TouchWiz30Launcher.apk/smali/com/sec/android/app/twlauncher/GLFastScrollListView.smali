.class public Lcom/sec/android/app/twlauncher/GLFastScrollListView;
.super Landroid/view/ViewGroup;
.source "GLFastScrollListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mCurrentFastScrollIndexView:I

.field private mFastScrollIndexGravity:I

.field private mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

.field private mFastScrollIndexViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;",
            ">;"
        }
    .end annotation
.end field

.field private mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

.field private mFirstCharColor:I

.field private mLastMovePt:Landroid/graphics/PointF;

.field private mLastSelLen:I

.field private mListBestMatchIndices:Landroid/util/SparseIntArray;

.field private mListExactMatchIndices:Landroid/util/SparseIntArray;

.field private mListView:Lcom/sec/android/app/twlauncher/GLListView;

.field private mPopupHeight:F

.field private mPopupHeightInc:F

.field private mPopupWidth:F

.field private mPopupWidthInc:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "GLFastScrollListView"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x100

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    .line 46
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastMovePt:Landroid/graphics/PointF;

    .line 47
    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFirstCharColor:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    .line 49
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    .line 52
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    .line 53
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    .line 54
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidth:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeight:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidthInc:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeightInc:F

    .line 57
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCollator:Ljava/text/Collator;

    .line 62
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->GLFastScrollListView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    .line 64
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidth:F

    .line 65
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeight:F

    .line 66
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidthInc:F

    .line 67
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeightInc:F

    .line 68
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFirstCharColor:I

    .line 69
    return-void
.end method

.method private feedPtToIndexView(ILandroid/graphics/PointF;)Z
    .locals 9
    .parameter "aViewIndex"
    .parameter "aPt"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 219
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 220
    .local v1, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 221
    .local v3, relPt:Landroid/graphics/PointF;
    invoke-virtual {v3, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 222
    iget v5, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 223
    iget v5, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->y:F

    .line 224
    invoke-virtual {v1, p2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->feedPt(Landroid/graphics/PointF;)I

    move-result v4

    .line 225
    .local v4, res:I
    if-eq v4, v8, :cond_0

    if-ne v4, v7, :cond_1

    .line 227
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getSelection(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, currentSel:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 229
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->updatePopup(Ljava/lang/String;)Z

    .line 230
    if-ne v4, v8, :cond_2

    move v2, v7

    .line 231
    .local v2, moveToTop:Z
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->updateList(ZLjava/lang/String;)Z

    .line 234
    .end local v0           #currentSel:Ljava/lang/String;
    .end local v2           #moveToTop:Z
    :cond_1
    return v7

    .line 230
    .restart local v0       #currentSel:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0
.end method

.method private getMatchingIndex(Ljava/lang/String;IIZ)I
    .locals 11
    .parameter "aStr"
    .parameter "aAdapterStartIndex"
    .parameter "aAdapterEndIndex"
    .parameter "aExact"

    .prologue
    .line 144
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/GLListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    .line 145
    .local v1, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int v6, v9, v10

    .line 146
    .local v6, len:I
    if-ltz p2, :cond_0

    if-le p2, v6, :cond_1

    .line 147
    :cond_0
    const/4 p2, 0x0

    .line 149
    :cond_1
    if-ltz p3, :cond_2

    if-le p3, v6, :cond_3

    .line 150
    :cond_2
    move p3, v6

    .line 152
    :cond_3
    const/4 v2, -0x1

    .local v2, cmpRes:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 156
    .local v3, curLen:I
    move v4, p2

    .local v4, i:I
    :goto_0
    if-gt v4, p3, :cond_7

    .line 157
    invoke-virtual {v1, v4}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 158
    .local v7, obj:Ljava/lang/Object;
    instance-of v9, v7, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    if-nez v9, :cond_5

    .line 156
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 161
    :cond_5
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    move-object v5, v0

    .line 162
    .local v5, item:Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, text:Ljava/lang/String;
    if-eqz p4, :cond_6

    .line 164
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 166
    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCollator:Ljava/text/Collator;

    invoke-virtual {v9, v8, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 167
    if-ltz v2, :cond_4

    .line 171
    .end local v5           #item:Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
    .end local v7           #obj:Ljava/lang/Object;
    .end local v8           #text:Ljava/lang/String;
    :cond_7
    if-eqz v2, :cond_8

    if-nez p4, :cond_9

    :cond_8
    move v9, v4

    .line 174
    :goto_1
    return v9

    :cond_9
    const/4 v9, -0x1

    goto :goto_1
.end method

.method private getNextLevelIndexStr(ILjava/lang/String;)Ljava/lang/String;
    .locals 22
    .parameter "aViewIndex"
    .parameter "aCurrentSel"

    .prologue
    .line 88
    move-object/from16 v9, p2

    .line 89
    .local v9, currentSel:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 90
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getSelection(I)Ljava/lang/String;

    move-result-object v9

    .line 92
    :cond_0
    if-nez v9, :cond_1

    .line 93
    const/16 v18, 0x0

    .line 139
    :goto_0
    return-object v18

    .line 95
    :cond_1
    const/16 v18, 0x0

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 96
    .local v10, firstChar:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move v1, v10

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 97
    .local v12, index:I
    const/16 v18, -0x1

    move/from16 v0, v18

    move v1, v12

    if-ne v0, v1, :cond_3

    .line 98
    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v18

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMatchingIndex(Ljava/lang/String;IIZ)I

    move-result v12

    .line 99
    const/16 v18, -0x1

    move/from16 v0, v18

    move v1, v12

    if-ne v0, v1, :cond_2

    .line 100
    const/16 v18, 0x0

    goto :goto_0

    .line 102
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/GLListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Landroid/widget/BaseAdapter;

    .line 105
    .local v5, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v14

    .local v14, len:I
    const/4 v7, -0x1

    .local v7, cmpRes:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 109
    .local v8, curLen:I
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v16, res:Ljava/lang/StringBuffer;
    move v11, v12

    .local v11, i:I
    :goto_1
    if-ge v11, v14, :cond_6

    .line 111
    invoke-virtual {v5, v11}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v15

    .line 112
    .local v15, obj:Ljava/lang/Object;
    move-object v0, v15

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 110
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 115
    :cond_5
    move-object v0, v15

    check-cast v0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    move-object v13, v0

    .line 116
    .local v13, item:Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 120
    .local v17, text:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    move v1, v8

    if-le v0, v1, :cond_4

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCollator:Ljava/text/Collator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 124
    if-lez v7, :cond_7

    .line 136
    .end local v13           #item:Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
    .end local v15           #obj:Ljava/lang/Object;
    .end local v17           #text:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 137
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 127
    .restart local v13       #item:Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
    .restart local v15       #obj:Ljava/lang/Object;
    .restart local v17       #text:Ljava/lang/String;
    :cond_7
    if-ltz v7, :cond_4

    .line 130
    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 131
    .local v6, ch:C
    const/16 v18, -0x1

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 134
    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 139
    .end local v6           #ch:C
    .end local v13           #item:Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
    .end local v15           #obj:Ljava/lang/Object;
    .end local v17           #text:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0
.end method

.method private getSelection(I)Ljava/lang/String;
    .locals 5
    .parameter "aLevel"

    .prologue
    .line 72
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v3, res:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-gt v1, p1, :cond_1

    .line 77
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 78
    .local v2, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCurrentChar()Ljava/lang/Character;

    move-result-object v0

    .line 79
    .local v0, ch:Ljava/lang/Character;
    if-nez v0, :cond_0

    .line 80
    const/4 v4, 0x0

    .line 84
    .end local v0           #ch:Ljava/lang/Character;
    .end local v2           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :goto_1
    return-object v4

    .line 82
    .restart local v0       #ch:Ljava/lang/Character;
    .restart local v2       #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v0           #ch:Ljava/lang/Character;
    .end local v2           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private handleMove(Landroid/graphics/PointF;)Z
    .locals 7
    .parameter "aPt"

    .prologue
    const/4 v6, 0x1

    .line 310
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 312
    .local v2, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    const/4 v0, 0x0

    .line 313
    .local v0, dir:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    packed-switch v4, :pswitch_data_0

    .line 329
    :cond_0
    :goto_0
    if-ne v0, v6, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 333
    const/4 v0, 0x0

    .line 336
    :cond_1
    if-gez v0, :cond_7

    .line 337
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 338
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 339
    .restart local v2       #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 340
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .line 364
    .end local v1           #i:I
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 365
    iget v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->feedPtToIndexView(ILandroid/graphics/PointF;)Z

    .line 366
    return v6

    .line 315
    :pswitch_0
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 316
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    :cond_3
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 318
    const/4 v0, -0x1

    goto :goto_0

    .line 322
    :pswitch_1
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 323
    const/4 v0, 0x1

    goto :goto_0

    .line 324
    :cond_4
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 325
    const/4 v0, -0x1

    goto :goto_0

    .line 343
    .restart local v1       #i:I
    :cond_5
    if-lez v1, :cond_6

    .line 344
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setVisibility(I)V

    .line 345
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->clearCurrentChar()V

    .line 337
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 348
    .end local v1           #i:I
    :cond_7
    if-lez v0, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPreMatching()Z

    move-result v4

    if-nez v4, :cond_2

    .line 353
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 354
    .local v3, size:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    add-int/lit8 v1, v4, 0x1

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v3, :cond_2

    .line 355
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->showNextLevel(Landroid/graphics/PointF;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 358
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .line 359
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUp(Landroid/graphics/PointF;)Z
    .locals 5
    .parameter "aPt"

    .prologue
    const/4 v4, 0x4

    const/4 v3, -0x1

    .line 266
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 268
    .local v1, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->clearCurrentChar()V

    .line 269
    if-lez v0, :cond_0

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setPressedImmediate(Z)V

    .line 271
    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setVisibility(I)V

    .line 266
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->unPressDelayed()Z

    goto :goto_1

    .line 276
    .end local v1           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    if-eqz v2, :cond_2

    .line 277
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setVisibility(I)V

    .line 279
    :cond_2
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .line 280
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    .line 281
    const/4 v2, 0x1

    return v2
.end method

.method private showNextLevel(Landroid/graphics/PointF;Ljava/lang/String;I)Z
    .locals 9
    .parameter "aPt"
    .parameter "aCurrentStr"
    .parameter "aViewIndex"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 285
    if-ge p3, v7, :cond_0

    move v5, v8

    .line 306
    .end local p0
    :goto_0
    return v5

    .line 288
    .restart local p0
    :cond_0
    sub-int v3, p3, v7

    .line 289
    .local v3, prevLevel:I
    invoke-direct {p0, v3, p2}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getNextLevelIndexStr(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, nextLevelStr:Ljava/lang/String;
    if-nez v2, :cond_1

    move v5, v8

    .line 291
    goto :goto_0

    .line 293
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 294
    .local v0, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 295
    .local v4, relPt:Landroid/graphics/PointF;
    invoke-virtual {v4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 296
    iget v5, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 297
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getMidYForCurrentChar()F

    move-result v1

    .line 298
    .local v1, indexY:F
    const/high16 v5, -0x4080

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_2

    .line 299
    iput v1, v4, Landroid/graphics/PointF;->y:F

    .line 303
    :goto_1
    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setVisibility(I)V

    .line 304
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setPressedImmediate(Z)V

    .line 305
    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V

    move v5, v7

    .line 306
    goto :goto_0

    .line 301
    :cond_2
    iget v5, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method

.method private updateList(ZLjava/lang/String;)Z
    .locals 5
    .parameter "aMoveToTop"
    .parameter "aSelStr"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 178
    const/4 v1, -0x1

    .line 179
    .local v1, index:I
    if-eqz p1, :cond_0

    .line 180
    const/4 v1, 0x0

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v2, v1, v4}, Lcom/sec/android/app/twlauncher/GLListView;->setSelectionFromTop(II)V

    .line 191
    const/4 v2, 0x1

    return v2

    .line 182
    :cond_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 183
    .local v0, firstChar:C
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 184
    if-ne v1, v3, :cond_1

    .line 185
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v3, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMatchingIndex(Ljava/lang/String;IIZ)I

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    :cond_1
    invoke-direct {p0, p2, v1, v3, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMatchingIndex(Ljava/lang/String;IIZ)I

    move-result v1

    goto :goto_0
.end method

.method private updatePopup(Ljava/lang/String;)Z
    .locals 9
    .parameter "aSelStr"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 195
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    if-nez v3, :cond_0

    move v3, v8

    .line 215
    :goto_0
    return v3

    .line 198
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 199
    .local v1, newLen:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    if-eq v1, v3, :cond_2

    .line 200
    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidth:F

    sub-int v4, v1, v7

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidthInc:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeight:F

    sub-int v5, v1, v7

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeightInc:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 202
    .local v2, newSize:Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setDrawBounds(Landroid/graphics/PointF;)V

    .line 203
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLTextSurface;->clearStyles()V

    .line 204
    if-le v1, v7, :cond_1

    .line 205
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getTextColor()I

    move-result v0

    .line 206
    .local v0, defColor:I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFirstCharColor:I

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v8, v4}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setStyle(ILandroid/text/style/CharacterStyle;)V

    .line 207
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v7, v4}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setStyle(ILandroid/text/style/CharacterStyle;)V

    .line 209
    .end local v0           #defColor:I
    :cond_1
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    .line 211
    .end local v2           #newSize:Landroid/graphics/PointF;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    .line 212
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setVisibility(I)V

    .line 214
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setText(Ljava/lang/String;)V

    move v3, v7

    .line 215
    goto :goto_0
.end method

.method private updateViewIndexes(Landroid/widget/BaseAdapter;)Z
    .locals 5
    .parameter "aAdapter"

    .prologue
    const/4 v4, 0x0

    .line 535
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 536
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 537
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 538
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 539
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 540
    .local v1, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->clearCurrentChar()V

    .line 541
    if-lez v0, :cond_0

    .line 542
    invoke-virtual {v1, v4, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V

    .line 538
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    .end local v1           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 496
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    .line 497
    .local v0, parent:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    if-nez v0, :cond_0

    .line 515
    :goto_0
    return v2

    .line 500
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 501
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    .line 502
    invoke-virtual {v0, p1, p0, v2, v2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v1

    .line 503
    .local v1, res:Z
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move v2, v1

    .line 515
    goto :goto_0
.end method

.method public notifyDataChanged()V
    .locals 2

    .prologue
    .line 519
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 521
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 522
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->updateViewIndexes(Landroid/widget/BaseAdapter;)Z

    .line 524
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 468
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 469
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getChildCount()I

    move-result v1

    .line 477
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 478
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 479
    .local v4, view:Landroid/view/View;
    instance-of v5, v4, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    if-eqz v5, :cond_0

    .line 480
    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    move-object v3, v0

    .line 481
    .local v3, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .end local v3           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_0
    instance-of v5, v4, Lcom/sec/android/app/twlauncher/GLTextSurface;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    if-nez v5, :cond_1

    .line 484
    check-cast v4, Lcom/sec/android/app/twlauncher/GLTextSurface;

    .end local v4           #view:Landroid/view/View;
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    .line 477
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 488
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setAllowWiggle(Z)V

    .line 490
    :cond_3
    const v5, 0x7f06003b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/GLListView;

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    .line 491
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v5, p0}, Lcom/sec/android/app/twlauncher/GLListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 493
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "aEv"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 239
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v5

    .line 260
    :goto_0
    return v2

    .line 242
    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 243
    .local v1, pt:Landroid/graphics/PointF;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v5

    .line 244
    goto :goto_0

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 251
    .local v0, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->Contains(Landroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v5

    .line 252
    goto :goto_0

    .line 254
    :cond_4
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    .line 255
    invoke-direct {p0, v5, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->feedPtToIndexView(ILandroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v5

    .line 256
    goto :goto_0

    .line 258
    :cond_5
    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .line 259
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setPressedImmediate(Z)V

    move v2, v6

    .line 260
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 401
    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getPaddingRight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getPaddingBottom()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 402
    .local v8, padding:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v8, Landroid/graphics/RectF;->left:F

    iget v12, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v8, Landroid/graphics/RectF;->top:F

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v12, v13

    sub-float/2addr v11, v12

    invoke-direct {v1, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 403
    .local v1, availSize:Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/RectF;

    iget v10, v8, Landroid/graphics/RectF;->left:F

    iget v11, v8, Landroid/graphics/RectF;->top:F

    iget v12, v8, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v13

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iget v14, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 405
    .local v0, availRect:Landroid/graphics/RectF;
    const/4 v7, 0x0

    .local v7, indexViewOffset:F
    const/4 v9, 0x0

    .line 407
    .local v9, totalIndexViewsWidth:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getChildCount()I

    move-result v5

    .line 408
    .local v5, count:I
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 409
    .local v4, childSize:Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 411
    .local v2, centeredRect:Landroid/graphics/RectF;
    if-eqz p1, :cond_0

    .line 412
    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .line 413
    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    .line 415
    :cond_0
    iget v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    packed-switch v10, :pswitch_data_0

    .line 424
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 425
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 426
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v4, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 427
    instance-of v10, v3, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    if-eqz v10, :cond_1

    .line 432
    iget v10, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    .line 433
    iget v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    packed-switch v10, :pswitch_data_1

    .line 424
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 417
    .end local v3           #child:Landroid/view/View;
    .end local v6           #i:I
    :pswitch_0
    iget v7, v8, Landroid/graphics/RectF;->left:F

    .line 418
    goto :goto_0

    .line 420
    :pswitch_1
    iget v7, v1, Landroid/graphics/PointF;->x:F

    goto :goto_0

    .line 435
    .restart local v3       #child:Landroid/view/View;
    .restart local v6       #i:I
    :pswitch_2
    float-to-int v10, v7

    iget v11, v8, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v12, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v7

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iget v14, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 437
    iget v10, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v10

    .line 438
    goto :goto_2

    .line 440
    :pswitch_3
    iget v10, v4, Landroid/graphics/PointF;->x:F

    sub-float v10, v7, v10

    float-to-int v10, v10

    iget v11, v8, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    float-to-int v12, v7

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iget v14, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 442
    iget v10, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v10

    goto :goto_2

    .line 447
    :cond_1
    invoke-static {v2, v0, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 448
    iget v10, v2, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iget v11, v2, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v12, v2, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v13, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 455
    .end local v3           #child:Landroid/view/View;
    :cond_2
    iget v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    packed-switch v10, :pswitch_data_2

    .line 464
    :goto_3
    return-void

    .line 457
    :pswitch_4
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    iget v12, v8, Landroid/graphics/RectF;->top:F

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10, v11, v12, v9, v13}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    .line 460
    :pswitch_5
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    iget v11, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v9

    iget v12, v8, Landroid/graphics/RectF;->top:F

    iget v13, v0, Landroid/graphics/RectF;->right:F

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    .line 415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 433
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 455
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 394
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 395
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    .line 396
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 549
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 552
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 554
    .local v0, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    if-nez p2, :cond_1

    .line 555
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->unPressDelayed()Z

    .line 560
    .end local v0           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_0
    :goto_0
    return-void

    .line 557
    .restart local v0       #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->pressDelayed()Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "aEv"

    .prologue
    .line 371
    iget v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    if-gez v3, :cond_0

    .line 372
    const/4 v3, 0x0

    .line 389
    :goto_0
    return v3

    .line 374
    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 375
    .local v1, pt:Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 376
    .local v0, action:I
    const/4 v2, 0x0

    .line 377
    .local v2, res:Z
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v3, v2

    .line 389
    goto :goto_0

    .line 380
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->handleUp(Landroid/graphics/PointF;)Z

    move-result v2

    .line 381
    goto :goto_1

    .line 383
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->handleMove(Landroid/graphics/PointF;)Z

    move-result v2

    .line 384
    goto :goto_1

    .line 386
    :pswitch_2
    const/4 v2, 0x1

    goto :goto_1

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "aAdapter"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 529
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->updateViewIndexes(Landroid/widget/BaseAdapter;)Z

    .line 531
    :cond_0
    return-void
.end method

.class public Landroid/widget/ListView;
.super Landroid/widget/AbsListView;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListView$SavedState;,
        Landroid/widget/ListView$ArrowScrollFocusResult;,
        Landroid/widget/ListView$FocusSelector;,
        Landroid/widget/ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final MIN_SCROLL_PREVIEW_PIXELS:I = 0x2

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private final mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceMode:I

.field private mClipDivider:Z

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFocusSelector:Landroid/widget/ListView$FocusSelector;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 184
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 144
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 159
    iput-boolean v9, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 161
    iput-boolean v8, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 163
    iput v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    .line 169
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 174
    new-instance v6, Landroid/widget/ListView$ArrowScrollFocusResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/widget/ListView$ArrowScrollFocusResult;-><init>(Landroid/widget/ListView$1;)V

    iput-object v6, p0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    .line 190
    sget-object v6, Lcom/android/internal/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 193
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 195
    .local v3, entries:[Ljava/lang/CharSequence;
    if-eqz v3, :cond_3e

    .line 196
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    invoke-direct {v6, p1, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    :cond_3e
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 201
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_47

    .line 203
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_47
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 208
    .local v5, osHeader:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_51

    .line 209
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_51
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 214
    .local v4, osFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_5b

    .line 215
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :cond_5b
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 221
    .local v2, dividerHeight:I
    if-eqz v2, :cond_64

    .line 222
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 225
    :cond_64
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 227
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 228
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 230
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    invoke-virtual {p0, v10}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 236
    invoke-virtual {p0, v9}, Landroid/widget/ListView;->setEnableExcessScroll(Z)V

    .line 237
    return-void
.end method

.method static synthetic access$300(Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 2972
    const/4 v0, 0x1

    sub-int v2, p2, v0

    .line 2973
    .local v2, abovePosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2974
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 2975
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2977
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 2981
    add-int/lit8 v2, p2, 0x1

    .line 2982
    .local v2, belowPosition:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 2983
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 2984
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 2986
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .registers 7

    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 255
    .local v1, childCount:I
    if-lez v1, :cond_29

    .line 258
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_2a

    .line 261
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v4

    .line 263
    .local v2, delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-eqz v3, :cond_20

    .line 266
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 268
    :cond_20
    if-gez v2, :cond_23

    .line 270
    const/4 v2, 0x0

    .line 288
    :cond_23
    :goto_23
    if-eqz v2, :cond_29

    .line 289
    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 292
    .end local v0           #child:Landroid/view/View;
    .end local v2           #delta:I
    :cond_29
    return-void

    .line 274
    :cond_2a
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 275
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    .line 277
    .restart local v2       #delta:I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v4, :cond_4a

    .line 280
    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    .line 283
    :cond_4a
    if-lez v2, :cond_23

    .line 284
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private amountToScroll(II)I
    .registers 15
    .parameter "direction"
    .parameter "nextSelectedPosition"

    .prologue
    .line 2559
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v10, v11

    .line 2560
    .local v4, listBottom:I
    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v10, Landroid/graphics/Rect;->top:I

    .line 2562
    .local v5, listTop:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2564
    .local v7, numChildren:I
    const/16 v10, 0x82

    if-ne p1, v10, :cond_95

    .line 2565
    const/4 v10, 0x1

    sub-int v3, v7, v10

    .line 2566
    .local v3, indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_20

    .line 2567
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2570
    :cond_20
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2571
    .local v8, positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2573
    .local v9, viewToMakeVisible:Landroid/view/View;
    move v1, v4

    .line 2574
    .local v1, goalBottom:I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v8, v10, :cond_34

    .line 2575
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    sub-int/2addr v1, v10

    .line 2578
    :cond_34
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v1, :cond_3c

    .line 2580
    const/4 v10, 0x0

    .line 2654
    .end local v1           #goalBottom:I
    :goto_3b
    return v10

    .line 2584
    .restart local v1       #goalBottom:I
    :cond_3c
    const-string v10, "SGH-I777"

    const-string v11, "SGH-I927"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 2585
    const/4 v10, -0x1

    if-eq p2, v10, :cond_62

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v1, v10, :cond_62

    .line 2588
    const/4 v10, 0x0

    goto :goto_3b

    .line 2592
    :cond_51
    const/4 v10, -0x1

    if-eq p2, v10, :cond_62

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_62

    .line 2595
    const/4 v10, 0x0

    goto :goto_3b

    .line 2598
    :cond_62
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v0, v10, v1

    .line 2600
    .local v0, amountToScroll:I
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v7

    iget v11, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v10, v11, :cond_80

    .line 2602
    const/4 v10, 0x1

    sub-int v10, v7, v10

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v6, v10, v4

    .line 2603
    .local v6, max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2607
    .end local v6           #max:I
    :cond_80
    const-string v10, "SGH-I777"

    const-string v11, "SGH-I927"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8c

    move v10, v0

    .line 2608
    goto :goto_3b

    .line 2611
    :cond_8c
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_3b

    .line 2613
    .end local v0           #amountToScroll:I
    .end local v1           #goalBottom:I
    .end local v3           #indexToMakeVisible:I
    .end local v8           #positionToMakeVisible:I
    .end local v9           #viewToMakeVisible:Landroid/view/View;
    :cond_95
    const/4 v3, 0x0

    .line 2614
    .restart local v3       #indexToMakeVisible:I
    const/4 v10, -0x1

    if-eq p2, v10, :cond_9d

    .line 2615
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, p2, v10

    .line 2617
    :cond_9d
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v8, v10, v3

    .line 2618
    .restart local v8       #positionToMakeVisible:I
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2619
    .restart local v9       #viewToMakeVisible:Landroid/view/View;
    move v2, v5

    .line 2620
    .local v2, goalTop:I
    if-lez v8, :cond_ad

    .line 2621
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v10

    add-int/2addr v2, v10

    .line 2623
    :cond_ad
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v2, :cond_b5

    .line 2625
    const/4 v10, 0x0

    goto :goto_3b

    .line 2629
    :cond_b5
    const-string v10, "SGH-I777"

    const-string v11, "SGH-I927"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cb

    .line 2630
    const/4 v10, -0x1

    if-eq p2, v10, :cond_dc

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    if-le v10, v2, :cond_dc

    .line 2633
    const/4 v10, 0x0

    goto/16 :goto_3b

    .line 2636
    :cond_cb
    const/4 v10, -0x1

    if-eq p2, v10, :cond_dc

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v11

    if-lt v10, v11, :cond_dc

    .line 2639
    const/4 v10, 0x0

    goto/16 :goto_3b

    .line 2642
    :cond_dc
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v0, v2, v10

    .line 2643
    .restart local v0       #amountToScroll:I
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v10, :cond_f5

    .line 2645
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int v6, v5, v10

    .line 2646
    .restart local v6       #max:I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2650
    .end local v6           #max:I
    :cond_f5
    const-string v10, "SGH-I777"

    const-string v11, "SGH-I927"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_102

    move v10, v0

    .line 2651
    goto/16 :goto_3b

    .line 2654
    :cond_102
    invoke-virtual {p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_3b
.end method

.method private amountToScrollToNewFocus(ILandroid/view/View;I)I
    .registers 8
    .parameter "direction"
    .parameter "newFocus"
    .parameter "positionOfNewFocus"

    .prologue
    .line 2846
    const/4 v0, 0x0

    .line 2847
    .local v0, amountToScroll:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2848
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2849
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2b

    .line 2850
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2a

    .line 2851
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v3

    .line 2852
    if-lez p3, :cond_2a

    .line 2853
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 2865
    :cond_2a
    :goto_2a
    return v0

    .line 2857
    :cond_2b
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2858
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_2a

    .line 2859
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v1

    .line 2860
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge p3, v2, :cond_2a

    .line 2861
    invoke-direct {p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2a
.end method

.method private arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;
    .registers 22
    .parameter "direction"

    .prologue
    .line 2744
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v14

    .line 2746
    .local v14, selectedView:Landroid/view/View;
    if-eqz v14, :cond_63

    invoke-virtual {v14}, Landroid/view/View;->hasFocus()Z

    move-result v17

    if-eqz v17, :cond_63

    .line 2747
    invoke-virtual {v14}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v11

    .line 2748
    .local v11, oldFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 2773
    .end local v11           #oldFocus:Landroid/view/View;
    .local v10, newFocus:Landroid/view/View;
    :goto_1f
    if-eqz v10, :cond_197

    .line 2774
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Landroid/widget/ListView;->positionOfNewFocus(Landroid/view/View;)I

    move-result v12

    .line 2778
    .local v12, positionOfNewFocus:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_145

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-eq v0, v1, :cond_145

    .line 2779
    invoke-direct/range {p0 .. p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v13

    .line 2780
    .local v13, selectablePosition:I
    const/16 v17, -0x1

    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_145

    const/16 v17, 0x82

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_56

    if-lt v13, v12, :cond_60

    :cond_56
    const/16 v17, 0x21

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_145

    if-le v13, v12, :cond_145

    .line 2783
    :cond_60
    const/16 v17, 0x0

    .line 2805
    .end local v12           #positionOfNewFocus:I
    .end local v13           #selectablePosition:I
    :goto_62
    return-object v17

    .line 2750
    .end local v10           #newFocus:Landroid/view/View;
    :cond_63
    const/16 v17, 0x82

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_d6

    .line 2751
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-lez v17, :cond_cb

    const/16 v17, 0x1

    move/from16 v15, v17

    .line 2752
    .local v15, topFadingEdgeShowing:Z
    :goto_77
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    if-eqz v15, :cond_d0

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_89
    add-int v8, v17, v18

    .line 2754
    .local v8, listTop:I
    if-eqz v14, :cond_d3

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-le v0, v1, :cond_d3

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v16, v17

    .line 2758
    .local v16, ySearchPoint:I
    :goto_9c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2770
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :goto_b3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v10

    .restart local v10       #newFocus:Landroid/view/View;
    goto/16 :goto_1f

    .line 2751
    .end local v10           #newFocus:Landroid/view/View;
    .end local v16           #ySearchPoint:I
    :cond_cb
    const/16 v17, 0x0

    move/from16 v15, v17

    goto :goto_77

    .line 2752
    .restart local v15       #topFadingEdgeShowing:Z
    :cond_d0
    const/16 v18, 0x0

    goto :goto_89

    .restart local v8       #listTop:I
    :cond_d3
    move/from16 v16, v8

    .line 2754
    goto :goto_9c

    .line 2760
    .end local v8           #listTop:I
    .end local v15           #topFadingEdgeShowing:Z
    :cond_d6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v18

    add-int v17, v17, v18

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_13a

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 2762
    .local v5, bottomFadingEdgeShowing:Z
    :goto_f6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    if-eqz v5, :cond_13f

    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->getArrowScrollPreviewLength()I

    move-result v18

    :goto_10e
    sub-int v7, v17, v18

    .line 2764
    .local v7, listBottom:I
    if-eqz v14, :cond_142

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    move v1, v7

    if-ge v0, v1, :cond_142

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v16, v17

    .line 2768
    .restart local v16       #ySearchPoint:I
    :goto_121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    move/from16 v3, v19

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_b3

    .line 2760
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .end local v16           #ySearchPoint:I
    :cond_13a
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_f6

    .line 2762
    .restart local v5       #bottomFadingEdgeShowing:Z
    :cond_13f
    const/16 v18, 0x0

    goto :goto_10e

    .restart local v7       #listBottom:I
    :cond_142
    move/from16 v16, v7

    .line 2764
    goto :goto_121

    .line 2787
    .end local v5           #bottomFadingEdgeShowing:Z
    .end local v7           #listBottom:I
    .restart local v10       #newFocus:Landroid/view/View;
    .restart local v12       #positionOfNewFocus:I
    :cond_145
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v10

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->amountToScrollToNewFocus(ILandroid/view/View;I)I

    move-result v6

    .line 2789
    .local v6, focusScroll:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getMaxScrollAmount()I

    move-result v9

    .line 2790
    .local v9, maxScrollAmount:I
    if-ge v6, v9, :cond_170

    .line 2792
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2793
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2794
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_62

    .line 2795
    :cond_170
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    move v1, v9

    if-ge v0, v1, :cond_197

    .line 2800
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v12

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView$ArrowScrollFocusResult;->populate(II)V

    .line 2802
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mArrowScrollFocusResult:Landroid/widget/ListView$ArrowScrollFocusResult;

    move-object/from16 v17, v0

    goto/16 :goto_62

    .line 2805
    .end local v6           #focusScroll:I
    .end local v9           #maxScrollAmount:I
    .end local v12           #positionOfNewFocus:I
    :cond_197
    const/16 v17, 0x0

    goto/16 :goto_62
.end method

.method private arrowScrollImpl(I)Z
    .registers 12
    .parameter "direction"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 2342
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    if-gtz v6, :cond_b

    move v6, v7

    .line 2417
    :goto_a
    return v6

    .line 2346
    :cond_b
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2348
    .local v5, selectedView:Landroid/view/View;
    invoke-direct {p0, p1}, Landroid/widget/ListView;->lookForSelectablePositionOnScreen(I)I

    move-result v4

    .line 2349
    .local v4, nextSelectedPosition:I
    invoke-direct {p0, p1, v4}, Landroid/widget/ListView;->amountToScroll(II)I

    move-result v0

    .line 2352
    .local v0, amountToScroll:I
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_a7

    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollFocused(I)Landroid/widget/ListView$ArrowScrollFocusResult;

    move-result-object v6

    move-object v1, v6

    .line 2353
    .local v1, focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :goto_20
    if-eqz v1, :cond_2a

    .line 2354
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getSelectedPosition()I

    move-result v4

    .line 2355
    invoke-virtual {v1}, Landroid/widget/ListView$ArrowScrollFocusResult;->getAmountToScroll()I

    move-result v0

    .line 2358
    :cond_2a
    if-eqz v1, :cond_ab

    move v3, v9

    .line 2359
    .local v3, needToRedraw:Z
    :goto_2d
    if-eq v4, v8, :cond_52

    .line 2360
    if-eqz v1, :cond_ad

    move v6, v9

    :goto_32
    invoke-direct {p0, v5, p1, v4, v6}, Landroid/widget/ListView;->handleNewSelectionChange(Landroid/view/View;IIZ)V

    .line 2361
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 2362
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 2363
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2364
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_4e

    if-nez v1, :cond_4e

    .line 2367
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2368
    .local v2, focused:Landroid/view/View;
    if-eqz v2, :cond_4e

    .line 2369
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2372
    .end local v2           #focused:Landroid/view/View;
    :cond_4e
    const/4 v3, 0x1

    .line 2373
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 2376
    :cond_52
    if-lez v0, :cond_60

    .line 2378
    invoke-direct {p0}, Landroid/widget/ListView;->logActivity()V

    .line 2380
    const/16 v6, 0x21

    if-ne p1, v6, :cond_af

    move v6, v0

    :goto_5c
    invoke-direct {p0, v6}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 2381
    const/4 v3, 0x1

    .line 2386
    :cond_60
    iget-boolean v6, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v6, :cond_7b

    if-nez v1, :cond_7b

    if-eqz v5, :cond_7b

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 2388
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2389
    .restart local v2       #focused:Landroid/view/View;
    invoke-direct {p0, v2}, Landroid/widget/ListView;->distanceToView(Landroid/view/View;)I

    move-result v6

    if-lez v6, :cond_7b

    .line 2390
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2395
    .end local v2           #focused:Landroid/view/View;
    :cond_7b
    if-ne v4, v8, :cond_8b

    if-eqz v5, :cond_8b

    invoke-direct {p0, v5, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_8b

    .line 2397
    const/4 v5, 0x0

    .line 2398
    invoke-virtual {p0}, Landroid/widget/ListView;->hideSelector()V

    .line 2402
    iput v8, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 2405
    :cond_8b
    if-eqz v3, :cond_b1

    .line 2406
    if-eqz v5, :cond_98

    .line 2407
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 2408
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2410
    :cond_98
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v6

    if-nez v6, :cond_a1

    .line 2411
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2413
    :cond_a1
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    move v6, v9

    .line 2414
    goto/16 :goto_a

    .line 2352
    .end local v1           #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    .end local v3           #needToRedraw:Z
    :cond_a7
    const/4 v6, 0x0

    move-object v1, v6

    goto/16 :goto_20

    .restart local v1       #focusResult:Landroid/widget/ListView$ArrowScrollFocusResult;
    :cond_ab
    move v3, v7

    .line 2358
    goto :goto_2d

    .restart local v3       #needToRedraw:Z
    :cond_ad
    move v6, v7

    .line 2360
    goto :goto_32

    .line 2380
    :cond_af
    neg-int v6, v0

    goto :goto_5c

    :cond_b1
    move v6, v7

    .line 2417
    goto/16 :goto_a
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1f

    .line 549
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 551
    .local v1, count:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_7
    if-ge v2, v1, :cond_1f

    .line 552
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v0, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 553
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 554
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_1c

    .line 555
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 551
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 559
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_1f
    return-void
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

    .line 2081
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_c

    move v2, v6

    .line 2174
    :goto_b
    return v2

    .line 2085
    :cond_c
    iget-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v2, :cond_13

    .line 2086
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2089
    :cond_13
    const/4 v1, 0x0

    .line 2090
    .local v1, handled:Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2092
    .local v0, action:I
    if-eq v0, v3, :cond_24

    .line 2093
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v2, :cond_21

    .line 2094
    sparse-switch p1, :sswitch_data_ae

    .line 2105
    :cond_21
    sparse-switch p1, :sswitch_data_c4

    .line 2156
    :cond_24
    :goto_24
    if-nez v1, :cond_2a

    .line 2157
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/ListView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2160
    :cond_2a
    if-eqz v1, :cond_96

    move v2, v3

    .line 2161
    goto :goto_b

    .line 2100
    :sswitch_2e
    invoke-virtual {p0}, Landroid/widget/ListView;->resurrectSelection()Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v3

    .line 2101
    goto :goto_b

    .line 2107
    :sswitch_36
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_45

    .line 2108
    :goto_3c
    if-lez p2, :cond_24

    .line 2109
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v1

    .line 2110
    add-int/lit8 p2, p2, -0x1

    goto :goto_3c

    .line 2113
    :cond_45
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v1

    .line 2115
    goto :goto_24

    .line 2118
    :sswitch_4a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_59

    .line 2119
    :goto_50
    if-lez p2, :cond_24

    .line 2120
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->arrowScroll(I)Z

    move-result v1

    .line 2121
    add-int/lit8 p2, p2, -0x1

    goto :goto_50

    .line 2124
    :cond_59
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->fullScroll(I)Z

    move-result v1

    .line 2126
    goto :goto_24

    .line 2129
    :sswitch_5e
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2130
    goto :goto_24

    .line 2132
    :sswitch_65
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Landroid/widget/ListView;->handleHorizontalFocusWithinListItem(I)Z

    move-result v1

    .line 2133
    goto :goto_24

    .line 2137
    :sswitch_6c
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v2, :cond_79

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_79

    .line 2138
    invoke-virtual {p0}, Landroid/widget/ListView;->keyPressed()V

    .line 2140
    :cond_79
    const/4 v1, 0x1

    .line 2141
    goto :goto_24

    .line 2144
    :sswitch_7b
    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_87

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_24

    .line 2145
    :cond_87
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v2

    if-nez v2, :cond_92

    .line 2146
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->pageScroll(I)Z

    .line 2150
    :goto_90
    const/4 v1, 0x1

    goto :goto_24

    .line 2148
    :cond_92
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->pageScroll(I)Z

    goto :goto_90

    .line 2163
    :cond_96
    packed-switch v0, :pswitch_data_e2

    move v2, v6

    .line 2174
    goto/16 :goto_b

    .line 2165
    :pswitch_9c
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 2168
    :pswitch_a2
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 2171
    :pswitch_a8
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_b

    .line 2094
    :sswitch_data_ae
    .sparse-switch
        0x13 -> :sswitch_2e
        0x14 -> :sswitch_2e
        0x17 -> :sswitch_2e
        0x3e -> :sswitch_2e
        0x42 -> :sswitch_2e
    .end sparse-switch

    .line 2105
    :sswitch_data_c4
    .sparse-switch
        0x13 -> :sswitch_36
        0x14 -> :sswitch_4a
        0x15 -> :sswitch_5e
        0x16 -> :sswitch_65
        0x17 -> :sswitch_6c
        0x3e -> :sswitch_7b
        0x42 -> :sswitch_6c
    .end sparse-switch

    .line 2163
    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_a2
        :pswitch_a8
    .end packed-switch
.end method

.method private correctTooHigh(I)V
    .registers 12
    .parameter "childCount"

    .prologue
    const/4 v9, 0x1

    .line 1368
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, p1

    sub-int v6, v7, v9

    .line 1369
    .local v6, lastPosition:I
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v7, v9

    if-ne v6, v7, :cond_5d

    if-lez p1, :cond_5d

    .line 1372
    sub-int v7, p1, v9

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1375
    .local v5, lastChild:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 1378
    .local v4, lastBottom:I
    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v8

    .line 1382
    .local v1, end:I
    sub-int v0, v1, v4

    .line 1383
    .local v0, bottomOffset:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1384
    .local v2, firstChild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1388
    .local v3, firstTop:I
    if-lez v0, :cond_5d

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v7, :cond_39

    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_5d

    .line 1389
    :cond_39
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_46

    .line 1391
    iget-object v7, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1394
    :cond_46
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1395
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v7, :cond_5d

    .line 1398
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v7, v9

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v8, v9

    invoke-direct {p0, v7, v8}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 1400
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1405
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstChild:Landroid/view/View;
    .end local v3           #firstTop:I
    .end local v4           #lastBottom:I
    .end local v5           #lastChild:Landroid/view/View;
    :cond_5d
    return-void
.end method

.method private correctTooLow(I)V
    .registers 13
    .parameter "childCount"

    .prologue
    const/4 v10, 0x1

    .line 1417
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v8, :cond_5c

    if-lez p1, :cond_5c

    .line 1420
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1423
    .local v1, firstChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1426
    .local v2, firstTop:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .line 1429
    .local v6, start:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v8, v9

    .line 1433
    .local v0, end:I
    sub-int v7, v2, v6

    .line 1434
    .local v7, topOffset:I
    sub-int v8, p1, v10

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1435
    .local v4, lastChild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1436
    .local v3, lastBottom:I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v8, p1

    sub-int v5, v8, v10

    .line 1440
    .local v5, lastPosition:I
    if-lez v7, :cond_5c

    .line 1441
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-lt v5, v8, :cond_39

    if-le v3, v0, :cond_5d

    .line 1442
    :cond_39
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_44

    .line 1444
    sub-int v8, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1447
    :cond_44
    neg-int v8, v7

    invoke-virtual {p0, v8}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 1448
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ge v5, v8, :cond_5c

    .line 1451
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1453
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1460
    .end local v0           #end:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v4           #lastChild:Landroid/view/View;
    .end local v5           #lastPosition:I
    .end local v6           #start:I
    .end local v7           #topOffset:I
    :cond_5c
    :goto_5c
    return-void

    .line 1455
    .restart local v0       #end:I
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #firstTop:I
    .restart local v3       #lastBottom:I
    .restart local v4       #lastChild:Landroid/view/View;
    .restart local v5       #lastPosition:I
    .restart local v6       #start:I
    .restart local v7       #topOffset:I
    :cond_5d
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v10

    if-ne v5, v8, :cond_5c

    .line 1456
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto :goto_5c
.end method

.method private distanceToView(Landroid/view/View;)I
    .registers 6
    .parameter "descendant"

    .prologue
    .line 2876
    const/4 v0, 0x0

    .line 2877
    .local v0, distance:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2878
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2879
    iget v2, p0, Landroid/view/View;->mBottom:I

    iget v3, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 2880
    .local v1, listBottom:I
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2b

    .line 2881
    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v3

    .line 2885
    :cond_2a
    :goto_2a
    return v0

    .line 2882
    :cond_2b
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_2a

    .line 2883
    iget-object v2, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v1

    goto :goto_2a
.end method

.method private fillAboveAndBelow(Landroid/view/View;I)V
    .registers 7
    .parameter "sel"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 805
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 806
    .local v0, dividerHeight:I
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v1, :cond_1f

    .line 807
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 808
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 809
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 815
    :goto_1e
    return-void

    .line 811
    :cond_1f
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 812
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 813
    sub-int v1, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_1e
.end method

.method private fillDown(II)Landroid/view/View;
    .registers 12
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    const/4 v3, 0x1

    .line 694
    const/4 v8, 0x0

    .line 696
    .local v8, selectedView:Landroid/view/View;
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v0, v1

    .line 698
    .local v7, end:I
    :goto_d
    if-ge p2, v7, :cond_34

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge p1, v0, :cond_34

    .line 700
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_31

    move v5, v3

    .line 701
    .local v5, selected:Z
    :goto_18
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 703
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int p2, v0, v1

    .line 704
    if-eqz v5, :cond_2e

    .line 705
    move-object v8, v6

    .line 707
    :cond_2e
    add-int/lit8 p1, p1, 0x1

    .line 708
    goto :goto_d

    .line 700
    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_31
    const/4 v0, 0x0

    move v5, v0

    goto :goto_18

    .line 710
    :cond_34
    return-object v8
.end method

.method private fillFromMiddle(II)Landroid/view/View;
    .registers 12
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    const/4 v3, 0x1

    .line 773
    sub-int v6, p2, p1

    .line 775
    .local v6, height:I
    invoke-virtual {p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v1

    .line 777
    .local v1, position:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v7

    .line 779
    .local v7, sel:Landroid/view/View;
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 781
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 782
    .local v8, selHeight:I
    if-gt v8, v6, :cond_21

    .line 783
    sub-int v0, v6, v8

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 786
    :cond_21
    invoke-direct {p0, v7, v1}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 788
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_30

    .line 789
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 794
    :goto_2f
    return-object v7

    .line 791
    :cond_30
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_2f
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .registers 21
    .parameter "selectedTop"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 829
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v11

    .line 830
    .local v11, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v5, v0

    .line 834
    .local v5, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v16

    .line 836
    .local v16, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v11

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 839
    .local v10, bottomSelectionPixel:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v13

    .line 843
    .local v13, sel:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v10, :cond_61

    .line 846
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v14, v4, v16

    .line 850
    .local v14, spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v15, v4, v10

    .line 851
    .local v15, spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 854
    .local v12, offset:I
    neg-int v4, v12

    invoke-virtual {v13, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 870
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_48
    :goto_48
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    .line 872
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_7e

    .line 873
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 878
    :goto_60
    return-object v13

    .line 855
    :cond_61
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move/from16 v1, v16

    if-ge v0, v1, :cond_48

    .line 858
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v14, v16, v4

    .line 862
    .restart local v14       #spaceAbove:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v15, v10, v4

    .line 863
    .restart local v15       #spaceBelow:I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 866
    .restart local v12       #offset:I
    invoke-virtual {v13, v12}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_48

    .line 875
    .end local v12           #offset:I
    .end local v14           #spaceAbove:I
    .end local v15           #spaceBelow:I
    :cond_7e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_60
.end method

.method private fillFromTop(I)Landroid/view/View;
    .registers 5
    .parameter "nextTop"

    .prologue
    .line 753
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 754
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 755
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gez v0, :cond_1d

    .line 756
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 758
    :cond_1d
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "top"

    .prologue
    const/4 v3, 0x1

    .line 1320
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_3f

    move v5, v3

    .line 1321
    .local v5, tempIsSelected:Z
    :goto_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v10

    .line 1323
    .local v10, temp:Landroid/view/View;
    iput p1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1328
    iget v9, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 1329
    .local v9, dividerHeight:I
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v0, :cond_42

    .line 1330
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1332
    .local v6, above:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1333
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1334
    .local v7, below:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1335
    .local v8, childCount:I
    if-lez v8, :cond_3b

    .line 1336
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 1349
    :cond_3b
    :goto_3b
    if-eqz v5, :cond_65

    move-object v0, v10

    .line 1354
    :goto_3e
    return-object v0

    .line 1320
    .end local v5           #tempIsSelected:Z
    .end local v6           #above:Landroid/view/View;
    .end local v7           #below:Landroid/view/View;
    .end local v8           #childCount:I
    .end local v9           #dividerHeight:I
    .end local v10           #temp:Landroid/view/View;
    :cond_3f
    const/4 v0, 0x0

    move v5, v0

    goto :goto_6

    .line 1339
    .restart local v5       #tempIsSelected:Z
    .restart local v9       #dividerHeight:I
    .restart local v10       #temp:Landroid/view/View;
    :cond_42
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    .line 1341
    .restart local v7       #below:Landroid/view/View;
    invoke-direct {p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1342
    sub-int v0, p1, v3

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-direct {p0, v0, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    .line 1343
    .restart local v6       #above:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 1344
    .restart local v8       #childCount:I
    if-lez v8, :cond_3b

    .line 1345
    invoke-direct {p0, v8}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_3b

    .line 1351
    :cond_65
    if-eqz v6, :cond_69

    move-object v0, v6

    .line 1352
    goto :goto_3e

    :cond_69
    move-object v0, v7

    .line 1354
    goto :goto_3e
.end method

.method private fillUp(II)Landroid/view/View;
    .registers 12
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 724
    const/4 v8, 0x0

    .line 726
    .local v8, selectedView:Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 728
    .local v7, end:I
    :goto_6
    if-le p2, v7, :cond_2b

    if-ltz p1, :cond_2b

    .line 730
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ne p1, v0, :cond_29

    const/4 v0, 0x1

    move v5, v0

    .line 731
    .local v5, selected:Z
    :goto_10
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v6

    .line 732
    .local v6, child:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int p2, v0, v1

    .line 733
    if-eqz v5, :cond_26

    .line 734
    move-object v8, v6

    .line 736
    :cond_26
    add-int/lit8 p1, p1, -0x1

    .line 737
    goto :goto_6

    .end local v5           #selected:Z
    .end local v6           #child:Landroid/view/View;
    :cond_29
    move v5, v3

    .line 730
    goto :goto_10

    .line 739
    :cond_2b
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 741
    return-object v8
.end method

.method private getArrowScrollPreviewLength()I
    .registers 3

    .prologue
    .line 2543
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBottomSelectionPixel(III)I
    .registers 7
    .parameter "childrenBottom"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 891
    move v0, p1

    .line 892
    .local v0, bottomSelectionPixel:I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq p3, v1, :cond_8

    .line 893
    sub-int/2addr v0, p2

    .line 895
    :cond_8
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .registers 5
    .parameter "childrenTop"
    .parameter "fadingEdgeLength"
    .parameter "selectedPosition"

    .prologue
    .line 908
    move v0, p1

    .line 909
    .local v0, topSelectionPixel:I
    if-lez p3, :cond_4

    .line 910
    add-int/2addr v0, p2

    .line 912
    :cond_4
    return v0
.end method

.method private handleHorizontalFocusWithinListItem(I)Z
    .registers 9
    .parameter "direction"

    .prologue
    .line 2274
    const/16 v5, 0x11

    if-eq p1, v5, :cond_10

    const/16 v5, 0x42

    if-eq p1, v5, :cond_10

    .line 2275
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2279
    :cond_10
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2280
    .local v3, numChildren:I
    iget-boolean v5, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v5, :cond_6d

    if-lez v3, :cond_6d

    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6d

    .line 2281
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 2282
    .local v4, selectedView:Landroid/view/View;
    if-eqz v4, :cond_6d

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_6d

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_6d

    .line 2285
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2286
    .local v0, currentFocus:Landroid/view/View;
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #selectedView:Landroid/view/View;
    invoke-virtual {v5, v4, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2288
    .local v2, nextFocus:Landroid/view/View;
    if-eqz v2, :cond_58

    .line 2290
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2291
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v5}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2292
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v5}, Landroid/widget/ListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2293
    iget-object v5, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v5}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 2294
    const/4 v5, 0x1

    .line 2308
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :goto_57
    return v5

    .line 2301
    .restart local v0       #currentFocus:Landroid/view/View;
    .restart local v2       #nextFocus:Landroid/view/View;
    :cond_58
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2303
    .local v1, globalNextFocus:Landroid/view/View;
    if-eqz v1, :cond_6d

    .line 2304
    invoke-direct {p0, v1, p0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    goto :goto_57

    .line 2308
    .end local v0           #currentFocus:Landroid/view/View;
    .end local v1           #globalNextFocus:Landroid/view/View;
    .end local v2           #nextFocus:Landroid/view/View;
    :cond_6d
    const/4 v5, 0x0

    goto :goto_57
.end method

.method private handleNewSelectionChange(Landroid/view/View;IIZ)V
    .registers 15
    .parameter "selectedView"
    .parameter "direction"
    .parameter "newSelectedPosition"
    .parameter "newFocusAssigned"

    .prologue
    .line 2435
    const/4 v8, -0x1

    if-ne p3, v8, :cond_c

    .line 2436
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "newSelectedPosition needs to be valid"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2446
    :cond_c
    const/4 v5, 0x0

    .line 2447
    .local v5, topSelected:Z
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v8, v9

    .line 2448
    .local v4, selectedIndex:I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v2, p3, v8

    .line 2449
    .local v2, nextSelectedIndex:I
    const/16 v8, 0x21

    if-ne p2, v8, :cond_42

    .line 2450
    move v7, v2

    .line 2451
    .local v7, topViewIndex:I
    move v1, v4

    .line 2452
    .local v1, bottomViewIndex:I
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2453
    .local v6, topView:Landroid/view/View;
    move-object v0, p1

    .line 2454
    .local v0, bottomView:Landroid/view/View;
    const/4 v5, 0x1

    .line 2462
    :goto_23
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 2465
    .local v3, numChildren:I
    if-eqz v6, :cond_34

    .line 2466
    if-nez p4, :cond_4a

    if-eqz v5, :cond_4a

    const/4 v8, 0x1

    :goto_2e
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2467
    invoke-direct {p0, v6, v7, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2471
    :cond_34
    if-eqz v0, :cond_41

    .line 2472
    if-nez p4, :cond_4c

    if-nez v5, :cond_4c

    const/4 v8, 0x1

    :goto_3b
    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    .line 2473
    invoke-direct {p0, v0, v1, v3}, Landroid/widget/ListView;->measureAndAdjustDown(Landroid/view/View;II)V

    .line 2475
    :cond_41
    return-void

    .line 2456
    .end local v0           #bottomView:Landroid/view/View;
    .end local v1           #bottomViewIndex:I
    .end local v3           #numChildren:I
    .end local v6           #topView:Landroid/view/View;
    .end local v7           #topViewIndex:I
    :cond_42
    move v7, v4

    .line 2457
    .restart local v7       #topViewIndex:I
    move v1, v2

    .line 2458
    .restart local v1       #bottomViewIndex:I
    move-object v6, p1

    .line 2459
    .restart local v6       #topView:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0       #bottomView:Landroid/view/View;
    goto :goto_23

    .line 2466
    .restart local v3       #numChildren:I
    :cond_4a
    const/4 v8, 0x0

    goto :goto_2e

    .line 2472
    :cond_4c
    const/4 v8, 0x0

    goto :goto_3b
.end method

.method private isDirectChildHeaderOrFooter(Landroid/view/View;)Z
    .registers 9
    .parameter "child"

    .prologue
    const/4 v6, 0x1

    .line 1723
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 1724
    .local v1, headers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1725
    .local v4, numHeaders:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v4, :cond_19

    .line 1726
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, v5, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_16

    move v5, v6

    .line 1737
    .end local p0
    :goto_15
    return v5

    .line 1725
    .restart local p0
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1730
    :cond_19
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 1731
    .local v0, footers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1732
    .local v3, numFooters:I
    const/4 v2, 0x0

    .end local p0
    :goto_20
    if-ge v2, v3, :cond_31

    .line 1733
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v5, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne p1, v5, :cond_2e

    move v5, v6

    .line 1734
    goto :goto_15

    .line 1732
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 1737
    :cond_31
    const/4 v5, 0x0

    goto :goto_15
.end method

.method private isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 2828
    if-ne p1, p2, :cond_5

    move v1, v2

    .line 2833
    :goto_4
    return v1

    .line 2832
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2833
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_4

    :cond_17
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private logActivity()V
    .registers 2

    .prologue
    .line 4067
    const/4 v0, 0x0

    invoke-direct {p0, p0, v0}, Landroid/widget/ListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    .line 4068
    return-void
.end method

.method private logActivity(Landroid/view/View;Landroid/view/View;)V
    .registers 14
    .parameter "root"
    .parameter "rootParent"

    .prologue
    const-string v10, "CHECKED"

    const-string v9, "<GATE-M>"

    const-string v8, " "

    const-string v7, "GATE"

    const-string v6, "</GATE-M>"

    .line 3999
    const-string/jumbo v4, "service.gate.enabled"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 4064
    :cond_19
    :goto_19
    return-void

    .line 4005
    :cond_1a
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_33

    .line 4006
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v0

    .line 4007
    .local v3, vg:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4008
    .local v1, cnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_27
    if-ge v2, v1, :cond_33

    .line 4009
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Landroid/widget/ListView;->logActivity(Landroid/view/View;Landroid/view/View;)V

    .line 4008
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 4013
    .end local v1           #cnt:I
    .end local v2           #i:I
    .end local v3           #vg:Landroid/view/ViewGroup;
    :cond_33
    instance-of v4, p1, Landroid/widget/CheckBox;

    if-eqz v4, :cond_74

    .line 4016
    const-string v4, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f3

    const-string v4, "CHECKED"

    move-object v4, v10

    :goto_63
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</GATE-M>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4020
    :cond_74
    instance-of v4, p1, Landroid/widget/RadioButton;

    if-eqz v4, :cond_b5

    .line 4023
    const-string v4, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Landroid/widget/RadioButton;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f7

    const-string v4, "CHECKED"

    move-object v4, v10

    :goto_a4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</GATE-M>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    :cond_b5
    if-eqz p2, :cond_e1

    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_e1

    .line 4030
    const-string v4, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>MENUTEXT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</GATE-M>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    :cond_e1
    instance-of v4, p1, Landroid/widget/AbsListView;

    if-eqz v4, :cond_19

    .line 4035
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Landroid/widget/ListView$1;

    invoke-direct {v5, p0, p1}, Landroid/widget/ListView$1;-><init>(Landroid/widget/ListView;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_19

    .line 4016
    :cond_f3
    const-string v4, "UNCHECKED"

    goto/16 :goto_63

    .line 4023
    :cond_f7
    const-string v4, "UNCHECKED"

    goto :goto_a4
.end method

.method private lookForSelectablePositionOnScreen(I)I
    .registers 11
    .parameter "direction"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 2691
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2692
    .local v1, firstPosition:I
    const/16 v6, 0x82

    if-ne p1, v6, :cond_42

    .line 2693
    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v6, v7, :cond_1b

    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    add-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 2696
    .local v5, startPos:I
    :goto_11
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lt v5, v6, :cond_1d

    move v6, v7

    .line 2731
    :goto_1a
    return v6

    .end local v5           #startPos:I
    :cond_1b
    move v5, v1

    .line 2693
    goto :goto_11

    .line 2699
    .restart local v5       #startPos:I
    :cond_1d
    if-ge v5, v1, :cond_20

    .line 2700
    move v5, v1

    .line 2703
    :cond_20
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 2704
    .local v3, lastVisiblePos:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2705
    .local v0, adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .local v4, pos:I
    :goto_29
    if-gt v4, v3, :cond_7e

    .line 2706
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3f

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3f

    move v6, v4

    .line 2708
    goto :goto_1a

    .line 2705
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 2712
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v3           #lastVisiblePos:I
    .end local v4           #pos:I
    .end local v5           #startPos:I
    :cond_42
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int v2, v6, v8

    .line 2713
    .local v2, last:I
    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v6, v7, :cond_55

    iget v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    sub-int/2addr v6, v8

    move v5, v6

    .line 2716
    .restart local v5       #startPos:I
    :goto_51
    if-gez v5, :cond_5d

    move v6, v7

    .line 2717
    goto :goto_1a

    .line 2713
    .end local v5           #startPos:I
    :cond_55
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    add-int/2addr v6, v1

    sub-int/2addr v6, v8

    move v5, v6

    goto :goto_51

    .line 2719
    .restart local v5       #startPos:I
    :cond_5d
    if-le v5, v2, :cond_60

    .line 2720
    move v5, v2

    .line 2723
    :cond_60
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2724
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    move v4, v5

    .restart local v4       #pos:I
    :goto_65
    if-lt v4, v1, :cond_7e

    .line 2725
    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_7b

    sub-int v6, v4, v1

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7b

    move v6, v4

    .line 2727
    goto :goto_1a

    .line 2724
    :cond_7b
    add-int/lit8 v4, v4, -0x1

    goto :goto_65

    .end local v2           #last:I
    :cond_7e
    move v6, v7

    .line 2731
    goto :goto_1a
.end method

.method private makeAndAddView(IIZIZ)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "y"
    .parameter "flow"
    .parameter "childrenLeft"
    .parameter "selected"

    .prologue
    .line 1758
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v0, :cond_18

    .line 1760
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1761
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_18

    .line 1769
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1781
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_17
    return-object v8

    .line 1776
    .end local v8           #child:Landroid/view/View;
    :cond_18
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1779
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

    invoke-direct/range {v0 .. v7}, Landroid/widget/ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1781
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_17
.end method

.method private measureAndAdjustDown(Landroid/view/View;II)V
    .registers 8
    .parameter "child"
    .parameter "childIndex"
    .parameter "numChildren"

    .prologue
    .line 2485
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 2486
    .local v2, oldHeight:I
    invoke-direct {p0, p1}, Landroid/widget/ListView;->measureItem(Landroid/view/View;)V

    .line 2487
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-eq v3, v2, :cond_24

    .line 2489
    invoke-direct {p0, p1}, Landroid/widget/ListView;->relayoutMeasuredItem(Landroid/view/View;)V

    .line 2492
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v0, v3, v2

    .line 2493
    .local v0, heightDelta:I
    add-int/lit8 v1, p2, 0x1

    .local v1, i:I
    :goto_18
    if-ge v1, p3, :cond_24

    .line 2494
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2493
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2497
    .end local v0           #heightDelta:I
    .end local v1           #i:I
    :cond_24
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .registers 10
    .parameter "child"

    .prologue
    const/4 v7, 0x0

    .line 2505
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2506
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_e

    .line 2507
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3           #p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2512
    .restart local v3       #p:Landroid/view/ViewGroup$LayoutParams;
    :cond_e
    iget v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2514
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2516
    .local v2, lpHeight:I
    if-lez v2, :cond_2d

    .line 2517
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2521
    .local v0, childHeightSpec:I
    :goto_29
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2522
    return-void

    .line 2519
    .end local v0           #childHeightSpec:I
    :cond_2d
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_29
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .registers 11
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 1166
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 1167
    .local v3, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_13

    .line 1168
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3           #p:Landroid/widget/AbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 1170
    .restart local v3       #p:Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1172
    :cond_13
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 1173
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1175
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1177
    .local v1, childWidthSpec:I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1179
    .local v2, lpHeight:I
    if-lez v2, :cond_3b

    .line 1180
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1184
    .local v0, childHeightSpec:I
    :goto_37
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1185
    return-void

    .line 1182
    .end local v0           #childHeightSpec:I
    :cond_3b
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_37
.end method

.method private moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .registers 27
    .parameter "oldSel"
    .parameter "newSel"
    .parameter "delta"
    .parameter "childrenTop"
    .parameter "childrenBottom"

    .prologue
    .line 935
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v12

    .line 936
    .local v12, fadingEdgeLength:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v17, v0

    .line 940
    .local v17, selectedPosition:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getTopSelectionPixel(III)I

    move-result v20

    .line 942
    .local v20, topSelectionPixel:I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move v2, v12

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->getBottomSelectionPixel(III)I

    move-result v10

    .line 945
    .local v10, bottomSelectionPixel:I
    if-lez p3, :cond_db

    .line 967
    const/4 v4, 0x1

    sub-int v5, v17, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object p1

    .line 970
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mDividerHeight:I

    move v11, v0

    .line 973
    .local v11, dividerHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int v6, v4, v11

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 977
    .local v16, sel:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    if-le v4, v10, :cond_80

    .line 980
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v18, v4, v20

    .line 983
    .local v18, spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v19, v4, v10

    .line 986
    .local v19, spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 987
    .local v13, halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 988
    .local v15, offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 991
    neg-int v4, v15

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 993
    neg-int v4, v15

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 997
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_80
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_b1

    .line 998
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 999
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1000
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1081
    .end local v11           #dividerHeight:I
    :goto_b0
    return-object v16

    .line 1002
    .restart local v11       #dividerHeight:I
    :cond_b1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 1003
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    .line 1004
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v11

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    goto :goto_b0

    .line 1006
    .end local v11           #dividerHeight:I
    .end local v16           #sel:Landroid/view/View;
    :cond_db
    if-gez p3, :cond_13b

    .line 1027
    if-eqz p2, :cond_125

    .line 1029
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1039
    .restart local v16       #sel:Landroid/view/View;
    :goto_f4
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move/from16 v1, v20

    if-ge v0, v1, :cond_11b

    .line 1041
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v18, v20, v4

    .line 1044
    .restart local v18       #spaceAbove:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v19, v10, v4

    .line 1047
    .restart local v19       #spaceBelow:I
    sub-int v4, p5, p4

    div-int/lit8 v13, v4, 0x2

    .line 1048
    .restart local v13       #halfVerticalSpace:I
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1049
    .restart local v15       #offset:I
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1052
    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1056
    .end local v13           #halfVerticalSpace:I
    .end local v15           #offset:I
    .end local v18           #spaceAbove:I
    .end local v19           #spaceBelow:I
    :cond_11b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto :goto_b0

    .line 1034
    .end local v16           #sel:Landroid/view/View;
    :cond_125
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .restart local v16       #sel:Landroid/view/View;
    goto :goto_f4

    .line 1059
    .end local v16           #sel:Landroid/view/View;
    :cond_13b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1064
    .local v6, oldTop:I
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v5, v17

    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->makeAndAddView(IIZIZ)Landroid/view/View;

    move-result-object v16

    .line 1067
    .restart local v16       #sel:Landroid/view/View;
    move v0, v6

    move/from16 v1, p4

    if-ge v0, v1, :cond_169

    .line 1070
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v14

    .line 1071
    .local v14, newBottom:I
    add-int/lit8 v4, p4, 0x14

    if-ge v14, v4, :cond_169

    .line 1073
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v4, p4, v4

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1078
    .end local v14           #newBottom:I
    :cond_169
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillAboveAndBelow(Landroid/view/View;I)V

    goto/16 :goto_b0
.end method

.method private positionOfNewFocus(Landroid/view/View;)I
    .registers 7
    .parameter "newFocus"

    .prologue
    .line 2813
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 2814
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_18

    .line 2815
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2816
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;->isViewAncestorOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2817
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    return v3

    .line 2814
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2820
    .end local v0           #child:Landroid/view/View;
    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private relayoutMeasuredItem(Landroid/view/View;)V
    .registers 9
    .parameter "child"

    .prologue
    .line 2530
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 2531
    .local v5, w:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 2532
    .local v4, h:I
    iget-object v6, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    .line 2533
    .local v1, childLeft:I
    add-int v2, v1, v5

    .line 2534
    .local v2, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2535
    .local v3, childTop:I
    add-int v0, v3, v4

    .line 2536
    .local v0, childBottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 2537
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 363
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v2, :cond_14

    .line 364
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView$FixedViewInfo;

    .line 365
    .local v1, info:Landroid/widget/ListView$FixedViewInfo;
    iget-object v3, v1, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_15

    .line 366
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 370
    .end local v1           #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_14
    return-void

    .line 363
    .restart local v1       #info:Landroid/widget/ListView$FixedViewInfo;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private scrollListItemsBy(I)V
    .registers 15
    .parameter "amount"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2896
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2898
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 2899
    .local v5, listBottom:I
    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 2900
    .local v6, listTop:I
    iget-object v8, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 2902
    .local v8, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    if-gez p1, :cond_74

    .line 2906
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    .line 2907
    .local v7, numChildren:I
    sub-int v9, v7, v11

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2908
    .local v1, last:Landroid/view/View;
    :goto_21
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_38

    .line 2909
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v7

    sub-int v3, v9, v11

    .line 2910
    .local v3, lastVisiblePosition:I
    iget v9, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v9, v11

    if-ge v3, v9, :cond_38

    .line 2911
    invoke-direct {p0, v1, v3}, Landroid/widget/ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2912
    add-int/lit8 v7, v7, 0x1

    .line 2916
    goto :goto_21

    .line 2921
    .end local v3           #lastVisiblePosition:I
    :cond_38
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_47

    .line 2922
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2926
    :cond_47
    invoke-virtual {p0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2927
    .local v0, first:Landroid/view/View;
    :goto_4b
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_cc

    .line 2928
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 2929
    .local v4, layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_70

    .line 2930
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 2931
    invoke-virtual {v8, v0}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2935
    :goto_65
    invoke-virtual {p0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2936
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_4b

    .line 2933
    :cond_70
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_65

    .line 2940
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_74
    invoke-virtual {p0, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2943
    .restart local v0       #first:Landroid/view/View;
    :goto_78
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_8e

    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v9, :cond_8e

    .line 2944
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Landroid/widget/ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2945
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v9, v11

    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    goto :goto_78

    .line 2950
    :cond_8e
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_9d

    .line 2951
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->offsetChildrenTopAndBottom(I)V

    .line 2954
    :cond_9d
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v9

    sub-int v2, v9, v11

    .line 2955
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2958
    .restart local v1       #last:Landroid/view/View;
    :goto_a7
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_cc

    .line 2959
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 2960
    .restart local v4       #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    iget v9, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 2961
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 2962
    invoke-virtual {v8, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2966
    :goto_c1
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2967
    goto :goto_a7

    .line 2964
    :cond_c8
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_c1

    .line 2969
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Landroid/widget/AbsListView$LayoutParams;
    :cond_cc
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .registers 31
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1800
    if-eqz p6, :cond_16a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->shouldShowSelector()Z

    move-result v20

    if-eqz v20, :cond_16a

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 1801
    .local v12, isSelected:Z
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v20

    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_170

    const/16 v20, 0x1

    move/from16 v18, v20

    .line 1802
    .local v18, updateChildSelected:Z
    :goto_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v14, v0

    .line 1803
    .local v14, mode:I
    if-lez v14, :cond_176

    const/16 v20, 0x3

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_176

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p2

    if-ne v0, v1, :cond_176

    const/16 v20, 0x1

    move/from16 v11, v20

    .line 1805
    .local v11, isPressed:Z
    :goto_37
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v20

    move v0, v11

    move/from16 v1, v20

    if-eq v0, v1, :cond_17c

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 1806
    .local v17, updateChildPressed:Z
    :goto_44
    if-eqz p7, :cond_4e

    if-nez v18, :cond_4e

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v20

    if-eqz v20, :cond_182

    :cond_4e
    const/16 v20, 0x1

    move/from16 v15, v20

    .line 1810
    .local v15, needToMeasure:Z
    :goto_52
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/AbsListView$LayoutParams;

    .line 1811
    .local v16, p:Landroid/widget/AbsListView$LayoutParams;
    if-nez v16, :cond_6d

    .line 1812
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

    .line 1815
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

    .line 1817
    if-eqz p7, :cond_8b

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a1

    :cond_8b
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    move/from16 v20, v0

    if-eqz v20, :cond_18c

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18c

    .line 1819
    :cond_a1
    if-eqz p4, :cond_188

    const/16 v20, -0x1

    :goto_a5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1828
    :goto_b0
    if-eqz v18, :cond_b8

    .line 1829
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1832
    :cond_b8
    if-eqz v17, :cond_c0

    .line 1833
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1836
    :cond_c0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mChoiceMode:I

    move/from16 v20, v0

    if-eqz v20, :cond_f3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f3

    .line 1837
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v20, v0

    if-eqz v20, :cond_f3

    .line 1838
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 p6, v0

    .end local p6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v20

    move-object/from16 v0, p6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1842
    :cond_f3
    if-eqz v15, :cond_1cc

    .line 1843
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 1845
    .local v9, childWidthSpec:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v13, v0

    .line 1847
    .local v13, lpHeight:I
    if-lez v13, :cond_1c2

    .line 1848
    const/high16 v20, 0x4000

    move v0, v13

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1852
    .local v6, childHeightSpec:I
    :goto_12f
    move-object/from16 v0, p1

    move v1, v9

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1857
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #lpHeight:I
    :goto_136
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1858
    .local v19, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1859
    .local v10, h:I
    if-eqz p4, :cond_1d1

    move/from16 v8, p3

    .line 1861
    .local v8, childTop:I
    :goto_142
    if-eqz v15, :cond_1d7

    .line 1862
    add-int v7, p5, v19

    .line 1863
    .local v7, childRight:I
    add-int v5, v8, v10

    .line 1864
    .local v5, childBottom:I
    move-object/from16 v0, p1

    move/from16 v1, p5

    move v2, v8

    move v3, v7

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1870
    .end local v5           #childBottom:I
    .end local v7           #childRight:I
    :goto_152
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mCachingStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_169

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v20

    if-nez v20, :cond_169

    .line 1871
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1873
    :cond_169
    return-void

    .line 1800
    .end local v8           #childTop:I
    .end local v10           #h:I
    .end local v11           #isPressed:Z
    .end local v12           #isSelected:Z
    .end local v14           #mode:I
    .end local v15           #needToMeasure:Z
    .end local v16           #p:Landroid/widget/AbsListView$LayoutParams;
    .end local v17           #updateChildPressed:Z
    .end local v18           #updateChildSelected:Z
    .end local v19           #w:I
    .restart local p6
    :cond_16a
    const/16 v20, 0x0

    move/from16 v12, v20

    goto/16 :goto_c

    .line 1801
    .restart local v12       #isSelected:Z
    :cond_170
    const/16 v20, 0x0

    move/from16 v18, v20

    goto/16 :goto_19

    .line 1803
    .restart local v14       #mode:I
    .restart local v18       #updateChildSelected:Z
    :cond_176
    const/16 v20, 0x0

    move/from16 v11, v20

    goto/16 :goto_37

    .line 1805
    .restart local v11       #isPressed:Z
    :cond_17c
    const/16 v20, 0x0

    move/from16 v17, v20

    goto/16 :goto_44

    .line 1806
    .restart local v17       #updateChildPressed:Z
    :cond_182
    const/16 v20, 0x0

    move/from16 v15, v20

    goto/16 :goto_52

    .line 1819
    .restart local v15       #needToMeasure:Z
    .restart local v16       #p:Landroid/widget/AbsListView$LayoutParams;
    :cond_188
    const/16 v20, 0x0

    goto/16 :goto_a5

    .line 1821
    :cond_18c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 1822
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    move/from16 v20, v0

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1aa

    .line 1823
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1825
    :cond_1aa
    if-eqz p4, :cond_1bf

    const/16 v20, -0x1

    :goto_1ae
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v16

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_b0

    :cond_1bf
    const/16 v20, 0x0

    goto :goto_1ae

    .line 1850
    .end local p6
    .restart local v9       #childWidthSpec:I
    .restart local v13       #lpHeight:I
    :cond_1c2
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .restart local v6       #childHeightSpec:I
    goto/16 :goto_12f

    .line 1854
    .end local v6           #childHeightSpec:I
    .end local v9           #childWidthSpec:I
    .end local v13           #lpHeight:I
    :cond_1cc
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_136

    .line 1859
    .restart local v10       #h:I
    .restart local v19       #w:I
    :cond_1d1
    sub-int v20, p3, v10

    move/from16 v8, v20

    goto/16 :goto_142

    .line 1866
    .restart local v8       #childTop:I
    :cond_1d7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    sub-int v20, p5, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1867
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v20, v8, v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_152
.end method

.method private showingBottomFadingEdge()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 573
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 574
    .local v1, childCount:I
    sub-int v4, v1, v6

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 575
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v1

    sub-int v2, v4, v6

    .line 577
    .local v2, lastVisiblePosition:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 579
    .local v3, listBottom:I
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v4, v6

    if-lt v2, v4, :cond_28

    if-ge v0, v3, :cond_2a

    :cond_28
    move v4, v6

    :goto_29
    return v4

    :cond_2a
    const/4 v4, 0x0

    goto :goto_29
.end method

.method private showingTopFadingEdge()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 565
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v0, v1, v2

    .line 566
    .local v0, listTop:I
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v1, :cond_17

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-le v1, v0, :cond_19

    :cond_17
    const/4 v1, 0x1

    :goto_18
    return v1

    :cond_19
    move v1, v3

    goto :goto_18
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 410
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 411
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 6
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 386
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 387
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 388
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 389
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 390
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v1, :cond_19

    .line 395
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 397
    :cond_19
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 333
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 334
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 7
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 309
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_c

    .line 310
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    :cond_c
    new-instance v0, Landroid/widget/ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Landroid/widget/ListView$FixedViewInfo;-><init>(Landroid/widget/ListView;)V

    .line 315
    .local v0, info:Landroid/widget/ListView$FixedViewInfo;
    iput-object p1, v0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 316
    iput-object p2, v0, Landroid/widget/ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 317
    iput-boolean p3, v0, Landroid/widget/ListView$FixedViewInfo;->isSelectable:Z

    .line 318
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method arrowScroll(I)Z
    .registers 5
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    .line 2320
    invoke-direct {p0}, Landroid/widget/ListView;->logActivity()V

    .line 2323
    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2324
    invoke-direct {p0, p1}, Landroid/widget/ListView;->arrowScrollImpl(I)Z

    move-result v0

    .line 2325
    .local v0, handled:Z
    if-eqz v0, :cond_14

    .line 2326
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->playSoundEffect(I)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_17

    .line 2330
    :cond_14
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2328
    return v0

    .line 2330
    .end local v0           #handled:Z
    :catchall_17
    move-exception v1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    throw v1
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 1877
    invoke-super {p0}, Landroid/widget/AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public clearChoices()V
    .registers 2

    .prologue
    .line 3911
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_9

    .line 3912
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3914
    :cond_9
    iget-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_12

    .line 3915
    iget-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 3917
    :cond_12
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 36
    .parameter "canvas"

    .prologue
    .line 3072
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v32, v0

    const/16 v33, 0x0

    cmpl-float v32, v32, v33

    if-eqz v32, :cond_1e

    .line 3073
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDrawWithBounce(Landroid/graphics/Canvas;)V

    .line 3216
    :goto_1d
    return-void

    .line 3078
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mDividerHeight:I

    move v11, v0

    .line 3079
    .local v11, dividerHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    .line 3080
    .local v27, overscrollHeader:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 3081
    .local v26, overscrollFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v27, :cond_1bf

    const/16 v32, 0x1

    move/from16 v14, v32

    .line 3082
    .local v14, drawOverscrollHeader:Z
    :goto_35
    if-eqz v26, :cond_1c5

    const/16 v32, 0x1

    move/from16 v13, v32

    .line 3083
    .local v13, drawOverscrollFooter:Z
    :goto_3b
    if-lez v11, :cond_1cb

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1cb

    const/16 v32, 0x1

    move/from16 v12, v32

    .line 3085
    .local v12, drawDividers:Z
    :goto_49
    if-nez v12, :cond_4f

    if-nez v14, :cond_4f

    if-eqz v13, :cond_239

    .line 3087
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 3088
    .local v8, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3089
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3091
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 3092
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3093
    .local v19, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v22, v0

    .line 3094
    .local v22, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    sub-int v32, v22, v32

    const/16 v33, 0x1

    sub-int v18, v32, v33

    .line 3095
    .local v18, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    .line 3096
    .local v20, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    .line 3097
    .local v17, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3098
    .local v16, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    move v6, v0

    .line 3099
    .local v6, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 3104
    .local v5, adapter:Landroid/widget/ListAdapter;
    if-eqz v12, :cond_1d1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isOpaque()Z

    move-result v32

    if-eqz v32, :cond_1d1

    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v32

    if-nez v32, :cond_1d1

    const/16 v32, 0x1

    move/from16 v15, v32

    .line 3106
    .local v15, fillForMissingDividers:Z
    :goto_cc
    if-eqz v15, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    if-nez v32, :cond_f6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f6

    .line 3107
    new-instance v32, Landroid/graphics/Paint;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCacheColorHint()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/Paint;->setColor(I)V

    .line 3110
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 3112
    .local v28, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v33, v0

    add-int v23, v32, v33

    .line 3113
    .local v23, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v32, v0

    if-nez v32, :cond_23e

    .line 3114
    const/4 v7, 0x0

    .line 3117
    .local v7, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v29, v0

    .line 3118
    .local v29, scrollY:I
    if-lez v10, :cond_14b

    if-gez v29, :cond_14b

    .line 3119
    if-eqz v14, :cond_1d7

    .line 3120
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3121
    move/from16 v0, v29

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3130
    :cond_14b
    :goto_14b
    const/16 v21, 0x0

    .local v21, i:I
    :goto_14d
    move/from16 v0, v21

    move v1, v10

    if-ge v0, v1, :cond_20b

    .line 3131
    if-nez v20, :cond_15c

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v19

    if-lt v0, v1, :cond_1bc

    :cond_15c
    if-nez v17, :cond_166

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v18

    if-ge v0, v1, :cond_1bc

    .line 3133
    :cond_166
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3134
    .local v9, child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 3136
    if-eqz v12, :cond_1bc

    move v0, v7

    move/from16 v1, v23

    if-ge v0, v1, :cond_1bc

    if-eqz v13, :cond_185

    const/16 v32, 0x1

    sub-int v32, v10, v32

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_1bc

    .line 3138
    :cond_185
    if-nez v6, :cond_1a9

    add-int v32, v16, v21

    move-object v0, v5

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_1f7

    const/16 v32, 0x1

    sub-int v32, v10, v32

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_1a9

    add-int v32, v16, v21

    add-int/lit8 v32, v32, 0x1

    move-object v0, v5

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_1f7

    .line 3141
    :cond_1a9
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3142
    add-int v32, v7, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3143
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3130
    .end local v9           #child:Landroid/view/View;
    :cond_1bc
    :goto_1bc
    add-int/lit8 v21, v21, 0x1

    goto :goto_14d

    .line 3081
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v7           #bottom:I
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v10           #count:I
    .end local v12           #drawDividers:Z
    .end local v13           #drawOverscrollFooter:Z
    .end local v14           #drawOverscrollHeader:Z
    .end local v15           #fillForMissingDividers:Z
    .end local v16           #first:I
    .end local v17           #footerDividers:Z
    .end local v18           #footerLimit:I
    .end local v19           #headerCount:I
    .end local v20           #headerDividers:Z
    .end local v21           #i:I
    .end local v22           #itemCount:I
    .end local v23           #listBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_1bf
    const/16 v32, 0x0

    move/from16 v14, v32

    goto/16 :goto_35

    .line 3082
    .restart local v14       #drawOverscrollHeader:Z
    :cond_1c5
    const/16 v32, 0x0

    move/from16 v13, v32

    goto/16 :goto_3b

    .line 3083
    .restart local v13       #drawOverscrollFooter:Z
    :cond_1cb
    const/16 v32, 0x0

    move/from16 v12, v32

    goto/16 :goto_49

    .line 3104
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v6       #areAllItemsSelectable:Z
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v10       #count:I
    .restart local v12       #drawDividers:Z
    .restart local v16       #first:I
    .restart local v17       #footerDividers:Z
    .restart local v18       #footerLimit:I
    .restart local v19       #headerCount:I
    .restart local v20       #headerDividers:Z
    .restart local v22       #itemCount:I
    :cond_1d1
    const/16 v32, 0x0

    move/from16 v15, v32

    goto/16 :goto_cc

    .line 3123
    .restart local v7       #bottom:I
    .restart local v15       #fillForMissingDividers:Z
    .restart local v23       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    .restart local v29       #scrollY:I
    :cond_1d7
    if-eqz v12, :cond_14b

    .line 3124
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3125
    move v0, v11

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3126
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_14b

    .line 3144
    .restart local v9       #child:Landroid/view/View;
    .restart local v21       #i:I
    :cond_1f7
    if-eqz v15, :cond_1bc

    .line 3145
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3146
    add-int v32, v7, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3147
    move-object/from16 v0, p1

    move-object v1, v8

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1bc

    .line 3153
    .end local v9           #child:Landroid/view/View;
    :cond_20b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v33, v0

    add-int v25, v32, v33

    .line 3154
    .local v25, overFooterBottom:I
    if-eqz v13, :cond_239

    add-int v32, v16, v10

    move/from16 v0, v32

    move/from16 v1, v22

    if-ne v0, v1, :cond_239

    move/from16 v0, v25

    move v1, v7

    if-le v0, v1, :cond_239

    .line 3156
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3157
    move/from16 v0, v25

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3158
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3215
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v7           #bottom:I
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v10           #count:I
    .end local v15           #fillForMissingDividers:Z
    .end local v16           #first:I
    .end local v17           #footerDividers:Z
    .end local v18           #footerLimit:I
    .end local v19           #headerCount:I
    .end local v20           #headerDividers:Z
    .end local v21           #i:I
    .end local v22           #itemCount:I
    .end local v23           #listBottom:I
    .end local v25           #overFooterBottom:I
    .end local v28           #paint:Landroid/graphics/Paint;
    .end local v29           #scrollY:I
    :cond_239
    :goto_239
    invoke-super/range {p0 .. p1}, Landroid/widget/AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1d

    .line 3162
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v6       #areAllItemsSelectable:Z
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v10       #count:I
    .restart local v15       #fillForMissingDividers:Z
    .restart local v16       #first:I
    .restart local v17       #footerDividers:Z
    .restart local v18       #footerLimit:I
    .restart local v19       #headerCount:I
    .restart local v20       #headerDividers:Z
    .restart local v22       #itemCount:I
    .restart local v23       #listBottom:I
    .restart local v28       #paint:Landroid/graphics/Paint;
    :cond_23e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 3164
    .local v24, listTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v29, v0

    .line 3166
    .restart local v29       #scrollY:I
    if-lez v10, :cond_276

    if-eqz v14, :cond_276

    .line 3167
    move/from16 v0, v29

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3168
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v32

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3169
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3172
    :cond_276
    if-eqz v14, :cond_2ec

    const/16 v32, 0x1

    move/from16 v30, v32

    .line 3173
    .local v30, start:I
    :goto_27c
    move/from16 v21, v30

    .restart local v21       #i:I
    :goto_27e
    move/from16 v0, v21

    move v1, v10

    if-ge v0, v1, :cond_308

    .line 3174
    if-nez v20, :cond_28d

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v19

    if-lt v0, v1, :cond_2e9

    :cond_28d
    if-nez v17, :cond_297

    add-int v32, v16, v21

    move/from16 v0, v32

    move/from16 v1, v18

    if-ge v0, v1, :cond_2e9

    .line 3176
    :cond_297
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3177
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v31

    .line 3179
    .local v31, top:I
    if-eqz v12, :cond_2e9

    move/from16 v0, v31

    move/from16 v1, v24

    if-le v0, v1, :cond_2e9

    .line 3180
    if-nez v6, :cond_2cf

    add-int v32, v16, v21

    move-object v0, v5

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_2f1

    const/16 v32, 0x1

    sub-int v32, v10, v32

    move/from16 v0, v21

    move/from16 v1, v32

    if-eq v0, v1, :cond_2cf

    add-int v32, v16, v21

    add-int/lit8 v32, v32, 0x1

    move-object v0, v5

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v32

    if-eqz v32, :cond_2f1

    .line 3183
    :cond_2cf
    sub-int v32, v31, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3184
    move/from16 v0, v31

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3189
    const/16 v32, 0x1

    sub-int v32, v21, v32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3173
    .end local v9           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_2e9
    :goto_2e9
    add-int/lit8 v21, v21, 0x1

    goto :goto_27e

    .line 3172
    .end local v21           #i:I
    .end local v30           #start:I
    :cond_2ec
    const/16 v32, 0x0

    move/from16 v30, v32

    goto :goto_27c

    .line 3190
    .restart local v9       #child:Landroid/view/View;
    .restart local v21       #i:I
    .restart local v30       #start:I
    .restart local v31       #top:I
    :cond_2f1
    if-eqz v15, :cond_2e9

    .line 3191
    sub-int v32, v31, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3192
    move/from16 v0, v31

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3193
    move-object/from16 v0, p1

    move-object v1, v8

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2e9

    .line 3199
    .end local v9           #child:Landroid/view/View;
    .end local v31           #top:I
    :cond_308
    if-lez v10, :cond_239

    if-lez v29, :cond_239

    .line 3200
    if-eqz v13, :cond_328

    .line 3201
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v4, v0

    .line 3202
    .local v4, absListBottom:I
    iput v4, v8, Landroid/graphics/Rect;->top:I

    .line 3203
    add-int v32, v4, v29

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3204
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_239

    .line 3205
    .end local v4           #absListBottom:I
    :cond_328
    if-eqz v12, :cond_239

    .line 3206
    move/from16 v0, v23

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3207
    add-int v32, v23, v11

    move/from16 v0, v32

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3208
    const/16 v32, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_239
.end method

.method protected dispatchDrawWithBounce(Landroid/graphics/Canvas;)V
    .registers 32
    .parameter "canvas"

    .prologue
    .line 3222
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x22

    const/16 v29, 0x22

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_140

    const/16 v28, 0x1

    move/from16 v11, v28

    .line 3223
    .local v11, clipToPadding:Z
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$TwBounceController;->bounce(Landroid/graphics/Canvas;Z)I

    move-result v26

    .line 3225
    .local v26, saveCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v21, v0

    .line 3226
    .local v21, height:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    .line 3229
    .local v10, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListView;->mDividerHeight:I

    move v13, v0

    .line 3231
    .local v13, dividerHeight:I
    if-lez v13, :cond_1c8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1c8

    .line 3233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 3234
    .local v8, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3235
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3237
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    .line 3238
    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3239
    .local v19, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    sub-int v28, v28, v29

    const/16 v29, 0x1

    sub-int v18, v28, v29

    .line 3240
    .local v18, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    move/from16 v20, v0

    .line 3241
    .local v20, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    move/from16 v17, v0

    .line 3242
    .local v17, footerDividers:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3243
    .local v16, first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    move v6, v0

    .line 3244
    .local v6, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 3246
    .local v5, adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v28, v0

    if-nez v28, :cond_146

    .line 3248
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v24, v28, v29

    .line 3250
    .local v24, listBottom:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_d0
    move/from16 v0, v22

    move v1, v12

    if-ge v0, v1, :cond_1c8

    .line 3251
    if-nez v20, :cond_df

    add-int v28, v16, v22

    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_13d

    :cond_df
    if-nez v17, :cond_e9

    add-int v28, v16, v22

    move/from16 v0, v28

    move/from16 v1, v18

    if-ge v0, v1, :cond_13d

    .line 3253
    :cond_e9
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3254
    .local v9, child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 3256
    .local v7, bottom:I
    move v0, v7

    move/from16 v1, v24

    if-ge v0, v1, :cond_13d

    if-nez v6, :cond_12a

    add-int v28, v16, v22

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_13d

    add-int v28, v16, v22

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_13d

    const/16 v28, 0x1

    sub-int v28, v12, v28

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_12a

    add-int v28, v16, v22

    add-int/lit8 v28, v28, 0x1

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_13d

    .line 3260
    :cond_12a
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 3261
    add-int v28, v7, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3262
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3250
    .end local v7           #bottom:I
    .end local v9           #child:Landroid/view/View;
    :cond_13d
    add-int/lit8 v22, v22, 0x1

    goto :goto_d0

    .line 3222
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v10           #childCount:I
    .end local v11           #clipToPadding:Z
    .end local v12           #count:I
    .end local v13           #dividerHeight:I
    .end local v16           #first:I
    .end local v17           #footerDividers:Z
    .end local v18           #footerLimit:I
    .end local v19           #headerCount:I
    .end local v20           #headerDividers:Z
    .end local v21           #height:F
    .end local v22           #i:I
    .end local v24           #listBottom:I
    .end local v26           #saveCount:I
    :cond_140
    const/16 v28, 0x0

    move/from16 v11, v28

    goto/16 :goto_14

    .line 3268
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v6       #areAllItemsSelectable:Z
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v10       #childCount:I
    .restart local v11       #clipToPadding:Z
    .restart local v12       #count:I
    .restart local v13       #dividerHeight:I
    .restart local v16       #first:I
    .restart local v17       #footerDividers:Z
    .restart local v18       #footerLimit:I
    .restart local v19       #headerCount:I
    .restart local v20       #headerDividers:Z
    .restart local v21       #height:F
    .restart local v26       #saveCount:I
    :cond_146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    .line 3270
    .local v25, listTop:I
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_154
    move/from16 v0, v22

    move v1, v12

    if-ge v0, v1, :cond_1c8

    .line 3271
    if-nez v20, :cond_163

    add-int v28, v16, v22

    move/from16 v0, v28

    move/from16 v1, v19

    if-lt v0, v1, :cond_1c5

    :cond_163
    if-nez v17, :cond_16d

    add-int v28, v16, v22

    move/from16 v0, v28

    move/from16 v1, v18

    if-ge v0, v1, :cond_1c5

    .line 3273
    :cond_16d
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3274
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v27

    .line 3276
    .local v27, top:I
    move/from16 v0, v27

    move/from16 v1, v25

    if-le v0, v1, :cond_1c5

    if-nez v6, :cond_1ab

    add-int v28, v16, v22

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1c5

    add-int v28, v16, v22

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_1c5

    add-int v28, v16, v22

    if-eqz v28, :cond_1ab

    add-int v28, v16, v22

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_1c5

    .line 3282
    :cond_1ab
    sub-int v28, v27, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3283
    move/from16 v0, v27

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3288
    const/16 v28, 0x1

    sub-int v28, v22, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3270
    .end local v9           #child:Landroid/view/View;
    .end local v27           #top:I
    :cond_1c5
    add-int/lit8 v22, v22, 0x1

    goto :goto_154

    .line 3296
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v6           #areAllItemsSelectable:Z
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v12           #count:I
    .end local v16           #first:I
    .end local v17           #footerDividers:Z
    .end local v18           #footerLimit:I
    .end local v19           #headerCount:I
    .end local v20           #headerDividers:Z
    .end local v22           #i:I
    .end local v25           #listTop:I
    :cond_1c8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getDrawingTime()J

    move-result-wide v14

    .line 3298
    .local v14, drawingTime:J
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_1ce
    move/from16 v0, v22

    move v1, v10

    if-ge v0, v1, :cond_1ed

    .line 3299
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3300
    .restart local v9       #child:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v28

    if-nez v28, :cond_1ea

    .line 3301
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 3298
    :cond_1ea
    add-int/lit8 v22, v22, 0x1

    goto :goto_1ce

    .line 3305
    .end local v9           #child:Landroid/view/View;
    :cond_1ed
    if-lez v13, :cond_2cd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2cd

    .line 3307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 3308
    .restart local v8       #bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3309
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3311
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    .line 3312
    .restart local v12       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v5, v0

    .line 3313
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v16, v0

    .line 3315
    .restart local v16       #first:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v28, v0

    if-nez v28, :cond_2e7

    .line 3318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_27b

    if-lez v12, :cond_27b

    const/16 v28, 0x0

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_27b

    .line 3319
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v28

    sub-int v28, v28, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3320
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3321
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3324
    :cond_27b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_2cd

    if-lez v12, :cond_2cd

    add-int v28, v16, v12

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_2cd

    .line 3326
    const/16 v28, 0x1

    sub-int v28, v12, v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBottom()I

    move-result v23

    .line 3328
    .local v23, itemBottom:I
    move/from16 v0, v23

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3329
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3330
    const/16 v28, 0x1

    sub-int v28, v12, v28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3352
    .end local v5           #adapter:Landroid/widget/ListAdapter;
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v12           #count:I
    .end local v16           #first:I
    .end local v23           #itemBottom:I
    :cond_2cd
    :goto_2cd
    if-ltz v26, :cond_2e6

    .line 3353
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3354
    if-eqz v11, :cond_2e6

    .line 3355
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x22

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3357
    :cond_2e6
    return-void

    .line 3335
    .restart local v5       #adapter:Landroid/widget/ListAdapter;
    .restart local v8       #bounds:Landroid/graphics/Rect;
    .restart local v12       #count:I
    .restart local v16       #first:I
    :cond_2e7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_337

    if-lez v12, :cond_337

    const/16 v28, 0x0

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_337

    .line 3336
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTop()I

    move-result v28

    const/16 v29, 0x1

    sub-int v28, v28, v29

    sub-int v28, v28, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3337
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3338
    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3341
    :cond_337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_2cd

    if-lez v12, :cond_2cd

    add-int v28, v16, v12

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move-object v0, v5

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_2cd

    .line 3343
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v24, v28, v29

    .line 3345
    .restart local v24       #listBottom:I
    move/from16 v0, v24

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3346
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    move/from16 v0, v28

    move-object v1, v8

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3347
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_2cd
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 2052
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2053
    .local v1, handled:Z
    if-nez v1, :cond_1a

    .line 2055
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2056
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    .line 2059
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2062
    .end local v0           #focused:Landroid/view/View;
    :cond_1a
    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    .line 1998
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    .line 2002
    .local v5, populated:Z
    if-nez v5, :cond_33

    .line 2003
    const/4 v4, 0x0

    .line 2004
    .local v4, itemCount:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v2

    .line 2006
    .local v2, currentItemIndex:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2007
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_2d

    .line 2008
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 2009
    .local v1, count:I
    const/16 v6, 0xf

    if-ge v1, v6, :cond_2c

    .line 2010
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    if-ge v3, v1, :cond_2d

    .line 2011
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 2012
    add-int/lit8 v4, v4, 0x1

    .line 2010
    :cond_24
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 2013
    :cond_27
    if-gt v3, v2, :cond_24

    .line 2014
    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    .line 2018
    .end local v3           #i:I
    :cond_2c
    move v4, v1

    .line 2022
    .end local v1           #count:I
    :cond_2d
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2023
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2026
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #currentItemIndex:I
    .end local v4           #itemCount:I
    :cond_33
    return v5
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 6
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 3370
    iget-object v1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3371
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Landroid/widget/ListView;->mClipDivider:Z

    .line 3373
    .local v0, clipDivider:Z
    if-nez v0, :cond_12

    .line 3374
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3380
    :goto_9
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3382
    if-eqz v0, :cond_11

    .line 3383
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3385
    :cond_11
    return-void

    .line 3376
    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3377
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_9
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 8
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3050
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3052
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3053
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3055
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3056
    .local v1, span:I
    if-ge v1, v0, :cond_17

    .line 3057
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 3060
    :cond_17
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3061
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3063
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3064
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 8
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 3033
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 3035
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3036
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3038
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 3039
    .local v1, span:I
    if-ge v1, v0, :cond_17

    .line 3040
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 3043
    :cond_17
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3044
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3046
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3047
    return-void
.end method

.method fillGap(Z)V
    .registers 7
    .parameter "down"

    .prologue
    const/4 v4, 0x1

    .line 668
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 669
    .local v0, count:I
    if-eqz p1, :cond_2b

    .line 670
    if-lez v0, :cond_25

    sub-int v2, v0, v4

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    move v1, v2

    .line 672
    .local v1, startOffset:I
    :goto_17
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2, v1}, Landroid/widget/ListView;->fillDown(II)Landroid/view/View;

    .line 673
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooHigh(I)V

    .line 680
    :goto_24
    return-void

    .line 670
    .end local v1           #startOffset:I
    :cond_25
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v2

    move v1, v2

    goto :goto_17

    .line 675
    :cond_2b
    if-lez v0, :cond_48

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v2, v3

    move v1, v2

    .line 677
    .restart local v1       #startOffset:I
    :goto_3a
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v4

    invoke-direct {p0, v2, v1}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .line 678
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/ListView;->correctTooLow(I)V

    goto :goto_24

    .line 675
    .end local v1           #startOffset:I
    :cond_48
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    move v1, v2

    goto :goto_3a
.end method

.method findMotionRow(I)I
    .registers 6
    .parameter "y"

    .prologue
    .line 1287
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1288
    .local v0, childCount:I
    if-lez v0, :cond_34

    .line 1289
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-nez v3, :cond_1e

    .line 1290
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_34

    .line 1291
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1292
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1b

    .line 1293
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 1305
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1a
    return v3

    .line 1290
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1297
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1e
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .restart local v1       #i:I
    :goto_21
    if-ltz v1, :cond_34

    .line 1298
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1299
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_31

    .line 1300
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1a

    .line 1297
    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 1305
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_34
    const/4 v3, -0x1

    goto :goto_1a
.end method

.method findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 7
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3592
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_22

    .line 3593
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3596
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_22

    .line 3597
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3599
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 3600
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3602
    if-eqz v2, :cond_1f

    move-object v3, v2

    .line 3608
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1e
    return-object v3

    .line 3596
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3608
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_22
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3638
    .local p1, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_22

    .line 3639
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3642
    .local v1, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_22

    .line 3643
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView$FixedViewInfo;

    iget-object v2, p0, Landroid/widget/ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 3645
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isRootNamespace()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 3646
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3648
    if-eqz v2, :cond_1f

    move-object v3, v2

    .line 3654
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :goto_1e
    return-object v3

    .line 3642
    .restart local v0       #i:I
    .restart local v1       #len:I
    .restart local v2       #v:Landroid/view/View;
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3654
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #v:Landroid/view/View;
    :cond_22
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 5
    .parameter "id"

    .prologue
    .line 3573
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    .line 3574
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3575
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3576
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3584
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_f
    return-object v1

    .line 3579
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_10
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewInHeadersOrFooters(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 3580
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3581
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3584
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 5
    .parameter "tag"

    .prologue
    .line 3618
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3619
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_1a

    .line 3620
    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3621
    if-eqz v0, :cond_10

    move-object v1, v0

    .line 3630
    .end local v0           #v:Landroid/view/View;
    .local v1, v:Landroid/view/View;
    :goto_f
    return-object v1

    .line 3625
    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_10
    iget-object v2, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, p1}, Landroid/widget/ListView;->findViewTagInHeadersOrFooters(Ljava/util/ArrayList;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 3626
    if-eqz v0, :cond_1a

    move-object v1, v0

    .line 3627
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f

    .end local v1           #v:Landroid/view/View;
    .restart local v0       #v:Landroid/view/View;
    :cond_1a
    move-object v1, v0

    .line 3630
    .end local v0           #v:Landroid/view/View;
    .restart local v1       #v:Landroid/view/View;
    goto :goto_f
.end method

.method fullScroll(I)Z
    .registers 7
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 2235
    const/4 v0, 0x0

    .line 2236
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_29

    .line 2237
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eqz v2, :cond_1a

    .line 2238
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2239
    .local v1, position:I
    if-ltz v1, :cond_19

    .line 2240
    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2241
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2242
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2244
    :cond_19
    const/4 v0, 0x1

    .line 2258
    .end local v1           #position:I
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_28

    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_28

    .line 2259
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 2260
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 2263
    :cond_28
    return v0

    .line 2246
    :cond_29
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1a

    .line 2247
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1a

    .line 2248
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 2249
    .restart local v1       #position:I
    if-ltz v1, :cond_46

    .line 2250
    const/4 v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2251
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2252
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2254
    :cond_46
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 3850
    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_12

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 3851
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v8

    .line 3880
    :goto_11
    return-object v8

    .line 3856
    :cond_12
    iget v8, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v8, :cond_4e

    iget-object v8, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v8, :cond_4e

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_4e

    .line 3857
    iget-object v7, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3858
    .local v7, states:Landroid/util/SparseBooleanArray;
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 3859
    .local v3, count:I
    new-array v5, v3, [J

    .line 3860
    .local v5, ids:[J
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3862
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .line 3863
    .local v1, checkedCount:I
    const/4 v4, 0x0

    .local v4, i:I
    move v2, v1

    .end local v1           #checkedCount:I
    .local v2, checkedCount:I
    :goto_2b
    if-ge v4, v3, :cond_43

    .line 3864
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 3865
    add-int/lit8 v1, v2, 0x1

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    invoke-virtual {v7, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 3863
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1           #checkedCount:I
    .restart local v2       #checkedCount:I
    goto :goto_2b

    .line 3871
    :cond_43
    if-ne v2, v3, :cond_47

    move-object v8, v5

    .line 3872
    goto :goto_11

    .line 3874
    :cond_47
    new-array v6, v2, [J

    .line 3875
    .local v6, result:[J
    invoke-static {v5, v10, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v6

    .line 3877
    goto :goto_11

    .line 3880
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #checkedCount:I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #ids:[J
    .end local v6           #result:[J
    .end local v7           #states:Landroid/util/SparseBooleanArray;
    :cond_4e
    new-array v8, v10, [J

    goto :goto_11

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #checkedCount:I
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v5       #ids:[J
    .restart local v7       #states:Landroid/util/SparseBooleanArray;
    :cond_51
    move v1, v2

    .end local v2           #checkedCount:I
    .restart local v1       #checkedCount:I
    goto :goto_3f
.end method

.method public getCheckedItemIds()[J
    .registers 7

    .prologue
    .line 3892
    iget v4, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_10

    .line 3893
    :cond_c
    const/4 v4, 0x0

    new-array v4, v4, [J

    .line 3904
    :goto_f
    return-object v4

    .line 3896
    :cond_10
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3897
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 3898
    .local v0, count:I
    new-array v3, v0, [J

    .line 3900
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v0, :cond_24

    .line 3901
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 3900
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_24
    move-object v4, v3

    .line 3904
    goto :goto_f
.end method

.method public getCheckedItemPosition()I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3815
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 3816
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 3819
    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .registers 2

    .prologue
    .line 3832
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    .line 3833
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3835
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getChoiceMode()I
    .registers 2

    .prologue
    .line 3673
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    return v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3393
    iget-object v0, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .registers 2

    .prologue
    .line 3419
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    return v0
.end method

.method public getFooterViewsCount()I
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .registers 2

    .prologue
    .line 3007
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 244
    const v0, 0x3ea8f5c3

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3495
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 3476
    iget-object v0, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isItemChecked(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 3798
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_f

    .line 3799
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 3802
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 3015
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/widget/ListView;->hasOpaqueScrollbars()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_12
    invoke-super {p0}, Landroid/widget/AbsListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected layoutChildren()V
    .registers 27

    .prologue
    .line 1464
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    move v10, v0

    .line 1465
    .local v10, blockLayoutRequests:Z
    if-nez v10, :cond_28

    .line 1466
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1472
    :try_start_d
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 1474
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v4, v0

    if-nez v4, :cond_29

    .line 1477
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1478
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_123

    .line 1711
    if-nez v10, :cond_28

    .line 1712
    :goto_22
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1715
    :cond_28
    return-void

    .line 1482
    :cond_29
    :try_start_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v4, v0

    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 1483
    .local v8, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v4, v5

    .line 1485
    .local v9, childrenBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v12

    .line 1486
    .local v12, childCount:I
    const/16 v21, 0x0

    .line 1487
    .local v21, index:I
    const/4 v7, 0x0

    .line 1490
    .local v7, delta:I
    const/4 v5, 0x0

    .line 1491
    .local v5, oldSel:Landroid/view/View;
    const/16 v22, 0x0

    .line 1492
    .local v22, oldFirst:Landroid/view/View;
    const/4 v6, 0x0

    .line 1494
    .local v6, newSel:Landroid/view/View;
    const/16 v16, 0x0

    .line 1497
    .local v16, focusLayoutRestoreView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_388

    .line 1512
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    sub-int v21, v4, v6

    .line 1513
    if-ltz v21, :cond_74

    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_74

    .line 1514
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1518
    :cond_74
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 1520
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_8f

    .line 1521
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v6, v0

    sub-int v7, v4, v6

    .line 1525
    :cond_8f
    add-int v4, v21, v7

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1529
    .restart local v6       #newSel:Landroid/view/View;
    :cond_98
    :goto_98
    :pswitch_98
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move v13, v0

    .line 1530
    .local v13, dataChanged:Z
    if-eqz v13, :cond_a2

    .line 1531
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->handleDataChanged()V

    .line 1536
    :cond_a2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v4, v0

    if-nez v4, :cond_cf

    .line 1537
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->resetList()V

    .line 1538
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1711
    if-nez v10, :cond_28

    goto/16 :goto_22

    .line 1499
    .end local v13           #dataChanged:Z
    :pswitch_b3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v11, v0

    sub-int v21, v4, v11

    .line 1500
    if-ltz v21, :cond_98

    move/from16 v0, v21

    move v1, v12

    if-ge v0, v1, :cond_98

    .line 1501
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_98

    .line 1540
    .restart local v13       #dataChanged:Z
    :cond_cf
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v11, v0

    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    if-eq v4, v11, :cond_12d

    .line 1541
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #oldSel:Landroid/view/View;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    .end local v6           #newSel:Landroid/view/View;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") with Adapter("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_123
    .catchall {:try_start_29 .. :try_end_123} :catchall_123

    .line 1711
    .end local v7           #delta:I
    .end local v8           #childrenTop:I
    .end local v9           #childrenBottom:I
    .end local v12           #childCount:I
    .end local v13           #dataChanged:Z
    .end local v16           #focusLayoutRestoreView:Landroid/view/View;
    .end local v21           #index:I
    .end local v22           #oldFirst:Landroid/view/View;
    :catchall_123
    move-exception v4

    if-nez v10, :cond_12c

    .line 1712
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 1711
    :cond_12c
    throw v4

    .line 1548
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    .restart local v7       #delta:I
    .restart local v8       #childrenTop:I
    .restart local v9       #childrenBottom:I
    .restart local v12       #childCount:I
    .restart local v13       #dataChanged:Z
    .restart local v16       #focusLayoutRestoreView:Landroid/view/View;
    .restart local v21       #index:I
    .restart local v22       #oldFirst:Landroid/view/View;
    :cond_12d
    :try_start_12d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1552
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v14, v0

    .line 1553
    .local v14, firstPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v24, v0

    .line 1556
    .local v24, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    const/4 v15, 0x0

    .line 1561
    .local v15, focusLayoutRestoreDirectChild:Landroid/view/View;
    if-eqz v13, :cond_15e

    .line 1562
    const/16 v20, 0x0

    .local v20, i:I
    :goto_148
    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_165

    .line 1563
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1562
    add-int/lit8 v20, v20, 0x1

    goto :goto_148

    .line 1570
    .end local v20           #i:I
    :cond_15e
    move-object/from16 v0, v24

    move v1, v12

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1577
    :cond_165
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v19

    .line 1578
    .local v19, focusedChild:Landroid/view/View;
    if-eqz v19, :cond_185

    .line 1583
    if-eqz v13, :cond_177

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/ListView;->isDirectChildHeaderOrFooter(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_182

    .line 1584
    :cond_177
    move-object/from16 v15, v19

    .line 1586
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->findFocus()Landroid/view/View;

    move-result-object v16

    .line 1587
    if-eqz v16, :cond_182

    .line 1589
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1592
    :cond_182
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->requestFocus()Z

    .line 1596
    :cond_185
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->detachAllViewsFromParent()V

    .line 1598
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    move v4, v0

    packed-switch v4, :pswitch_data_396

    .line 1625
    if-nez v12, :cond_2cc

    .line 1626
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move v4, v0

    if-nez v4, :cond_2a4

    .line 1627
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v23

    .line 1628
    .local v23, position:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1629
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 1650
    .end local v6           #newSel:Landroid/view/View;
    .end local v23           #position:I
    .local v25, sel:Landroid/view/View;
    :goto_1b1
    invoke-virtual/range {v24 .. v24}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1652
    if-eqz v25, :cond_343

    .line 1655
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mItemsCanFocus:Z

    move v4, v0

    if-eqz v4, :cond_33a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_33a

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_33a

    .line 1656
    move-object/from16 v0, v25

    move-object v1, v15

    if-ne v0, v1, :cond_1d4

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-nez v4, :cond_1da

    :cond_1d4
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->requestFocus()Z

    move-result v4

    if-eqz v4, :cond_324

    :cond_1da
    const/4 v4, 0x1

    move/from16 v17, v4

    .line 1658
    .local v17, focusWasTaken:Z
    :goto_1dd
    if-nez v17, :cond_329

    .line 1662
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v18

    .line 1663
    .local v18, focused:Landroid/view/View;
    if-eqz v18, :cond_1e8

    .line 1664
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->clearFocus()V

    .line 1666
    :cond_1e8
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 1674
    .end local v17           #focusWasTaken:Z
    .end local v18           #focused:Landroid/view/View;
    :goto_1ef
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1693
    :cond_1f8
    :goto_1f8
    if-eqz v16, :cond_203

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_203

    .line 1695
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1698
    :cond_203
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1699
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1700
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1701
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1703
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->updateScrollIndicators()V

    .line 1705
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v4, v0

    if-lez v4, :cond_22d

    .line 1706
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 1709
    :cond_22d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 1711
    if-nez v10, :cond_28

    goto/16 :goto_22

    .line 1600
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    .restart local v6       #newSel:Landroid/view/View;
    :pswitch_234
    if-eqz v6, :cond_245

    .line 1601
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_1b1

    .line 1603
    .end local v25           #sel:Landroid/view/View;
    :cond_245
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillFromMiddle(II)Landroid/view/View;

    move-result-object v25

    .line 1605
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_1b1

    .line 1607
    .end local v25           #sel:Landroid/view/View;
    :pswitch_24f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1608
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_1b1

    .line 1610
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_263
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    .end local v5           #oldSel:Landroid/view/View;
    move-result-object v25

    .line 1611
    .restart local v25       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_1b1

    .line 1614
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_277
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1615
    move-object/from16 v0, p0

    move v1, v8

    invoke-direct {v0, v1}, Landroid/widget/ListView;->fillFromTop(I)Landroid/view/View;

    move-result-object v25

    .line 1616
    .restart local v25       #sel:Landroid/view/View;
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->adjustViewsUpOrDown()V

    goto/16 :goto_1b1

    .line 1619
    .end local v25           #sel:Landroid/view/View;
    :pswitch_289
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->reconcileSelectedPosition()I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .line 1620
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_1b1

    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :pswitch_29c
    move-object/from16 v4, p0

    .line 1622
    invoke-direct/range {v4 .. v9}, Landroid/widget/ListView;->moveSelection(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v25

    .line 1623
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_1b1

    .line 1631
    .end local v25           #sel:Landroid/view/View;
    :cond_2a4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    .end local v5           #oldSel:Landroid/view/View;
    move-result v23

    .line 1632
    .restart local v23       #position:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 1633
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillUp(II)Landroid/view/View;

    move-result-object v25

    .line 1634
    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_1b1

    .line 1636
    .end local v23           #position:I
    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_2cc
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    if-ltz v4, :cond_2f6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v6, v0

    .end local v6           #newSel:Landroid/view/View;
    if-ge v4, v6, :cond_2f6

    .line 1637
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v4, v0

    if-nez v5, :cond_2f1

    move v5, v8

    .end local v5           #oldSel:Landroid/view/View;
    :goto_2e7
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_1b1

    .end local v25           #sel:Landroid/view/View;
    .restart local v5       #oldSel:Landroid/view/View;
    :cond_2f1
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_2e7

    .line 1639
    :cond_2f6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move v5, v0

    .end local v5           #oldSel:Landroid/view/View;
    if-ge v4, v5, :cond_319

    .line 1640
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v4, v0

    if-nez v22, :cond_314

    move v5, v8

    :goto_30a
    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_1b1

    .end local v25           #sel:Landroid/view/View;
    :cond_314
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_30a

    .line 1643
    :cond_319
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/widget/ListView;->fillSpecific(II)Landroid/view/View;

    move-result-object v25

    .restart local v25       #sel:Landroid/view/View;
    goto/16 :goto_1b1

    .line 1656
    :cond_324
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_1dd

    .line 1668
    .restart local v17       #focusWasTaken:Z
    :cond_329
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_1ef

    .line 1672
    .end local v17           #focusWasTaken:Z
    :cond_33a
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    goto/16 :goto_1ef

    .line 1676
    :cond_343
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    if-lez v4, :cond_379

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move v4, v0

    const/4 v5, 0x3

    if-ge v4, v5, :cond_379

    .line 1677
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1678
    .local v11, child:Landroid/view/View;
    if-eqz v11, :cond_36c

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 1686
    .end local v11           #child:Landroid/view/View;
    :cond_36c
    :goto_36c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1f8

    if-eqz v16, :cond_1f8

    .line 1687
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1f8

    .line 1680
    :cond_379
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_387
    .catchall {:try_start_12d .. :try_end_387} :catchall_123

    goto :goto_36c

    .line 1497
    :pswitch_data_388
    .packed-switch 0x1
        :pswitch_98
        :pswitch_b3
        :pswitch_98
        :pswitch_98
        :pswitch_98
    .end packed-switch

    .line 1598
    :pswitch_data_396
    .packed-switch 0x1
        :pswitch_277
        :pswitch_234
        :pswitch_263
        :pswitch_289
        :pswitch_24f
        :pswitch_29c
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .registers 7
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v3, -0x1

    .line 1965
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1966
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    move v2, v3

    .line 1992
    :goto_c
    return v2

    .line 1970
    :cond_d
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1971
    .local v1, count:I
    iget-boolean v2, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    if-nez v2, :cond_41

    .line 1972
    if-eqz p2, :cond_27

    .line 1973
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1974
    :goto_1c
    if-ge p1, v1, :cond_39

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_39

    .line 1975
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 1978
    :cond_27
    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1979
    :goto_2e
    if-ltz p1, :cond_39

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_39

    .line 1980
    add-int/lit8 p1, p1, -0x1

    goto :goto_2e

    .line 1984
    :cond_39
    if-ltz p1, :cond_3d

    if-lt p1, v1, :cond_3f

    :cond_3d
    move v2, v3

    .line 1985
    goto :goto_c

    :cond_3f
    move v2, p1

    .line 1987
    goto :goto_c

    .line 1989
    :cond_41
    if-ltz p1, :cond_45

    if-lt p1, v1, :cond_47

    :cond_45
    move v2, v3

    .line 1990
    goto :goto_c

    :cond_47
    move v2, p1

    .line 1992
    goto :goto_c
.end method

.method final measureHeightOfChildren(IIIII)I
    .registers 19
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 1226
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1227
    .local v2, adapter:Landroid/widget/ListAdapter;
    if-nez v2, :cond_e

    .line 1228
    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    .line 1282
    .end local p2
    :goto_d
    return v11

    .line 1232
    .restart local p2
    :cond_e
    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int v10, v11, v12

    .line 1233
    .local v10, returnedHeight:I
    iget v11, p0, Landroid/widget/ListView;->mDividerHeight:I

    if-lez v11, :cond_77

    iget-object v11, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_77

    iget v11, p0, Landroid/widget/ListView;->mDividerHeight:I

    move v4, v11

    .line 1236
    .local v4, dividerHeight:I
    :goto_23
    const/4 v7, 0x0

    .line 1241
    .local v7, prevHeightWithoutPartialChild:I
    const/4 v11, -0x1

    move/from16 v0, p3

    move v1, v11

    if-ne v0, v1, :cond_32

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    move/from16 p3, v11

    .line 1242
    :cond_32
    iget-object v8, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 1243
    .local v8, recycleBin:Landroid/widget/AbsListView$RecycleBin;
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v9

    .line 1244
    .local v9, recyle:Z
    iget-object v6, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 1246
    .local v6, isScrap:[Z
    move v5, p2

    .end local p2
    .local v5, i:I
    :goto_3b
    move v0, v5

    move/from16 v1, p3

    if-gt v0, v1, :cond_88

    .line 1247
    invoke-virtual {p0, v5, v6}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 1249
    .local v3, child:Landroid/view/View;
    invoke-direct {p0, v3, v5, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1251
    if-lez v5, :cond_4a

    .line 1253
    add-int/2addr v10, v4

    .line 1257
    :cond_4a
    if-eqz v9, :cond_5d

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/AbsListView$LayoutParams;

    iget v11, p2, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v11}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v11

    if-eqz v11, :cond_5d

    .line 1259
    invoke-virtual {v8, v3}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1262
    :cond_5d
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    .line 1264
    move v0, v10

    move/from16 v1, p4

    if-lt v0, v1, :cond_7d

    .line 1267
    if-ltz p5, :cond_7a

    move v0, v5

    move/from16 v1, p5

    if-le v0, v1, :cond_7a

    if-lez v7, :cond_7a

    move v0, v10

    move/from16 v1, p4

    if-eq v0, v1, :cond_7a

    move v11, v7

    goto :goto_d

    .line 1233
    .end local v3           #child:Landroid/view/View;
    .end local v4           #dividerHeight:I
    .end local v5           #i:I
    .end local v6           #isScrap:[Z
    .end local v7           #prevHeightWithoutPartialChild:I
    .end local v8           #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .end local v9           #recyle:Z
    .restart local p2
    :cond_77
    const/4 v11, 0x0

    move v4, v11

    goto :goto_23

    .end local p2
    .restart local v3       #child:Landroid/view/View;
    .restart local v4       #dividerHeight:I
    .restart local v5       #i:I
    .restart local v6       #isScrap:[Z
    .restart local v7       #prevHeightWithoutPartialChild:I
    .restart local v8       #recycleBin:Landroid/widget/AbsListView$RecycleBin;
    .restart local v9       #recyle:Z
    :cond_7a
    move/from16 v11, p4

    .line 1267
    goto :goto_d

    .line 1275
    :cond_7d
    if-ltz p5, :cond_85

    move v0, v5

    move/from16 v1, p5

    if-lt v0, v1, :cond_85

    .line 1276
    move v7, v10

    .line 1246
    :cond_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .end local v3           #child:Landroid/view/View;
    :cond_88
    move v11, v10

    .line 1282
    goto :goto_d
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 3555
    invoke-super {p0}, Landroid/widget/AbsListView;->onFinishInflate()V

    .line 3557
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 3558
    .local v0, count:I
    if-lez v0, :cond_19

    .line 3559
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_16

    .line 3560
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 3559
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3562
    :cond_16
    invoke-virtual {p0}, Landroid/widget/ListView;->removeAllViews()V

    .line 3564
    .end local v1           #i:I
    :cond_19
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 16
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 3500
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3502
    const/4 v2, -0x1

    .line 3503
    .local v2, closetChildIndex:I
    if-eqz p1, :cond_50

    if-eqz p3, :cond_50

    .line 3504
    iget v9, p0, Landroid/view/View;->mScrollX:I

    iget v10, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3506
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3509
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v10

    iget v11, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_24

    .line 3510
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 3511
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 3516
    :cond_24
    iget-object v8, p0, Landroid/widget/ListView;->mTempRect:Landroid/graphics/Rect;

    .line 3517
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 3518
    .local v6, minDistance:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 3519
    .local v1, childCount:I
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 3521
    .local v4, firstPosition:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_30
    if-ge v5, v1, :cond_50

    .line 3523
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_3d

    .line 3521
    :cond_3a
    :goto_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 3527
    :cond_3d
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3528
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3529
    invoke-virtual {p0, v7, v8}, Landroid/widget/ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3530
    invoke-static {p3, v8, p2}, Landroid/widget/ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 3532
    .local v3, distance:I
    if-ge v3, v6, :cond_3a

    .line 3533
    move v6, v3

    .line 3534
    move v2, v5

    goto :goto_3a

    .line 3539
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_50
    if-ltz v2, :cond_59

    .line 3540
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Landroid/widget/ListView;->setSelection(I)V

    .line 3544
    :goto_58
    return-void

    .line 3542
    :cond_59
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_58
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2067
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2072
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2077
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ListView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1120
    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    .line 1122
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 1123
    .local v10, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1124
    .local v9, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1125
    .local v11, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1127
    .local v4, heightSize:I
    const/4 v8, 0x0

    .line 1128
    .local v8, childWidth:I
    const/4 v7, 0x0

    .line 1130
    .local v7, childHeight:I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_89

    move v0, v2

    :goto_1c
    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1131
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_52

    if-eqz v10, :cond_26

    if-nez v9, :cond_52

    .line 1133
    :cond_26
    iget-object v0, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Landroid/widget/ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1135
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Landroid/widget/ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 1137
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1138
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1140
    invoke-virtual {p0}, Landroid/widget/ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1142
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1146
    .end local v6           #child:Landroid/view/View;
    :cond_52
    if-nez v10, :cond_64

    .line 1147
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v11, v0, v1

    .line 1151
    :cond_64
    if-nez v9, :cond_78

    .line 1152
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1156
    :cond_78
    const/high16 v0, -0x8000

    if-ne v9, v0, :cond_83

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 1158
    invoke-virtual/range {v0 .. v5}, Landroid/widget/ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 1161
    :cond_83
    invoke-virtual {p0, v11, v4}, Landroid/widget/ListView;->setMeasuredDimension(II)V

    .line 1162
    iput p1, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 1163
    return-void

    .line 1130
    :cond_89
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_1c
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 3981
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView$SavedState;

    move-object v1, v0

    .line 3983
    .local v1, ss:Landroid/widget/ListView$SavedState;
    invoke-virtual {v1}, Landroid/widget/ListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3985
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_13

    .line 3986
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3989
    :cond_13
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_1b

    .line 3990
    iget-object v2, v1, Landroid/widget/ListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3992
    :cond_1b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 3975
    invoke-super {p0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3976
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ListView$SavedState;

    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/ListView$SavedState;-><init>(Landroid/os/Parcelable;Landroid/util/SparseBooleanArray;Landroid/util/LongSparseArray;)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1101
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3e

    .line 1102
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 1103
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_3e

    .line 1104
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    add-int v1, v5, v6

    .line 1105
    .local v1, childPosition:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1106
    .local v0, childBottom:I
    const/4 v5, 0x0

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v6, p2, v6

    sub-int v6, v0, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1107
    .local v3, offset:I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 1108
    .local v4, top:I
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    if-nez v5, :cond_35

    .line 1109
    new-instance v5, Landroid/widget/ListView$FocusSelector;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V

    iput-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    .line 1111
    :cond_35
    iget-object v5, p0, Landroid/widget/ListView;->mFocusSelector:Landroid/widget/ListView$FocusSelector;

    invoke-virtual {v5, v1, v4}, Landroid/widget/ListView$FocusSelector;->setup(II)Landroid/widget/ListView$FocusSelector;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1114
    .end local v0           #childBottom:I
    .end local v1           #childPosition:I
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #offset:I
    .end local v4           #top:I
    :cond_3e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->onSizeChanged(IIII)V

    .line 1115
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 3659
    iget-boolean v0, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_12

    .line 3662
    const/4 v0, 0x0

    .line 3664
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasWindowFocus"

    .prologue
    .line 4072
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onWindowFocusChanged(Z)V

    .line 4074
    invoke-direct {p0}, Landroid/widget/ListView;->logActivity()V

    .line 4075
    return-void
.end method

.method pageScroll(I)Z
    .registers 10
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2187
    invoke-direct {p0}, Landroid/widget/ListView;->logActivity()V

    .line 2189
    const/4 v1, -0x1

    .line 2190
    .local v1, nextPage:I
    const/4 v0, 0x0

    .line 2192
    .local v0, down:Z
    const/16 v3, 0x21

    if-ne p1, v3, :cond_54

    .line 2193
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2199
    :cond_17
    :goto_17
    if-ltz v1, :cond_69

    .line 2200
    invoke-virtual {p0, v1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2201
    .local v2, position:I
    if-ltz v2, :cond_69

    .line 2202
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2203
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2205
    if-eqz v0, :cond_39

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_39

    .line 2206
    const/4 v3, 0x3

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2209
    :cond_39
    if-nez v0, :cond_43

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 2210
    iput v6, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 2213
    :cond_43
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelectionInt(I)V

    .line 2214
    invoke-virtual {p0}, Landroid/widget/ListView;->invokeOnItemScrollListener()V

    .line 2215
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v3

    if-nez v3, :cond_52

    .line 2216
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_52
    move v3, v6

    .line 2223
    .end local v2           #position:I
    :goto_53
    return v3

    .line 2194
    :cond_54
    const/16 v3, 0x82

    if-ne p1, v3, :cond_17

    .line 2195
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v3, v6

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2196
    const/4 v0, 0x1

    goto :goto_17

    :cond_69
    move v3, v7

    .line 2223
    goto :goto_53
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 12
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 3699
    const/4 v0, 0x0

    .line 3701
    .local v0, handled:Z
    iget v2, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v2, :cond_3e

    .line 3702
    const/4 v0, 0x1

    .line 3704
    iget v2, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_52

    .line 3705
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_44

    move v1, v6

    .line 3706
    .local v1, newValue:Z
    :goto_16
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3707
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_36

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 3708
    if-eqz v1, :cond_46

    .line 3709
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3726
    :cond_36
    :goto_36
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3727
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 3728
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 3731
    .end local v1           #newValue:Z
    :cond_3e
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 3733
    return v0

    :cond_44
    move v1, v4

    .line 3705
    goto :goto_16

    .line 3711
    .restart local v1       #newValue:Z
    :cond_46
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_36

    .line 3715
    .end local v1           #newValue:Z
    :cond_52
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_86

    move v1, v6

    .line 3716
    .restart local v1       #newValue:Z
    :goto_5b
    if-eqz v1, :cond_36

    .line 3717
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3718
    iget-object v2, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3719
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_36

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 3720
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 3721
    iget-object v2, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_36

    .end local v1           #newValue:Z
    :cond_86
    move v1, v4

    .line 3715
    goto :goto_5b
.end method

.method protected recycleOnMeasure()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1194
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 426
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_20

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 429
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 430
    const/4 v0, 0x1

    .line 432
    :cond_19
    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    move v1, v0

    .line 435
    .end local v0           #result:Z
    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 349
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_20

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 352
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 353
    const/4 v0, 0x1

    .line 355
    :cond_19
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Landroid/widget/ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    move v1, v0

    .line 358
    .end local v0           #result:Z
    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 22
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 587
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v11, v0

    .line 590
    .local v11, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 591
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v15

    neg-int v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v16

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 593
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeight()I

    move-result v8

    .line 594
    .local v8, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v10

    .line 595
    .local v10, listUnfadedTop:I
    add-int v9, v10, v8

    .line 596
    .local v9, listUnfadedBottom:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getVerticalFadingEdgeLength()I

    move-result v7

    .line 598
    .local v7, fadingEdge:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->showingTopFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_49

    .line 600
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v15, v0

    if-gtz v15, :cond_48

    if-le v11, v7, :cond_49

    .line 601
    :cond_48
    add-int/2addr v10, v7

    .line 605
    :cond_49
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    .line 606
    .local v4, childCount:I
    const/4 v15, 0x1

    sub-int v15, v4, v15

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 608
    .local v3, bottomOfBottomChild:I
    invoke-direct/range {p0 .. p0}, Landroid/widget/ListView;->showingBottomFadingEdge()Z

    move-result v15

    if-eqz v15, :cond_82

    .line 610
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_81

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v16, v3, v7

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_82

    .line 612
    :cond_81
    sub-int/2addr v9, v7

    .line 616
    :cond_82
    const/4 v13, 0x0

    .line 618
    .local v13, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v9, :cond_c9

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-le v15, v10, :cond_c9

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v8, :cond_c1

    .line 625
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v13, v15

    .line 632
    :goto_9e
    sub-int v6, v3, v9

    .line 633
    .local v6, distanceToBottom:I
    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 653
    .end local v6           #distanceToBottom:I
    :cond_a4
    :goto_a4
    if-eqz v13, :cond_101

    const/4 v15, 0x1

    move v12, v15

    .line 654
    .local v12, scroll:Z
    :goto_a8
    if-eqz v12, :cond_c0

    .line 655
    neg-int v15, v13

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Landroid/widget/ListView;->scrollListItemsBy(I)V

    .line 656
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ListView;->positionSelector(Landroid/view/View;)V

    .line 657
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 658
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 660
    :cond_c0
    return v12

    .line 628
    .end local v12           #scroll:Z
    :cond_c1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v13, v15

    goto :goto_9e

    .line 634
    :cond_c9
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v10, :cond_a4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-ge v15, v9, :cond_a4

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    if-le v15, v8, :cond_f8

    .line 641
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v13, v15

    .line 648
    :goto_e5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v14

    .line 649
    .local v14, top:I
    sub-int v5, v14, v10

    .line 650
    .local v5, deltaToTop:I
    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_a4

    .line 644
    .end local v5           #deltaToTop:I
    .end local v14           #top:I
    :cond_f8
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v15, v10, v15

    sub-int/2addr v13, v15

    goto :goto_e5

    .line 653
    :cond_101
    const/4 v15, 0x0

    move v12, v15

    goto :goto_a8
.end method

.method resetList()V
    .registers 2

    .prologue
    .line 539
    iget-object v0, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 540
    iget-object v0, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 542
    invoke-super {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 544
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 545
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 8
    .parameter "adapter"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 467
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_d

    .line 468
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 471
    :cond_d
    invoke-virtual {p0}, Landroid/widget/ListView;->resetList()V

    .line 472
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 474
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_25

    iget-object v1, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b0

    .line 475
    :cond_25
    new-instance v1, Landroid/widget/HeaderViewListAdapter;

    iget-object v2, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 480
    :goto_30
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 481
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 482
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_b9

    .line 483
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 484
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 485
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 486
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 488
    new-instance v1, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    .line 489
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 491
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 494
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v1, :cond_b4

    .line 495
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1, v5}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .line 499
    .local v0, position:I
    :goto_76
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelectedPositionInt(I)V

    .line 500
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 502
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v1, :cond_83

    .line 504
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    .line 507
    :cond_83
    iget v1, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v1, :cond_9a

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_9a

    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v1, :cond_9a

    .line 510
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 520
    .end local v0           #position:I
    :cond_9a
    :goto_9a
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_a3

    .line 521
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 524
    :cond_a3
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_ac

    .line 525
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 528
    :cond_ac
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 529
    return-void

    .line 477
    :cond_b0
    iput-object p1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    goto/16 :goto_30

    .line 497
    :cond_b4
    invoke-virtual {p0, v5, v4}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result v0

    .restart local v0       #position:I
    goto :goto_76

    .line 514
    .end local v0           #position:I
    :cond_b9
    iput-boolean v4, p0, Landroid/widget/ListView;->mAreAllItemsSelectable:Z

    .line 515
    invoke-virtual {p0}, Landroid/widget/ListView;->checkFocus()V

    .line 517
    invoke-virtual {p0}, Landroid/widget/ListView;->checkSelectionChanged()V

    goto :goto_9a
.end method

.method public setCacheColorHint(I)V
    .registers 5
    .parameter "color"

    .prologue
    .line 3021
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_20

    const/4 v1, 0x1

    move v0, v1

    .line 3022
    .local v0, opaque:Z
    :goto_8
    iput-boolean v0, p0, Landroid/widget/ListView;->mIsCacheColorOpaque:Z

    .line 3023
    if-eqz v0, :cond_1c

    .line 3024
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_17

    .line 3025
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 3027
    :cond_17
    iget-object v1, p0, Landroid/widget/ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3029
    :cond_1c
    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3030
    return-void

    .line 3021
    .end local v0           #opaque:Z
    :cond_20
    const/4 v1, 0x0

    move v0, v1

    goto :goto_8
.end method

.method public setChoiceMode(I)V
    .registers 3
    .parameter "choiceMode"

    .prologue
    .line 3686
    iput p1, p0, Landroid/widget/ListView;->mChoiceMode:I

    .line 3687
    iget v0, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-eqz v0, :cond_28

    .line 3688
    iget-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_11

    .line 3689
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 3691
    :cond_11
    iget-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3692
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 3695
    :cond_28
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "divider"

    .prologue
    const/4 v2, 0x0

    .line 3403
    if-eqz p1, :cond_1f

    .line 3404
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3405
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v0, p0, Landroid/widget/ListView;->mClipDivider:Z

    .line 3410
    :goto_d
    iput-object p1, p0, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 3411
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    :cond_18
    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Landroid/widget/ListView;->mDividerIsOpaque:Z

    .line 3412
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayoutIfNecessary()V

    .line 3413
    return-void

    .line 3407
    :cond_1f
    iput v2, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3408
    iput-boolean v2, p0, Landroid/widget/ListView;->mClipDivider:Z

    goto :goto_d

    :cond_24
    move v0, v2

    .line 3411
    goto :goto_19
.end method

.method public setDividerHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 3429
    iput p1, p0, Landroid/widget/ListView;->mDividerHeight:I

    .line 3430
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayoutIfNecessary()V

    .line 3431
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .registers 2
    .parameter "footerDividersEnabled"

    .prologue
    .line 3455
    iput-boolean p1, p0, Landroid/widget/ListView;->mFooterDividersEnabled:Z

    .line 3456
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3457
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .registers 2
    .parameter "headerDividersEnabled"

    .prologue
    .line 3442
    iput-boolean p1, p0, Landroid/widget/ListView;->mHeaderDividersEnabled:Z

    .line 3443
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3444
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 9
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 3745
    iget v1, p0, Landroid/widget/ListView;->mChoiceMode:I

    if-nez v1, :cond_6

    .line 3784
    :cond_5
    :goto_5
    return-void

    .line 3749
    :cond_6
    iget v1, p0, Landroid/widget/ListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_48

    .line 3750
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3751
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3752
    if-eqz p2, :cond_3c

    .line 3753
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3779
    :cond_2b
    :goto_2b
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_5

    .line 3780
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3781
    invoke-virtual {p0}, Landroid/widget/ListView;->rememberSyncState()V

    .line 3782
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_5

    .line 3755
    :cond_3c
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_2b

    .line 3759
    :cond_48
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_80

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_80

    move v0, v5

    .line 3762
    .local v0, updateIds:Z
    :goto_55
    if-nez p2, :cond_5d

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 3763
    :cond_5d
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3764
    if-eqz v0, :cond_69

    .line 3765
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 3770
    :cond_69
    if-eqz p2, :cond_2b

    .line 3771
    iget-object v1, p0, Landroid/widget/ListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3772
    if-eqz v0, :cond_2b

    .line 3773
    iget-object v1, p0, Landroid/widget/ListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2b

    .line 3759
    .end local v0           #updateIds:Z
    :cond_80
    const/4 v1, 0x0

    move v0, v1

    goto :goto_55
.end method

.method public setItemsCanFocus(Z)V
    .registers 3
    .parameter "itemsCanFocus"

    .prologue
    .line 2996
    iput-boolean p1, p0, Landroid/widget/ListView;->mItemsCanFocus:Z

    .line 2997
    if-nez p1, :cond_9

    .line 2998
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 3000
    :cond_9
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "footer"

    .prologue
    .line 3487
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 3488
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3489
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "header"

    .prologue
    .line 3466
    iput-object p1, p0, Landroid/widget/ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 3467
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-gez v0, :cond_9

    .line 3468
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 3470
    :cond_9
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1889
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1890
    return-void
.end method

.method public setSelectionAfterHeaderView()V
    .registers 3

    .prologue
    .line 2034
    iget-object v1, p0, Landroid/widget/ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2035
    .local v0, count:I
    if-lez v0, :cond_c

    .line 2036
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2047
    :goto_b
    return-void

    .line 2040
    :cond_c
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_14

    .line 2041
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_b

    .line 2043
    :cond_14
    iput v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 2044
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_b
.end method

.method public setSelectionFromTop(II)V
    .registers 5
    .parameter "position"
    .parameter "y"

    .prologue
    .line 1902
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    .line 1926
    :cond_4
    :goto_4
    return-void

    .line 1906
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1907
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/ListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 1908
    if-ltz p1, :cond_15

    .line 1909
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1915
    :cond_15
    :goto_15
    if-ltz p1, :cond_4

    .line 1916
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 1917
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1919
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_2f

    .line 1920
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1921
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1924
    :cond_2f
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_4

    .line 1912
    :cond_33
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_15
.end method

.method setSelectionInt(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 1935
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setNextSelectedPositionInt(I)V

    .line 1936
    const/4 v0, 0x0

    .line 1938
    .local v0, awakeScrollbars:Z
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1940
    .local v1, selectedPosition:I
    if-ltz v1, :cond_e

    .line 1941
    const/4 v2, 0x1

    sub-int v2, v1, v2

    if-ne p1, v2, :cond_17

    .line 1942
    const/4 v0, 0x1

    .line 1948
    :cond_e
    :goto_e
    invoke-virtual {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1950
    if-eqz v0, :cond_16

    .line 1951
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    .line 1953
    :cond_16
    return-void

    .line 1943
    :cond_17
    add-int/lit8 v2, v1, 0x1

    if-ne p1, v2, :cond_e

    .line 1944
    const/4 v0, 0x1

    goto :goto_e
.end method

.class public Landroid/widget/ExpandableListView;
.super Landroid/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListView$1;,
        Landroid/widget/ExpandableListView$SavedState;,
        Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListView$OnChildClickListener;,
        Landroid/widget/ExpandableListView$OnGroupClickListener;,
        Landroid/widget/ExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I = null

.field private static final EMPTY_STATE_SET:[I = null

.field private static final GROUP_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_STATE_SET:[I = null

.field private static final GROUP_STATE_SETS:[[I = null

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mClipChildDivider:Z

.field private mConnector:Landroid/widget/ExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    new-array v0, v3, [I

    sput-object v0, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 186
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 190
    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 194
    new-array v0, v2, [I

    fill-array-data v0, :array_40

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 198
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    .line 206
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void

    .line 194
    :array_40
    .array-data 0x4
        0xa8t 0x0t 0x1t 0x1t
        0xa9t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 221
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 225
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 214
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 227
    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 231
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 233
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 235
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 237
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 239
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 241
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 243
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 245
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .registers 3
    .parameter "flatListPosition"

    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .registers 5
    .parameter "position"

    .prologue
    .line 1026
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1027
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1029
    :goto_f
    return-wide v0

    :cond_10
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_f
.end method

.method private getFlatPositionForConnector(I)I
    .registers 3
    .parameter "flatListPosition"

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .parameter "pos"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 378
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v4, v8, :cond_3c

    .line 379
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 381
    .local v0, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 385
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v4, :cond_21

    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v4, v5, :cond_36

    :cond_21
    move v1, v7

    .line 388
    .local v1, isEmpty:Z
    :goto_22
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_38

    move v4, v7

    :goto_29
    if-eqz v1, :cond_3a

    move v5, v8

    :goto_2c
    or-int v3, v4, v5

    .line 391
    .local v3, stateSetIndex:I
    sget-object v4, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 405
    .end local v1           #isEmpty:Z
    .end local v3           #stateSetIndex:I
    :cond_35
    :goto_35
    return-object v0

    :cond_36
    move v1, v6

    .line 385
    goto :goto_22

    .restart local v1       #isEmpty:Z
    :cond_38
    move v4, v6

    .line 388
    goto :goto_29

    :cond_3a
    move v5, v6

    goto :goto_2c

    .line 394
    .end local v0           #indicator:Landroid/graphics/drawable/Drawable;
    .end local v1           #isEmpty:Z
    :cond_3c
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 396
    .restart local v0       #indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_35

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 398
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_57

    sget-object v4, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    move-object v2, v4

    .line 401
    .local v2, stateSet:[I
    :goto_53
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_35

    .line 398
    .end local v2           #stateSet:[I
    :cond_57
    sget-object v4, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    move-object v2, v4

    goto :goto_53
.end method

.method public static getPackedPositionChild(J)I
    .registers 9
    .parameter "packedPosition"

    .prologue
    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000

    const/4 v2, -0x1

    .line 954
    cmp-long v0, p0, v5

    if-nez v0, :cond_e

    move v0, v2

    .line 959
    :goto_d
    return v0

    .line 957
    :cond_e
    and-long v0, p0, v3

    cmp-long v0, v0, v3

    if-eqz v0, :cond_16

    move v0, v2

    goto :goto_d

    .line 959
    :cond_16
    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_d
.end method

.method public static getPackedPositionForChild(II)J
    .registers 8
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 979
    const-wide/high16 v0, -0x8000

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .registers 5
    .parameter "groupPosition"

    .prologue
    .line 994
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .registers 5
    .parameter "packedPosition"

    .prologue
    .line 935
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    const/4 v0, -0x1

    .line 937
    :goto_a
    return v0

    :cond_b
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_a
.end method

.method public static getPackedPositionType(J)I
    .registers 6
    .parameter "packedPosition"

    .prologue
    const-wide/high16 v2, -0x8000

    .line 915
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    .line 916
    const/4 v0, 0x2

    .line 919
    :goto_c
    return v0

    :cond_d
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private isHeaderOrFooterPosition(I)Z
    .registers 5
    .parameter "position"

    .prologue
    .line 526
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 527
    .local v0, footerViewsStart:I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_10

    if-lt p1, v0, :cond_12

    :cond_10
    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method


# virtual methods
.method public collapseGroup(I)Z
    .registers 4
    .parameter "groupPos"

    .prologue
    .line 661
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 663
    .local v0, retValue:Z
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_f

    .line 664
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 667
    :cond_f
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 14
    .parameter "view"
    .parameter "flatListPosition"
    .parameter "id"

    .prologue
    .line 1000
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1002
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1014
    :goto_b
    return-object v0

    .line 1005
    :cond_c
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 1006
    .local v6, adjustedPosition:I
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v6}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 1007
    .local v7, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1008
    .local v8, pos:Landroid/widget/ExpandableListPosition;
    invoke-virtual {v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1010
    invoke-direct {p0, v8}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 1011
    invoke-virtual {v8}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1012
    .local v2, packedPosition:J
    invoke-virtual {v8}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1014
    new-instance v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 30
    .parameter "canvas"

    .prologue
    .line 252
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-nez v23, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-nez v23, :cond_14

    .line 365
    :cond_13
    :goto_13
    return-void

    .line 260
    :cond_14
    const/16 v19, -0x1

    .line 261
    .local v19, save_bounce:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceBlocked:Z

    move/from16 v23, v0

    if-nez v23, :cond_57

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mBounceEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/AbsListView$TwBounceController;->mBounceExtent:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-eqz v23, :cond_57

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v23

    if-lez v23, :cond_57

    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v19

    .line 263
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mBounceController:Landroid/widget/AbsListView$TwBounceController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/AbsListView$TwBounceController;->getCanvasShift()F

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 266
    :cond_57
    const/16 v18, 0x0

    .line 267
    .local v18, saveCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v23, v0

    and-int/lit8 v23, v23, 0x22

    const/16 v24, 0x22

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_104

    const/16 v23, 0x1

    move/from16 v8, v23

    .line 268
    .local v8, clipToPadding:Z
    :goto_6d
    if-eqz v8, :cond_cc

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v18

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v20, v0

    .line 271
    .local v20, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    .line 272
    .local v21, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v23, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v24, v0

    add-int v24, v24, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v26, v0

    add-int v26, v26, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 277
    .end local v20           #scrollX:I
    .end local v21           #scrollY:I
    :cond_cc
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v9

    .line 279
    .local v9, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v24

    sub-int v23, v23, v24

    sub-int v23, v23, v9

    const/16 v24, 0x1

    sub-int v14, v23, v24

    .line 281
    .local v14, lastChildFlPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v16, v0

    .line 289
    .local v16, myB:I
    const/4 v15, -0x4

    .line 291
    .local v15, lastItemType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    move-object v12, v0

    .line 296
    .local v12, indicatorRect:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v6

    .line 297
    .local v6, childCount:I
    const/4 v10, 0x0

    .local v10, i:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v7, v23, v9

    .local v7, childFlPos:I
    :goto_fb
    if-ge v10, v6, :cond_10c

    .line 300
    if-gez v7, :cond_10a

    .line 298
    :cond_ff
    :goto_ff
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_fb

    .line 267
    .end local v6           #childCount:I
    .end local v7           #childFlPos:I
    .end local v8           #clipToPadding:Z
    .end local v9           #headerViewsCount:I
    .end local v10           #i:I
    .end local v12           #indicatorRect:Landroid/graphics/Rect;
    .end local v14           #lastChildFlPos:I
    .end local v15           #lastItemType:I
    .end local v16           #myB:I
    :cond_104
    const/16 v23, 0x0

    move/from16 v8, v23

    goto/16 :goto_6d

    .line 303
    .restart local v6       #childCount:I
    .restart local v7       #childFlPos:I
    .restart local v8       #clipToPadding:Z
    .restart local v9       #headerViewsCount:I
    .restart local v10       #i:I
    .restart local v12       #indicatorRect:Landroid/graphics/Rect;
    .restart local v14       #lastChildFlPos:I
    .restart local v15       #lastItemType:I
    .restart local v16       #myB:I
    :cond_10a
    if-le v7, v14, :cond_126

    .line 357
    :cond_10c
    if-eqz v8, :cond_115

    .line 358
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 362
    :cond_115
    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    .line 363
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_13

    .line 308
    :cond_126
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 309
    .local v13, item:Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v22

    .line 310
    .local v22, t:I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 313
    .local v5, b:I
    if-ltz v5, :cond_ff

    move/from16 v0, v22

    move/from16 v1, v16

    if-gt v0, v1, :cond_ff

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v17

    .line 320
    .local v17, pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v23, v0

    move/from16 v0, v23

    move v1, v15

    if-eq v0, v1, :cond_1ac

    .line 321
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f1

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v23, v0

    :goto_183
    move/from16 v0, v23

    move-object v1, v12

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 324
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1ea

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v23, v0

    :goto_19c
    move/from16 v0, v23

    move-object v1, v12

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 331
    :goto_1a1
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move v15, v0

    .line 334
    :cond_1ac
    move-object v0, v12

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object v0, v12

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1de

    .line 336
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    move/from16 v23, v0

    if-eqz v23, :cond_208

    .line 338
    move/from16 v0, v22

    move-object v1, v12

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 339
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 346
    :goto_1cb
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/ExpandableListView;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 347
    .local v11, indicator:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_1de

    .line 349
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 350
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    .end local v11           #indicator:Landroid/graphics/drawable/Drawable;
    :cond_1de
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_ff

    .line 322
    :cond_1e3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v23, v0

    goto :goto_183

    .line 324
    :cond_1ea
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v23, v0

    goto :goto_19c

    .line 327
    :cond_1f1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object v1, v12

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object v1, v12

    iput v0, v1, Landroid/graphics/Rect;->right:I

    goto :goto_1a1

    .line 341
    :cond_208
    move/from16 v0, v22

    move-object v1, v12

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 342
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_1cb
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 11
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 422
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int v3, p3, v5

    .line 426
    .local v3, flatListPosition:I
    if-ltz v3, :cond_46

    .line 427
    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 428
    .local v0, adjustedPosition:I
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    .line 430
    .local v4, pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v5, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_27

    invoke-virtual {v4}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_43

    iget-object v5, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v6, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v6, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v5, v6, :cond_43

    .line 433
    :cond_27
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 434
    .local v2, divider:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Landroid/widget/ExpandableListView;->mClipChildDivider:Z

    .line 435
    .local v1, clip:Z
    if-nez v1, :cond_3c

    .line 436
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 441
    :goto_30
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 442
    if-eqz v1, :cond_38

    .line 443
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 445
    :cond_38
    invoke-virtual {v4}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 453
    .end local v0           #adjustedPosition:I
    .end local v1           #clip:Z
    .end local v2           #divider:Landroid/graphics/drawable/Drawable;
    .end local v4           #pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    :goto_3b
    return-void

    .line 438
    .restart local v0       #adjustedPosition:I
    .restart local v1       #clip:Z
    .restart local v2       #divider:Landroid/graphics/drawable/Drawable;
    .restart local v4       #pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_3c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 439
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_30

    .line 448
    .end local v1           #clip:Z
    .end local v2           #divider:Landroid/graphics/drawable/Drawable;
    :cond_43
    invoke-virtual {v4}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 452
    .end local v0           #adjustedPosition:I
    .end local v4           #pos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_46
    invoke-super {p0, p1, p2, v3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_3b
.end method

.method public expandGroup(I)Z
    .registers 4
    .parameter "groupPos"

    .prologue
    .line 644
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListConnector;->expandGroup(I)Z

    move-result v0

    .line 646
    .local v0, retValue:Z
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v1, :cond_f

    .line 647
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 650
    :cond_f
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 478
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .registers 8
    .parameter "flatListPosition"

    .prologue
    .line 773
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 774
    const-wide v4, 0xffffffffL

    .line 781
    :goto_b
    return-wide v4

    .line 777
    :cond_c
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 778
    .local v0, adjustedPosition:I
    iget-object v4, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 779
    .local v3, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v4}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v1

    .line 780
    .local v1, packedPos:J
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    move-wide v4, v1

    .line 781
    goto :goto_b
.end method

.method public getFlatListPosition(J)I
    .registers 7
    .parameter "packedPosition"

    .prologue
    .line 796
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 798
    .local v1, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 799
    .local v0, flatListPosition:I
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 800
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    return v2
.end method

.method public getSelectedId()J
    .registers 6

    .prologue
    .line 826
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v1

    .line 827
    .local v1, packedPos:J
    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_10

    const-wide/16 v3, -0x1

    .line 836
    :goto_f
    return-wide v3

    .line 829
    :cond_10
    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 831
    .local v0, groupPos:I
    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_21

    .line 833
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_f

    .line 836
    :cond_21
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_f
.end method

.method public getSelectedPosition()J
    .registers 4

    .prologue
    .line 812
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 815
    .local v0, selectedPos:I
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .registers 17
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 574
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v9

    .line 576
    .local v9, posMetadata:Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, v0}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 579
    iget-object v0, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_80

    .line 583
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_2f

    .line 584
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 586
    invoke-virtual {v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 588
    const/4 v0, 0x1

    .line 633
    :goto_2e
    return v0

    .line 592
    :cond_2f
    invoke-virtual {v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 594
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v9}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 598
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_4b

    .line 599
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 619
    :cond_4b
    :goto_4b
    const/4 v10, 0x1

    .line 631
    .local v10, returnValue:Z
    :goto_4c
    invoke-virtual {v9}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    move v0, v10

    .line 633
    goto :goto_2e

    .line 603
    .end local v10           #returnValue:Z
    :cond_51
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v9}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 605
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 607
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_67

    .line 608
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 611
    :cond_67
    iget-object v0, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 612
    .local v8, groupPos:I
    iget-object v0, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 614
    .local v7, groupFlatPos:I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int v11, v7, v0

    .line 615
    .local v11, shiftedGroupPosition:I
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v8}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v11

    invoke-virtual {p0, v0, v11}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    goto :goto_4b

    .line 622
    .end local v7           #groupFlatPos:I
    .end local v8           #groupPos:I
    .end local v11           #shiftedGroupPosition:I
    :cond_80
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_9a

    .line 623
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 624
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v1, v9, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v0

    goto :goto_2e

    .line 628
    :cond_9a
    const/4 v10, 0x0

    .restart local v10       #returnValue:Z
    goto :goto_4c
.end method

.method public isGroupExpanded(I)Z
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 902
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 1173
    instance-of v2, p1, Landroid/widget/ExpandableListView$SavedState;

    if-nez v2, :cond_8

    .line 1174
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1184
    :cond_7
    :goto_7
    return-void

    .line 1178
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/widget/ExpandableListView$SavedState;

    move-object v1, v0

    .line 1179
    .local v1, ss:Landroid/widget/ExpandableListView$SavedState;
    invoke-virtual {v1}, Landroid/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1181
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_7

    iget-object v2, v1, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 1182
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    iget-object v3, v1, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_7
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 1166
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1167
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ExpandableListView$SavedState;

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v2

    :goto_10
    invoke-direct {v1, v0, v2}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v1

    :cond_14
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 7
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 555
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 557
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 562
    :goto_a
    return v1

    .line 561
    :cond_b
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 562
    .local v0, adjustedPosition:I
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_a
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 500
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 502
    if-eqz p1, :cond_11

    .line 504
    new-instance v0, Landroid/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 510
    :goto_b
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 511
    return-void

    .line 506
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    goto :goto_b
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 463
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "childDivider"

    .prologue
    .line 416
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 417
    if-eqz p1, :cond_c

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p0, Landroid/widget/ExpandableListView;->mClipChildDivider:Z

    .line 418
    return-void

    .line 417
    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "childIndicator"

    .prologue
    .line 1041
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1042
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .registers 3
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1056
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 1057
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 1058
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "groupIndicator"

    .prologue
    .line 1069
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1070
    return-void
.end method

.method public setIndicatorBounds(II)V
    .registers 3
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1084
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 1085
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1086
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .registers 2
    .parameter "onChildClickListener"

    .prologue
    .line 755
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 756
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .registers 2
    .parameter "onGroupClickListener"

    .prologue
    .line 728
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 729
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .registers 2
    .parameter "onGroupCollapseListener"

    .prologue
    .line 685
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 686
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .registers 2
    .parameter "onGroupExpandListener"

    .prologue
    .line 703
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 704
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 491
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 492
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .registers 9
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "shouldExpandGroup"

    .prologue
    .line 866
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 868
    .local v1, elChildPos:Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 870
    .local v2, flatChildPos:Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_23

    .line 874
    if-nez p3, :cond_10

    const/4 v3, 0x0

    .line 892
    :goto_f
    return v3

    .line 876
    :cond_10
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 878
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 881
    if-nez v2, :cond_23

    .line 882
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 886
    :cond_23
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 887
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 889
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 890
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 892
    const/4 v3, 0x1

    goto :goto_f
.end method

.method public setSelectedGroup(I)V
    .registers 6
    .parameter "groupPosition"

    .prologue
    .line 845
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 847
    .local v1, elGroupPos:Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 848
    .local v2, pm:Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 849
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 850
    .local v0, absoluteFlatPosition:I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 851
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 852
    return-void
.end method

.class public Lcom/sec/android/app/twlauncher/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;,
        Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mActualCellHeight:I

.field private mActualCellWidth:I

.field private mCellHeight:I

.field private final mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mCellWidth:I

.field mCellXY:[I

.field private mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

.field private mDimPaint:Landroid/graphics/Paint;

.field private mDirtyTag:Z

.field private mDragRect:Landroid/graphics/RectF;

.field private mHeightGap:I

.field private mLastDownOnOccupiedCell:Z

.field private mLongAxisCells:I

.field private mLongAxisEndPadding:I

.field private mLongAxisStartPadding:I

.field mOccupied:[[Z

.field private mPortrait:Z

.field private final mRect:Landroid/graphics/Rect;

.field private mScreenClipExtendedEdge:I

.field private mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

.field private mShortAxisCells:I

.field private mShortAxisEndPadding:I

.field private mShortAxisStartPadding:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 102
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v2, Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    .line 75
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 77
    new-instance v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 79
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellXY:[I

    .line 83
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    .line 87
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 95
    iput v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    .line 111
    sget-object v2, Lcom/sec/android/app/twlauncher/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    .line 114
    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    .line 116
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    .line 118
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisEndPadding:I

    .line 120
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    .line 122
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisEndPadding:I

    .line 125
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    .line 126
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 132
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    if-nez v2, :cond_0

    .line 133
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    if-eqz v2, :cond_1

    .line 134
    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    .line 140
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    .line 145
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDimPaint:Landroid/graphics/Paint;

    .line 146
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDimPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v4, 0x7fff

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 152
    .local v1, density:F
    new-instance v2, Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-direct {v2, p1}, Lcom/sec/android/app/twlauncher/GLTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    .line 153
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/twlauncher/GLTextView;->setGravity(I)V

    .line 154
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/GLTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    const v3, 0x402ae148

    mul-float/2addr v3, v1

    const/high16 v4, -0x6000

    invoke-virtual {v2, v3, v6, v6, v4}, Lcom/sec/android/app/twlauncher/GLTextView;->setShadowLayer(FFFI)V

    .line 156
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    const v3, -0x5f000001

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/GLTextView;->setTextColor(I)V

    .line 157
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    const v3, 0x415547ae

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/GLTextView;->setTextSize(F)V

    .line 159
    return-void

    .line 136
    .end local v1           #density:F
    :cond_1
    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 46
    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/CellLayout;->findIntersectingVacantCells(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V

    return-void
.end method

.method private static addVacantCell(Landroid/graphics/Rect;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 3
    .parameter "current"
    .parameter "cellInfo"

    .prologue
    .line 421
    invoke-static {}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->acquire()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    move-result-object v0

    .line 422
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    .line 423
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    .line 424
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    .line 425
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    .line 426
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    if-le v1, v2, :cond_0

    .line 427
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 428
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 430
    :cond_0
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    iget v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    if-le v1, v2, :cond_1

    .line 431
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 432
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 434
    :cond_1
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    return-void
.end method

.method private static findIntersectingVacantCells(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V
    .locals 1
    .parameter "cellInfo"
    .parameter "x"
    .parameter "y"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/high16 v0, -0x8000

    .line 367
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 368
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 369
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 370
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 371
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    .line 373
    aget-object v0, p5, p1

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    invoke-static {v0, p3, p4, p5, p0}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_0
.end method

.method private findOccupiedCells(II[[ZLandroid/view/View;)V
    .locals 8
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "ignoreView"

    .prologue
    .line 964
    const/4 v4, 0x0

    .local v4, x:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 965
    const/4 v5, 0x0

    .local v5, y:I
    :goto_1
    if-ge v5, p2, :cond_0

    .line 966
    aget-object v6, p3, v4

    const/4 v7, 0x0

    aput-boolean v7, v6, v5

    .line 965
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 964
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 970
    .end local v5           #y:I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 971
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 972
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 973
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v6, :cond_2

    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 971
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 976
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 977
    .local v3, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v4, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v6, v7

    if-ge v4, v6, :cond_2

    if-ge v4, p1, :cond_2

    .line 978
    iget v5, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .restart local v5       #y:I
    :goto_4
    iget v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    if-ge v5, p2, :cond_4

    .line 979
    aget-object v6, p3, v4

    const/4 v7, 0x1

    aput-boolean v7, v6, v5

    .line 978
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 977
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 983
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    .end local v5           #y:I
    :cond_5
    return-void
.end method

.method private static findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 4
    .parameter "current"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x1

    .line 385
    invoke-static {p0, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->addVacantCell(Landroid/graphics/Rect;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 387
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_0

    .line 388
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 390
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 391
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 395
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p1, v3

    if-ge v0, v1, :cond_1

    .line 396
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isColumnEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 398
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 399
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 403
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_2

    .line 404
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 406
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 407
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 411
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p2, v3

    if-ge v0, v1, :cond_3

    .line 412
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1, v2, p3}, Lcom/sec/android/app/twlauncher/CellLayout;->isRowEmpty(III[[Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 413
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 414
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 415
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 418
    :cond_3
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 923
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    if-ge v3, p3, :cond_7

    .line 924
    const/4 v4, 0x0

    .local v4, y:I
    :goto_1
    if-ge v4, p4, :cond_6

    .line 925
    aget-object v5, p5, v3

    aget-boolean v5, v5, v4

    if-nez v5, :cond_1

    move v0, v6

    .line 926
    .local v0, available:Z
    :goto_2
    move v1, v3

    .local v1, i:I
    :goto_3
    add-int v5, v3, p1

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_0

    if-ge v3, p3, :cond_0

    .line 927
    move v2, v4

    .local v2, j:I
    :goto_4
    add-int v5, v4, p2

    sub-int/2addr v5, v6

    if-ge v2, v5, :cond_4

    if-ge v4, p4, :cond_4

    .line 928
    if-eqz v0, :cond_2

    aget-object v5, p5, v1

    aget-boolean v5, v5, v2

    if-nez v5, :cond_2

    move v0, v6

    .line 929
    :goto_5
    if-nez v0, :cond_3

    .line 934
    .end local v2           #j:I
    :cond_0
    if-eqz v0, :cond_5

    .line 935
    aput v3, p0, v7

    .line 936
    aput v4, p0, v6

    move v5, v6

    .line 942
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v4           #y:I
    :goto_6
    return v5

    .restart local v4       #y:I
    :cond_1
    move v0, v7

    .line 925
    goto :goto_2

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_2
    move v0, v7

    .line 928
    goto :goto_5

    .line 927
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 926
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 924
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 923
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4           #y:I
    :cond_7
    move v5, v7

    .line 942
    goto :goto_6
.end method

.method private static isColumnEmpty(III[[Z)Z
    .locals 2
    .parameter "x"
    .parameter "top"
    .parameter "bottom"
    .parameter "occupied"

    .prologue
    .line 438
    move v0, p1

    .local v0, y:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 439
    aget-object v1, p3, p0

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 443
    :goto_1
    return v1

    .line 438
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private static isRowEmpty(III[[Z)Z
    .locals 2
    .parameter "y"
    .parameter "left"
    .parameter "right"
    .parameter "occupied"

    .prologue
    .line 447
    move v0, p1

    .local v0, x:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 448
    aget-object v1, p3, v0

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_0

    .line 449
    const/4 v1, 0x0

    .line 452
    :goto_1
    return v1

    .line 447
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 235
    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    move-object v1, v0

    .line 236
    .local v1, cellParams:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->regenerateId:Z

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 239
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 212
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 216
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 217
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 560
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    .line 562
    .local v1, portrait:Z
    if-eqz v1, :cond_0

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    move v0, v3

    .line 563
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_1

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    move v2, v3

    .line 565
    .local v2, vStartPadding:I
    :goto_1
    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    aput v4, p3, v3

    .line 566
    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v4, v5

    mul-int/2addr v4, p2

    add-int/2addr v4, v2

    aput v4, p3, v3

    .line 567
    return-void

    .line 562
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    :cond_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    move v0, v3

    goto :goto_0

    .line 563
    .restart local v0       #hStartPadding:I
    :cond_1
    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    move v2, v3

    goto :goto_1
.end method

.method cellToPointX(I)I
    .locals 3
    .parameter "cellX"

    .prologue
    .line 542
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    move v0, v1

    .line 543
    .local v0, hStartPadding:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    return v1

    .line 542
    .end local v0           #hStartPadding:I
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    move v0, v1

    goto :goto_0
.end method

.method cellToPointY(I)I
    .locals 3
    .parameter "cellY"

    .prologue
    .line 547
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    move v0, v1

    .line 548
    .local v0, vStartPadding:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    return v1

    .line 547
    .end local v0           #vStartPadding:I
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    move v0, v1

    goto :goto_0
.end method

.method cellsToPixelRect(II[I)Landroid/graphics/Rect;
    .locals 8
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellSize"

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 598
    new-array v0, v2, [I

    .line 599
    .local v0, pos:[I
    new-array v1, v2, [I

    .line 600
    .local v1, size:[I
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 601
    aget v2, p3, v6

    aget v3, p3, v7

    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    .line 603
    new-instance v2, Landroid/graphics/Rect;

    aget v3, v0, v6

    aget v4, v0, v7

    aget v5, v0, v6

    aget v6, v1, v6

    add-int/2addr v5, v6

    aget v6, v0, v7

    aget v7, v1, v7

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 992
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "view"
    .parameter "arg0"

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z
    .locals 10
    .parameter "canvas"
    .parameter "ignoreClipping"
    .parameter "ignoreTransRefs"

    .prologue
    .line 1275
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getMeasuredWidth()I

    move-result v6

    .line 1276
    .local v6, windowWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int v2, v8, v7

    .line 1278
    .local v2, pageLeft:I
    if-nez p3, :cond_0

    .line 1284
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    .line 1286
    :cond_0
    const/4 v3, 0x0

    .line 1287
    .local v3, res:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v7

    if-ge v0, v7, :cond_7

    .line 1288
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1289
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_2

    .line 1287
    .end local v5           #v:Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1291
    .restart local v5       #v:Landroid/view/View;
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int v1, v2, v7

    .line 1292
    .local v1, left:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v4, v1, v7

    .line 1293
    .local v4, right:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getWidth()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1295
    add-int/lit16 v4, v4, 0xa0

    .line 1297
    :cond_3
    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    add-int/2addr v7, v6

    if-ge v1, v7, :cond_4

    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    neg-int v7, v7

    if-gt v4, v7, :cond_5

    :cond_4
    if-eqz p2, :cond_1

    .line 1301
    :cond_5
    instance-of v7, v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v7, :cond_6

    .line 1302
    check-cast v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    .end local v5           #v:Landroid/view/View;
    invoke-interface {v5, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_1

    .line 1304
    .restart local v5       #v:Landroid/view/View;
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {v7, p1, v5}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->drawChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_1

    .line 1309
    .end local v1           #left:I
    .end local v4           #right:I
    .end local v5           #v:Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    if-eqz v7, :cond_8

    .line 1310
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1311
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/GLTextView;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x3f00

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/GLTextView;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const v9, 0x3ee66666

    mul-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1312
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v7, p1}, Lcom/sec/android/app/twlauncher/GLTextView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v7

    or-int/2addr v3, v7

    .line 1313
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1317
    :cond_8
    return v3
.end method

.method public drawShadows(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 1324
    .local v0, scroll:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getRight()I

    move-result v3

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    add-int/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->drawAllShadowsWithClipping(Lcom/sec/android/app/twlauncher/GLCanvas;II)V

    .line 1326
    return-void
.end method

.method findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 8
    .parameter "occupiedCells"
    .parameter "ignoreView"

    .prologue
    .line 456
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    .line 457
    .local v1, portrait:Z
    if-eqz v1, :cond_0

    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v3, v6

    .line 458
    .local v3, xCount:I
    :goto_0
    if-eqz v1, :cond_1

    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v5, v6

    .line 460
    .local v5, yCount:I
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    .line 462
    .local v0, occupied:[[Z
    if-eqz p1, :cond_3

    .line 463
    const/4 v4, 0x0

    .local v4, y:I
    :goto_2
    if-ge v4, v5, :cond_4

    .line 464
    const/4 v2, 0x0

    .local v2, x:I
    :goto_3
    if-ge v2, v3, :cond_2

    .line 465
    aget-object v6, v0, v2

    mul-int v7, v4, v3

    add-int/2addr v7, v2

    aget-boolean v7, p1, v7

    aput-boolean v7, v6, v4

    .line 464
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 457
    .end local v0           #occupied:[[Z
    .end local v2           #x:I
    .end local v3           #xCount:I
    .end local v4           #y:I
    .end local v5           #yCount:I
    :cond_0
    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v3, v6

    goto :goto_0

    .line 458
    .restart local v3       #xCount:I
    :cond_1
    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v5, v6

    goto :goto_1

    .line 463
    .restart local v0       #occupied:[[Z
    .restart local v2       #x:I
    .restart local v4       #y:I
    .restart local v5       #yCount:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 469
    .end local v2           #x:I
    .end local v4           #y:I
    :cond_3
    invoke-direct {p0, v3, v5, v0, p2}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 472
    :cond_4
    invoke-virtual {p0, v0, v3, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCellsFromOccupied([[ZII)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v6

    return-object v6
.end method

.method findAllVacantCellsFromOccupied([[ZII)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 8
    .parameter "occupied"
    .parameter "xCount"
    .parameter "yCount"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/high16 v4, -0x8000

    .line 480
    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    .line 482
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 483
    iput v6, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 484
    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 485
    iput v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 486
    iput v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 487
    iput v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    .line 488
    iput v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 489
    iput v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    .line 490
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iput v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 492
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    .line 494
    .local v1, current:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    if-ge v2, p2, :cond_2

    .line 495
    const/4 v3, 0x0

    .local v3, y:I
    :goto_1
    if-ge v3, p3, :cond_1

    .line 496
    aget-object v4, p1, v2

    aget-boolean v4, v4, v3

    if-nez v4, :cond_0

    .line 497
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 498
    invoke-static {v1, p2, p3, p1, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->findVacantCell(Landroid/graphics/Rect;II[[ZLcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 499
    aget-object v4, p1, v2

    aput-boolean v7, v4, v3

    .line 495
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 494
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    .end local v3           #y:I
    :cond_2
    iget-object v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v7

    :goto_2
    iput-boolean v4, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 509
    return-object v0

    :cond_3
    move v4, v5

    .line 504
    goto :goto_2
.end method

.method findNearestVacantArea(IIIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;[I)[I
    .locals 19
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "vacantCells"
    .parameter "recycle"

    .prologue
    .line 756
    if-eqz p6, :cond_0

    move-object/from16 v6, p6

    .line 757
    .local v6, bestXY:[I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellXY:[I

    move-object v8, v0

    .line 758
    .local v8, cellXY:[I
    const-wide v4, 0x7fefffffffffffffL

    .line 761
    .local v4, bestDistance:D
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    move v13, v0

    if-nez v13, :cond_1

    .line 762
    const/4 v13, 0x0

    .line 791
    :goto_1
    return-object v13

    .line 756
    .end local v4           #bestDistance:D
    .end local v6           #bestXY:[I
    .end local v8           #cellXY:[I
    :cond_0
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object v6, v13

    goto :goto_0

    .line 766
    .restart local v4       #bestDistance:D
    .restart local v6       #bestXY:[I
    .restart local v8       #cellXY:[I
    :cond_1
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 767
    .local v12, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v12, :cond_4

    .line 768
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    .line 771
    .local v7, cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    iget v13, v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    move v0, v13

    move/from16 v1, p3

    if-ne v0, v1, :cond_2

    iget v13, v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    move v0, v13

    move/from16 v1, p4

    if-eq v0, v1, :cond_3

    .line 767
    :cond_2
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 776
    :cond_3
    iget v13, v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    iget v14, v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 778
    const/4 v13, 0x0

    aget v13, v8, v13

    sub-int v13, v13, p1

    int-to-double v13, v13

    const-wide/high16 v15, 0x4000

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    const/4 v15, 0x1

    aget v15, v8, v15

    sub-int v15, v15, p2

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 780
    .local v9, distance:D
    cmpg-double v13, v9, v4

    if-gtz v13, :cond_2

    .line 781
    move-wide v4, v9

    .line 782
    const/4 v13, 0x0

    iget v14, v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v14, v6, v13

    .line 783
    const/4 v13, 0x1

    iget v14, v7, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v14, v6, v13

    goto :goto_3

    .line 788
    .end local v7           #cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    .end local v9           #distance:D
    :cond_4
    const-wide v13, 0x7fefffffffffffffL

    cmpg-double v13, v4, v13

    if-gez v13, :cond_5

    move-object v13, v6

    .line 789
    goto :goto_1

    .line 791
    :cond_5
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 987
    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 997
    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    return v0
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    goto :goto_0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    goto :goto_0
.end method

.method getLongAxisCells()I
    .locals 1

    .prologue
    .line 1271
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    return v0
.end method

.method getOccupiedCells()[Z
    .locals 9

    .prologue
    .line 946
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    .line 947
    .local v2, portrait:Z
    if-eqz v2, :cond_0

    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v4, v7

    .line 948
    .local v4, xCount:I
    :goto_0
    if-eqz v2, :cond_1

    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v6, v7

    .line 949
    .local v6, yCount:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    .line 951
    .local v1, occupied:[[Z
    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v1, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 953
    mul-int v7, v4, v6

    new-array v0, v7, [Z

    .line 954
    .local v0, flat:[Z
    const/4 v5, 0x0

    .local v5, y:I
    :goto_2
    if-ge v5, v6, :cond_3

    .line 955
    const/4 v3, 0x0

    .local v3, x:I
    :goto_3
    if-ge v3, v4, :cond_2

    .line 956
    mul-int v7, v5, v4

    add-int/2addr v7, v3

    aget-object v8, v1, v3

    aget-boolean v8, v8, v5

    aput-boolean v8, v0, v7

    .line 955
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 947
    .end local v0           #flat:[Z
    .end local v1           #occupied:[[Z
    .end local v3           #x:I
    .end local v4           #xCount:I
    .end local v5           #y:I
    .end local v6           #yCount:I
    :cond_0
    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v4, v7

    goto :goto_0

    .line 948
    .restart local v4       #xCount:I
    :cond_1
    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v6, v7

    goto :goto_1

    .line 954
    .restart local v0       #flat:[Z
    .restart local v1       #occupied:[[Z
    .restart local v3       #x:I
    .restart local v5       #y:I
    .restart local v6       #yCount:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 960
    .end local v3           #x:I
    :cond_3
    return-object v0
.end method

.method getShortAxisCells()I
    .locals 1

    .prologue
    .line 1267
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    return v0
.end method

.method public getTag()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 7

    .prologue
    .line 348
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 349
    .local v0, info:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_0

    .line 350
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    .line 351
    .local v6, portrait:Z
    if-eqz v6, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v3, v1

    .line 352
    .local v3, xCount:I
    :goto_0
    if-eqz v6, :cond_2

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v4, v1

    .line 354
    .local v4, yCount:I
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    .line 355
    .local v5, occupied:[[Z
    const/4 v1, 0x0

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 357
    iget v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CellLayout;->findIntersectingVacantCells(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V

    .line 359
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    .line 361
    .end local v3           #xCount:I
    .end local v4           #yCount:I
    .end local v5           #occupied:[[Z
    .end local v6           #portrait:Z
    :cond_0
    return-object v0

    .line 351
    .restart local v6       #portrait:Z
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v3, v1

    goto :goto_0

    .line 352
    .restart local v3       #xCount:I
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v4, v1

    goto :goto_1
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getTag()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->invalidateAtLocation([I)V

    .line 1337
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    .line 1339
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 1263
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 267
    return-void
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 828
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 829
    .local v0, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->isDragging:Z

    .line 830
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 831
    return-void
.end method

.method onDropAborted(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 815
    if-eqz p1, :cond_0

    .line 816
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->isDragging:Z

    .line 817
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 820
    return-void
.end method

.method onDropChild(Landroid/view/View;[I)V
    .locals 4
    .parameter "child"
    .parameter "targetXY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 802
    if-eqz p1, :cond_0

    .line 803
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 804
    .local v0, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    aget v1, p2, v2

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    .line 805
    aget v1, p2, v3

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .line 806
    iput-boolean v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->isDragging:Z

    .line 807
    iput-boolean v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->dropped:Z

    .line 808
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mDragRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 809
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 810
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 812
    .end local v0           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 272
    .local v5, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v6, v0

    .line 274
    .local v6, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v5, :cond_8

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mRect:Landroid/graphics/Rect;

    move-object v11, v0

    .line 276
    .local v11, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mScrollX:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 277
    .local v16, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mScrollY:I

    move/from16 v21, v0

    add-int v18, v20, v21

    .line 278
    .local v18, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v9

    .line 280
    .local v9, count:I
    const/4 v10, 0x0

    .line 281
    .local v10, found:Z
    const/16 v20, 0x1

    sub-int v12, v9, v20

    .local v12, i:I
    :goto_0
    if-ltz v12, :cond_1

    .line 282
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 284
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 285
    :cond_0
    invoke-virtual {v8, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 286
    move-object v0, v11

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 287
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 288
    .local v13, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iput-object v8, v6, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 289
    move-object v0, v13

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 290
    move-object v0, v13

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 291
    move-object v0, v13

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 292
    move-object v0, v13

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 293
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v6

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 294
    const/4 v10, 0x1

    .line 295
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    .line 301
    .end local v8           #child:Landroid/view/View;
    .end local v13           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_1
    if-nez v10, :cond_2

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellXY:[I

    move-object v7, v0

    .line 303
    .local v7, cellXY:[I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->pointToCellExact(II[I)V

    .line 305
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    move v15, v0

    .line 306
    .local v15, portrait:Z
    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move/from16 v20, v0

    move/from16 v17, v20

    .line 307
    .local v17, xCount:I
    :goto_1
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move/from16 v20, v0

    move/from16 v19, v20

    .line 309
    .local v19, yCount:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mOccupied:[[Z

    move-object v14, v0

    .line 310
    .local v14, occupied:[[Z
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move-object v3, v14

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->findOccupiedCells(II[[ZLandroid/view/View;)V

    .line 312
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 313
    const/16 v20, 0x0

    aget v20, v7, v20

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 314
    const/16 v20, 0x1

    aget v20, v7, v20

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 315
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 316
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 317
    const/16 v20, 0x0

    aget v20, v7, v20

    if-ltz v20, :cond_7

    const/16 v20, 0x1

    aget v20, v7, v20

    if-ltz v20, :cond_7

    const/16 v20, 0x0

    aget v20, v7, v20

    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    const/16 v20, 0x1

    aget v20, v7, v20

    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    const/16 v20, 0x0

    aget v20, v7, v20

    aget-object v20, v14, v20

    const/16 v21, 0x1

    aget v21, v7, v21

    aget-boolean v20, v20, v21

    if-nez v20, :cond_7

    const/16 v20, 0x1

    :goto_3
    move/from16 v0, v20

    move-object v1, v6

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 329
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    .line 331
    .end local v7           #cellXY:[I
    .end local v14           #occupied:[[Z
    .end local v15           #portrait:Z
    .end local v17           #xCount:I
    .end local v19           #yCount:I
    :cond_2
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 343
    .end local v9           #count:I
    .end local v10           #found:Z
    .end local v11           #frame:Landroid/graphics/Rect;
    .end local v12           #i:I
    .end local v16           #x:I
    .end local v18           #y:I
    :cond_3
    :goto_4
    const/16 v20, 0x0

    return v20

    .line 281
    .restart local v8       #child:Landroid/view/View;
    .restart local v9       #count:I
    .restart local v10       #found:Z
    .restart local v11       #frame:Landroid/graphics/Rect;
    .restart local v12       #i:I
    .restart local v16       #x:I
    .restart local v18       #y:I
    :cond_4
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    .line 306
    .end local v8           #child:Landroid/view/View;
    .restart local v7       #cellXY:[I
    .restart local v15       #portrait:Z
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move/from16 v20, v0

    move/from16 v17, v20

    goto/16 :goto_1

    .line 307
    .restart local v17       #xCount:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move/from16 v20, v0

    move/from16 v19, v20

    goto/16 :goto_2

    .line 317
    .restart local v14       #occupied:[[Z
    .restart local v19       #yCount:I
    :cond_7
    const/16 v20, 0x0

    goto :goto_3

    .line 332
    .end local v7           #cellXY:[I
    .end local v9           #count:I
    .end local v10           #found:Z
    .end local v11           #frame:Landroid/graphics/Rect;
    .end local v12           #i:I
    .end local v14           #occupied:[[Z
    .end local v15           #portrait:Z
    .end local v16           #x:I
    .end local v17           #xCount:I
    .end local v18           #y:I
    .end local v19           #yCount:I
    :cond_8
    const/16 v20, 0x1

    move v0, v5

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 333
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 334
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 335
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 336
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 337
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v6

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 338
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v6

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 339
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mDirtyTag:Z

    .line 340
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v10

    .line 696
    .local v10, count:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v10, :cond_1

    .line 697
    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 698
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 700
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 702
    .local v12, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v8, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->x:I

    .line 703
    .local v8, childLeft:I
    iget v9, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->y:I

    .line 704
    .local v9, childTop:I
    iget v0, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v8

    iget v1, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v9

    invoke-virtual {v7, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 706
    iget-boolean v0, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 707
    const/4 v0, 0x0

    iput-boolean v0, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->dropped:Z

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    iget v3, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v8

    iget v4, v12, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 696
    .end local v8           #childLeft:I
    .end local v9           #childTop:I
    .end local v12           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 715
    .end local v7           #child:Landroid/view/View;
    :cond_1
    if-nez v10, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    if-eqz v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLTextView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/GLTextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLTextView;->layout(IIII)V

    .line 719
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 34
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 610
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v32

    .line 611
    .local v32, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v33

    .line 613
    .local v33, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 614
    .local v22, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 616
    .local v23, heightSpecSize:I
    if-eqz v32, :cond_0

    if-nez v22, :cond_1

    .line 617
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 620
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move/from16 v29, v0

    .line 621
    .local v29, shortAxisCells:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move/from16 v25, v0

    .line 622
    .local v25, longAxisCells:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    move v9, v0

    .line 623
    .local v9, longAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisEndPadding:I

    move/from16 v26, v0

    .line 624
    .local v26, longAxisEndPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    move v8, v0

    .line 625
    .local v8, shortAxisStartPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisEndPadding:I

    move/from16 v30, v0

    .line 626
    .local v30, shortAxisEndPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    move v4, v0

    .line 627
    .local v4, cellWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    move v5, v0

    .line 629
    .local v5, cellHeight:I
    move/from16 v0, v23

    move/from16 v1, v33

    if-le v0, v1, :cond_2

    const/4 v6, 0x1

    :goto_0
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    .line 631
    const/4 v6, 0x1

    sub-int v28, v29, v6

    .line 632
    .local v28, numShortGaps:I
    const/4 v6, 0x1

    sub-int v27, v25, v6

    .line 634
    .local v27, numLongGaps:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    move v6, v0

    if-eqz v6, :cond_4

    .line 635
    sub-int v6, v23, v9

    sub-int v6, v6, v26

    mul-int v7, v5, v25

    sub-int v31, v6, v7

    .line 637
    .local v31, vSpaceLeft:I
    div-int v6, v31, v27

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    .line 639
    sub-int v6, v33, v8

    sub-int v6, v6, v30

    mul-int v7, v4, v29

    sub-int v21, v6, v7

    .line 641
    .local v21, hSpaceLeft:I
    if-lez v28, :cond_3

    .line 642
    div-int v6, v21, v28

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    .line 660
    :goto_1
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    .line 661
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v20

    .line 665
    .local v20, count:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 666
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 667
    .local v17, child:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 669
    .local v3, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    move v6, v0

    if-eqz v6, :cond_6

    .line 670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    move v7, v0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 677
    :goto_3
    iget v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 678
    .local v18, childWidthMeasureSpec:I
    iget v6, v3, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 680
    .local v19, childheightMeasureSpec:I
    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 665
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 629
    .end local v3           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    .end local v17           #child:Landroid/view/View;
    .end local v18           #childWidthMeasureSpec:I
    .end local v19           #childheightMeasureSpec:I
    .end local v20           #count:I
    .end local v21           #hSpaceLeft:I
    .end local v24           #i:I
    .end local v27           #numLongGaps:I
    .end local v28           #numShortGaps:I
    .end local v31           #vSpaceLeft:I
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 644
    .restart local v21       #hSpaceLeft:I
    .restart local v27       #numLongGaps:I
    .restart local v28       #numShortGaps:I
    .restart local v31       #vSpaceLeft:I
    :cond_3
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    goto :goto_1

    .line 647
    .end local v21           #hSpaceLeft:I
    .end local v31           #vSpaceLeft:I
    :cond_4
    sub-int v6, v33, v9

    sub-int v6, v6, v26

    mul-int v7, v4, v25

    sub-int v21, v6, v7

    .line 649
    .restart local v21       #hSpaceLeft:I
    div-int v6, v21, v27

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    .line 651
    sub-int v6, v23, v8

    sub-int v6, v6, v30

    mul-int v7, v5, v29

    sub-int v31, v6, v7

    .line 653
    .restart local v31       #vSpaceLeft:I
    if-lez v28, :cond_5

    .line 654
    div-int v6, v31, v28

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    goto :goto_1

    .line 656
    :cond_5
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    goto/16 :goto_1

    .line 673
    .restart local v3       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    .restart local v17       #child:Landroid/view/View;
    .restart local v20       #count:I
    .restart local v24       #i:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    move v14, v0

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v15, v9

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->setup(IIIIII)V

    goto :goto_3

    .line 683
    .end local v3           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    .end local v17           #child:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    move-object v6, v0

    if-eqz v6, :cond_8

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenText:Lcom/sec/android/app/twlauncher/GLTextView;

    move-object v6, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move v7, v0

    const v8, 0x3f333333

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/high16 v8, -0x8000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .end local v8           #shortAxisStartPadding:I
    move-result v7

    const/high16 v8, -0x8000

    move/from16 v0, v23

    move v1, v8

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/twlauncher/GLTextView;->measure(II)V

    .line 689
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->setMeasuredDimension(II)V

    .line 690
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 520
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mPortrait:Z

    .line 522
    .local v1, portrait:Z
    if-eqz v1, :cond_4

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    move v0, v5

    .line 523
    .local v0, hStartPadding:I
    :goto_0
    if-eqz v1, :cond_5

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    move v2, v5

    .line 525
    .local v2, vStartPadding:I
    :goto_1
    sub-int v5, p1, v0

    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v8

    .line 526
    sub-int v5, p2, v2

    iget v6, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v6, v7

    div-int/2addr v5, v6

    aput v5, p3, v9

    .line 528
    if-eqz v1, :cond_6

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v3, v5

    .line 529
    .local v3, xAxis:I
    :goto_2
    if-eqz v1, :cond_7

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v4, v5

    .line 531
    .local v4, yAxis:I
    :goto_3
    aget v5, p3, v8

    if-gez v5, :cond_0

    .line 532
    aput v8, p3, v8

    .line 533
    :cond_0
    aget v5, p3, v8

    if-lt v5, v3, :cond_1

    .line 534
    sub-int v5, v3, v9

    aput v5, p3, v8

    .line 535
    :cond_1
    aget v5, p3, v9

    if-gez v5, :cond_2

    .line 536
    aput v8, p3, v9

    .line 537
    :cond_2
    aget v5, p3, v9

    if-lt v5, v4, :cond_3

    .line 538
    sub-int v5, v4, v9

    aput v5, p3, v9

    .line 539
    :cond_3
    return-void

    .line 522
    .end local v0           #hStartPadding:I
    .end local v2           #vStartPadding:I
    .end local v3           #xAxis:I
    .end local v4           #yAxis:I
    :cond_4
    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisStartPadding:I

    move v0, v5

    goto :goto_0

    .line 523
    .restart local v0       #hStartPadding:I
    :cond_5
    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisStartPadding:I

    move v2, v5

    goto :goto_1

    .line 528
    .restart local v2       #vStartPadding:I
    :cond_6
    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    move v3, v5

    goto :goto_2

    .line 529
    .restart local v3       #xAxis:I
    :cond_7
    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    move v4, v5

    goto :goto_3
.end method

.method public rectToCell(II)[I
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 843
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    .line 844
    .local v1, actualWidth:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    .line 845
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 848
    .local v2, smallerSize:I
    add-int v5, p1, v2

    div-int v3, v5, v2

    .line 849
    .local v3, spanX:I
    add-int v5, p2, v2

    div-int v4, v5, v2

    .line 851
    .local v4, spanY:I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    return-object v5
.end method

.method public rectToCell2(II)[I
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 857
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    .line 858
    .local v1, actualWidth:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    .line 860
    .local v0, actualHeight:I
    rem-int v4, p1, v1

    if-eqz v4, :cond_2

    div-int v4, p1, v1

    add-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 861
    .local v2, spanX:I
    :goto_0
    rem-int v4, p2, v0

    if-eqz v4, :cond_3

    div-int v4, p2, v0

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 863
    .local v3, spanY:I
    :goto_1
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    if-le v2, v4, :cond_0

    .line 864
    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    .line 867
    :cond_0
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    if-le v3, v4, :cond_1

    .line 868
    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    .line 871
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    return-object v4

    .line 860
    .end local v2           #spanX:I
    .end local v3           #spanY:I
    :cond_2
    div-int v4, p1, v1

    move v2, v4

    goto :goto_0

    .line 861
    .restart local v2       #spanX:I
    :cond_3
    div-int v4, p2, v0

    move v3, v4

    goto :goto_1
.end method

.method public rectToCellRound(II)[I
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 877
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellWidth:I

    .line 878
    .local v1, actualWidth:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mActualCellHeight:I

    .line 880
    .local v0, actualHeight:I
    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 881
    .local v2, spanX:I
    int-to-float v4, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 883
    .local v3, spanY:I
    if-nez v2, :cond_0

    .line 884
    const/4 v2, 0x1

    .line 885
    :cond_0
    if-nez v3, :cond_1

    .line 886
    const/4 v3, 0x1

    .line 888
    :cond_1
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    if-le v2, v4, :cond_2

    .line 889
    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mShortAxisCells:I

    .line 892
    :cond_2
    iget v4, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    if-le v3, v4, :cond_3

    .line 893
    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mLongAxisCells:I

    .line 896
    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    return-object v4
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 243
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 244
    if-eqz p1, :cond_0

    .line 245
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 246
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 249
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public resumeUpdates()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->resumeUpdates()V

    .line 178
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v0

    .line 724
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 725
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 726
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 728
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 724
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 734
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 735
    return-void
.end method

.method public setScreenClipExtendedEdge(I)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 170
    iput p1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mScreenClipExtendedEdge:I

    .line 171
    return-void
.end method

.method spanToPixel(II[I)V
    .locals 5
    .parameter "cellW"
    .parameter "cellH"
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    .line 585
    const/4 v0, 0x0

    sub-int v1, p1, v4

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    add-int/2addr v1, v2

    aput v1, p3, v0

    .line 586
    sub-int v0, p2, v4

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    add-int/2addr v0, v1

    aput v0, p3, v4

    .line 587
    return-void
.end method

.method spanToPixelH(I)I
    .locals 3
    .parameter "cellH"

    .prologue
    .line 574
    const/4 v0, 0x1

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mHeightGap:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method spanToPixelW(I)I
    .locals 3
    .parameter "cellW"

    .prologue
    .line 570
    const/4 v0, 0x1

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mWidthGap:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mCellWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public suspendUpdates()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout;->mChildSurfaceManager:Lcom/sec/android/app/twlauncher/ShadowedChildManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ShadowedChildManager;->suspendUpdates()V

    .line 175
    return-void
.end method

.method public updateBadgeCounts()V
    .locals 4

    .prologue
    .line 1343
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1344
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1345
    .local v0, childView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 1346
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 1348
    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v2           #tag:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->updateBadgeCount()I

    .line 1349
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1343
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1352
    .end local v0           #childView:Landroid/view/View;
    :cond_1
    return-void
.end method

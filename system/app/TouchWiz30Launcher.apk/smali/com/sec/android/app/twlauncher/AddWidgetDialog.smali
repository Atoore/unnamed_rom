.class Lcom/sec/android/app/twlauncher/AddWidgetDialog;
.super Landroid/widget/LinearLayout;
.source "AddWidgetDialog.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;,
        Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;
    }
.end annotation


# static fields
.field static final mReflectionShader:Lcom/sec/android/app/twlauncher/ReflectionShader;

.field private static mWeights:[F


# instance fields
.field protected SNAP_VELOCITY:I

.field private mActive:Z

.field private mArrowTopOffset:I

.field private mBackgroundHeight:F

.field private mBmArrowLeft:Landroid/graphics/Bitmap;

.field private mBmArrowRight:Landroid/graphics/Bitmap;

.field private mClientPaddingLeft:I

.field private mClientWidth:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mDownX:F

.field protected mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mFrameSurfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

.field protected mIsSingleTap:Z

.field private mItemPadding:I

.field private mItemWidth:I

.field private mItemsPerPage:I

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field private mLastScroller:F

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field protected mMaximumVelocity:I

.field private mMyOnClickListener:Landroid/view/View$OnClickListener;

.field private mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPageScrollWidth:I

.field private mScrollHistory:[F

.field private mScrollHistoryIndex:I

.field private mScrollableWidth:I

.field protected mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mSuspended:Z

.field protected mTargetScroll:I

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mViscousFluid:Landroid/view/animation/Interpolator;

.field private mWidgetFrameDrawable:Landroid/graphics/drawable/Drawable;

.field private mWidgetsOpened:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    .line 50
    new-instance v10, Lcom/sec/android/app/twlauncher/ReflectionShader;

    invoke-direct {v10}, Lcom/sec/android/app/twlauncher/ReflectionShader;-><init>()V

    sput-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mReflectionShader:Lcom/sec/android/app/twlauncher/ReflectionShader;

    .line 363
    const/16 v10, 0xf

    new-array v10, v10, [F

    sput-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    .line 365
    sget-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    array-length v1, v10

    .line 366
    .local v1, degree:I
    mul-int/lit8 v10, v1, 0x2

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    int-to-float v9, v10

    .line 367
    .local v9, window:F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 368
    int-to-float v10, v4

    div-float v2, v10, v9

    .line 369
    .local v2, frac:F
    const/high16 v10, 0x3f80

    const/high16 v11, 0x4080

    mul-float/2addr v11, v2

    float-to-double v11, v11

    const-wide/high16 v13, 0x4000

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    double-to-float v11, v11

    div-float v3, v10, v11

    .line 370
    .local v3, guass:F
    sget-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    aput v3, v10, v4

    .line 367
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 373
    .end local v2           #frac:F
    .end local v3           #guass:F
    :cond_0
    const/4 v7, 0x0

    .line 374
    .local v7, sum:F
    sget-object v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    .local v0, arr$:[F
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_1

    aget v8, v0, v5

    .line 375
    .local v8, w:F
    add-float/2addr v7, v8

    .line 374
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 376
    .end local v8           #w:F
    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_2

    .line 377
    sget-object v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    aget v11, v10, v4

    div-float/2addr v11, v7

    aput v11, v10, v4

    .line 376
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 378
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0x12c

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 60
    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFrameSurfaceList:Ljava/util/ArrayList;

    .line 73
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    .line 75
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mActive:Z

    .line 80
    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    .line 91
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mBmArrowLeft:Landroid/graphics/Bitmap;

    .line 92
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mBmArrowRight:Landroid/graphics/Bitmap;

    .line 93
    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mArrowTopOffset:I

    .line 357
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastScroller:F

    .line 359
    const/16 v2, 0xf

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    .line 361
    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    .line 522
    new-instance v2, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;-><init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    .line 555
    new-instance v2, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;-><init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 637
    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    .line 639
    const/16 v2, 0xc8

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->SNAP_VELOCITY:I

    .line 99
    new-instance v2, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/ViscousFluidInterpolator;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViscousFluid:Landroid/view/animation/Interpolator;

    .line 100
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViscousFluid:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 101
    new-instance v2, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 104
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    .line 105
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMaximumVelocity:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetFrameDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    sget-object v2, Lcom/sec/android/app/twlauncher/R$styleable;->AddWidgetDialog:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mBackgroundHeight:F

    .line 115
    const/4 v2, 0x4

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$108(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    return v0
.end method

.method private loadAllWidgets()V
    .locals 19

    .prologue
    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    .line 161
    .local v12, manager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v12}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v9

    .line 162
    .local v9, infos:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 164
    .local v7, inflator:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v14

    .line 165
    .local v14, samsungManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v13

    .line 167
    .local v13, sInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 169
    .local v3, allWidgets:[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 170
    .local v5, i:I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/appwidget/AppWidgetProviderInfo;

    .line 171
    .local v8, info:Landroid/appwidget/AppWidgetProviderInfo;
    aput-object v8, v3, v5

    .line 172
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 174
    .end local v8           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 175
    .local v8, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    aput-object v8, v3, v5

    .line 176
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 179
    .end local v8           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_1
    new-instance v17, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$WidgetComparator;-><init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 180
    move-object v4, v3

    .local v4, arr$:[Ljava/lang/Object;
    array-length v11, v4

    .local v11, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v11, :cond_3

    aget-object v16, v4, v6

    .line 181
    .local v16, widget:Ljava/lang/Object;
    const/high16 v17, 0x7f03

    const/16 v18, 0x0

    move-object v0, v7

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 183
    .local v15, v:Landroid/view/View;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 184
    move-object/from16 v0, v16

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-object v10, v0

    .line 185
    .local v10, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    move-object v0, v15

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    move-object/from16 v16, v0

    .end local v16           #widget:Ljava/lang/Object;
    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->setSamsungAppWidgetInfo(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    .line 186
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->addView(Landroid/view/View;)V

    .line 196
    .end local v10           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 180
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 188
    .restart local v16       #widget:Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, v16

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    move-object v10, v0

    .line 189
    .local v10, item:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->addView(Landroid/view/View;)V

    .line 190
    move-object v0, v10

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 192
    move-object v0, v10

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 194
    move-object v0, v15

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    move-object/from16 v16, v0

    .end local v16           #widget:Ljava/lang/Object;
    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->setInfo(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_3

    .line 199
    .end local v10           #item:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v15           #v:Landroid/view/View;
    :cond_3
    return-void
.end method

.method private snapToNearestItem(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 856
    iget v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int v0, v1, v2

    .line 857
    .local v0, w:I
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->snapToPixel(I)V

    .line 858
    return-void
.end method

.method private snapToPixel(I)V
    .locals 5
    .parameter "x"

    .prologue
    .line 861
    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, p1

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    .line 863
    iput p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTargetScroll:I

    .line 864
    return-void
.end method

.method private translateForChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FF)V
    .locals 6
    .parameter "canvas"
    .parameter "child"
    .parameter "rotate"
    .parameter "compress"

    .prologue
    const/4 v5, 0x0

    .line 381
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 382
    .local v2, hw:F
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    .line 384
    .local v1, chw:F
    iget v4, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    int-to-float v4, v4

    add-float v3, v4, v2

    .line 387
    .local v3, screenCenter:F
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    sub-float v0, v4, v3

    .line 390
    .local v0, centerOffset:F
    mul-float/2addr v0, p4

    .line 392
    add-float v4, v3, v0

    invoke-virtual {p1, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 393
    invoke-virtual {p1, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotateY(F)V

    .line 394
    neg-float v4, v1

    invoke-virtual {p1, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 395
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 968
    const/4 v0, 0x0

    .line 969
    .local v0, accept:Z
    if-ne p1, p0, :cond_0

    .line 970
    const/4 v0, 0x1

    .line 972
    :cond_0
    return v0
.end method

.method public activate()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 276
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    if-eqz v1, :cond_0

    .line 277
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    .line 290
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mActive:Z

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getAddToWorkspaceBackground()Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->setVisibility(I)V

    .line 292
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 295
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    .line 298
    .local v0, w:Lcom/sec/android/app/twlauncher/Workspace;
    const/high16 v1, 0x4282

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalBottomOffset(F)V

    .line 299
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalZoomFactor(F)V

    .line 300
    return-void

    .line 279
    .end local v0           #w:Lcom/sec/android/app/twlauncher/Workspace;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->removeAllViews()V

    .line 282
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->loadAllWidgets()V

    .line 287
    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    .line 288
    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTargetScroll:I

    goto :goto_0
.end method

.method protected awakenScrollBars()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 868
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    .line 870
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->postInvalidate()V

    .line 872
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 317
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    .line 322
    .local v0, w:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalBottomOffset(F)V

    .line 323
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setExternalZoomFactor(F)V

    .line 324
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    .line 325
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mActive:Z

    .line 326
    iput v3, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    .line 327
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 515
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 25
    .parameter "canvas"

    .prologue
    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v10

    .line 400
    .local v10, factor:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v6

    .line 401
    .local v6, childCount:I
    const/4 v13, 0x0

    .line 403
    .local v13, more:Z
    const/16 v17, 0x0

    cmpl-float v17, v10, v17

    if-lez v17, :cond_7

    if-lez v6, :cond_7

    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 405
    const/high16 v17, 0x3f80

    sub-float v17, v17, v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 407
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 410
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 411
    .local v16, scroller:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move v11, v0

    .line 412
    .local v11, histLen:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    add-int v17, v17, v11

    rem-int v17, v17, v11

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastScroller:F

    move/from16 v19, v0

    sub-float v19, v16, v19

    aput v19, v17, v18

    .line 414
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastScroller:F

    .line 416
    const/4 v9, 0x0

    .line 417
    .local v9, d:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistoryIndex:I

    move/from16 v18, v0

    add-int v18, v18, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollHistory:[F

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    rem-int v18, v18, v19

    aget v17, v17, v18

    sget-object v18, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWeights:[F

    aget v18, v18, v12

    mul-float v17, v17, v18

    add-float v9, v9, v17

    .line 417
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 421
    :cond_0
    const/16 v17, 0x0

    cmpl-float v17, v9, v17

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    :goto_1
    or-int v13, v13, v17

    .line 423
    const-wide/high16 v17, -0x4010

    const-wide/high16 v19, 0x3ff0

    move v0, v9

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x4051800000000000L

    div-double v21, v21, v23

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->min(DD)D

    move-result-wide v19

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->max(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4270

    mul-float v15, v17, v18

    .line 424
    .local v15, rotate:F
    const/high16 v17, 0x3f80

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const/high16 v19, 0x4348

    div-float v18, v18, v19

    sub-float v7, v17, v18

    .line 428
    .local v7, compress:F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v8, v0

    .line 433
    .local v8, cp:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 434
    const v17, 0x3ecccccd

    const v18, 0x3ecccccd

    const v19, 0x3ecccccd

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFF)V

    .line 435
    sget-object v17, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mReflectionShader:Lcom/sec/android/app/twlauncher/ReflectionShader;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 437
    const v17, 0x7f06000b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v14

    .line 438
    .local v14, reflectionHeight:I
    const-string v17, "reflectY"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getHeight()I

    move-result v19

    sub-int v18, v18, v19

    add-int v18, v18, v14

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    .line 439
    const-string v17, "fadeOutDistance"

    const/high16 v18, 0x42c8

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    .line 440
    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v17

    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 441
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 442
    .local v5, c:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v17

    add-int v17, v17, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v17, v17, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 444
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move v3, v15

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->translateForChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FF)V

    .line 445
    check-cast v5, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;

    .end local v5           #c:Landroid/view/View;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;->drawReflection(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 440
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 421
    .end local v7           #compress:F
    .end local v8           #cp:I
    .end local v14           #reflectionHeight:I
    .end local v15           #rotate:F
    :cond_2
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 449
    .restart local v7       #compress:F
    .restart local v8       #cp:I
    .restart local v14       #reflectionHeight:I
    .restart local v15       #rotate:F
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 451
    const/4 v12, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v17

    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 452
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 453
    .restart local v5       #c:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v17

    add-int v17, v17, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v17

    sub-int v17, v17, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 455
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move v3, v15

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->translateForChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FF)V

    .line 456
    check-cast v5, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;

    .end local v5           #c:Landroid/view/View;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v17

    or-int v13, v13, v17

    .line 457
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 451
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 460
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/GLScrollBars;->isHorizontalScrollBarDrawing()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->computeHorizontalScrollRange()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->computeHorizontalScrollOffset()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->computeHorizontalScrollExtent()I

    move-result v20

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLScrollBars;->drawHorizontalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z

    move-result v17

    or-int v13, v13, v17

    .line 464
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 465
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    .line 468
    .end local v7           #compress:F
    .end local v8           #cp:I
    .end local v9           #d:F
    .end local v11           #histLen:I
    .end local v12           #i:I
    .end local v14           #reflectionHeight:I
    .end local v15           #rotate:F
    .end local v16           #scroller:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 469
    :cond_8
    const/4 v13, 0x1

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    .line 479
    :cond_9
    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_a

    .line 480
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->setVisibility(I)V

    .line 484
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->removeAllViews()V

    .line 509
    :cond_a
    return v13
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 520
    return-void
.end method

.method public getBackgroundHeight()F
    .locals 2

    .prologue
    .line 344
    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mBackgroundHeight:F

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "outRect"

    .prologue
    .line 977
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 979
    return-void
.end method

.method public getOpenedWidgetsCount()I
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mActive:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    return v0
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 986
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 993
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1000
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1005
    const/4 v0, 0x0

    return v0
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .locals 3
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 616
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    .line 620
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 621
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 622
    .local v0, c:Landroid/view/View;
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    if-eqz v2, :cond_0

    .line 623
    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    .end local v0           #c:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->clearPhantom()V

    .line 620
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    :cond_1
    iget v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mWidgetsOpened:I

    .line 627
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 679
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_0

    .line 680
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 682
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 685
    .local v0, action:I
    if-ne v0, v11, :cond_2

    .line 686
    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    if-ne v8, v9, :cond_1

    move v8, v9

    .line 756
    :goto_0
    return v8

    .line 688
    :cond_1
    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    if-ne v8, v11, :cond_2

    move v8, v10

    .line 689
    goto :goto_0

    .line 693
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 694
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 696
    .local v5, y:F
    packed-switch v0, :pswitch_data_0

    .line 756
    :goto_1
    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    if-ne v8, v9, :cond_a

    move v8, v9

    goto :goto_0

    .line 710
    :pswitch_0
    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownX:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v3, v8

    .line 714
    .local v3, xDiff:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastMotionY:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v6, v8

    .line 716
    .local v6, yDiff:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    .line 717
    .local v1, touchSlop:I
    if-le v3, v1, :cond_4

    move v4, v9

    .line 718
    .local v4, xMoved:Z
    :goto_2
    if-le v6, v1, :cond_5

    move v7, v9

    .line 720
    .local v7, yMoved:Z
    :goto_3
    if-nez v4, :cond_3

    if-eqz v7, :cond_8

    .line 722
    :cond_3
    if-ge v3, v6, :cond_6

    if-eqz v7, :cond_6

    .line 723
    iput v11, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto :goto_1

    .end local v4           #xMoved:Z
    .end local v7           #yMoved:Z
    :cond_4
    move v4, v10

    .line 717
    goto :goto_2

    .restart local v4       #xMoved:Z
    :cond_5
    move v7, v10

    .line 718
    goto :goto_3

    .line 724
    .restart local v7       #yMoved:Z
    :cond_6
    if-eqz v4, :cond_7

    .line 726
    iput v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto :goto_1

    .line 729
    :cond_7
    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastMotionX:F

    goto :goto_1

    .line 733
    :cond_8
    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastMotionX:F

    goto :goto_1

    .line 739
    .end local v1           #touchSlop:I
    .end local v3           #xDiff:I
    .end local v4           #xMoved:Z
    .end local v6           #yDiff:I
    .end local v7           #yMoved:Z
    :pswitch_1
    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastMotionX:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownX:F

    .line 740
    iput v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastMotionY:F

    .line 742
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v9

    :goto_4
    iput v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto :goto_1

    :cond_9
    move v8, v10

    goto :goto_4

    .line 748
    :pswitch_2
    iput v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto :goto_1

    :cond_a
    move v8, v10

    .line 756
    goto :goto_0

    .line 696
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 911
    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int v2, v8, v9

    .line 912
    .local v2, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getPaddingTop()I

    move-result v3

    .line 913
    .local v3, childTop:I
    move v6, v2

    .line 915
    .local v6, lastRight:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v4

    .line 916
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 917
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 922
    .local v1, child:Landroid/view/View;
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;

    move-object v8, v0

    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    invoke-interface {v8, v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog$Child;->getLayoutWidth(I)F

    move-result v7

    .line 924
    .local v7, layoutWidth:F
    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    add-int/2addr v8, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {v1, v2, v3, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 928
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 929
    iget v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    add-int/2addr v8, v2

    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int v6, v8, v9

    .line 931
    :cond_0
    int-to-float v8, v2

    add-float/2addr v8, v7

    float-to-int v2, v8

    .line 916
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 933
    .end local v1           #child:Landroid/view/View;
    .end local v7           #layoutWidth:F
    :cond_1
    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    .line 934
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 876
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 877
    .local v5, widthMode:I
    if-nez v5, :cond_0

    .line 878
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "AddWidgetDialog widthMeasureSpec must be specified."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 880
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 881
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getPaddingLeft()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    .line 882
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getPaddingRight()I

    move-result v7

    sub-int v1, v6, v7

    .line 886
    .local v1, availableWidth:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    sub-int v6, v1, v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    div-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    .line 887
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    if-gez v6, :cond_1

    .line 888
    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    .line 897
    :cond_1
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemsPerPage:I

    mul-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    .line 898
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemPadding:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientWidth:I

    .line 899
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientWidth:I

    sub-int v0, v1, v6

    .line 900
    .local v0, additionalPadding:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    div-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mClientPaddingLeft:I

    .line 902
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildCount()I

    move-result v3

    .line 903
    .local v3, count:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mItemWidth:I

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 904
    .local v2, childWidthSpec:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 905
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2, p2}, Landroid/view/View;->measure(II)V

    .line 904
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 907
    :cond_2
    return-void
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "dragAction"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    .line 607
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 762
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_0

    .line 763
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 765
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 767
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 768
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 769
    .local v7, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 771
    .local v8, y:F
    packed-switch v0, :pswitch_data_0

    .line 852
    :cond_1
    :goto_0
    return v12

    .line 777
    :pswitch_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 780
    iput v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastMotionX:F

    iput v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDownX:F

    .line 781
    iput v8, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastMotionY:F

    goto :goto_0

    .line 785
    :pswitch_1
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    if-ne v9, v12, :cond_1

    .line 786
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastMotionX:F

    sub-float/2addr v9, v7

    float-to-int v1, v9

    .line 787
    .local v1, deltaX:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastMotionY:F

    sub-float/2addr v9, v8

    float-to-int v2, v9

    .line 789
    .local v2, deltaY:I
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mIsSingleTap:Z

    if-eqz v9, :cond_3

    .line 790
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    if-gt v9, v10, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchSlop:I

    if-le v9, v10, :cond_1

    .line 791
    :cond_2
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mIsSingleTap:Z

    .line 798
    :cond_3
    iput v7, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLastMotionX:F

    .line 801
    if-gez v1, :cond_5

    .line 802
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    neg-int v4, v9

    .line 803
    .local v4, minScrollX:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    if-le v9, v4, :cond_1

    .line 804
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    if-lez v9, :cond_4

    .line 805
    invoke-virtual {p0, v1, v11}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->scrollBy(II)V

    goto :goto_0

    .line 807
    :cond_4
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    sub-int v9, v4, v9

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {p0, v9, v11}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->scrollBy(II)V

    goto :goto_0

    .line 810
    .end local v4           #minScrollX:I
    :cond_5
    if-lez v1, :cond_1

    .line 811
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollableWidth:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int v3, v9, v10

    .line 812
    .local v3, maxScrollX:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    if-ge v9, v3, :cond_1

    .line 813
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    sub-int v9, v3, v9

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {p0, v9, v11}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->scrollBy(II)V

    goto :goto_0

    .line 820
    .end local v1           #deltaX:I
    .end local v2           #deltaY:I
    .end local v3           #maxScrollX:I
    :pswitch_2
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    if-ne v9, v12, :cond_6

    .line 821
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mIsSingleTap:Z

    if-eqz v9, :cond_7

    .line 822
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mIsSingleTap:Z

    .line 843
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 844
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 846
    :cond_6
    iput v11, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto/16 :goto_0

    .line 824
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 825
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v5, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 826
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    float-to-int v6, v9

    .line 828
    .local v6, velocityX:I
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mViscousFluid:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 829
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->SNAP_VELOCITY:I

    if-le v6, v9, :cond_8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v9

    if-nez v9, :cond_8

    .line 831
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTargetScroll:I

    iget v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->snapToPixel(I)V

    .line 840
    :goto_2
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_1

    .line 833
    :cond_8
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->SNAP_VELOCITY:I

    neg-int v9, v9

    if-ge v6, v9, :cond_9

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v9

    if-nez v9, :cond_9

    .line 835
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTargetScroll:I

    iget v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mPageScrollWidth:I

    add-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->snapToPixel(I)V

    goto :goto_2

    .line 838
    :cond_9
    iget v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mScrollX:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->snapToNearestItem(I)V

    goto :goto_2

    .line 849
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #velocityX:I
    :pswitch_3
    iput v11, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mTouchState:I

    goto/16 :goto_0

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 156
    return-void
.end method

.method public setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 151
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getAddToWorkspaceBackground()Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;->addHeightProvider(Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground$HeightProvider;)V

    .line 152
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->deactivate()V

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mSuspended:Z

    .line 332
    return-void
.end method

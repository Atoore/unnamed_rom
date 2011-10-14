.class public Lcom/sec/android/app/twlauncher/MenuManager;
.super Lcom/sec/android/app/twlauncher/Scene;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/sec/android/app/twlauncher/DragController$DragListener;
.implements Lcom/sec/android/app/twlauncher/DragScroller;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/MenuManager$9;,
        Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;,
        Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;,
        Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;,
        Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;,
        Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;,
        Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;,
        Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;,
        Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;,
        Lcom/sec/android/app/twlauncher/MenuManager$PitchState;
    }
.end annotation


# static fields
.field private static mPageFolderRotation:F


# instance fields
.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mActivityMgr:Landroid/app/ActivityManager;

.field private mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

.field private mAniFadeIn:Landroid/view/animation/Animation;

.field private mAniFadeOut:Landroid/view/animation/Animation;

.field private mAniRotateFadeIn:Landroid/view/animation/Animation;

.field private mAniRotateFadeOut:Landroid/view/animation/Animation;

.field private mAniTransition:Landroid/view/animation/Animation;

.field private mCloseAnimations:[Landroid/view/animation/Animation;

.field private final mColumnNum:I

.field private mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

.field private mDragCellIndexOrig:I

.field private mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

.field private mDragScreen:I

.field private mDragView:Landroid/view/View;

.field private mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mExecDragOverDelayed:Z

.field private mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

.field private mFolderPreviewOffsetX:F

.field private mFolderPreviewOffsetY:F

.field private mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

.field private mHasOpenListViewFolder:Z

.field private mIndicatorTransYLM:I

.field private mIsClosing:Z

.field private mIsClosingGL:Z

.field private mIsOpeningGL:Z

.field private mItemsOnPage:I

.field private mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

.field mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

.field private mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

.field mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

.field mMode:I

.field mMyOnClickListener:Landroid/view/View$OnClickListener;

.field private mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mOpenAnimations:[Landroid/view/animation/Animation;

.field private mOrientation:I

.field private mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

.field private mPitchThreshold:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrevMode:I

.field private mPreviewIconSize:F

.field private mPreviewIconXGap:F

.field private mPreviewIconYGap:F

.field private mPreviewIconYOffset:F

.field private mRaisedIconStartTime:J

.field private final mRaisedIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mResolveInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorsRegistered:Z

.field private mSortMethod:I

.field private mUnPhanAnim:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;

.field private mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mZoomScaleLM:F

.field private mZoomTransYLM:I

.field private maxCellNum:I

.field private maxPageNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 266
    invoke-direct {p0, p1, p2, v5}, Lcom/sec/android/app/twlauncher/Scene;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrevMode:I

    .line 148
    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 150
    iput v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    .line 195
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    .line 197
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    .line 203
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    .line 207
    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    .line 210
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0x1f4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 213
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mActivityMgr:Landroid/app/ActivityManager;

    .line 215
    iput-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    .line 217
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    .line 225
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kSetThreshold:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    .line 227
    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    .line 229
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIconStartTime:J

    .line 231
    new-instance v2, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUnPhanAnim:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;

    .line 235
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    invoke-direct {v2, p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    .line 241
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHasOpenListViewFolder:Z

    .line 261
    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    .line 262
    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    .line 3211
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$4;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    .line 3303
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$5;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 4293
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$6;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 4388
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$7;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    .line 4420
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 4422
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    .line 4424
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    .line 4430
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$8;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    .line 267
    new-instance v2, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 270
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .line 271
    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    .line 273
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    new-array v2, v2, [Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    .line 274
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    new-array v2, v2, [Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    .line 276
    sget-object v2, Lcom/sec/android/app/twlauncher/R$styleable;->MenuManager:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 279
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mZoomTransYLM:I

    .line 281
    const/high16 v2, 0x3f40

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mZoomScaleLM:F

    .line 282
    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIndicatorTransYLM:I

    .line 284
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->init(Landroid/content/res/Resources;)V

    .line 285
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->initPageIndicator(Landroid/content/res/Resources;)V

    .line 286
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->initiateDragOnView(Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/UserFolderModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mExecDragOverDelayed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mExecDragOverDelayed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHasOpenListViewFolder:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/MenuManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->openFolder(Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->dragFromListView(Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->removeFolder(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;)Landroid/graphics/PointF;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->centerViewToLastOrigTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private addBlankPage()V
    .locals 5

    .prologue
    .line 4018
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 4030
    :cond_0
    :goto_0
    return-void

    .line 4021
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    .line 4022
    .local v2, pageCount:I
    if-eqz v2, :cond_0

    .line 4025
    const/4 v3, 0x1

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4026
    .local v1, lastPage:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4027
    .local v0, itemCount:I
    if-lez v0, :cond_0

    .line 4028
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    goto :goto_0
.end method

.method private assignEditToNormal()Z
    .locals 5

    .prologue
    .line 2489
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-nez v3, :cond_0

    .line 2490
    const/4 v3, 0x0

    .line 2501
    :goto_0
    return v3

    .line 2494
    :cond_0
    const/4 v2, 0x0

    .line 2495
    .local v2, mustUpdateDb:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_1

    .line 2496
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2497
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignEditToNormal()V

    .line 2498
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty()Z

    move-result v3

    or-int/2addr v2, v3

    .line 2495
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2500
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->assignEditToNormal()Z

    move-result v3

    or-int/2addr v2, v3

    move v3, v2

    .line 2501
    goto :goto_0
.end method

.method private assignNormalToEdit()Z
    .locals 5

    .prologue
    .line 2505
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-nez v3, :cond_0

    .line 2506
    const/4 v3, 0x0

    .line 2517
    :goto_0
    return v3

    .line 2510
    :cond_0
    const/4 v2, 0x0

    .line 2511
    .local v2, mustUpdateDb:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_1

    .line 2512
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2513
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    .line 2514
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty()Z

    move-result v3

    or-int/2addr v2, v3

    .line 2511
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2516
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->assignNormalToEdit()Z

    move-result v3

    or-int/2addr v2, v3

    move v3, v2

    .line 2517
    goto :goto_0
.end method

.method private cancelRunningTransitionAnimation()V
    .locals 1

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    .line 1344
    :cond_0
    return-void
.end method

.method private centerViewToLastOrigTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;
    .locals 6
    .parameter "view"

    .prologue
    .line 4803
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v1

    .line 4804
    .local v1, origPos:Landroid/graphics/PointF;
    iget v3, v1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 4805
    .local v0, left:I
    iget v3, v1, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 4806
    .local v2, top:I
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v4, v0

    int-to-float v5, v2

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method

.method private closeAllOpenFolders()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2873
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2874
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 2875
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2876
    .local v4, v:Landroid/view/View;
    instance-of v5, v4, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v5, :cond_0

    .line 2877
    check-cast v4, Lcom/sec/android/app/twlauncher/UserFolder;

    .end local v4           #v:Landroid/view/View;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/UserFolder;->close()V

    .line 2874
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2881
    .end local v1           #i:I
    :cond_1
    const/4 v3, 0x0

    .line 2885
    .local v3, page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    sub-int v1, v5, v6

    .restart local v1       #i:I
    :goto_1
    if-ltz v1, :cond_5

    .line 2886
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2887
    .restart local v3       #page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2885
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2890
    :cond_3
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v5

    sub-int v2, v5, v6

    .local v2, j:I
    :goto_2
    if-ltz v2, :cond_2

    .line 2891
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2892
    .local v0, app:Landroid/view/View;
    instance-of v5, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v5, :cond_4

    .line 2893
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #app:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    .line 2890
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 2898
    .end local v2           #j:I
    .end local v3           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_5
    return-void
.end method

.method private closeDragGap()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1699
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-nez v5, :cond_0

    move v5, v6

    .line 1715
    :goto_0
    return v5

    .line 1702
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 1703
    .local v4, parent:Landroid/view/ViewParent;
    instance-of v5, v4, Lcom/sec/android/app/twlauncher/AppMenu;

    if-nez v5, :cond_1

    move v5, v6

    .line 1704
    goto :goto_0

    .line 1706
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    check-cast v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 1707
    .local v2, itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v1, v0

    .line 1708
    .local v1, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v5

    sub-int v3, v5, v7

    .line 1709
    .local v3, lastChildIndex:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-lt v5, v3, :cond_2

    move v5, v6

    .line 1710
    goto :goto_0

    .line 1712
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 1713
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1714
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    move v5, v7

    .line 1715
    goto :goto_0
.end method

.method private copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 6
    .parameter "adapter"
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    .line 3570
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3571
    :cond_0
    const/4 v3, 0x0

    .line 3582
    :goto_0
    return-object v3

    .line 3572
    :cond_1
    const/4 v1, 0x0

    .line 3573
    .local v1, adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    .line 3574
    .local v0, adapterCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3575
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3576
    .restart local v1       #adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3578
    invoke-virtual {v1, p2, v5, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;ZZ)V

    :cond_2
    move-object v3, v1

    .line 3582
    goto :goto_0

    .line 3574
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private disablePitchDetection()V
    .locals 2

    .prologue
    .line 4698
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    if-eqz v0, :cond_0

    .line 4699
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 4700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    .line 4701
    const-string v0, "Launcher.MenuManager"

    const-string v1, "Pitch detection disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4703
    :cond_0
    return-void
.end method

.method private dragFromListView(Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V
    .locals 6
    .parameter "view"
    .parameter "info"
    .parameter "fromFolder"

    .prologue
    .line 3161
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeAllApplications()V

    .line 3163
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 3164
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 3166
    if-eqz p3, :cond_0

    .line 3167
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->centerViewToLastOrigTouchPoint(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v5

    .line 3168
    .local v5, p:Landroid/graphics/PointF;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v3, p2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    .line 3174
    .end local v5           #p:Landroid/graphics/PointF;
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    .line 3175
    return-void

    .line 3171
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v1, p2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    const/4 v2, 0x2

    invoke-interface {v0, p1, p0, v1, v2}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private drawPageIndicator(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 4
    .parameter "canvas"

    .prologue
    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, redraw:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v2, :cond_0

    .line 733
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 734
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageScrollOffset(I)V

    .line 739
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z

    move-result v0

    .line 741
    :cond_0
    return v0

    .line 736
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    .line 737
    .local v1, updatedScreen:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    goto :goto_0
.end method

.method private dumpAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 5
    .parameter

    .prologue
    const-string v4, " "

    const-string v3, "DebugDb"

    .line 2285
    if-eqz p1, :cond_0

    .line 2286
    const-string v0, "DebugDb"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adater pointer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2288
    const-string v1, "DebugDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump Adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2291
    :cond_0
    const-string v0, "DebugDb"

    const-string v0, "Adater pointer is NULL"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :cond_1
    return-void
.end method

.method private enablePitchDetection()V
    .locals 3

    .prologue
    .line 4688
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 4690
    const-string v0, "Launcher.MenuManager"

    const-string v1, "Pitch detection enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4691
    sget-object v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kSetThreshold:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    .line 4692
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 4693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSensorsRegistered:Z

    .line 4695
    :cond_0
    return-void
.end method

.method private getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2539
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 2540
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2546
    .restart local p1       #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2547
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2548
    .local v1, page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 2546
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2550
    .end local v1           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 2551
    return-object p1
.end method

.method private getEmptyAppMenu(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    .line 2320
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    sub-int v0, v2, v4

    .line 2321
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2322
    .local v1, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-lt v2, v3, :cond_1

    .line 2323
    :cond_0
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v1

    .line 2324
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    sub-int v0, v2, v4

    .line 2335
    :cond_1
    return-object v1
.end method

.method private getEmptyPageView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 10
    .parameter "aInfo"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 2339
    const/4 v3, 0x0

    .local v3, page:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v4, 0x0

    .line 2340
    .local v4, temp:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    sub-int v0, v5, v8

    .line 2342
    .local v0, count:I
    const/4 v2, 0x0

    .line 2344
    .local v2, num:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 2345
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v5, v9, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v5

    move v2, v5

    .line 2349
    :cond_0
    :goto_0
    if-ne v2, v7, :cond_1

    .line 2350
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v5, v9, :cond_7

    sub-int v5, v0, v8

    move v2, v5

    .line 2352
    :cond_1
    :goto_1
    if-gez v2, :cond_2

    .line 2353
    const/4 v2, 0x0

    .line 2356
    :cond_2
    const/4 v3, 0x0

    .line 2357
    :goto_2
    if-gt v2, v0, :cond_3

    .line 2358
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2359
    .restart local v4       #temp:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v5, v6, :cond_8

    .line 2360
    move-object v3, v4

    .line 2364
    :cond_3
    if-nez v3, :cond_4

    .line 2365
    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v3

    .line 2366
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    sub-int v2, v5, v8

    .line 2368
    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v1

    .line 2369
    .local v1, itemCount:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v5, v9, :cond_9

    .line 2370
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 2371
    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditPageNum(I)V

    .line 2372
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditCellNum(I)V

    .line 2381
    :cond_5
    :goto_3
    return-object v3

    .line 2345
    .end local v1           #itemCount:I
    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v5

    move v2, v5

    goto :goto_0

    :cond_7
    move v2, v0

    .line 2350
    goto :goto_1

    .line 2357
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2375
    .restart local v1       #itemCount:I
    :cond_9
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v5

    if-ne v5, v7, :cond_a

    .line 2376
    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    .line 2377
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCellNum(I)V

    .line 2379
    :cond_a
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    goto :goto_3
.end method

.method private getListView()Lcom/sec/android/app/twlauncher/GLFastScrollListView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3866
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v2, v3, :cond_0

    move-object v2, v4

    .line 3877
    :goto_0
    return-object v2

    .line 3871
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 3872
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3873
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    if-eqz v2, :cond_1

    .line 3874
    check-cast v1, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    .end local v1           #view:Landroid/view/View;
    move-object v2, v1

    goto :goto_0

    .line 3871
    .restart local v1       #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1           #view:Landroid/view/View;
    :cond_2
    move-object v2, v4

    .line 3877
    goto :goto_0
.end method

.method private getPointInScaledDimension(II)Landroid/graphics/Point;
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4898
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getScaleRatio()[F

    move-result-object v2

    .line 4899
    .local v2, ratio:[F
    int-to-float v3, p1

    const/4 v4, 0x0

    aget v4, v2, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 4900
    .local v0, newX:I
    int-to-float v3, p2

    const/4 v4, 0x1

    aget v4, v2, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int v1, v3, v4

    .line 4901
    .local v1, newY:I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method

.method private getScaledRectInScaledDimension(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .parameter "unscaledRect"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4854
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getScaleRatio()[F

    move-result-object v2

    .line 4855
    .local v2, ratio:[F
    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    aget v6, v2, v7

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 4856
    .local v1, left:I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    aget v6, v2, v8

    div-float/2addr v5, v6

    float-to-int v3, v5

    .line 4857
    .local v3, top:I
    int-to-float v5, v1

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v6

    float-to-int v1, v5

    .line 4858
    int-to-float v5, v3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 4859
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    aget v6, v2, v7

    div-float/2addr v5, v6

    float-to-int v4, v5

    .line 4860
    .local v4, width:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    aget v6, v2, v8

    div-float/2addr v5, v6

    float-to-int v0, v5

    .line 4861
    .local v0, height:I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v5
.end method

.method private getSortedAdapter(Landroid/widget/ArrayAdapter;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, aDispApps:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2586
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v1, v2, :cond_2

    .line 2587
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;-><init>()V

    .line 2596
    .local v0, sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v1, :cond_0

    .line 2597
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->copyFromAppInfoAdapter(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)Z

    .line 2599
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v1, :cond_1

    .line 2600
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getUserFolders()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->copyFromFolderInfoList(Landroid/widget/ArrayAdapter;Ljava/util/concurrent/CopyOnWriteArrayList;)Z

    .line 2601
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getAddedFolders()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->copyFromFolderInfoList(Landroid/widget/ArrayAdapter;Ljava/util/concurrent/CopyOnWriteArrayList;)Z

    .line 2603
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v1, v2, :cond_5

    move v1, v3

    .line 2609
    :goto_1
    return v1

    .line 2589
    .end local v0           #sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-ne v1, v2, :cond_3

    .line 2590
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;-><init>()V

    .restart local v0       #sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    goto :goto_0

    .line 2591
    .end local v0           #sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-nez v1, :cond_4

    .line 2592
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;-><init>()V

    .restart local v0       #sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    goto :goto_0

    .line 2594
    .end local v0           #sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :cond_4
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;-><init>(I)V

    .restart local v0       #sorter:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    goto :goto_0

    .line 2606
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 2607
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 2608
    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    move v1, v2

    .line 2609
    goto :goto_1
.end method

.method private getSortedAdapter(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z
    .locals 1
    .parameter
    .parameter
    .parameter "aMustUpdateDb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2676
    .local p1, aDispApps:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .local p2, aASZApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getSortedAdapter(Landroid/widget/ArrayAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2677
    const/4 v0, 0x0

    .line 2679
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->removeFolderAndASZApps(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z

    move-result v0

    goto :goto_0
.end method

.method private getStartAndEndForASZAnimation([ILandroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 15
    .parameter "point"
    .parameter "itemView"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 4773
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getScaleRatio()[F

    move-result-object v5

    .line 4775
    .local v5, ratio:[F
    const/4 v11, 0x0

    aget v11, p1, v11

    const/4 v12, 0x1

    aget v12, p1, v12

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/MenuManager;->getPointInScaledDimension(II)Landroid/graphics/Point;

    move-result-object v6

    .line 4776
    .local v6, scaledPoint:Landroid/graphics/Point;
    iget v11, v6, Landroid/graphics/Point;->x:I

    move v0, v11

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 4777
    iget v11, v6, Landroid/graphics/Point;->y:I

    move v0, v11

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 4778
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v11, v0

    const/16 v12, 0xa

    sub-int/2addr v11, v12

    move v0, v11

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 4780
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v11, v0

    const/16 v12, 0xa

    sub-int/2addr v11, v12

    move v0, v11

    move-object/from16 v1, p4

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 4783
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    .line 4784
    .local v2, asz:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 4785
    .local v3, aszItemOrig:Landroid/graphics/Rect;
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4786
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getScaledRectInScaledDimension(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 4788
    .local v4, aszItemScaled:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-double v11, v11

    const-wide/high16 v13, 0x3fe0

    mul-double/2addr v11, v13

    double-to-int v9, v11

    .line 4789
    .local v9, xDiff:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/lit8 v10, v11, 0x2

    .line 4790
    .local v10, yDiff:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getLeft()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v7, v11

    .line 4791
    .local v7, startX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getTop()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v8, v11

    .line 4792
    .local v8, startY:F
    const/4 v11, 0x0

    aget v11, v5, v11

    div-float/2addr v7, v11

    .line 4793
    const/4 v11, 0x1

    aget v11, v5, v11

    div-float/2addr v8, v11

    .line 4794
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    int-to-float v12, v9

    sub-float/2addr v11, v12

    add-float/2addr v7, v11

    .line 4795
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    int-to-float v12, v10

    add-float/2addr v11, v12

    add-float/2addr v8, v11

    .line 4797
    float-to-int v11, v7

    move v0, v11

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 4798
    float-to-int v11, v8

    move v0, v11

    move-object/from16 v1, p3

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 4800
    return-void
.end method

.method private getXDeltaValue(I)F
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x42c8

    const/high16 v6, 0x4248

    const/4 v5, 0x0

    const/high16 v4, -0x3d38

    const/high16 v3, -0x3db8

    .line 4461
    .line 4462
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    rem-int v0, p1, v0

    .line 4464
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4465
    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v5

    .line 4515
    :goto_1
    return v0

    .line 4467
    :pswitch_0
    const/high16 v0, -0x3d10

    .line 4468
    goto :goto_1

    .line 4470
    :pswitch_1
    const/high16 v0, -0x3d90

    .line 4471
    goto :goto_1

    .line 4473
    :pswitch_2
    const/high16 v0, 0x4270

    .line 4474
    goto :goto_1

    .line 4476
    :pswitch_3
    const/high16 v0, 0x42f0

    goto :goto_1

    .line 4480
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 4481
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    move v0, v4

    .line 4484
    goto :goto_1

    :pswitch_5
    move v0, v3

    .line 4487
    goto :goto_1

    :pswitch_6
    move v0, v5

    .line 4490
    goto :goto_1

    :pswitch_7
    move v0, v6

    .line 4493
    goto :goto_1

    :pswitch_8
    move v0, v7

    .line 4495
    goto :goto_1

    .line 4499
    :cond_1
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_9
    move v0, v4

    .line 4502
    goto :goto_1

    :pswitch_a
    move v0, v3

    .line 4505
    goto :goto_1

    :pswitch_b
    move v0, v6

    .line 4508
    goto :goto_1

    :pswitch_c
    move v0, v7

    .line 4510
    goto :goto_1

    .line 4465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 4481
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 4499
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getYDeltaValue(I)F
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x430c

    const/high16 v6, 0x428c

    const/4 v5, 0x0

    const/high16 v4, -0x3cf4

    const/high16 v3, -0x3d74

    .line 4519
    .line 4520
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    div-int v0, p1, v0

    .line 4522
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4523
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    .line 4524
    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v5

    .line 4573
    :goto_1
    return v0

    :pswitch_0
    move v0, v4

    .line 4527
    goto :goto_1

    :pswitch_1
    move v0, v3

    .line 4530
    goto :goto_1

    :pswitch_2
    move v0, v5

    .line 4533
    goto :goto_1

    :pswitch_3
    move v0, v6

    .line 4536
    goto :goto_1

    :pswitch_4
    move v0, v7

    .line 4538
    goto :goto_1

    .line 4542
    :cond_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    move v0, v4

    .line 4545
    goto :goto_1

    :pswitch_6
    move v0, v3

    .line 4548
    goto :goto_1

    :pswitch_7
    move v0, v6

    .line 4551
    goto :goto_1

    :pswitch_8
    move v0, v7

    .line 4553
    goto :goto_1

    .line 4558
    :cond_1
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 4560
    :pswitch_9
    const/high16 v0, -0x3d60

    .line 4561
    goto :goto_1

    .line 4563
    :pswitch_a
    const/high16 v0, -0x3de0

    .line 4564
    goto :goto_1

    .line 4566
    :pswitch_b
    const/high16 v0, 0x4220

    .line 4567
    goto :goto_1

    .line 4569
    :pswitch_c
    const/high16 v0, 0x42a0

    goto :goto_1

    .line 4524
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 4542
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 4558
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private init(Landroid/content/res/Resources;)V
    .locals 5
    .parameter "res"

    .prologue
    const/4 v4, 0x0

    .line 292
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 294
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    .line 296
    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 298
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 299
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    .line 300
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mMaximumVelocity:I

    .line 301
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    .line 306
    const v1, 0x7f090005

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    .line 309
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 314
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 315
    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    .line 316
    const/16 v1, 0x320

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    .line 322
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 324
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->initAnimation()V

    .line 326
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setAnimationCacheEnabled(Z)V

    .line 328
    const v1, 0x7f0b004a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderPreviewOffsetX:F

    .line 329
    const v1, 0x7f0b004b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderPreviewOffsetY:F

    .line 331
    const v1, 0x7f0b004c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconSize:F

    .line 332
    const v1, 0x7f0b004d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconXGap:F

    .line 333
    const v1, 0x7f0b004e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconYGap:F

    .line 335
    const v1, 0x7f0b004f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconYOffset:F

    .line 340
    return-void

    .line 318
    :cond_0
    const/16 v1, 0x258

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    .line 319
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mContinuousScrollDuration:I

    goto :goto_0
.end method

.method private initAnimation()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x1f4

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 4300
    move v0, v7

    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v0, v1, :cond_1

    .line 4301
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    if-eqz v1, :cond_0

    .line 4302
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getXDeltaValue(I)F

    move-result v1

    .line 4303
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getYDeltaValue(I)F

    move-result v2

    .line 4305
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v1, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4306
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4, v8}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4307
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4308
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4309
    new-instance v5, Landroid/view/animation/AnimationSet;

    invoke-direct {v5, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 4310
    invoke-virtual {v5, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4311
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4312
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aput-object v5, v3, v0

    .line 4314
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 4315
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v6, v1, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4316
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4317
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aput-object v3, v1, v0

    .line 4318
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v1, v1, v0

    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v2, v8}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4300
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4320
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v6, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v2, v1, v0

    .line 4321
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, v6, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v2, v1, v0

    .line 4322
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aget-object v1, v1, v0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4323
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v1, v1, v0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 4327
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->setDelay(F)V

    .line 4328
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;->setDelay(F)V

    .line 4337
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    .line 4339
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    .line 4342
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 4343
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 4344
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4345
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4346
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4348
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 4349
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4350
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4351
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4352
    return-void
.end method

.method private initPageIndicator(Landroid/content/res/Resources;)V
    .locals 9
    .parameter

    .prologue
    .line 720
    new-instance v0, Lcom/sec/android/app/twlauncher/PageIndicator;

    const v1, 0x7f0b0038

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/16 v3, 0x9

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorTop:I

    const v1, 0x7f0b0033

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v1, 0x7f0b0034

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v1, 0x7f090004

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    move-object v1, p1

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/twlauncher/PageIndicator;-><init>(Landroid/content/res/Resources;IIIIIZLcom/sec/android/app/twlauncher/Scene;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    .line 728
    return-void
.end method

.method private initiateDragOnView(Lcom/sec/android/app/twlauncher/DragSource;Landroid/view/View;Landroid/graphics/PointF;)Z
    .locals 13
    .parameter "dragSource"
    .parameter "aView"
    .parameter "offset"

    .prologue
    const/4 v12, 0x1

    .line 3269
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v2, v0

    .line 3270
    .local v2, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 3271
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 3272
    .local v11, tag:Ljava/lang/Object;
    if-eqz v11, :cond_1

    instance-of v1, v11, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 3273
    move-object v0, v11

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v7, v0

    .line 3274
    .local v7, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 3275
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 3276
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3277
    .local v10, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 3278
    invoke-virtual {v10, v9}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v2, :cond_2

    .line 3279
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 3280
    iput v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 3285
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 3287
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v4, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v4, v7}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    const/4 v5, 0x0

    move-object v3, p1

    move-object/from16 v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    .line 3290
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->enableRollNavigation()V

    .line 3299
    .end local v7           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v9           #i:I
    .end local v10           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_1
    :goto_1
    return v12

    .line 3277
    .restart local v7       #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v9       #i:I
    .restart local v10       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3292
    .end local v9           #i:I
    .end local v10           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_3
    new-instance v8, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v8, v7}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3293
    .local v8, dragInfo:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->closeAllApplications()V

    .line 3294
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    invoke-interface {v1, v2, p1, v8, v12}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 3296
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    goto :goto_1
.end method

.method private isListChild()Z
    .locals 4

    .prologue
    .line 4577
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 4578
    .local v1, count:I
    const/4 v3, 0x2

    if-gt v1, v3, :cond_1

    .line 4579
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4580
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4581
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4582
    const/4 v3, 0x1

    .line 4586
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    :goto_1
    return v3

    .line 4579
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4586
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isListView(Landroid/view/View;)Z
    .locals 1
    .parameter "aView"

    .prologue
    .line 3862
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    return v0
.end method

.method private isSceneTransitioning()Z
    .locals 1

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, -0x1

    .line 2296
    new-instance v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;-><init>(Landroid/content/Context;I)V

    .line 2298
    .local v0, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-ne p1, v3, :cond_0

    .line 2299
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2305
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 2307
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2308
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    .line 2314
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeSureAdjacentPagesArePreloaded()V

    .line 2316
    return-object v0

    .line 2302
    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2311
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    goto :goto_1
.end method

.method private makeSureAdjacentPagesArePreloaded()V
    .locals 8

    .prologue
    .line 1206
    const/4 v5, 0x6

    .line 1207
    .local v5, range:I
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v2

    .line 1208
    .local v2, glsvg:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    const/4 v7, 0x6

    sub-int v3, v6, v7

    .local v3, i:I
    :goto_0
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v6, v6, 0x6

    if-gt v3, v6, :cond_2

    .line 1209
    if-gez v3, :cond_1

    .line 1208
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1211
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1212
    .local v1, c:Landroid/view/View;
    instance-of v6, v1, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    if-eqz v6, :cond_0

    .line 1213
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    move-object v4, v0

    .line 1214
    .local v4, p:Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->willBePreloaded(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1215
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    goto :goto_1

    .line 1219
    .end local v1           #c:Landroid/view/View;
    .end local v4           #p:Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    :cond_2
    return-void
.end method

.method private openAppMenuFolders(Ljava/util/HashMap;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2802
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2803
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v7, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v7, :cond_0

    .line 2804
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v3, v0

    .line 2805
    .local v3, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2806
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2807
    .local v6, value:Ljava/lang/Object;
    instance-of v7, v6, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v7, :cond_0

    .line 2810
    check-cast v6, Landroid/view/View;

    .end local v6           #value:Ljava/lang/Object;
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 2811
    .local v5, parent:Landroid/view/ViewParent;
    instance-of v7, v5, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v7, :cond_0

    .line 2814
    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v2, v0

    .line 2815
    .local v2, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2818
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->openFolder(Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    goto :goto_0

    .line 2822
    .end local v1           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v3           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v5           #parent:Landroid/view/ViewParent;
    :cond_1
    return-void
.end method

.method private openFolder(Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3189
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_0
    if-ltz v0, :cond_2

    .line 3190
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3191
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-nez v2, :cond_1

    .line 3189
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3194
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 3195
    if-ne v1, p2, :cond_0

    move v0, v3

    .line 3208
    :goto_1
    return v0

    .line 3199
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->getFolderUi(Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 3200
    if-nez v0, :cond_3

    .line 3201
    const-string v0, "Launcher.MenuManager"

    const-string v1, "Failed to get the folder UI form the Launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 3202
    goto :goto_1

    .line 3204
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    .line 3205
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getFolderViewSize()Landroid/graphics/Point;

    move-result-object v1

    .line 3206
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 3207
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    move v0, v4

    .line 3208
    goto :goto_1
.end method

.method private phantomizeIfNeeded(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter "aApp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2557
    .local p1, aCheckMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    .local p2, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2558
    .local v0, check:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 2565
    :cond_0
    :goto_0
    return-void

    .line 2561
    :cond_1
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2562
    .local v1, myView:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v2, :cond_0

    .line 2563
    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local v1           #myView:Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    goto :goto_0
.end method

.method private reOrgAppMenu(Lcom/sec/android/app/twlauncher/AppMenu;)V
    .locals 4
    .parameter "aMenu"

    .prologue
    .line 2827
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2828
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2829
    .local v1, v:Landroid/view/View;
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v2, :cond_0

    .line 2830
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 2831
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    .line 2827
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2834
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private removeAllEmptyPages()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2946
    const/4 v2, 0x0

    .line 2947
    .local v2, res:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 2948
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2949
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    if-ge v3, v4, :cond_0

    .line 2950
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeView(Landroid/view/View;)V

    .line 2951
    add-int/lit8 v2, v2, 0x1

    .line 2947
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2954
    .end local v0           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_1
    return v2
.end method

.method private removeFolder(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 1
    .parameter "aView"
    .parameter "aTag"

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->showMMRemoveFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 1740
    return-void
.end method

.method private removeFolderAndASZApps(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, " "

    .line 2614
    .line 2616
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge v0, v8, :cond_0

    move v0, v7

    .line 2671
    :goto_0
    return v0

    .line 2619
    :cond_0
    invoke-virtual {p1, v7}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 2622
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v8

    move v2, v0

    move v3, v7

    :goto_1
    if-ltz v2, :cond_a

    .line 2623
    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2624
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_1

    move v0, v3

    .line 2622
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v3, v0

    goto :goto_1

    .line 2629
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getContainingFolderFromModel(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2631
    const-string v1, "DebugPlacement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping folder item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 2634
    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    or-int/2addr v0, v3

    .line 2635
    goto :goto_2

    .line 2637
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-nez v1, :cond_3

    .line 2638
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getDefaultSort()I

    move-result v1

    if-gez v1, :cond_b

    .line 2639
    invoke-virtual {p2, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2640
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    move v0, v3

    .line 2641
    goto :goto_2

    .line 2644
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v1, v9, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v1

    .line 2645
    :goto_3
    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v4, v9, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v4

    .line 2648
    :goto_4
    if-ne v1, v10, :cond_b

    if-eq v4, v10, :cond_b

    move v5, v7

    .line 2650
    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_9

    .line 2651
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2652
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v6, v9, :cond_7

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v1

    .line 2653
    :goto_6
    if-ne v1, v4, :cond_8

    .line 2654
    const-string v1, "MenuManager"

    const-string v6, "Cell nums are same. Please check DB !!"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_5

    .line 2644
    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v1

    goto :goto_3

    .line 2645
    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v4

    goto :goto_4

    .line 2652
    :cond_7
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v1

    goto :goto_6

    .line 2657
    :cond_8
    if-lt v1, v4, :cond_4

    .line 2662
    :cond_9
    invoke-virtual {p2, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2663
    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    move v0, v3

    .line 2664
    goto/16 :goto_2

    .line 2668
    :cond_a
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->updateAsz(Ljava/util/ArrayList;)Z

    move-result v0

    or-int/2addr v0, v3

    .line 2669
    invoke-virtual {p3, v0}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->set(Z)V

    .line 2670
    invoke-virtual {p1, v8}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    move v0, v8

    .line 2671
    goto/16 :goto_0

    :cond_b
    move v0, v3

    goto/16 :goto_2
.end method

.method private removeMissingApps(Landroid/widget/ArrayAdapter;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2523
    .local p1, aAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v3, 0x0

    .line 2525
    .local v3, res:Z
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->toMap(Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v0

    .line 2527
    .local v0, appMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 2528
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2529
    .local v2, page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2527
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2532
    .end local v2           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2534
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllEmptyPages()I

    .line 2535
    return v3
.end method

.method private resetRaisedIcons()V
    .locals 3

    .prologue
    .line 4706
    const-string v0, "Launcher.MenuManager"

    const-string v1, "resetRaisedIcons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4707
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 4708
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setShowAppIsRunning(Z)V

    .line 4709
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_0

    .line 4711
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4712
    return-void
.end method

.method private setRaisedIcons()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 4715
    const-string v1, "Launcher.MenuManager"

    const-string v2, "setRaisedIcons"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4717
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mActivityMgr:Landroid/app/ActivityManager;

    if-eqz v1, :cond_5

    .line 4718
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mActivityMgr:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 4719
    if-eqz v1, :cond_5

    .line 4720
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 4721
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4722
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4726
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    move v6, v10

    move v2, v10

    .line 4728
    :goto_1
    if-ge v6, v5, :cond_2

    .line 4729
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4730
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v7

    move v8, v10

    move v9, v2

    .line 4731
    :goto_2
    if-ge v8, v7, :cond_1

    .line 4732
    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 4733
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4734
    invoke-virtual {v2, v11}, Lcom/sec/android/app/twlauncher/MenuItemView;->setShowAppIsRunning(Z)V

    .line 4735
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v11

    .line 4731
    :goto_3
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v9, v2

    goto :goto_2

    .line 4728
    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v2, v9

    goto :goto_1

    .line 4740
    :cond_2
    if-eqz v2, :cond_3

    .line 4741
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 4745
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v3

    .line 4746
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v5

    move v6, v10

    move v7, v10

    .line 4748
    :goto_4
    if-ge v6, v5, :cond_4

    .line 4749
    invoke-virtual {v3, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4750
    instance-of v1, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v1, :cond_6

    .line 4751
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 4752
    instance-of v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v8, :cond_6

    .line 4753
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4754
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v1, v0

    invoke-virtual {v1, v11}, Lcom/sec/android/app/twlauncher/MenuItemView;->setShowAppIsRunning(Z)V

    .line 4755
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIcons:Ljava/util/List;

    check-cast v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v11

    .line 4748
    :goto_5
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v7, v1

    goto :goto_4

    .line 4761
    :cond_4
    if-eqz v7, :cond_5

    .line 4762
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 4765
    :cond_5
    return-void

    :cond_6
    move v1, v7

    goto :goto_5

    :cond_7
    move v2, v9

    goto :goto_3
.end method

.method private snapToDestination()V
    .locals 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 1254
    return-void
.end method

.method private startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x4

    .line 4917
    const/4 v0, 0x0

    .line 4918
    .local v0, edgesRequired:Z
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isHorizontalFadingEdgeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4919
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    .line 4920
    .local v1, fadingEdgeStrength:[F
    new-array v2, v4, [I

    fill-array-data v2, :array_1

    .line 4921
    .local v2, paddingOffset:[I
    const/4 v3, 0x2

    const/high16 v4, 0x3f80

    aput v4, v1, v3

    .line 4922
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v3, p1, v1, v2}, Lcom/sec/android/app/twlauncher/GLScrollBars;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;[F[I)Z

    move-result v0

    .line 4924
    .end local v1           #fadingEdgeStrength:[F
    .end local v2           #paddingOffset:[I
    :cond_0
    return v0

    .line 4919
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 4920
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private switchToEditMode()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2997
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 2998
    .local v7, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    .line 3000
    .local v2, appShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    invoke-virtual {v2, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    .line 3004
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v9

    .line 3005
    .local v9, pageNum:I
    const/4 v8, 0x0

    .line 3009
    .local v8, page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeAllOpenFolders()V

    .line 3010
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView()Z

    .line 3012
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_2

    .line 3013
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v8, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3014
    .restart local v8       #page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v8, v11}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    .line 3015
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v5

    .line 3016
    .local v5, itemCount:I
    sub-int v6, v5, v11

    .local v6, j:I
    :goto_1
    if-ltz v6, :cond_1

    .line 3017
    invoke-virtual {v8, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3018
    .local v1, app:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3019
    .local v4, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v10, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v10, :cond_0

    if-eqz v4, :cond_0

    .line 3020
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v10, v0

    invoke-virtual {v10, v12}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 3021
    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local v1           #app:Landroid/view/View;
    invoke-virtual {v1, v12}, Lcom/sec/android/app/twlauncher/MenuItemView;->setDrawBadgeCountOn(Z)V

    .line 3022
    invoke-virtual {v4, v3, v6}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 3016
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 3012
    .end local v4           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3027
    .end local v5           #itemCount:I
    .end local v6           #j:I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->emptyLauncherManagerList()V

    .line 3028
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/LauncherManager;->show()V

    .line 3029
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v10, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 3030
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v11, 0x3f80

    invoke-virtual {v10, v11}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 3031
    return-void
.end method

.method private switchToListMode()V
    .locals 14

    .prologue
    .line 3036
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-nez v0, :cond_1

    .line 3158
    :cond_0
    :goto_0
    return-void

    .line 3040
    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 3041
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3042
    new-instance v1, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    .line 3044
    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getSortedAdapter(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3047
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 3053
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 3054
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    .line 3055
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    .line 3056
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    .line 3058
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3059
    const v1, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    .line 3061
    new-instance v3, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f030005

    invoke-direct {v3, v1, v4}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    .line 3064
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 3065
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    .line 3070
    :goto_1
    const/4 v1, 0x0

    .line 3071
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    .line 3072
    const/4 v5, 0x0

    .line 3073
    const/4 v6, 0x0

    move v7, v1

    move-object v13, v5

    move v5, v6

    move-object v6, v13

    :goto_2
    if-ge v5, v4, :cond_3

    .line 3074
    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3075
    new-instance v8, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {v8, v7, v10, v11, v12}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    .line 3078
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3079
    invoke-virtual {v3, v8}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    .line 3080
    instance-of v7, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v7, :cond_5

    .line 3081
    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 3082
    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 3083
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3073
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object v6, v1

    move v7, v9

    goto :goto_2

    .line 3067
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 3088
    :cond_3
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 3089
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3093
    if-eqz v6, :cond_4

    .line 3094
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->setFolderOpenFlag(Z)V

    .line 3095
    invoke-direct {p0, p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->openFolder(Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    .line 3098
    :cond_4
    const v1, 0x7f06003b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLListView;

    .line 3102
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 3103
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$2;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager$2;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/TextIconAdapter;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/GLListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3123
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$3;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager$3;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/TextIconAdapter;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/GLListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 3156
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 3157
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    goto/16 :goto_0

    :cond_5
    move-object v1, v6

    goto :goto_3
.end method

.method private switchToNormalMode()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2958
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v1

    .line 2960
    .local v1, appShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    invoke-virtual {v1, v7}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    .line 2963
    const/4 v4, 0x0

    .line 2967
    .local v4, page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2968
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    .line 2970
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->emptyLauncherManagerList()V

    .line 2972
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    sub-int v2, v6, v8

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_3

    .line 2973
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2974
    .restart local v4       #page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    .line 2975
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    sub-int v3, v6, v8

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 2976
    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2977
    .local v5, view:Landroid/view/View;
    instance-of v6, v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v6, :cond_1

    .line 2978
    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 2979
    .local v0, app:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 2980
    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/MenuItemView;->setDrawBadgeCountOn(Z)V

    .line 2975
    .end local v0           #app:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2972
    .end local v5           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2984
    .end local v3           #j:I
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2985
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->enablePitchDetection()V

    .line 2986
    return-void
.end method

.method private syncGridView()Z
    .locals 1

    .prologue
    .line 2683
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView(Landroid/widget/ArrayAdapter;)Z

    move-result v0

    return v0
.end method

.method private syncGridView(Landroid/widget/ArrayAdapter;)Z
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2696
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v1, :cond_0

    .line 2697
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const-string v2, "syncGridView"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->dumpSelf(Ljava/lang/String;)V

    .line 2700
    :cond_0
    if-eqz p1, :cond_2

    move-object v2, p1

    .line 2708
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-nez v1, :cond_3

    .line 2709
    :cond_1
    const/4 v1, 0x0

    .line 2796
    :goto_1
    return v1

    .line 2703
    :cond_2
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2704
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getSortedAdapter(Landroid/widget/ArrayAdapter;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2705
    const/4 v1, 0x0

    goto :goto_1

    .line 2711
    :cond_3
    new-instance v3, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    .line 2712
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->removeMissingApps(Landroid/widget/ArrayAdapter;)Z

    move-result v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->or(Z)V

    .line 2714
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2715
    invoke-direct {p0, v2, v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->removeFolderAndASZApps(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2716
    const/4 v1, 0x0

    goto :goto_1

    .line 2718
    :cond_4
    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    .line 2728
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v5

    .line 2729
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/sec/android/app/twlauncher/LauncherManager;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v6

    .line 2734
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v7, 0x3

    if-ne v1, v7, :cond_8

    .line 2735
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_7

    .line 2736
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2737
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 2738
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    .line 2739
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    .line 2735
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2740
    :cond_6
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 2741
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 2742
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    goto :goto_3

    .line 2746
    :cond_7
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    const/16 v7, 0xf

    if-ne v1, v7, :cond_8

    .line 2747
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    .line 2748
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    .line 2754
    :cond_8
    const/4 v1, 0x0

    move v7, v1

    :goto_4
    if-ge v7, v4, :cond_e

    .line 2755
    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2756
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 2759
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_9

    .line 2760
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    .line 2761
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCellNum(I)V

    .line 2765
    :cond_9
    const-string v1, " New"

    .line 2767
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_a

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    :cond_a
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v8

    .line 2769
    :goto_5
    invoke-virtual {p0, p1, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 2770
    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 2771
    invoke-virtual {v5, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2772
    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->reOrgAppMenu(Lcom/sec/android/app/twlauncher/AppMenu;)V

    .line 2773
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->set(Z)V

    .line 2780
    :goto_6
    const-string v8, "DebugPlacement"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SyncGrid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    invoke-direct {p0, v6, v5, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->phantomizeIfNeeded(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 2754
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_4

    .line 2767
    :cond_b
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyAppMenu(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v8

    goto :goto_5

    .line 2775
    :cond_c
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_d

    .line 2776
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v1, v0

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 2778
    :cond_d
    const-string v1, " Exists"

    goto :goto_6

    .line 2784
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    .line 2785
    invoke-direct {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->openAppMenuFolders(Ljava/util/HashMap;)V

    .line 2790
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    .line 2791
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2792
    invoke-direct {p0, v6, v1, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->phantomizeIfNeeded(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    goto :goto_7

    .line 2794
    :cond_f
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateCurrScreen()V

    .line 2795
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->updateWorkspaceBadge()V

    .line 2796
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager$BooleanContainer;->get()Z

    move-result v1

    goto/16 :goto_1

    :cond_10
    move-object v2, v1

    goto/16 :goto_0
.end method

.method private termUpdateDB()V
    .locals 1

    .prologue
    .line 3696
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    if-eqz v0, :cond_0

    .line 3698
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->waitForTermination()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3703
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    .line 3704
    return-void

    .line 3699
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;I)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/high16 v12, 0x3f80

    .line 633
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCylinderAnimationFactor()F

    move-result v6

    .line 634
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAtLooped(I)Landroid/view/View;

    move-result-object v7

    .line 635
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 636
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v1

    .line 637
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 638
    if-gez p2, :cond_1

    .line 639
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    mul-int/2addr v3, v2

    sub-int/2addr v0, v3

    move v4, v0

    .line 642
    :goto_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int v8, v4, v0

    .line 643
    const/4 v0, 0x0

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_2

    .line 644
    int-to-float v0, v4

    int-to-float v3, v8

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageGap:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 660
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 661
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 662
    sget v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotateY(F)V

    .line 663
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    .line 667
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    mul-float/2addr v0, v6

    sub-float v0, v12, v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 669
    return-void

    .line 640
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    if-lt p2, v3, :cond_3

    .line 641
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    move v4, v0

    goto :goto_0

    .line 646
    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    .line 650
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v5

    .line 651
    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleMain:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mZoomScaleLM:F

    invoke-static {v3, v9, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    .line 654
    iget v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleSide:F

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v2

    div-float/2addr v10, v11

    invoke-static {v3, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    .line 655
    invoke-static {v12, v3, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    .line 656
    iget v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomPageGap:I

    mul-int/2addr v9, v8

    div-int v2, v9, v2

    add-int/2addr v2, v4

    .line 657
    int-to-float v4, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mZoomTransYLM:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    add-float v5, v1, v2

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    goto/16 :goto_1

    :cond_3
    move v4, v0

    goto/16 :goto_0
.end method

.method private updateAppInfoIfNeeded(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 3
    .parameter "aInfo"

    .prologue
    .line 3415
    move-object v1, p1

    .line 3416
    .local v1, res:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v2, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v2, :cond_0

    .line 3417
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 3418
    .local v0, pos:I
    if-gez v0, :cond_0

    .line 3419
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 3422
    .end local v0           #pos:I
    :cond_0
    return-object v1
.end method

.method private updateAsz(Ljava/util/ArrayList;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2425
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    .line 2428
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 2429
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 2430
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    .line 2432
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2438
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2439
    const-string v4, "DebugPlacement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ASZ order "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    .line 2441
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    .line 2442
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->appendApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2432
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2444
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2445
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 2446
    return v3
.end method

.method private updateCurrScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2450
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2451
    .local v0, pageNum:I
    if-lez v0, :cond_1

    .line 2452
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v1, v0, :cond_0

    .line 2453
    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 2458
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 2459
    return-void

    .line 2456
    :cond_1
    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_0
.end method

.method private updateMenu()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2462
    const/4 v0, 0x0

    .line 2463
    .local v0, mustUpdateDb:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->dumpAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    .line 2464
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2466
    .local v1, sortHelper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getSortedAdapter(Landroid/widget/ArrayAdapter;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 2485
    :goto_0
    return v2

    .line 2469
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v2, :cond_1

    .line 2470
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->syncWithApps(Landroid/widget/ArrayAdapter;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2472
    :cond_1
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 2478
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView(Landroid/widget/ArrayAdapter;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-nez v2, :cond_2

    move v2, v4

    :goto_1
    or-int/2addr v0, v2

    .line 2481
    :goto_2
    if-eqz v0, :cond_3

    .line 2482
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    move v2, v4

    .line 2483
    goto :goto_0

    .line 2474
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    .line 2475
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToListMode()V

    goto :goto_2

    :cond_2
    move v2, v3

    .line 2478
    goto :goto_1

    :cond_3
    move v2, v3

    .line 2485
    goto :goto_0

    .line 2472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 5
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v4, 0x1

    .line 1653
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 1659
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p6
    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v2

    .line 1660
    .local v2, itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_1

    .line 1661
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v1, v0

    .line 1662
    .local v1, fi:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropPage()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropFolder()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    .line 1671
    .end local v1           #fi:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v2           #itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    :goto_0
    return v3

    .line 1667
    .restart local v2       #itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .end local v2           #itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    .restart local p6
    :cond_2
    move v3, v4

    .line 1671
    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 10
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/16 v9, 0x11

    const/4 v8, 0x1

    .line 3910
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 3913
    .local v0, childCount:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 3914
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 3918
    .local v2, focusableScreen:I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3919
    .local v5, v:Landroid/view/View;
    if-lt v0, v8, :cond_0

    invoke-direct {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->isListView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3922
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Scene;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3956
    :cond_1
    :goto_1
    return-void

    .line 3916
    .end local v2           #focusableScreen:I
    .end local v5           #v:Landroid/view/View;
    :cond_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .restart local v2       #focusableScreen:I
    goto :goto_0

    .line 3928
    .restart local v5       #v:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    .line 3929
    .local v1, currentScreen:I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3930
    .local v4, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-eqz v4, :cond_4

    .line 3931
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v3

    .line 3932
    .local v3, folder:Lcom/sec/android/app/twlauncher/UserFolder;
    if-eqz v3, :cond_7

    .line 3933
    invoke-virtual {v3, p1, p2, p3}, Lcom/sec/android/app/twlauncher/UserFolder;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3939
    .end local v3           #folder:Lcom/sec/android/app/twlauncher/UserFolder;
    :cond_4
    :goto_2
    if-le v0, v8, :cond_1

    if-eq p2, v9, :cond_5

    const/16 v6, 0x42

    if-ne p2, v6, :cond_1

    .line 3940
    :cond_5
    if-ne p2, v9, :cond_8

    .line 3941
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_6

    .line 3942
    sub-int v1, v0, v8

    .line 3946
    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3947
    .restart local v4       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-eqz v4, :cond_1

    .line 3948
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v3

    .line 3949
    .restart local v3       #folder:Lcom/sec/android/app/twlauncher/UserFolder;
    if-eqz v3, :cond_9

    .line 3950
    invoke-virtual {v3, p1, p2, p3}, Lcom/sec/android/app/twlauncher/UserFolder;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1

    .line 3935
    :cond_7
    invoke-virtual {v4, p1, p2, p3}, Lcom/sec/android/app/twlauncher/AppMenu;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_2

    .line 3943
    .end local v3           #folder:Lcom/sec/android/app/twlauncher/UserFolder;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_6

    .line 3944
    const/4 v1, 0x0

    goto :goto_3

    .line 3952
    .restart local v3       #folder:Lcom/sec/android/app/twlauncher/UserFolder;
    :cond_9
    invoke-virtual {v4, p1, p2, p3}, Lcom/sec/android/app/twlauncher/AppMenu;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1
.end method

.method addItem(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .parameter "v"
    .parameter "index"

    .prologue
    const/4 v10, 0x1

    .line 3426
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v7

    .line 3427
    .local v7, screen:I
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3428
    .local v6, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 3429
    .local v3, count:I
    if-gez p2, :cond_0

    .line 3430
    const/4 p2, 0x0

    .line 3432
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3433
    .local v5, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 3434
    .local v0, addView:Lcom/sec/android/app/twlauncher/MenuItemView;
    if-ge v3, p2, :cond_3

    .line 3435
    invoke-virtual {v6, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 3439
    :goto_0
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 3440
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-le v3, v9, :cond_1

    .line 3441
    sub-int v9, v3, v10

    invoke-virtual {v6, v9}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3442
    .local v8, shiftView:Landroid/view/View;
    invoke-virtual {v6, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 3443
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Landroid/view/View;I)V

    .line 3450
    .end local v8           #shiftView:Landroid/view/View;
    :cond_1
    invoke-virtual {v0, v10}, Lcom/sec/android/app/twlauncher/MenuItemView;->setIsDragging(Z)V

    .line 3453
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_4

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v4, v9, :cond_4

    .line 3454
    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3455
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3456
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v9, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v9, :cond_2

    if-eqz v1, :cond_2

    .line 3457
    invoke-virtual {v1, v7, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 3453
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3437
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_3
    invoke-virtual {v6, v0, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 3461
    .restart local v4       #i:I
    :cond_4
    return-object v0
.end method

.method addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 9
    .parameter "appMenu"
    .parameter "index"
    .parameter "appInfo"

    .prologue
    const/4 v8, 0x2

    .line 3482
    invoke-virtual {p0, p3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 3483
    .local v5, newView:Lcom/sec/android/app/twlauncher/MenuItemView;
    if-gez p2, :cond_0

    .line 3484
    const/4 p2, 0x0

    .line 3486
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 3487
    .local v3, count:I
    if-ge v3, p2, :cond_3

    .line 3488
    invoke-virtual {p1, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 3493
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 3494
    .local v1, appPageNum:I
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v7, v8, :cond_4

    .line 3495
    invoke-virtual {p3, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditPageNum(I)V

    .line 3499
    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 3500
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-le v3, v7, :cond_1

    .line 3501
    const/4 v7, 0x1

    sub-int v7, v3, v7

    invoke-virtual {p1, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3502
    .local v6, shiftView:Landroid/view/View;
    invoke-virtual {p1, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 3503
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Landroid/view/View;I)V

    .line 3505
    .end local v6           #shiftView:Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 3507
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v3, :cond_6

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v4, v7, :cond_6

    .line 3508
    invoke-virtual {p1, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3509
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3510
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v7, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    .line 3511
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v7, v8, :cond_5

    .line 3512
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v7

    invoke-virtual {v0, v7, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 3507
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3490
    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #appPageNum:I
    .end local v2           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_3
    invoke-virtual {p1, v5, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 3497
    .restart local v1       #appPageNum:I
    :cond_4
    invoke-virtual {p3, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    goto :goto_1

    .line 3514
    .restart local v0       #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v2       #child:Landroid/view/View;
    .restart local v4       #i:I
    :cond_5
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v7

    invoke-virtual {v0, v7, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    goto :goto_3

    .line 3519
    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #child:Landroid/view/View;
    :cond_6
    return-object v5
.end method

.method addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;
    .locals 2
    .parameter "appMenu"
    .parameter "itemView"
    .parameter "index"

    .prologue
    .line 3465
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3466
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p0, p1, p3, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method addItemAtEndOfPage(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 3
    .parameter "appMenu"
    .parameter "appInfo"

    .prologue
    .line 3470
    if-nez p1, :cond_0

    .line 3471
    const/4 v1, 0x0

    .line 3477
    :goto_0
    return-object v1

    .line 3473
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    .line 3474
    .local v0, index:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-lt v0, v1, :cond_1

    .line 3475
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 3477
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public animateClose()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1381
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelRunningTransitionAnimation()V

    .line 1383
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1385
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 1388
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disablePitchDetection()V

    .line 1390
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    .line 1391
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    .line 1393
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1394
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 1395
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 1396
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1398
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1400
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1401
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1402
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1405
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundClose()V

    .line 1406
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1407
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1409
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    instance-of v2, v2, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    if-eqz v2, :cond_3

    .line 1410
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    check-cast v2, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotationCenter(FF)V

    .line 1413
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    .line 1414
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->start()V

    .line 1415
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1423
    return-void
.end method

.method public animateOpen()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1347
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1348
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelRunningTransitionAnimation()V

    .line 1349
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    .line 1350
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    .line 1351
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 1353
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1354
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1355
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1358
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    .line 1359
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1361
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1363
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    instance-of v2, v2, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    if-eqz v2, :cond_1

    .line 1364
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    check-cast v2, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotationCenter(FF)V

    .line 1367
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    .line 1369
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->start()V

    .line 1370
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->enablePitchDetection()V

    .line 1371
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1378
    return-void
.end method

.method public cancelDragOverDelayed(Ljava/lang/String;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 1892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mExecDragOverDelayed:Z

    .line 1893
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    if-eqz v0, :cond_0

    .line 1899
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1906
    :cond_0
    return-void
.end method

.method public close()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1450
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1452
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 1454
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    .line 1456
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    if-eqz v2, :cond_1

    .line 1458
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelRunningTransitionAnimation()V

    .line 1460
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1462
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1463
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1464
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1463
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1466
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1467
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1468
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1469
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->setShowIndicator()V

    .line 1470
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1471
    return-void
.end method

.method public closeFolderOnCurrentPage()Z
    .locals 8

    .prologue
    .line 2907
    const/4 v4, 0x0

    .line 2908
    .local v4, result:Z
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2909
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 2910
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2911
    .local v6, v:Landroid/view/View;
    instance-of v7, v6, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v7, :cond_0

    .line 2912
    check-cast v6, Lcom/sec/android/app/twlauncher/UserFolder;

    .end local v6           #v:Landroid/view/View;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/UserFolder;->close()V

    .line 2913
    const/4 v4, 0x1

    .line 2909
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2922
    .end local v2           #i:I
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2924
    .restart local v6       #v:Landroid/view/View;
    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v3, v0

    .line 2925
    .local v3, page:Lcom/sec/android/app/twlauncher/AppMenu;
    if-nez v3, :cond_2

    move v5, v4

    .line 2940
    .end local v3           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v4           #result:Z
    .end local v6           #v:Landroid/view/View;
    .local v5, result:I
    :goto_1
    return v5

    .line 2928
    .end local v5           #result:I
    .restart local v3       #page:Lcom/sec/android/app/twlauncher/AppMenu;
    .restart local v4       #result:Z
    .restart local v6       #v:Landroid/view/View;
    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v1

    .line 2929
    .local v1, folder:Lcom/sec/android/app/twlauncher/UserFolder;
    if-nez v1, :cond_3

    move v5, v4

    .line 2930
    .restart local v5       #result:I
    goto :goto_1

    .line 2933
    .end local v5           #result:I
    :cond_3
    const/4 v4, 0x1

    .line 2934
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolder;->close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #folder:Lcom/sec/android/app/twlauncher/UserFolder;
    .end local v3           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v6           #v:Landroid/view/View;
    :cond_4
    :goto_2
    move v5, v4

    .line 2940
    .restart local v5       #result:I
    goto :goto_1

    .line 2935
    .end local v5           #result:I
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1107
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v2, v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1108
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1109
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 1110
    :cond_1
    iput v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 1171
    :cond_2
    :goto_0
    return-void

    .line 1113
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1114
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1116
    .local v1, scrollX:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1117
    .local v0, count:I
    if-lt v0, v4, :cond_4

    .line 1118
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_5

    .line 1119
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 1124
    :cond_4
    :goto_1
    invoke-virtual {p0, v1, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1130
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFrame()V

    goto :goto_0

    .line 1120
    :cond_5
    sub-int v2, v0, v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-le v1, v2, :cond_4

    .line 1121
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    goto :goto_1

    .line 1131
    .end local v0           #count:I
    .end local v1           #scrollX:I
    :cond_6
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-eq v2, v7, :cond_2

    .line 1132
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1133
    .restart local v0       #count:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    sub-int v3, v0, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 1135
    if-lt v0, v4, :cond_9

    .line 1136
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 1137
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-gez v2, :cond_b

    .line 1138
    sub-int v2, v0, v5

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 1142
    :cond_7
    :goto_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    if-ltz v2, :cond_8

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int v3, v0, v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    if-le v2, v3, :cond_9

    .line 1143
    :cond_8
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    rem-int/2addr v2, v3

    if-nez v2, :cond_9

    .line 1144
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0, v2, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1145
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFrame()V

    .line 1150
    :cond_9
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-eq v2, v5, :cond_a

    .line 1151
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v2, :cond_a

    .line 1152
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 1155
    :cond_a
    iput v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    goto/16 :goto_0

    .line 1139
    :cond_b
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v2, v0, :cond_7

    .line 1140
    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_2
.end method

.method public createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    .line 4077
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2, v11}, Lcom/sec/android/app/twlauncher/UserFolderModel;->createUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v2

    .line 4078
    invoke-virtual {v2, p2, v11}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->copyFrom(Lcom/sec/android/app/twlauncher/UserFolderInfo;Z)V

    .line 4082
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4083
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4120
    :goto_0
    const/4 v1, 0x0

    .line 4121
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 4122
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 4123
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v3, v0

    .line 4128
    :goto_1
    new-instance v0, Lcom/sec/android/app/twlauncher/FolderDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderPreviewOffsetX:F

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderPreviewOffsetY:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconSize:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconXGap:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconYGap:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPreviewIconYOffset:F

    const v10, 0x7f070014

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    .line 4132
    iput-object v0, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 4133
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getBadgeCount()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setBadgeCount(I)V

    .line 4134
    invoke-virtual {v2, v11}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setIsNewDropFolder(Z)V

    .line 4135
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getNewFolderName(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    move v0, v11

    .line 4137
    :goto_2
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 4138
    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 4139
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;

    move-result-object v3

    .line 4140
    if-nez v3, :cond_0

    .line 4141
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v3

    .line 4142
    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;

    move-result-object v1

    .line 4143
    if-nez v1, :cond_0

    .line 4144
    const-string v1, "MenuManager"

    const-string v3, "One of the items in the new folder could not be found in app shortcut or main menu"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4101
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 4125
    :cond_2
    const-string v3, "Launcher.MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Folder image is not a BitmapDrawable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    goto :goto_1

    .line 4149
    :cond_3
    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;

    if-eqz v0, :cond_5

    .line 4150
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4151
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItemAtEndOfPage(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v0

    .line 4156
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    .line 4157
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    .line 4158
    return-object v0

    .line 4153
    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4154
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    move-object v0, p1

    goto :goto_3
.end method

.method public createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4035
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v0

    move v1, v4

    .line 4039
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4040
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v2

    .line 4042
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;

    move-result-object v3

    .line 4043
    if-eqz v3, :cond_0

    .line 4044
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    invoke-virtual {p0, v0, v3, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;

    .line 4039
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4046
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v3

    .line 4047
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;

    move-result-object v2

    .line 4049
    if-eqz v2, :cond_1

    .line 4050
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;

    goto :goto_1

    .line 4053
    :cond_1
    const-string v2, "MenuManager"

    const-string v3, "didnt find one of the icons moving inside the folder in the shortcut zone or the main menu"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4059
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(Z)V

    .line 4062
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ne v0, p2, :cond_3

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 4063
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 4064
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 4067
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 4070
    const-string v0, "SGH-I777"

    const-string v1, "SGH-T989"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4071
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    const v1, 0x7f080061

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4074
    :cond_4
    return-void
.end method

.method discard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1526
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->revert()V

    .line 1527
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->forceClear(Z)V

    .line 1528
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    .line 1529
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->assignNormalToEdit()Z

    .line 1531
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1533
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 1535
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->numFolders()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isSceneTransitioning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 681
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 683
    :cond_2
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v8, "IconDebug"

    .line 442
    const/4 v3, 0x0

    .line 443
    .local v3, more:Z
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isShown()Z

    move-result v6

    if-nez v6, :cond_0

    .line 445
    const-string v6, "IconDebug"

    const-string v6, "MenuManager dispatchDrawGL !isShown() return false"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v11

    .line 539
    :goto_0
    return v6

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 450
    .local v0, childCount:I
    if-gtz v0, :cond_1

    .line 452
    const-string v6, "IconDebug"

    const-string v6, "MenuManager dispatchDrawGL childCount return false"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v11

    .line 453
    goto :goto_0

    .line 455
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v6

    if-ltz v6, :cond_3

    .line 458
    :cond_2
    const-string v6, "IconDebug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MenuManager dispatchDrawGL mLauncher.getQuickViewMainMenu().isOpened()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v6, "IconDebug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MenuManager dispatchDrawGL mLauncher.getStateQuickNavigation()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v11

    .line 460
    goto :goto_0

    .line 463
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 465
    if-le v0, v12, :cond_4

    .line 466
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-gez v6, :cond_10

    .line 467
    sub-int v6, v0, v12

    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 473
    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    if-eqz v6, :cond_7

    .line 474
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v6, :cond_5

    .line 475
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 476
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    if-nez v6, :cond_6

    .line 477
    new-instance v6, Lcom/sec/android/app/twlauncher/MenuManager$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/twlauncher/MenuManager$1;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    .line 484
    :cond_6
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 485
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v7, 0x3e8

    invoke-virtual {p0, v6, v7, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 488
    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 489
    invoke-virtual {p1, v12}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 492
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 493
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(I)V

    .line 495
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    add-int/2addr v6, v7

    int-to-float v7, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getTop()I

    move-result v6

    int-to-float v8, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v9

    iget v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    add-int/2addr v6, v9

    int-to-float v9, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v10

    int-to-float v6, v6

    invoke-virtual {p1, v7, v8, v9, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 498
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 499
    invoke-virtual {p1, p0, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClipToView(Landroid/view/View;Z)V

    .line 502
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 503
    invoke-virtual {p1, v11}, Lcom/sec/android/app/twlauncher/GLCanvas;->setTouchTrackingEnabled(Z)V

    .line 505
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCylinderAnimationFactor()F

    move-result v1

    .line 508
    .local v1, factor:F
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/LauncherManager;->isMakeFolderOrPageOpened()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 509
    const v6, 0x3ecccccd

    mul-float/2addr v6, v1

    invoke-virtual {p1, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 512
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v5

    .line 513
    .local v5, width:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 514
    .local v4, page:I
    cmpl-float v6, v1, v13

    if-gtz v6, :cond_a

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    rem-int/2addr v6, v5

    if-eqz v6, :cond_c

    .line 515
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_b

    .line 516
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 517
    :cond_b
    sub-int v6, v4, v12

    invoke-virtual {p0, p1, v6, v1, v12}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v6

    or-int/2addr v3, v6

    .line 518
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, p1, v6, v1, v12}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v6

    or-int/2addr v3, v6

    .line 521
    :cond_c
    invoke-virtual {p0, p1, v4, v1, v11}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v6

    or-int/2addr v3, v6

    .line 523
    invoke-virtual {p1, v12}, Lcom/sec/android/app/twlauncher/GLCanvas;->setTouchTrackingEnabled(Z)V

    .line 525
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 527
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v6, v12, :cond_e

    .line 528
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 529
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v2

    .line 530
    .local v2, modeF:F
    cmpl-float v6, v2, v13

    if-lez v6, :cond_d

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIndicatorTransYLM:I

    if-eqz v6, :cond_d

    .line 531
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIndicatorTransYLM:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-virtual {p1, v13, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 532
    :cond_d
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageIndicator(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v6

    or-int/2addr v3, v6

    .line 533
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 536
    .end local v2           #modeF:F
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isCylinderAnimating()Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_f
    move v6, v12

    :goto_2
    or-int/2addr v3, v6

    move v6, v3

    .line 539
    goto/16 :goto_0

    .line 468
    .end local v1           #factor:F
    .end local v4           #page:I
    .end local v5           #width:I
    :cond_10
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v6, v0, :cond_4

    .line 469
    iput v11, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto/16 :goto_1

    .restart local v1       #factor:F
    .restart local v4       #page:I
    .restart local v5       #width:I
    :cond_11
    move v6, v11

    .line 536
    goto :goto_2
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    .line 3960
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 3961
    .local v0, childCount:I
    if-le v0, v3, :cond_1

    .line 3962
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 3963
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-nez v1, :cond_1

    .line 3964
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    move v1, v3

    .line 3977
    :goto_0
    return v1

    .line 3967
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 3968
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    sub-int v2, v0, v3

    if-ne v1, v2, :cond_1

    .line 3969
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    move v1, v3

    .line 3970
    goto :goto_0

    .line 3975
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFocus()Z

    .line 3977
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0
.end method

.method public dragFromFolder(Lcom/sec/android/app/twlauncher/UserFolder;Landroid/graphics/Point;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;)V
    .locals 7
    .parameter "aSrc"
    .parameter "aLoc"
    .parameter "aInfo"
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    .line 1796
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeAllOpenFolders()V

    .line 1798
    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v4, v6, :cond_0

    .line 1799
    invoke-direct {p0, p4, p3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->dragFromListView(Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V

    .line 1817
    :goto_0
    return-void

    .line 1802
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1803
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastMotion()Landroid/graphics/PointF;

    move-result-object v3

    .line 1804
    .local v3, lastPoint:Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v2

    .line 1805
    .local v2, index:I
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 1806
    .local v1, dragView:Landroid/view/View;
    if-nez v1, :cond_1

    .line 1807
    invoke-virtual {p0, v0, v2, p3}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    .line 1812
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/LauncherManager;->setShowHelp(Z)V

    .line 1813
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    .line 1814
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/android/app/twlauncher/LauncherManager;->setShowHelp(Z)V

    .line 1815
    new-instance v4, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/sec/android/app/twlauncher/MenuManager$moveFromFolderDrag;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/UserFolder;Landroid/view/View;Landroid/graphics/Point;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected drawAppMenuAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z
    .locals 15
    .parameter "canvas"
    .parameter "childIndex"
    .parameter "backgroundFactor"
    .parameter "ignoreTransRef"

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 577
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_5

    .line 584
    const/4 v9, 0x0

    .line 585
    .local v9, res:Z
    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAtLooped(I)Landroid/view/View;

    move-result-object v5

    .line 586
    .local v5, c:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 587
    .local v6, childWidth:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 588
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/twlauncher/MenuManager;->transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;I)V

    .line 589
    const v10, 0x3a83126f

    cmpl-float v10, p3, v10

    if-lez v10, :cond_0

    .line 591
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageBackground(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    .line 593
    :cond_0
    iget v10, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move/from16 v0, p2

    move v1, v10

    if-ne v0, v1, :cond_1

    .line 594
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v10, v13, v13, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 595
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v11

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 596
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUnPhanAnim:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v10

    or-int/2addr v9, v10

    .line 598
    :cond_1
    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v4, v0

    .line 600
    .local v4, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCylinderAnimationFactor()F

    move-result v10

    cmpl-float v10, v10, v13

    if-nez v10, :cond_8

    .line 601
    invoke-virtual {v4, v14}, Lcom/sec/android/app/twlauncher/AppMenu;->setScreenClipExtendedEdge(I)V

    .line 607
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_3

    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v10

    move/from16 v0, p2

    move v1, v10

    if-lt v0, v1, :cond_3

    .line 609
    :cond_2
    const v10, 0x186a0

    invoke-virtual {v4, v10}, Lcom/sec/android/app/twlauncher/AppMenu;->setScreenClipExtendedEdge(I)V

    .line 611
    :cond_3
    move-object v0, v4

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z

    move-result v10

    or-int/2addr v9, v10

    .line 613
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v10

    rem-int v10, p2, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollPage:I

    if-ne v10, v11, :cond_4

    .line 617
    const/high16 v10, 0x3f80

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    .line 618
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v8

    .line 619
    .local v8, pendingDragF:F
    move-object v0, p0

    move-object/from16 v1, p1

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageBorder(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    .line 622
    .end local v8           #pendingDragF:F
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move v10, v9

    .line 623
    .end local v4           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v5           #c:Landroid/view/View;
    .end local v6           #childWidth:I
    .end local v9           #res:Z
    :goto_1
    return v10

    .line 580
    :cond_5
    if-ltz p2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v10

    move/from16 v0, p2

    move v1, v10

    if-lt v0, v1, :cond_7

    .line 581
    :cond_6
    const-string v10, "IconDebug"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "drawAppMenuAt drawAppMenuAt childIndex="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v10, v14

    .line 582
    goto :goto_1

    .line 603
    .restart local v4       #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .restart local v5       #c:Landroid/view/View;
    .restart local v6       #childWidth:I
    .restart local v9       #res:Z
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v11

    if-le v10, v11, :cond_9

    div-int/lit8 v10, v6, 0x4

    move v7, v10

    .line 604
    .local v7, clip:I
    :goto_2
    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->setScreenClipExtendedEdge(I)V

    goto :goto_0

    .line 603
    .end local v7           #clip:I
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x4

    move v7, v10

    goto :goto_2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 687
    instance-of v2, p2, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v2, :cond_0

    .line 688
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v1, v0

    .line 689
    .local v1, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Scene;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 693
    .end local v1           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method protected drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z
    .locals 3
    .parameter "canvas"
    .parameter "childIndex"
    .parameter "backgroundFactor"
    .parameter "ignoreTransRef"

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, more:Z
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 550
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->drawListView(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v0

    .line 555
    :goto_0
    return v0

    .line 552
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawAppMenuAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawListView(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 4
    .parameter "canvas"

    .prologue
    .line 559
    const/4 v1, 0x0

    .line 560
    .local v1, more:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 561
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 562
    .local v2, v:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->isListView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 563
    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    .line 560
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    .restart local v2       #v:Landroid/view/View;
    :cond_1
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v3, :cond_0

    .line 565
    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolder;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/UserFolder;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    goto :goto_1

    .line 572
    :cond_2
    return v1
.end method

.method public emptyLauncherManagerList()V
    .locals 1

    .prologue
    .line 2868
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->emptyLauncherManagerList(F)V

    .line 2869
    return-void
.end method

.method public emptyLauncherManagerList(F)V
    .locals 1
    .parameter "aFactor"

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2865
    return-void
.end method

.method public enterNewMode(I)Z
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 1566
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 1567
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 1588
    :goto_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 1589
    .local v0, savedMode:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1590
    const/4 v0, 0x0

    .line 1592
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    .line 1593
    const/4 v1, 0x1

    return v1

    .line 1569
    .end local v0           #savedMode:I
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v1, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1570
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToEditMode()V

    goto :goto_0

    .line 1573
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v1, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1574
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToNormalMode()V

    goto :goto_0

    .line 1577
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v1, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1578
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToListMode()V

    goto :goto_0

    .line 1582
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v1, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1583
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->switchToNormalMode()V

    goto :goto_0

    .line 1567
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;
    .locals 4
    .parameter "tag"

    .prologue
    .line 2837
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 2839
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v3, :cond_0

    .line 2840
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v1, v0

    .line 2841
    .local v1, itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    move-object v3, v1

    .line 2845
    .end local v1           #itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAnimateStatus()Z
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public getAnimationGL()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 4590
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    return-object v0
.end method

.method protected getChildAtLooped(I)Landroid/view/View;
    .locals 2
    .parameter "index"

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 544
    .local v0, count:I
    add-int v1, v0, p1

    rem-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected getCylinderAnimationFactor()F
    .locals 3

    .prologue
    .line 708
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Scene;->getCylinderAnimationFactor()F

    move-result v0

    .line 709
    .local v0, scrollF:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v1

    const/high16 v2, 0x3f80

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    return v1
.end method

.method public getDragAnimationXOffset(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 2263
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v0, :cond_0

    .line 2264
    const/4 v0, 0x0

    .line 2266
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    goto :goto_0
.end method

.method public getDropScreen()I
    .locals 3

    .prologue
    .line 3338
    const/4 v0, -0x1

    .line 3340
    .local v0, page:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 3349
    .end local v0           #page:I
    .local v1, page:I
    :goto_0
    return v1

    .line 3344
    .end local v1           #page:I
    .restart local v0       #page:I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3345
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    :goto_1
    move v1, v0

    .line 3349
    .end local v0           #page:I
    .restart local v1       #page:I
    goto :goto_0

    .line 3347
    .end local v1           #page:I
    .restart local v0       #page:I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    move v0, v2

    :goto_2
    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v0, v2

    goto :goto_2
.end method

.method public getFolderViewSize()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 697
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 698
    .local v0, res:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 699
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorTop:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 700
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 703
    :cond_0
    return-object v0
.end method

.method getIndexOfCell(II)I
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x1

    .line 3353
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3354
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildWidth()I

    move-result v4

    .line 3355
    .local v4, childWidth:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildHeight()I

    move-result v3

    .line 3356
    .local v3, childHeight:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getLRPadding()I

    move-result v6

    .line 3359
    .local v6, padding:I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 3360
    .local v7, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getHitRect(Landroid/graphics/Rect;)V

    .line 3362
    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 3364
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .line 3366
    .local v5, col:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    const/16 v10, 0x14

    if-ne v9, v10, :cond_5

    .line 3367
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    if-ne v9, v11, :cond_4

    .line 3368
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    add-int/lit8 v8, v9, 0x1

    .line 3376
    .local v8, row:I
    :goto_0
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3377
    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int v9, p1, v9

    sub-int p1, v9, v6

    .line 3378
    iget v9, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v9

    .line 3380
    const/4 v1, 0x0

    .line 3381
    .local v1, cellX:I
    const/4 v2, 0x0

    .line 3383
    .local v2, cellY:I
    if-lez v4, :cond_0

    .line 3384
    if-gez p1, :cond_6

    const/4 p1, 0x0

    move v1, p1

    .line 3386
    :cond_0
    :goto_1
    if-lez v3, :cond_1

    .line 3387
    div-int v2, p2, v3

    .line 3389
    :cond_1
    sub-int v9, v5, v11

    if-le v1, v9, :cond_2

    .line 3390
    sub-int v1, v5, v11

    .line 3391
    :cond_2
    sub-int v9, v8, v11

    if-le v2, v9, :cond_3

    .line 3392
    sub-int v2, v8, v11

    .line 3394
    :cond_3
    mul-int v9, v2, v5

    add-int/2addr v9, v1

    .line 3396
    .end local v1           #cellX:I
    .end local v2           #cellY:I
    :goto_2
    return v9

    .line 3370
    .end local v8           #row:I
    :cond_4
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    sub-int v8, v9, v11

    .restart local v8       #row:I
    goto :goto_0

    .line 3373
    .end local v8           #row:I
    :cond_5
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .restart local v8       #row:I
    goto :goto_0

    .line 3384
    .restart local v1       #cellX:I
    .restart local v2       #cellY:I
    :cond_6
    div-int v9, p1, v4

    move v1, v9

    goto :goto_1

    .line 3396
    .end local v1           #cellX:I
    .end local v2           #cellY:I
    :cond_7
    const/4 v9, -0x1

    goto :goto_2
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1609
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    return v0
.end method

.method public getModeCylinderFactor()F
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    return v0
.end method

.method public getPhantomItemViews()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4162
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4163
    .local v8, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/MenuItemView;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    .line 4167
    .local v2, appMenuCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 4168
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4169
    .local v1, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v5

    .line 4170
    .local v5, itemViewCount:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 4171
    invoke-virtual {v1, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4172
    .local v3, child:Landroid/view/View;
    instance-of v9, v3, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v9, :cond_1

    .line 4170
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4175
    :cond_1
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v7, v0

    .line 4176
    .local v7, menuItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4177
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4167
    .end local v3           #child:Landroid/view/View;
    .end local v7           #menuItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4181
    .end local v1           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v5           #itemViewCount:I
    .end local v6           #j:I
    :cond_3
    return-object v8
.end method

.method public getScaleRatio()[F
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 4869
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    if-nez v4, :cond_0

    .line 4870
    new-array v0, v7, [F

    fill-array-data v0, :array_0

    .line 4888
    .local v0, ratio:[F
    :goto_0
    return-object v0

    .line 4873
    .end local v0           #ratio:[F
    :cond_0
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 4875
    .local v3, unscaled:Landroid/graphics/RectF;
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v1, v4, v5

    .line 4880
    .local v1, scaleX:F
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float v2, v4, v5

    .line 4885
    .local v2, scaleY:F
    new-array v0, v7, [F

    const/4 v4, 0x0

    aput v1, v0, v4

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 4888
    .restart local v0       #ratio:[F
    goto :goto_0

    .line 4870
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .parameter "tag"

    .prologue
    .line 2849
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .line 2850
    .local v5, screenCount:I
    const/4 v4, 0x0

    .local v4, screen:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 2851
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2852
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    .line 2853
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 2854
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2855
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    move-object v6, v1

    .line 2860
    .end local v0           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :goto_2
    return-object v6

    .line 2853
    .restart local v0       #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2850
    .end local v1           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2860
    .end local v0           #appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public getWhichScreen()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1222
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredWidth()I

    move-result v2

    .line 1223
    .local v2, screenWidth:I
    const/4 v4, 0x0

    .line 1224
    .local v4, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1225
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 1227
    .local v3, scrollX:I
    const/4 v5, 0x2

    if-lt v1, v5, :cond_1

    .line 1228
    if-gez v3, :cond_0

    .line 1229
    div-int/lit8 v5, v2, 0x2

    sub-int v5, v3, v5

    div-int v4, v5, v2

    .line 1249
    :goto_0
    return v4

    .line 1231
    :cond_0
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    div-int v4, v5, v2

    goto :goto_0

    .line 1234
    :cond_1
    sub-int v5, v1, v7

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v6

    sub-int v0, v5, v6

    .line 1236
    .local v0, availableToScroll:I
    if-gez v3, :cond_2

    .line 1237
    const/4 v4, 0x0

    goto :goto_0

    .line 1238
    :cond_2
    if-gtz v0, :cond_3

    .line 1239
    sub-int v4, v1, v7

    goto :goto_0

    .line 1241
    :cond_3
    if-lez v2, :cond_4

    .line 1242
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    div-int v4, v5, v2

    goto :goto_0

    .line 1244
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 1258
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 1259
    return-void
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveCurrentMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 1538
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrevMode:I

    .line 1543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mResolveInfoList:Ljava/util/ArrayList;

    .line 1545
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disablePitchDetection()V

    .line 1547
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 1549
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 1551
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->removeAllViews()V

    .line 1552
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrevMode:I

    packed-switch v0, :pswitch_data_0

    .line 1562
    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1554
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->close(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1555
    const/4 v0, 0x0

    goto :goto_1

    .line 1559
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    goto :goto_0

    .line 1552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    .line 1643
    return-void
.end method

.method public makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 2385
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2386
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 2389
    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    if-eq v1, v2, :cond_3

    .line 2390
    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 2391
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    iput v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 2393
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 2394
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    move v5, v1

    .line 2398
    :goto_0
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_2

    .line 2399
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const v2, 0x7f030009

    invoke-virtual {v1, p1, v6, p2, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v2

    .line 2400
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    move-object v1, v0

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 2401
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 2405
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 2406
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2407
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2408
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2410
    const-wide/16 v6, -0x1

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    .line 2411
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    .line 2412
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object p0, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setDrawBadgeCountOn(Z)V

    .line 2415
    :cond_0
    if-eq v5, v8, :cond_1

    .line 2416
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 2417
    iput v5, v4, Landroid/content/res/Configuration;->orientation:I

    .line 2418
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2421
    :cond_1
    return-object v1

    .line 2403
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const v2, 0x7f030002

    invoke-virtual {v1, p1, v6, p2, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_3
    move v5, v8

    goto :goto_0
.end method

.method public onAddDefaultFolder(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 2234
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2235
    .local v4, tag:Ljava/lang/Object;
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2237
    .local v2, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    instance-of v5, v4, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v5, v6, :cond_0

    .line 2238
    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v1, v0

    .line 2239
    .local v1, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;

    move-result-object v3

    .line 2240
    .local v3, newView:Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v5, p0}, Lcom/sec/android/app/twlauncher/Launcher;->showCreateFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 2242
    .end local v1           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v3           #newView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    .line 4597
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4598
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniTransition:Landroid/view/animation/Animation;

    .line 4599
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4600
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsOpeningGL:Z

    .line 4602
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 4603
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4604
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4603
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4606
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniRotateFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4607
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosingGL:Z

    .line 4608
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 4611
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 4617
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 4594
    return-void
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const-string v6, "makePageInfo"

    const-string v5, "makeFolderInfo"

    const-string v4, "DebugFolder"

    .line 3674
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->termUpdateDB()V

    .line 3675
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getSpecialFolders()Ljava/util/Hashtable;

    move-result-object v0

    .line 3676
    const-string v1, "makeFolderInfo"

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3677
    const-string v1, "makePageInfo"

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3679
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3681
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->getMakePageInfo()Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    .line 3682
    if-eqz v1, :cond_0

    .line 3683
    const-string v2, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving makePageInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    const-string v2, "makePageInfo"

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3686
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->getMakeFolderInfo()Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    .line 3687
    if-eqz v1, :cond_1

    .line 3688
    const-string v2, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving makeFolderInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    const-string v2, "makeFolderInfo"

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3692
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    .line 3693
    return-void
.end method

.method public onDragEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2221
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disableRollNavigation()V

    .line 2222
    const-string v0, "onDragEnd"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 2223
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 2224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 2225
    sput v2, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    .line 2226
    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2227
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 2228
    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    .line 2229
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2230
    return-void
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
    .line 1678
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    .line 1679
    iput p3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    .line 1681
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1685
    const-string v0, "onDragExit"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 1686
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1687
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    .line 1688
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    .line 1689
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 1691
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeDragGap()Z

    .line 1692
    if-eq p1, p0, :cond_1

    .line 1693
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 1695
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    .line 1696
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x32

    const/4 v2, -0x1

    .line 1914
    const-string v0, "onDragOver"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1917
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_0

    .line 1918
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1921
    sub-int v0, p2, p4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1925
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x4282

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    .line 1951
    :goto_0
    return-void

    .line 1931
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-lt p2, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getWidth()I

    move-result v0

    sub-int/2addr v0, v3

    if-le p2, v0, :cond_2

    .line 1933
    :cond_1
    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 1934
    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 1935
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeDragGap()Z

    goto :goto_0

    .line 1941
    :cond_2
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1942
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;->setInfo(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 1947
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/MenuManager$onDragOverDelayed;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1949
    :cond_3
    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragOverDelayed(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onDragOverDelayed(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 18
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1961
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    move v12, v0

    sub-int v12, v12, p2

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    move v14, v0

    sub-int v14, v14, p3

    int-to-double v14, v14

    const-wide/high16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x402e

    cmpl-double v12, v12, v14

    if-lez v12, :cond_0

    .line 1962
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    move-wide v12, v0

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    .line 1963
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    .line 1964
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    .line 1968
    :cond_0
    new-instance v8, Landroid/graphics/Point;

    move-object v0, v8

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1969
    .local v8, p:Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->detectTransRefCollision(Landroid/graphics/Point;)Z

    .line 1971
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 p2, v0

    .line 1972
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 p3, v0

    .line 1976
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicatorTop:I

    move v12, v0

    move/from16 v0, p3

    move v1, v12

    if-lt v0, v1, :cond_1

    .line 1977
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeDragGap()Z

    .line 1979
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v6

    .line 1980
    .local v6, index:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v10

    .line 1982
    .local v10, screen:I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    move v12, v0

    if-ne v6, v12, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    move v12, v0

    if-eq v10, v12, :cond_4

    .line 1991
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v11, v0

    .line 1992
    .local v11, v:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 1993
    .local v9, parent:Landroid/view/ViewParent;
    instance-of v12, v9, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v12, :cond_5

    .line 1994
    move-object v0, v9

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v5, v0

    .line 1995
    .local v5, handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    invoke-virtual {v5, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 1999
    .end local v5           #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2000
    .local v3, dragView:Landroid/view/View;
    const/4 v12, 0x4

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 2002
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v12

    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2003
    .local v7, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v7, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 2004
    .local v4, dropIndex:I
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    .line 2005
    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 2007
    .end local v3           #dragView:Landroid/view/View;
    .end local v4           #dropIndex:I
    .end local v7           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v9           #parent:Landroid/view/ViewParent;
    .end local v11           #v:Landroid/view/View;
    :cond_4
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2008
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 2010
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-super {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Scene;->setPageOnDragOver(II)V

    .line 2011
    return-void

    .line 1996
    .restart local v9       #parent:Landroid/view/ViewParent;
    .restart local v11       #v:Landroid/view/View;
    :cond_5
    instance-of v12, v9, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v12, :cond_3

    .line 1997
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDragStart(Landroid/view/View;FFLcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 5
    .parameter "v"
    .parameter "x"
    .parameter "y"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v4, 0x0

    .line 2246
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 2247
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 2249
    instance-of v3, p4, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v3, :cond_0

    .line 2250
    move-object v0, p4

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v2, v0

    .line 2251
    .local v2, shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2252
    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    .line 2260
    .end local v2           #shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :goto_0
    return-void

    .line 2253
    :cond_0
    instance-of v3, p4, Lcom/sec/android/app/twlauncher/LauncherManager;

    if-eqz v3, :cond_1

    .line 2254
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2255
    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    goto :goto_0

    .line 2257
    :cond_1
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2258
    .local v1, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    goto :goto_0
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2054
    const-string v4, "onDrop"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 2056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2057
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v4

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    .line 2059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 2061
    :cond_0
    const/4 v4, 0x0

    sput v4, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    .line 2063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v4, v0

    if-nez v4, :cond_1

    .line 2064
    const/4 v4, 0x1

    .line 2149
    :goto_0
    return v4

    .line 2066
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2071
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2072
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 2075
    new-instance v5, Landroid/graphics/Point;

    move-object v0, v5

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 2076
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/DragLayer;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->detectTransRefCollision(Landroid/graphics/Point;)Z

    .line 2078
    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 2079
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 2083
    move-object/from16 v0, p0

    move v1, v6

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v14

    .line 2084
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v15

    .line 2085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v5, v0

    .line 2086
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    .line 2087
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move v7, v0

    if-eqz v7, :cond_3

    .line 2088
    move-object/from16 v0, p3

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object/from16 p2, v0

    .line 2089
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropPage()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2090
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v6, v4, :cond_2

    .line 2092
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V

    .line 2098
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 2095
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V

    goto :goto_1

    .line 2101
    :cond_3
    const/4 v6, -0x1

    if-ne v14, v6, :cond_4

    .line 2102
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2104
    :cond_4
    const/4 v6, 0x0

    .line 2105
    const/4 v7, 0x0

    .line 2106
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move v8, v0

    if-eqz v8, :cond_8

    .line 2107
    check-cast p3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 2108
    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropFolder()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2111
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;

    move-result-object v5

    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    .line 2113
    const/4 v6, 0x1

    .line 2116
    :goto_2
    if-nez v5, :cond_6

    .line 2117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 2118
    if-eqz v5, :cond_5

    instance-of v5, v5, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v5, :cond_5

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 2121
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 2123
    :cond_6
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2124
    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 2125
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    .line 2126
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 2127
    if-eqz v6, :cond_7

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v6, v0

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showCreateFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 2130
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(Landroid/view/View;[I)V

    .line 2132
    const/4 v5, 0x0

    aget v5, v4, v5

    const/4 v6, 0x1

    aget v4, v4, v6

    move-object/from16 v0, p0

    move v1, v5

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPointInScaledDimension(II)Landroid/graphics/Point;

    move-result-object v9

    .line 2133
    iget v4, v9, Landroid/graphics/Point;->x:I

    const/16 v5, 0xa

    sub-int/2addr v4, v5

    iput v4, v9, Landroid/graphics/Point;->x:I

    .line 2135
    iget v4, v9, Landroid/graphics/Point;->y:I

    const/16 v5, 0xa

    sub-int/2addr v4, v5

    iput v4, v9, Landroid/graphics/Point;->y:I

    .line 2138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v4

    .line 2139
    iget v5, v4, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v5, v6

    .line 2140
    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-virtual/range {p4 .. p4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v8, v4, v5

    .line 2141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v5, v0

    int-to-float v6, v6

    iget v7, v9, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    int-to-float v8, v8

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move v10, v0

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    move v11, v0

    int-to-float v11, v11

    const/16 v12, 0x12c

    new-instance v13, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;)V

    invoke-interface/range {v4 .. v13}, Lcom/sec/android/app/twlauncher/DragController;->startAnimation(Landroid/view/View;FFFFFFILcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;)V

    .line 2144
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2145
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 2146
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 2149
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    move-object v5, v7

    goto/16 :goto_2
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2154
    const-string v0, "onDropCompleted"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 2155
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2157
    if-eqz p6, :cond_4

    .line 2158
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    .line 2159
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2210
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    .line 2211
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->disableRollNavigation()V

    .line 2212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 2213
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageFolderRotation:F

    .line 2214
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragCell:I

    .line 2215
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragScreen:I

    .line 2216
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDropCell:I

    .line 2217
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2218
    return-void

    .line 2162
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->hasDropTarget(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2168
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 2169
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/AppMenu;

    if-eqz v0, :cond_0

    .line 2170
    check-cast p1, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->phantomizeDragView(Lcom/sec/android/app/twlauncher/AppMenu;)Z

    goto :goto_0

    .line 2175
    :cond_2
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v0, :cond_3

    .line 2176
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    goto :goto_0

    .line 2179
    :cond_3
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v0, :cond_0

    .line 2180
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 2181
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 2182
    check-cast p1, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 2183
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2184
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getLastShiftView()Landroid/view/View;

    move-result-object v2

    .line 2185
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2188
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2189
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2190
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(I[I)V

    .line 2192
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 2193
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 2194
    invoke-direct {p0, v0, v2, v4, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getStartAndEndForASZAnimation([ILandroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2195
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    iget v2, v4, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v5, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    int-to-float v7, v7

    const/16 v8, 0x12c

    new-instance v9, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;

    invoke-direct {v9, p0, v1, p0}, Lcom/sec/android/app/twlauncher/MenuManager$dragAnimLstnr;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;)V

    invoke-interface/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/DragController;->startAnimation(Landroid/view/View;FFFFFFILcom/sec/android/app/twlauncher/DragAnimation$DragAnimLstnr;)V

    goto/16 :goto_0

    .line 2201
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->hasDropTarget(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2202
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2203
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v0, :cond_0

    .line 2204
    iget-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    check-cast p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 746
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 750
    .local v5, action:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 751
    :cond_0
    const/16 v17, 0x1

    move v0, v5

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x3

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 753
    :cond_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    .line 757
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 760
    :cond_2
    const/16 v17, 0x1

    .line 892
    :goto_0
    return v17

    .line 763
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 764
    const/16 v17, 0x0

    goto :goto_0

    .line 766
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 767
    .local v11, transX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 770
    .local v12, transY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v9

    .line 771
    .local v9, lastAbsTouch:Landroid/graphics/PointF;
    iget v3, v9, Landroid/graphics/PointF;->x:F

    .line 772
    .local v3, absX:F
    iget v4, v9, Landroid/graphics/PointF;->y:F

    .line 773
    .local v4, absY:F
    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 781
    :cond_5
    const/4 v8, 0x0

    .line 782
    .local v8, intercept:Z
    packed-switch v5, :pswitch_data_0

    .line 891
    :cond_6
    :goto_1
    :pswitch_0
    move-object/from16 v0, p1

    move v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    move/from16 v17, v8

    .line 892
    goto :goto_0

    .line 785
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 786
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 787
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v17

    if-gez v17, :cond_6

    .line 791
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    sub-float v17, v4, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v7, v0

    .line 792
    .local v7, dy:I
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    sub-float v17, v3, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v6, v0

    .line 793
    .local v6, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mMovePinchStart:I

    move/from16 v17, v0

    mul-int v18, v7, v7

    mul-int v19, v6, v6

    add-int v18, v18, v19

    sub-int v10, v17, v18

    .line 798
    .local v10, pinchDelta:I
    const/16 v17, 0x2710

    move v0, v10

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 799
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 802
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 807
    .end local v6           #dx:I
    .end local v7           #dy:I
    .end local v10           #pinchDelta:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    move/from16 v17, v0

    sub-float v17, v3, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v13, v0

    .line 808
    .local v13, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    move/from16 v17, v0

    sub-float v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v15, v0

    .line 810
    .local v15, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v17, v0

    move v0, v13

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    const/16 v17, 0x1

    move/from16 v14, v17

    .line 811
    .local v14, xMoved:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v17, v0

    move v0, v15

    move/from16 v1, v17

    if-le v0, v1, :cond_a

    const/16 v17, 0x1

    move/from16 v16, v17

    .line 813
    .local v16, yMoved:Z
    :goto_3
    if-nez v14, :cond_8

    if-eqz v16, :cond_6

    .line 815
    :cond_8
    if-eqz v14, :cond_b

    .line 816
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 817
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 810
    .end local v14           #xMoved:Z
    .end local v16           #yMoved:Z
    :cond_9
    const/16 v17, 0x0

    move/from16 v14, v17

    goto :goto_2

    .line 811
    .restart local v14       #xMoved:Z
    :cond_a
    const/16 v17, 0x0

    move/from16 v16, v17

    goto :goto_3

    .line 819
    .restart local v16       #yMoved:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/DragLayer;->isLastTouchAmbiguous()Z

    move-result v17

    if-nez v17, :cond_6

    move v0, v11

    float-to-int v0, v0

    move/from16 v17, v0

    move v0, v12

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 822
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 823
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 833
    .end local v13           #xDiff:I
    .end local v14           #xMoved:Z
    .end local v15           #yDiff:I
    .end local v16           #yMoved:Z
    :pswitch_2
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    .line 834
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    .line 835
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    .line 836
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 837
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/LauncherManager;->isMakeFolderOrPageOpened()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 846
    const/4 v8, 0x1

    .line 847
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    .line 854
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 855
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 849
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/DragLayer;->isLastTouchAmbiguous()Z

    move-result v17

    if-nez v17, :cond_e

    move v0, v11

    float-to-int v0, v0

    move/from16 v17, v0

    move v0, v12

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 851
    :cond_e
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 852
    const/4 v8, 0x1

    goto :goto_4

    .line 863
    :pswitch_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 864
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    .line 869
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 874
    :pswitch_4
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 875
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 876
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    sub-float v17, v4, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v7, v0

    .line 877
    .restart local v7       #dy:I
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    sub-float v17, v3, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v6, v0

    .line 879
    .restart local v6       #dx:I
    mul-int v17, v7, v7

    mul-int v18, v6, v6

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMovePinchStart:I

    goto/16 :goto_1

    .line 884
    .end local v6           #dx:I
    .end local v7           #dy:I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    .line 885
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    goto/16 :goto_1

    .line 782
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
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
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 373
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHasOpenListViewFolder:Z

    .line 375
    const/4 v1, 0x0

    .line 377
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    .line 378
    .local v3, count:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v5, v8, :cond_2

    .line 379
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 380
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v9, :cond_0

    .line 382
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 383
    .local v2, childWidth:I
    add-int v5, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v1, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 386
    .end local v2           #childWidth:I
    :cond_0
    instance-of v5, v0, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v5, :cond_1

    .line 387
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHasOpenListViewFolder:Z

    .line 379
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 392
    .end local v0           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 393
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 394
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v9, :cond_3

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 396
    .restart local v2       #childWidth:I
    add-int v5, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v1, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 397
    add-int/2addr v1, v2

    .line 392
    .end local v2           #childWidth:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 401
    .end local v0           #child:Landroid/view/View;
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v5, :cond_5

    .line 402
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    sub-int v6, p4, p2

    invoke-virtual {v5, v3, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setLayout(II)V

    .line 403
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    const/4 v6, 0x0

    const-string v7, "Menulayout can only be used in EXACTLY mode."

    .line 344
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->onMeasure(II)V

    .line 346
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 347
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 348
    .local v4, widthMode:I
    if-eq v4, v5, :cond_0

    .line 349
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 352
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 353
    .local v1, heightMode:I
    if-eq v1, v5, :cond_1

    .line 354
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 360
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 361
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    :cond_2
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    if-eqz v5, :cond_3

    .line 365
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 366
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    .line 368
    :cond_3
    return-void
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "dragAction"

    .prologue
    .line 3178
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3179
    if-nez p2, :cond_0

    .line 3180
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3184
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v7, 0x0

    .line 3882
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    move v5, v7

    .line 3905
    :goto_0
    return v5

    .line 3886
    :cond_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 3887
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 3892
    .local v2, focusableScreen:I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3893
    .local v4, v:Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->isListView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    .line 3894
    goto :goto_0

    .line 3889
    .end local v2           #focusableScreen:I
    .end local v4           #v:Landroid/view/View;
    :cond_1
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .restart local v2       #focusableScreen:I
    goto :goto_1

    .line 3896
    .restart local v4       #v:Landroid/view/View;
    :cond_2
    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v1, v0

    .line 3897
    .local v1, child:Lcom/sec/android/app/twlauncher/AppMenu;
    if-nez v1, :cond_3

    move v5, v7

    .line 3898
    goto :goto_0

    .line 3900
    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v3

    .line 3901
    .local v3, folder:Lcom/sec/android/app/twlauncher/UserFolder;
    if-eqz v3, :cond_4

    .line 3902
    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/twlauncher/UserFolder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    goto :goto_0

    .line 3904
    :cond_4
    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->requestFocus(ILandroid/graphics/Rect;)Z

    move v5, v7

    .line 3905
    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-string v7, ", Az: "

    const-string v6, "Launcher.MenuManager"

    .line 4634
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAccelerometer:Landroid/hardware/Sensor;

    if-eq v0, v1, :cond_1

    .line 4635
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 4685
    :cond_0
    :goto_0
    return-void

    .line 4640
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v9

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v9

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 4642
    float-to-double v1, v0

    const-wide/high16 v3, 0x3ff0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 4643
    const-string v0, "Launcher.MenuManager"

    const-string v0, "Unable to compute pitch/roll; near free fall"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4645
    :cond_2
    const/high16 v1, 0x3f80

    div-float v0, v1, v0

    .line 4647
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    mul-float/2addr v1, v0

    .line 4648
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v9

    mul-float/2addr v0, v2

    .line 4649
    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x42652ee1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 4652
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$9;->$SwitchMap$com$sec$android$app$twlauncher$MenuManager$PitchState:[I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 4654
    :pswitch_0
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_0

    const/16 v2, 0x14

    if-lt v1, v2, :cond_0

    .line 4655
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    .line 4656
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kWaitLowBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    .line 4657
    const-string v2, "Launcher.MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAIT_LOW_BOUND. pitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Az: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4661
    :pswitch_1
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    sub-int/2addr v2, v1

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 4662
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kIconsRaised:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    .line 4663
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->setRaisedIcons()V

    .line 4664
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIconStartTime:J

    .line 4665
    const-string v2, "Launcher.MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ICONS_RAISED. pitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Az: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4669
    :pswitch_2
    cmpg-float v2, v0, v5

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    if-ge v1, v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRaisedIconStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 4671
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->resetRaisedIcons()V

    .line 4672
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kWaitHighBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    .line 4673
    const-string v2, "Launcher.MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAIT_HIGH_BOUND. pitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Az: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4677
    :pswitch_3
    cmpl-float v2, v0, v5

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchThreshold:I

    if-lt v1, v2, :cond_0

    .line 4678
    sget-object v2, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kWaitLowBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPitchState:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    .line 4679
    const-string v2, "Launcher.MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAIT_LOW_BOUND. pitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Az: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4652
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .parameter "ev"

    .prologue
    .line 897
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 901
    .local v6, action:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 902
    :cond_0
    const/16 v26, 0x1

    move v0, v6

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    const/16 v26, 0x3

    move v0, v6

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 904
    :cond_1
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/VelocityTracker;->recycle()V

    .line 908
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 911
    :cond_2
    const/16 v26, 0x1

    .line 1102
    :goto_0
    return v26

    .line 913
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 914
    .local v18, transX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 917
    .local v19, transY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v12

    .line 918
    .local v12, lastAbsTouch:Landroid/graphics/PointF;
    iget v4, v12, Landroid/graphics/PointF;->x:F

    .line 919
    .local v4, absX:F
    iget v5, v12, Landroid/graphics/PointF;->y:F

    .line 920
    .local v5, absY:F
    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 926
    :cond_4
    packed-switch v6, :pswitch_data_0

    .line 1102
    :cond_5
    :goto_1
    const/16 v26, 0x1

    goto :goto_0

    .line 929
    :pswitch_0
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    .line 930
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    .line 941
    :cond_6
    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 942
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    goto :goto_1

    .line 949
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 950
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    move/from16 v26, v0

    sub-float v26, v26, v4

    move/from16 v0, v26

    float-to-int v0, v0

    move v9, v0

    .line 951
    .local v9, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    move/from16 v26, v0

    sub-float v26, v26, v5

    move/from16 v0, v26

    float-to-int v0, v0

    move v10, v0

    .line 953
    .local v10, deltaY:I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_9

    const/16 v26, 0x1

    move/from16 v11, v26

    .line 957
    .local v11, deltaYFlag:Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    if-eqz v11, :cond_7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    .line 964
    :cond_7
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 965
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v26

    if-nez v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 970
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    move v0, v4

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/sec/android/app/twlauncher/PageIndicator;->getTouchScrollOffset(IIZ)I

    move-result v17

    .line 971
    .local v17, newScrollX:I
    const/16 v26, -0x1

    move/from16 v0, v17

    move/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->setFastScrollFactor()V

    .line 973
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    goto/16 :goto_1

    .line 953
    .end local v11           #deltaYFlag:Z
    .end local v17           #newScrollX:I
    :cond_9
    const/16 v26, 0x0

    move/from16 v11, v26

    goto/16 :goto_2

    .line 982
    .restart local v11       #deltaYFlag:Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_b

    .line 983
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v14

    .line 987
    .local v14, minMaxScrollPadding:I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    .line 988
    .local v7, childCount:I
    if-gez v9, :cond_d

    .line 989
    neg-int v15, v14

    .line 990
    .local v15, minScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v15

    if-le v0, v1, :cond_5

    .line 991
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v26, v0

    if-lez v26, :cond_c

    .line 992
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 985
    .end local v7           #childCount:I
    .end local v14           #minMaxScrollPadding:I
    .end local v15           #minScrollX:I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v26

    div-int/lit8 v14, v26, 0x4

    .restart local v14       #minMaxScrollPadding:I
    goto :goto_3

    .line 994
    .restart local v7       #childCount:I
    .restart local v15       #minScrollX:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v26, v0

    sub-int v26, v15, v26

    move/from16 v0, v26

    move v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 997
    .end local v15           #minScrollX:I
    :cond_d
    if-lez v9, :cond_5

    .line 998
    const/16 v26, 0x1

    sub-int v26, v7, v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v27

    mul-int v26, v26, v27

    add-int v13, v26, v14

    .line 999
    .local v13, maxScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v13

    if-ge v0, v1, :cond_5

    .line 1000
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v26, v0

    sub-int v26, v13, v26

    move/from16 v0, v26

    move v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 1004
    .end local v7           #childCount:I
    .end local v9           #deltaX:I
    .end local v10           #deltaY:I
    .end local v11           #deltaYFlag:Z
    .end local v13           #maxScrollX:I
    .end local v14           #minMaxScrollPadding:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    move/from16 v26, v0

    sub-float v26, v4, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v22, v0

    .line 1005
    .local v22, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    move/from16 v26, v0

    sub-float v26, v5, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1010
    .local v24, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-le v0, v1, :cond_11

    const/16 v26, 0x1

    move/from16 v23, v26

    .line 1011
    .local v23, xMoved:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_12

    const/16 v26, 0x1

    move/from16 v25, v26

    .line 1013
    .local v25, yMoved:Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v26

    if-lez v26, :cond_10

    if-nez v23, :cond_f

    if-eqz v25, :cond_10

    .line 1015
    :cond_f
    if-eqz v23, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_10

    .line 1017
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 1021
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    move-result v26

    if-nez v26, :cond_5

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v26

    if-nez v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v26

    if-nez v26, :cond_5

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/twlauncher/PageIndicator;->resetFastScrollTimer()V

    goto/16 :goto_1

    .line 1010
    .end local v23           #xMoved:Z
    .end local v25           #yMoved:Z
    :cond_11
    const/16 v26, 0x0

    move/from16 v23, v26

    goto/16 :goto_4

    .line 1011
    .restart local v23       #xMoved:Z
    :cond_12
    const/16 v26, 0x0

    move/from16 v25, v26

    goto :goto_5

    .line 1032
    .end local v22           #xDiff:I
    .end local v23           #xMoved:Z
    .end local v24           #yDiff:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 1033
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    move/from16 v26, v0

    if-eqz v26, :cond_16

    .line 1034
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_13

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 1037
    :cond_13
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 1072
    :cond_14
    :goto_6
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v26

    if-eqz v26, :cond_15

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/twlauncher/PageIndicator;->getCurrentPage()I

    move-result v16

    .line 1076
    .local v16, newScreen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/twlauncher/PageIndicator;->exitSeekBarMode()V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 1081
    .end local v16           #newScreen:I
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->clearFastScrollFactor()V

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/VelocityTracker;->recycle()V

    .line 1086
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 1046
    :cond_16
    const/16 v26, 0x0

    const/16 v27, 0x3e8

    invoke-static/range {v26 .. v27}, Lcom/sec/android/app/twlauncher/SamsungUtils;->acquireDVFSlock(II)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    .line 1050
    .local v20, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v26, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mMaximumVelocity:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1051
    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1056
    .local v21, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    .line 1057
    .restart local v7       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v8, v0

    .line 1059
    .local v8, currentScreen:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    move/from16 v26, v0

    move/from16 v0, v21

    move/from16 v1, v26

    if-le v0, v1, :cond_17

    if-ltz v8, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v26

    if-nez v26, :cond_17

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    sub-int v27, v8, v27

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    goto/16 :goto_6

    .line 1063
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    move/from16 v26, v0

    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_18

    const/16 v26, 0x1

    sub-int v26, v7, v26

    move v0, v8

    move/from16 v1, v26

    if-gt v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v26

    if-nez v26, :cond_18

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v26, v0

    add-int/lit8 v27, v8, 0x1

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    goto/16 :goto_6

    .line 1068
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToDestination()V

    goto/16 :goto_6

    .line 1091
    .end local v7           #childCount:I
    .end local v8           #currentScreen:I
    .end local v20           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v21           #velocityX:I
    :pswitch_3
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 1092
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->clearFastScrollFactor()V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/VelocityTracker;->recycle()V

    .line 1097
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 926
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public open()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1430
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1432
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1433
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1434
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1436
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    .line 1437
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1438
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1439
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1440
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 1441
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1442
    return-void
.end method

.method public phantomizeDragView(Lcom/sec/android/app/twlauncher/AppMenu;)Z
    .locals 4
    .parameter "parent"

    .prologue
    const/4 v3, 0x1

    .line 3527
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3528
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 3529
    if-nez p1, :cond_0

    .line 3530
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3532
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCellIndexOrig:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;Lcom/sec/android/app/twlauncher/MenuItemView;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 3534
    .local v0, phantomView:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    move v1, v3

    .line 3537
    .end local v0           #phantomView:Lcom/sec/android/app/twlauncher/MenuItemView;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeFolderCB(ZLcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 12
    .parameter "aRemove"
    .parameter "aFolderToRemove"

    .prologue
    const/4 v11, 0x1

    .line 1820
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1824
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v8

    .line 1825
    .local v8, page:I
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1826
    .local v4, curScr:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 1827
    .local v3, count:I
    sub-int v5, v3, v11

    .local v5, i:I
    :goto_0
    if-ltz v5, :cond_3

    .line 1828
    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1829
    .local v2, childView:Landroid/view/View;
    instance-of v10, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-nez v10, :cond_1

    .line 1827
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 1832
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 1833
    .local v9, tag:Ljava/lang/Object;
    if-eqz v9, :cond_0

    instance-of v10, v9, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v10, :cond_0

    .line 1836
    move-object v0, v9

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v6, v0

    .line 1837
    .local v6, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    if-ne v6, p2, :cond_0

    .line 1840
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v10, v6}, Lcom/sec/android/app/twlauncher/UserFolderModel;->deleteFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    .line 1841
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 1844
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v10

    sub-int v7, v10, v11

    .local v7, j:I
    :goto_1
    if-ltz v7, :cond_2

    .line 1845
    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 1846
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v10

    invoke-virtual {p0, v4, v10, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Lcom/sec/android/app/twlauncher/AppMenu;ILcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    .line 1844
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1848
    .end local v1           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    .line 1849
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1853
    .end local v2           #childView:Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #curScr:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v5           #i:I
    .end local v6           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v7           #j:I
    .end local v8           #page:I
    .end local v9           #tag:Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method removeItem(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 3400
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/app/twlauncher/AppMenu;

    if-nez v4, :cond_1

    .line 3412
    :cond_0
    :goto_0
    return-void

    .line 3403
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 3404
    .local v1, count:I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3405
    .local v3, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 3406
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3407
    .local v0, child:Landroid/view/View;
    if-ne v0, v3, :cond_2

    .line 3408
    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 3405
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public renameFolder(Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/String;)Z
    .locals 4
    .parameter "aInfo"
    .parameter "aName"

    .prologue
    .line 1719
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v1, v0

    .line 1720
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 1721
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 1734
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1735
    const/4 v3, 0x1

    return v3

    .line 1725
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getListView()Lcom/sec/android/app/twlauncher/GLFastScrollListView;

    move-result-object v2

    .line 1726
    .local v2, listView:Lcom/sec/android/app/twlauncher/GLFastScrollListView;
    if-eqz v2, :cond_0

    .line 1727
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->notifyDataChanged()V

    .line 1731
    .end local v2           #listView:Lcom/sec/android/app/twlauncher/GLFastScrollListView;
    :cond_0
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    goto :goto_0

    .line 1721
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 3852
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 3853
    .local v1, screen:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 3854
    .local v0, currentScreen:I
    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3855
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 3856
    const/4 v2, 0x1

    .line 3858
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public resetMaxPageIndexAndMaxCellIndex()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2689
    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxPageNum:I

    .line 2690
    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->maxCellNum:I

    .line 2692
    return-void
.end method

.method public restoreEditModeFactor()V
    .locals 2

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditModeFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    .line 2994
    return-void
.end method

.method public restoreLM()V
    .locals 8

    .prologue
    const-string v7, "makePageInfo"

    const-string v6, "makeFolderInfo"

    const-string v5, "DebugFolder"

    .line 412
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    .line 413
    .local v1, lm:Lcom/sec/android/app/twlauncher/LauncherManager;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getSpecialFolders()Ljava/util/Hashtable;

    move-result-object v2

    .line 414
    .local v2, special:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/sec/android/app/twlauncher/UserFolderInfo;>;"
    const/4 v0, 0x0

    .line 415
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const-string v3, "makePageInfo"

    invoke-virtual {v2, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 416
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const-string v3, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got makePageInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakePageInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 420
    :cond_0
    const-string v3, "makeFolderInfo"

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 421
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const-string v3, "DebugFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got makeFolderInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakeFolderInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 425
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->restoreSelf()V

    .line 426
    const-string v3, "makePageInfo"

    invoke-virtual {v2, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v3, "makeFolderInfo"

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    return-void
.end method

.method resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3992
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 3993
    .local v0, count:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 3994
    .local v1, screen:I
    if-le v0, v4, :cond_0

    .line 3995
    if-gez v1, :cond_4

    .line 3996
    sub-int v1, v0, v4

    .line 3997
    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 4004
    :cond_0
    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 4006
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v2

    .line 4007
    .local v2, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_1

    .line 4008
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 4010
    :cond_1
    if-eqz v2, :cond_3

    .line 4011
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4012
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 4013
    :cond_2
    mul-int v3, v1, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 4015
    :cond_3
    return-void

    .line 3998
    .end local v2           #width:I
    :cond_4
    if-lt v1, v0, :cond_0

    .line 3999
    const/4 v1, 0x0

    .line 4000
    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_0
.end method

.method public save()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1507
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->saveToDB()Z

    .line 1508
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->commit()V

    .line 1510
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1512
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->leaveCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 1521
    :goto_0
    return v0

    .line 1516
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllEmptyPages()I

    .line 1517
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->assignEditToNormal()Z

    .line 1518
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    .line 1519
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->enterNewMode(I)Z

    :cond_1
    move v0, v3

    .line 1521
    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 3

    .prologue
    .line 3586
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3588
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ltz v0, :cond_0

    .line 3589
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 3597
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    .line 3600
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3602
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 3603
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 3611
    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 9
    .parameter "scrollX"
    .parameter "scrollY"

    .prologue
    const/16 v8, 0x8

    .line 1175
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    .line 1176
    .local v4, pageWidth:I
    if-nez v4, :cond_1

    .line 1177
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->scrollTo(II)V

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 1182
    .local v2, oldPage:I
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->scrollTo(II)V

    .line 1183
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 1186
    .local v3, page:I
    const/16 v5, 0x8

    .line 1187
    .local v5, range:I
    if-eq v3, v2, :cond_0

    .line 1188
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1189
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 1191
    sub-int v6, v2, v8

    if-lt v1, v6, :cond_2

    add-int/lit8 v6, v2, 0x8

    if-le v1, v6, :cond_3

    :cond_2
    sub-int v6, v2, v8

    add-int/2addr v6, v0

    if-ge v1, v6, :cond_3

    add-int/lit8 v6, v2, 0x8

    sub-int/2addr v6, v0

    if-gt v1, v6, :cond_5

    .line 1194
    :cond_3
    sub-int v6, v3, v8

    if-lt v1, v6, :cond_4

    add-int/lit8 v6, v3, 0x8

    if-le v1, v6, :cond_5

    :cond_4
    sub-int v6, v3, v8

    add-int/2addr v6, v0

    if-ge v1, v6, :cond_5

    add-int/lit8 v6, v3, 0x8

    sub-int/2addr v6, v0

    if-le v1, v6, :cond_5

    .line 1197
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppMenu;->freeResources()V

    .line 1189
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1201
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeSureAdjacentPagesArePreloaded()V

    goto :goto_0
.end method

.method public setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 2271
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2274
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 2275
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 2276
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    .line 2277
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2279
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()Z

    .line 2281
    :cond_1
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 2
    .parameter "page"

    .prologue
    .line 3982
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 3983
    iput p1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 3984
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 3985
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 3987
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 3
    .parameter "launcher"

    .prologue
    .line 432
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v1, "menumanager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "sortmethod"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    .line 437
    :cond_0
    return-void
.end method

.method public setMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 1598
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 1605
    :goto_0
    return v0

    .line 1602
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->leaveCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1603
    goto :goto_0

    .line 1605
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->enterNewMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setSortMethod(I)V
    .locals 2
    .parameter "method"

    .prologue
    .line 1621
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 1631
    :goto_0
    return-void

    .line 1623
    :cond_0
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSortMethod:I

    .line 1624
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 1625
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1626
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "sortmethod"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1627
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1629
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    .line 1630
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->syncGridView()Z

    goto :goto_0
.end method

.method public setUserFolderModel(Lcom/sec/android/app/twlauncher/UserFolderModel;)V
    .locals 3
    .parameter "aModel"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    .line 407
    const-string v0, "DebugFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting folder model to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const-string v1, "Set Folder Model"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->dumpSelf(Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method shiftItem(Landroid/view/View;I)V
    .locals 9
    .parameter "v"
    .parameter "page"

    .prologue
    .line 3541
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    .line 3542
    .local v6, pageCount:I
    const/4 v5, 0x0

    .line 3543
    .local v5, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-gt v6, p2, :cond_2

    .line 3544
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v5

    .line 3548
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3549
    .local v4, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->updateAppInfoIfNeeded(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3551
    const/4 v8, 0x0

    invoke-virtual {v5, p1, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    .line 3552
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    .line 3553
    .local v2, count:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-le v2, v8, :cond_0

    .line 3554
    const/4 v8, 0x1

    sub-int v8, v2, v8

    invoke-virtual {v5, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3555
    .local v7, shiftView:Landroid/view/View;
    invoke-virtual {v5, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 3556
    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Landroid/view/View;I)V

    .line 3560
    .end local v7           #shiftView:Landroid/view/View;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemsOnPage:I

    if-ge v3, v8, :cond_3

    .line 3561
    invoke-virtual {v5, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3562
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3563
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v8, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v8, :cond_1

    if-eqz v0, :cond_1

    .line 3564
    invoke-virtual {v0, p2, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 3560
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3546
    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v5, Lcom/sec/android/app/twlauncher/AppMenu;

    .restart local v5       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    goto :goto_0

    .line 3567
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_3
    return-void
.end method

.method protected snapToScreen(Landroid/view/animation/Interpolator;II)V
    .locals 11
    .parameter "interpolator"
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1264
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1320
    :goto_0
    return-void

    .line 1272
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v6, :cond_1

    .line 1273
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1274
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1278
    .local v1, childCount:I
    if-lt v1, v8, :cond_7

    .line 1279
    const/4 v6, -0x1

    if-ge p2, v6, :cond_6

    .line 1280
    const/4 p2, -0x1

    .line 1288
    :cond_2
    :goto_1
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-eq p2, v6, :cond_9

    move v0, v7

    .line 1289
    .local v0, changingScreens:Z
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 1290
    .local v3, focusedChild:Landroid/view/View;
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v3, v6, :cond_3

    .line 1291
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 1296
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v5

    .line 1297
    .local v5, width:I
    mul-int v4, p2, v5

    .line 1298
    .local v4, newX:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1302
    .local v2, delta:I
    if-lt v1, v8, :cond_4

    .line 1303
    if-gez p2, :cond_a

    .line 1304
    sub-int p2, v1, v7

    .line 1308
    :cond_4
    :goto_3
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 1312
    if-gez p3, :cond_5

    .line 1313
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    mul-int/2addr v6, v2

    div-int p3, v6, v5

    .line 1315
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1316
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v7, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v7, v7

    int-to-float v8, v4

    int-to-long v9, p3

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    .line 1317
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1319
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_0

    .line 1281
    .end local v0           #changingScreens:Z
    .end local v2           #delta:I
    .end local v3           #focusedChild:Landroid/view/View;
    .end local v4           #newX:I
    .end local v5           #width:I
    :cond_6
    if-le p2, v1, :cond_2

    .line 1282
    move p2, v1

    goto :goto_1

    .line 1283
    :cond_7
    if-gez p2, :cond_8

    .line 1284
    const/4 p2, 0x0

    goto :goto_1

    .line 1285
    :cond_8
    if-lt p2, v1, :cond_2

    .line 1286
    sub-int p2, v1, v7

    goto :goto_1

    .line 1288
    :cond_9
    const/4 v6, 0x0

    move v0, v6

    goto :goto_2

    .line 1305
    .restart local v0       #changingScreens:Z
    .restart local v2       #delta:I
    .restart local v3       #focusedChild:Landroid/view/View;
    .restart local v4       #newX:I
    .restart local v5       #width:I
    :cond_a
    if-lt p2, v1, :cond_4

    .line 1306
    const/4 p2, 0x0

    goto :goto_3
.end method

.method public startUpdateDB()V
    .locals 1

    .prologue
    .line 3707
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    if-nez v0, :cond_0

    .line 3708
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    .line 3710
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->updateDB()V

    .line 3711
    return-void
.end method

.method public switchToNormalModeDelayed()V
    .locals 2

    .prologue
    .line 2036
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2037
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$switchToNormalModeDelayedRunnable;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->post(Ljava/lang/Runnable;)Z

    .line 2039
    :cond_0
    return-void
.end method

.method public unPhanToMMWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            "Landroid/graphics/PointF;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;",
            "Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 4221
    .line 4222
    const/4 v0, 0x0

    .line 4225
    if-nez p3, :cond_6

    .line 4226
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getPhantomItemViews()Ljava/util/ArrayList;

    move-result-object v1

    .line 4228
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 4229
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 4230
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v1, p3

    .line 4235
    :goto_2
    if-nez v1, :cond_1

    .line 4236
    const-string v0, "Add2DropScr"

    const-string v1, "Failed to find matching item !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    const/4 v0, 0x0

    .line 4269
    :goto_3
    return v0

    .line 4228
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4239
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4240
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4241
    new-instance v4, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuItemView;)V

    .line 4243
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v2, :cond_3

    .line 4244
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v2

    .line 4245
    const/16 v3, 0x12c

    .line 4246
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4247
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 4249
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getLocationOnScreen([I)V

    .line 4250
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 4251
    new-instance v5, Landroid/graphics/PointF;

    iget v7, p2, Landroid/graphics/PointF;->x:F

    iget v8, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4252
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 4253
    if-eq v0, v2, :cond_4

    .line 4254
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AppMenu;->getWidth()I

    move-result v7

    sub-int v8, v0, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int/2addr v7, v8

    .line 4255
    if-ge v0, v2, :cond_2

    .line 4256
    iget v0, v6, Landroid/graphics/PointF;->x:F

    int-to-float v2, v7

    sub-float/2addr v0, v2

    iput v0, v6, Landroid/graphics/PointF;->x:F

    .line 4260
    :goto_4
    div-int v0, v3, v7

    sub-int v0, v3, v0

    add-int/2addr v0, v3

    move v7, v0

    .line 4262
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUnPhanAnim:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;

    const/4 v3, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->addAnim(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    .line 4267
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUnPhanAnim:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;

    invoke-virtual {v0, p4}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->setListener(Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;)V

    .line 4268
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 4269
    const/4 v0, 0x1

    goto :goto_3

    .line 4258
    :cond_2
    iget v0, v6, Landroid/graphics/PointF;->x:F

    int-to-float v2, v7

    add-float/2addr v0, v2

    iput v0, v6, Landroid/graphics/PointF;->x:F

    goto :goto_4

    .line 4265
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V

    goto :goto_6

    :cond_4
    move v7, v3

    goto :goto_5

    :cond_5
    move-object v1, v0

    goto/16 :goto_2

    :cond_6
    move-object v1, p3

    goto/16 :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    .line 1639
    return-void
.end method

.method public updateDrawingCacheForApplicationBadgeCountChange(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1323
    .local p1, updatedApps:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    .line 1324
    .local v3, count:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1325
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 1326
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1327
    .local v1, child:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 1328
    .local v4, count2:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 1329
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1330
    .local v2, childchild:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->destroyDrawingCache()V

    .line 1331
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 1332
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1333
    invoke-static {v2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_0

    .line 1337
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #child:Landroid/view/ViewGroup;
    .end local v2           #childchild:Landroid/view/View;
    .end local v4           #count2:I
    :cond_1
    return-void
.end method

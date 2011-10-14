.class public Lcom/sec/android/app/twlauncher/Workspace;
.super Lcom/sec/android/app/twlauncher/Scene;
.source "Workspace.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/sec/android/app/twlauncher/DragScroller;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;
.implements Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;,
        Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;,
        Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    }
.end annotation


# instance fields
.field private canvas_factoryinfo:Landroid/graphics/Canvas;

.field private mAllowLongPress:Z

.field private mAniRotateFadeIn3D:Landroid/view/animation/Animation;

.field private mAniRotateFadeOut3D:Landroid/view/animation/Animation;

.field private mAniTransition:Landroid/view/animation/Animation;

.field private mAutoScrollRunnable:Ljava/lang/Runnable;

.field private final mBestFitRect:Landroid/graphics/Rect;

.field final mClipBounds:Landroid/graphics/Rect;

.field private mCurrentWidgetRect:Landroid/graphics/Rect;

.field private mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

.field private mDefaultIMEIPosX:I

.field private mDefaultIMEIPosY:I

.field private mDefaultIMEIPosYGap:I

.field private mDefaultScreen:I

.field private final mDimPaint:Landroid/graphics/Paint;

.field private mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field final mDrawerBounds:Landroid/graphics/Rect;

.field private mEndScreen:I

.field private mExistWidgetSpace:Z

.field protected mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field protected mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mFirRectHandler:Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

.field private mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

.field private mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mHoverInRect:Landroid/graphics/Rect;

.field private mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mHoverOutRect:Landroid/graphics/Rect;

.field private mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

.field private mHoverScratchRect:Landroid/graphics/Rect;

.field private mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mIMEITextPaint:Landroid/graphics/Paint;

.field private mIMEITextPaint_background:Landroid/graphics/Paint;

.field private mIgnoreRestore:Z

.field private mIsAnimating:Z

.field private mIsAutoScrolling:Z

.field private mIsOnAnimation:Z

.field private mIsResizing:Z

.field private mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mModeResize:Z

.field private mOverlayColorRed:I

.field private mOverlayColorYellow:I

.field private mResizeBaseCellRect:Landroid/graphics/Rect;

.field private mResizeBaseRect:Landroid/graphics/Rect;

.field private mResizeData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mResizeDimPaint:Landroid/graphics/Paint;

.field private mResizeDimRect:Landroid/graphics/Rect;

.field private mResizeDotGray:Landroid/graphics/drawable/Drawable;

.field private mResizeDotRed:Landroid/graphics/drawable/Drawable;

.field private mResizeDotYellow:Landroid/graphics/drawable/Drawable;

.field private mResizeEnableState:I

.field private mResizeHandle:Landroid/graphics/drawable/Drawable;

.field private mResizeHandleRect:Landroid/graphics/Rect;

.field private mResizeHandleRectTouched:Z

.field private mResizeModeCancel:Z

.field private mResizeOverlayGray:Landroid/graphics/drawable/Drawable;

.field private mResizeOverlayRed:Landroid/graphics/drawable/Drawable;

.field private mResizeOverlayYellow:Landroid/graphics/drawable/Drawable;

.field private mResizeRect:Landroid/graphics/Rect;

.field private mResizeRectPaint:Landroid/graphics/Paint;

.field private mResizeStrokePaint:Landroid/graphics/Paint;

.field private mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

.field private mScrollDirection:I

.field private mStartScreen:I

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempEstimate:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidgetResizeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v7, 0xc8

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 305
    invoke-direct {p0, p1, p2, v6}, Lcom/sec/android/app/twlauncher/Scene;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 107
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 109
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempCell:[I

    .line 111
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    .line 115
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDrawerBounds:Landroid/graphics/Rect;

    .line 117
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mClipBounds:Landroid/graphics/Rect;

    .line 119
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 121
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mBestFitRect:Landroid/graphics/Rect;

    .line 129
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWidgetResizeLock:Ljava/lang/Object;

    .line 133
    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    .line 135
    iput v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 137
    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    .line 178
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    .line 180
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    .line 182
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutRect:Landroid/graphics/Rect;

    .line 184
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-direct {v2, v7, v8}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 186
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-direct {v2, v7, v8}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(J)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 188
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverScratchRect:Landroid/graphics/Rect;

    .line 190
    new-instance v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 199
    new-instance v2, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;-><init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/Workspace$1;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mFirRectHandler:Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

    .line 201
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    .line 203
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    .line 205
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    .line 207
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    .line 209
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsResizing:Z

    .line 258
    iput v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    .line 260
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    .line 268
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0x12c

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 271
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0x12c

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 912
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    .line 914
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    .line 3457
    new-instance v2, Lcom/sec/android/app/twlauncher/Workspace$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Workspace$2;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    .line 307
    new-instance v2, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    .line 308
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 310
    sget-object v2, Lcom/sec/android/app/twlauncher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v2, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 312
    .local v0, a:Landroid/content/res/TypedArray;
    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    .line 314
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 317
    .local v1, res:Landroid/content/res/Resources;
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->initWorkspace(Landroid/content/res/Resources;)V

    .line 318
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->initPageIndicator(Landroid/content/res/Resources;)V

    .line 319
    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/app/twlauncher/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/Workspace;)Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$408(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$410(Lcom/sec/android/app/twlauncher/Workspace;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/twlauncher/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentWidgetRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/Workspace;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/Workspace;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/twlauncher/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/Workspace;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->setResizeRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method private cancelRunningTransitionAnimation()V
    .locals 2

    .prologue
    .line 3306
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    .line 3307
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    .line 3308
    .local v0, started:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 3309
    if-nez v0, :cond_0

    .line 3310
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 3313
    .end local v0           #started:Z
    :cond_0
    return-void
.end method

.method private checkResizeHandleRectTouchedDown(II)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2252
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    move v0, v4

    .line 2283
    :goto_0
    return v0

    .line 2256
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    .line 2257
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    .line 2263
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3faaaaab

    mul-float/2addr v2, v3

    .line 2277
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    int-to-float v3, p1

    sub-float/2addr v0, v3

    .line 2278
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    int-to-float v3, p2

    sub-float/2addr v1, v3

    .line 2279
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2280
    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 2281
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 2283
    goto :goto_0
.end method

.method private clearVacantCache()V
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 766
    :cond_0
    return-void
.end method

.method private cloneFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/CellLayout;IIZ)V
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2872
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v19

    .line 2873
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/sec/android/app/twlauncher/Launcher;->createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v20

    .line 2874
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->renewFrom(Lcom/sec/android/app/twlauncher/UserFolderInfo;Z)V

    .line 2875
    const-wide/16 v4, -0x1

    move-wide v0, v4

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 2879
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2880
    const v4, 0x7f03000a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    move v0, v4

    move-object v1, v5

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml2(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v4

    move-object v9, v4

    .line 2885
    :goto_0
    if-eqz p5, :cond_1

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p2

    move-object v1, v9

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;I)V

    .line 2886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object v4, v0

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2887
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v11, v0

    move-object/from16 v4, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 2888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v4, v0

    if-nez v4, :cond_2

    .line 2906
    :goto_2
    return-void

    .line 2883
    :cond_0
    const v4, 0x7f03000a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    move v0, v4

    move-object v1, v5

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v4

    move-object v9, v4

    goto :goto_0

    .line 2885
    :cond_1
    const/4 v4, -0x1

    goto :goto_1

    .line 2890
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v4, v0

    move-object/from16 v0, p2

    move-object v1, v9

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 2891
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 2892
    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2896
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 2897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v10, v0

    const-wide/16 v12, -0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v14, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    move v15, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v11, v20

    invoke-static/range {v10 .. v18}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabaseUserFolderWithShortcut(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZI)V

    .line 2904
    :goto_3
    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/twlauncher/LauncherModel;->addFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 2905
    check-cast v9, Lcom/sec/android/app/twlauncher/FolderIcon;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/FolderIcon;->onClone()V

    goto :goto_2

    .line 2901
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v10, v0

    const-wide/16 v12, -0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v14, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    move v15, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move/from16 v16, v0

    move-object/from16 v11, v20

    invoke-static/range {v10 .. v16}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_3
.end method

.method private drawDefaultIMEIText(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    .line 1442
    const/16 v6, 0x46

    .line 1444
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1445
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1447
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    sub-int/2addr v0, v6

    const/16 v1, 0xa

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    const/16 v2, 0x1e

    sub-int/2addr v0, v2

    int-to-float v2, v0

    const v3, 0x43d98000

    const v4, 0x44048000

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint_background:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1449
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mHwVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1453
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mPdaVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1455
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mPhoneVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1461
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mCscVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1463
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mRfCalDate:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1465
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1467
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mCameraFirmVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1469
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mTspFirmVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1471
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mTskFirmVer:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1475
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    mul-int/lit8 v3, v3, 0x9

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1485
    return-void
.end method

.method private drawHoverRect(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/Rect;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x3f80

    .line 1244
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    .line 1245
    sub-float v0, v5, v0

    mul-float/2addr v0, p3

    .line 1247
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1249
    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    .line 1250
    invoke-direct {p0, p1, v1, p4}, Lcom/sec/android/app/twlauncher/Workspace;->transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;IF)V

    .line 1253
    neg-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1259
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1260
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isManagingWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1272
    const/16 v1, 0x306

    const/16 v2, 0x300

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    .line 1275
    const/high16 v1, 0x3f00

    invoke-static {v1, v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    .line 1276
    invoke-virtual {p1, v1, v1, v1, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    .line 1282
    :goto_0
    invoke-virtual {p1, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(Landroid/graphics/Rect;)V

    .line 1283
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1287
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    .line 1288
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1289
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1291
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 1292
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1293
    return-void

    .line 1279
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    .line 1280
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncErase()V

    goto :goto_0
.end method

.method private drawPageIndicator(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 4
    .parameter "canvas"

    .prologue
    .line 1503
    const/4 v0, 0x0

    .line 1504
    .local v0, redraw:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v2, :cond_0

    .line 1505
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1506
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageScrollOffset(I)V

    .line 1511
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/twlauncher/PageIndicator;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;I)Z

    move-result v0

    .line 1513
    :cond_0
    return v0

    .line 1508
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v1

    .line 1509
    .local v1, updatedScreen:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    goto :goto_0
.end method

.method private drawResizeGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1200
    const/4 v7, 0x0

    .line 1201
    .local v7, ret:Z
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 1202
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    .line 1206
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1212
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1215
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1216
    .local v6, cl:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPointX(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1217
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPointY(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1218
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixelW(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1219
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixelH(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1220
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1224
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->drawWidgetResizeAnimatorGL(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v7, v1

    .line 1227
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    .line 1228
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->drawResizeOverlay(Landroid/graphics/Canvas;)V

    .line 1230
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v1, :cond_1

    .line 1231
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1234
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 1235
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v1, v8, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 1238
    return v7

    .line 1205
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v6           #cl:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeSurfaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto/16 :goto_0
.end method

.method private drawResizeOverlay(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 1309
    const/4 v10, 0x0

    .line 1310
    .local v10, overlay:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    .line 1311
    .local v8, handle:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 1312
    .local v5, dot:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTempRect:Landroid/graphics/Rect;

    move-object v14, v0

    .line 1313
    .local v14, tmpRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    move v15, v0

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayRed:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRectPaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorRed:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorRed:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    .line 1324
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/Rect;->set(IIII)V

    .line 1326
    invoke-virtual {v10, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    .line 1329
    .local v13, resizableRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    move v15, v0

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mBestFitRect:Landroid/graphics/Rect;

    move-object v15, v0

    invoke-virtual {v13, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1330
    :cond_0
    iget v15, v13, Landroid/graphics/Rect;->left:I

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object v0, v10

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1333
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1319
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #resizableRect:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayYellow:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRectPaint:Landroid/graphics/Paint;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorYellow:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 1335
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v13       #resizableRect:Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayGray:Landroid/graphics/drawable/Drawable;

    move-object v15, v0

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object v0, v14

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayGray:Landroid/graphics/drawable/Drawable;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 1342
    .end local v13           #resizableRect:Landroid/graphics/Rect;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    .line 1343
    .restart local v13       #resizableRect:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1345
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    move v15, v0

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mBestFitRect:Landroid/graphics/Rect;

    move-object v15, v0

    invoke-virtual {v13, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1346
    :cond_4
    iget v15, v13, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    const/16 v16, 0x1

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    sub-int v16, v16, v17

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1348
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1355
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 1350
    :cond_5
    iget v15, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    const/16 v16, 0x1

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    sub-int v16, v16, v17

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 1358
    .end local v13           #resizableRect:Landroid/graphics/Rect;
    :cond_6
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object v15, v0

    invoke-direct {v12, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1359
    .local v12, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRectPaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v0, p1

    move-object v1, v12

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1361
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1362
    .local v11, padding:Landroid/graphics/Rect;
    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1364
    iget v15, v12, Landroid/graphics/Rect;->left:I

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    iput v15, v12, Landroid/graphics/Rect;->left:I

    .line 1365
    iget v15, v12, Landroid/graphics/Rect;->right:I

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iput v15, v12, Landroid/graphics/Rect;->right:I

    .line 1366
    iget v15, v12, Landroid/graphics/Rect;->top:I

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    iput v15, v12, Landroid/graphics/Rect;->top:I

    .line 1367
    iget v15, v12, Landroid/graphics/Rect;->bottom:I

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iput v15, v12, Landroid/graphics/Rect;->bottom:I

    .line 1369
    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1370
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1372
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1373
    iget v15, v12, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    sub-int v15, v15, v16

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v6, v15, v16

    .line 1374
    .local v6, dx:I
    iget v15, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    sub-int v15, v15, v16

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    .line 1375
    .local v7, dy:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    move-object v15, v0

    invoke-virtual {v15, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 1376
    int-to-float v15, v6

    move v0, v7

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1377
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1378
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1379
    return-void
.end method

.method private drawWidgetResizeAnimatorGL(Landroid/graphics/Canvas;)Z
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1296
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    if-nez v1, :cond_0

    .line 1297
    const/4 v1, 0x0

    .line 1305
    :goto_0
    return v1

    .line 1299
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1300
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1302
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    .line 1303
    .local v0, redraw:Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v1, v0

    .line 1305
    goto :goto_0
.end method

.method private estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I
    .locals 7
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v0, :cond_0

    .line 3036
    const/4 v0, 0x0

    invoke-virtual {p6, v0, p5}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3039
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3041
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageBackgroundPaddingLeft:I

    sub-int/2addr p1, v0

    .line 3044
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v0, p6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/CellLayout;->findNearestVacantArea(IIIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private findCellForResizableWidget([ILjava/lang/Object;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x78

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2927
    check-cast p2, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    .line 2930
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2931
    if-nez v1, :cond_0

    move v2, v8

    .line 2932
    :goto_0
    if-nez v1, :cond_1

    move v3, v8

    .line 2934
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v4, v5, v2, v3, v9}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v4

    .line 2935
    if-nez v4, :cond_7

    .line 2936
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->getSupportSize()[Ljava/lang/String;

    move-result-object v0

    .line 2937
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2938
    const/4 v3, -0x1

    move v5, v9

    .line 2940
    :goto_2
    array-length v6, v0

    if-ge v5, v6, :cond_8

    .line 2941
    aget-object v6, v0, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v8

    move v3, v5

    .line 2948
    :goto_3
    if-eqz v2, :cond_7

    if-ltz v3, :cond_7

    .line 2949
    sub-int v2, v3, v8

    move v3, v4

    :goto_4
    if-ltz v2, :cond_6

    .line 2950
    aget-object v4, v0, v2

    .line 2951
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2952
    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2954
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v6, v7, v5, v4, v9}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v4

    or-int/2addr v3, v4

    .line 2956
    if-eqz v3, :cond_5

    .line 2957
    if-nez v1, :cond_3

    move v0, v8

    :goto_5
    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 2958
    if-nez v1, :cond_4

    move v0, v8

    :goto_6
    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    move v0, v8

    .line 2965
    :goto_7
    return v0

    .line 2931
    :cond_0
    iget v2, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    goto :goto_0

    .line 2932
    :cond_1
    iget v3, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    goto :goto_1

    .line 2940
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2957
    :cond_3
    iget v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    goto :goto_5

    .line 2958
    :cond_4
    iget v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    goto :goto_6

    .line 2949
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_6
    move v0, v3

    goto :goto_7

    :cond_7
    move v0, v4

    goto :goto_7

    :cond_8
    move v2, v9

    goto :goto_3
.end method

.method private findSearchWidget(Lcom/sec/android/app/twlauncher/CellLayout;)Lcom/sec/android/app/twlauncher/Search;
    .locals 4
    .parameter "screen"

    .prologue
    .line 3152
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v0

    .line 3153
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3154
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3155
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/Search;

    if-eqz v3, :cond_0

    .line 3156
    check-cast v2, Lcom/sec/android/app/twlauncher/Search;

    .end local v2           #v:Landroid/view/View;
    move-object v3, v2

    .line 3159
    :goto_1
    return-object v3

    .line 3153
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3159
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getAllResizeCellSpans()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 2486
    .local v0, info:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2487
    .local v7, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    new-instance v5, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-wide v12, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v5, v12, v13}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    .line 2488
    .local v5, multi:Lcom/sec/android/app/twlauncher/MultipleSize;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2490
    .local v8, screen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMaxX()I

    move-result v3

    .line 2491
    .local v3, maxX:I
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMaxY()I

    move-result v4

    .line 2492
    .local v4, maxY:I
    const/4 v12, 0x2

    new-array v6, v12, [I

    .line 2493
    .local v6, pixelWH:[I
    const/4 v12, 0x2

    new-array v2, v12, [I

    .line 2495
    .local v2, maxWH:[I
    const/4 v9, 0x0

    .line 2500
    .local v9, top:I
    iget-object v12, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v12}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v1

    .line 2501
    .local v1, left:I
    iget-object v12, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v12}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v9

    .line 2504
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v12

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v13

    invoke-virtual {v8, v12, v13, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    .line 2505
    const/4 v11, 0x1

    .local v11, y:I
    :goto_0
    if-gt v11, v4, :cond_2

    .line 2506
    const/4 v10, 0x1

    .local v10, x:I
    :goto_1
    if-gt v10, v3, :cond_1

    .line 2507
    invoke-virtual {v5, v10, v11}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2508
    invoke-virtual {v8, v10, v11, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    .line 2509
    const/4 v12, 0x0

    aget v12, v6, v12

    add-int/2addr v12, v1

    const/4 v13, 0x0

    aget v13, v2, v13

    if-gt v12, v13, :cond_0

    const/4 v12, 0x1

    aget v12, v6, v12

    add-int/2addr v12, v9

    const/4 v13, 0x1

    aget v13, v2, v13

    if-gt v12, v13, :cond_0

    .line 2510
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    aget v13, v6, v13

    add-int/2addr v13, v1

    const/4 v14, 0x1

    aget v14, v6, v14

    add-int/2addr v14, v9

    invoke-direct {v12, v1, v9, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2506
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2505
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2516
    .end local v10           #x:I
    :cond_2
    return-object v7
.end method

.method private getWhichScreen()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2209
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    .line 2212
    .local v2, scrWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v2

    .line 2215
    move v3, v2

    .line 2216
    .local v3, screenWidth:I
    const/4 v5, 0x0

    .line 2217
    .local v5, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 2218
    .local v1, count:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 2220
    .local v4, scrollX:I
    const/4 v6, 0x2

    if-lt v1, v6, :cond_1

    .line 2221
    if-gez v4, :cond_0

    .line 2222
    div-int/lit8 v6, v3, 0x2

    sub-int v6, v4, v6

    div-int v5, v6, v3

    .line 2248
    :goto_0
    return v5

    .line 2224
    :cond_0
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v4

    div-int v5, v6, v3

    goto :goto_0

    .line 2228
    :cond_1
    sub-int v6, v1, v8

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v7

    sub-int v0, v6, v7

    .line 2230
    .local v0, availableToScroll:I
    if-gez v4, :cond_2

    .line 2231
    const/4 v5, 0x0

    goto :goto_0

    .line 2232
    :cond_2
    if-gtz v0, :cond_3

    .line 2233
    sub-int v5, v1, v8

    goto :goto_0

    .line 2239
    :cond_3
    if-lez v3, :cond_4

    .line 2240
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v4

    div-int v5, v6, v3

    goto :goto_0

    .line 2242
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private initPageIndicator(Landroid/content/res/Resources;)V
    .locals 9
    .parameter

    .prologue
    .line 1492
    new-instance v0, Lcom/sec/android/app/twlauncher/PageIndicator;

    const v1, 0x7f0b0038

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x7

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

    .line 1499
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    .line 1500
    return-void
.end method

.method private initWorkspace(Landroid/content/res/Resources;)V
    .locals 10
    .parameter "res"

    .prologue
    const-wide/16 v8, 0x1f4

    const/high16 v7, -0x6700

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 325
    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 326
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 328
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 329
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    .line 330
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mMaximumVelocity:I

    .line 331
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    .line 337
    const v1, 0x7f090005

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    .line 338
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDimPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x7f07000e

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 342
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_4

    .line 343
    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    .line 353
    :goto_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    .line 354
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 358
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint_background:Landroid/graphics/Paint;

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIMEITextPaint_background:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    .line 370
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 374
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 375
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 376
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 378
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 380
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 381
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 383
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    .line 385
    const v1, 0x7f02004e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    .line 388
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRectPaint:Landroid/graphics/Paint;

    .line 393
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimPaint:Landroid/graphics/Paint;

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    .line 396
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeStrokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 399
    const v1, 0x7f020025

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayYellow:Landroid/graphics/drawable/Drawable;

    .line 400
    const v1, 0x7f020022

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayRed:Landroid/graphics/drawable/Drawable;

    .line 401
    const v1, 0x7f02001a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeOverlayGray:Landroid/graphics/drawable/Drawable;

    .line 403
    const v1, 0x7f020021

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotYellow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 407
    :cond_0
    const v1, 0x7f020020

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    .line 408
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotRed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 411
    :cond_1
    const v1, 0x7f02001f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDotGray:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 416
    :cond_2
    const v1, 0x7f0200cc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    .line 417
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 421
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRect:Landroid/graphics/Rect;

    .line 422
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeDimRect:Landroid/graphics/Rect;

    .line 423
    const v1, 0x7f070012

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorYellow:I

    .line 424
    const v1, 0x7f070010

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mOverlayColorRed:I

    .line 425
    return-void

    .line 345
    :cond_4
    const/16 v1, 0x258

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    goto/16 :goto_0
.end method

.method private isResizableWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2456
    if-nez p1, :cond_0

    move v0, v7

    .line 2466
    :goto_0
    return v0

    .line 2460
    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    .line 2461
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MultipleSize;->countAvailableSizes()I

    move-result v0

    .line 2462
    const-string v1, "Launcher.Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resizable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%#x"

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cnt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    if-ge v8, v0, :cond_1

    move v0, v8

    .line 2464
    goto :goto_0

    :cond_1
    move v0, v7

    .line 2466
    goto :goto_0
.end method

.method private isSamsungWidgetInfo(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 2909
    const/4 v0, 0x0

    .line 2911
    check-cast p1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object p0

    .line 2912
    instance-of v1, p0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    if-eqz v1, :cond_0

    .line 2913
    check-cast p0, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    .line 2914
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->getProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.widgetapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2916
    new-instance v1, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    .line 2917
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MultipleSize;->countAvailableSizes()I

    move-result v1

    if-le v1, v4, :cond_0

    move v0, v4

    .line 2922
    :cond_0
    return v0
.end method

.method private onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "dragInfo"
    .parameter "cellLayout"

    .prologue
    .line 2792
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    .line 2793
    return-void
.end method

.method private onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2800
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v1

    .line 2801
    if-eqz v1, :cond_0

    .line 2802
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    .line 2805
    :cond_0
    check-cast p4, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p4}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object p1

    .line 2806
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v9

    .line 2809
    iget v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    sparse-switch v1, :sswitch_data_0

    .line 2852
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2812
    :sswitch_0
    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 2814
    new-instance v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v1, p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    move-object p4, v1

    .line 2816
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const v2, 0x7f030001

    move-object v0, p4

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object p1, v0

    invoke-virtual {v1, v2, p5, p1}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v6

    .line 2855
    if-eqz p6, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p5, v6, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;I)V

    .line 2856
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2857
    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 2858
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    if-nez v1, :cond_4

    .line 2867
    :goto_2
    return-void

    .line 2821
    :sswitch_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v9

    .line 2822
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    iput v1, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2830
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v4, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 2831
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v5, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 2833
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v1

    .line 2834
    if-eqz v1, :cond_1

    .line 2835
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 2836
    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 2837
    iput v4, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 2838
    iput v5, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 2839
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 2843
    :goto_3
    iget v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/16 v2, 0xfa4

    if-ne v1, v2, :cond_2

    .line 2844
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast p1, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    invoke-virtual {v1, p1, v9}, Lcom/sec/android/app/twlauncher/Launcher;->addNewDroppedAppWidget(Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_2

    .line 2841
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    goto :goto_3

    .line 2846
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v1, p1, v9}, Lcom/sec/android/app/twlauncher/Launcher;->addNewDroppedSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_2

    .line 2849
    :sswitch_2
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v2, v0

    move-object v1, p0

    move-object v3, p5

    move v4, p2

    move v5, p3

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->cloneFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/CellLayout;IIZ)V

    goto :goto_2

    .line 2855
    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    .line 2860
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    invoke-virtual {p5, v6, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 2861
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 2862
    invoke-virtual {v9, p4}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2864
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-wide/16 v3, -0x64

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v5

    iget v6, p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    iget v7, p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move-object v2, p4

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_2

    :cond_5
    move-object p4, p1

    goto/16 :goto_0

    .line 2809
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x5 -> :sswitch_1
        0xfa4 -> :sswitch_1
    .end sparse-switch
.end method

.method private setResizeBaseRect(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 12
    .parameter "lawi"

    .prologue
    const/4 v10, 0x0

    .line 3498
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 3499
    .local v0, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 3500
    .local v5, point:[I
    new-instance v4, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-wide v7, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v4, v7, v8}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    .line 3501
    .local v4, ms:Lcom/sec/android/app/twlauncher/MultipleSize;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMinX()I

    move-result v3

    .line 3502
    .local v3, minCellW:I
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMinY()I

    move-result v2

    .line 3503
    .local v2, minCellH:I
    invoke-virtual {v0, v3, v2, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    .line 3504
    new-instance v7, Landroid/graphics/Rect;

    aget v8, v5, v10

    const/4 v9, 0x1

    aget v9, v5, v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    .line 3506
    iget v7, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v8

    mul-int v6, v7, v8

    .line 3507
    .local v6, top:I
    iget v7, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v8

    mul-int v1, v7, v8

    .line 3511
    .local v1, left:I
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    iget-object v8, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v8

    iget-object v9, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v9}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 3514
    new-instance v7, Landroid/graphics/Rect;

    iget v8, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v9, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v10, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    add-int/2addr v10, v3

    iget v11, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    add-int/2addr v11, v2

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseCellRect:Landroid/graphics/Rect;

    .line 3519
    return-void
.end method

.method private setResizeRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 3492
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    .line 3493
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentWidgetRect:Landroid/graphics/Rect;

    .line 3494
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 3495
    return-void
.end method

.method private snapToDestination()V
    .locals 2

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 2288
    return-void
.end method

.method private startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x4

    .line 1407
    const/4 v0, 0x0

    .line 1408
    .local v0, edgesRequired:Z
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->isHorizontalFadingEdgeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1409
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    .line 1410
    .local v1, fadingEdgeStrength:[F
    new-array v2, v4, [I

    fill-array-data v2, :array_1

    .line 1411
    .local v2, paddingOffset:[I
    const/4 v3, 0x2

    const/high16 v4, 0x3f80

    aput v4, v1, v3

    .line 1412
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v3, p1, v1, v2}, Lcom/sec/android/app/twlauncher/GLScrollBars;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;[F[I)Z

    move-result v0

    .line 1414
    .end local v1           #fadingEdgeStrength:[F
    .end local v2           #paddingOffset:[I
    :cond_0
    return v0

    .line 1409
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1410
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;IF)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x3f80

    const/4 v5, 0x0

    .line 1059
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    .line 1060
    mul-int v0, v6, p2

    .line 1061
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int v7, v0, v1

    .line 1062
    cmpg-float v1, p3, v5

    if-gtz v1, :cond_0

    .line 1063
    int-to-float v0, v0

    int-to-float v1, v7

    int-to-float v2, v6

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageGap:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1073
    :goto_0
    int-to-float v0, v6

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    .line 1074
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v0

    mul-float/2addr v0, p3

    sub-float v0, v8, v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 1075
    return-void

    .line 1066
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleMain:F

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomScaleSide:F

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v6

    div-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v1

    .line 1067
    invoke-static {v8, v1, p3}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v3

    .line 1069
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mZoomPageGap:I

    mul-int/2addr v1, v7

    div-int/2addr v1, v6

    add-int/2addr v1, v0

    .line 1070
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    .line 1071
    int-to-float v4, v1

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    goto :goto_0
.end method

.method private updateWallpaperOffset(I)V
    .locals 6
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 788
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v5

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 789
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    cmpl-float v2, v0, v4

    if-nez v2, :cond_0

    move v0, v3

    :cond_0
    invoke-virtual {v1, v0, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 791
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 792
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 793
    sub-int v2, v0, v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v3

    mul-int/2addr v2, v3

    sub-int/2addr v2, v1

    .line 795
    if-gez v1, :cond_2

    .line 796
    const/4 v0, 0x0

    .line 801
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 803
    if-eqz v1, :cond_1

    .line 804
    if-nez p1, :cond_3

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 810
    :cond_1
    :goto_1
    return-void

    .line 797
    :cond_2
    if-gtz v2, :cond_4

    .line 798
    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getMeasuredWidth()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0

    .line 807
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    int-to-float v0, v0

    int-to-float v3, p1

    div-float/2addr v0, v3

    invoke-virtual {v2, v1, v0, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public ResizeWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2620
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 2622
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 2625
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2633
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_3

    .line 2634
    new-instance v3, Lcom/sec/android/app/twlauncher/MultipleSize;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    .line 2635
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MultipleSize;->countAvailableSizes()I

    move-result v0

    if-le v0, v9, :cond_3

    .line 2636
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setOnUpdateListener(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;)V

    .line 2638
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->isResizableWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2641
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v0

    .line 2642
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isSuspended()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2643
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->deactivate()V

    .line 2644
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    .line 2645
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2647
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v5

    mul-int/2addr v4, v5

    .line 2648
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v5

    mul-int/2addr v4, v5

    .line 2650
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 2651
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v6, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-virtual {v1, v5, v6, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 2658
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2661
    aget v6, v4, v8

    aget v7, v4, v9

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 2662
    invoke-direct {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->setResizeRect(Landroid/graphics/Rect;)V

    .line 2664
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMinX()I

    move-result v5

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MultipleSize;->getMinY()I

    move-result v3

    invoke-virtual {v1, v5, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    .line 2665
    new-instance v3, Landroid/graphics/Rect;

    aget v5, v4, v8

    aget v4, v4, v9

    invoke-direct {v3, v8, v8, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2667
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v5

    mul-int/2addr v4, v5

    .line 2668
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v1

    mul-int/2addr v1, v4

    .line 2672
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getTop()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 2675
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setResizeBaseRect(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    .line 2677
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    if-nez v0, :cond_1

    .line 2678
    new-instance v0, Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    new-instance v1, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;

    invoke-direct {v1, p0, v10}, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;-><init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/Workspace$1;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    .line 2681
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->flipTo(Landroid/graphics/Bitmap;)V

    .line 2683
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/sec/android/app/twlauncher/Launcher;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 2687
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2688
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2689
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getAllResizeCellSpans()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeData:Ljava/util/ArrayList;

    .line 2690
    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    .line 2692
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 2698
    :cond_3
    :goto_1
    return-void

    .line 2628
    :catch_0
    move-exception v0

    .line 2629
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2630
    const-string v0, "Launcher.Workspace"

    const-string v1, "Unable to getAppWidgetInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2694
    :cond_4
    iput-object v10, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    goto :goto_1
.end method

.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2973
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 2974
    .local v3, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2975
    .local v1, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v1, :cond_1

    move v4, v7

    .line 2976
    .local v4, spanX:I
    :goto_0
    if-nez v1, :cond_2

    move v5, v7

    .line 2978
    .local v5, spanY:I
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v6, :cond_0

    .line 2979
    if-nez v1, :cond_3

    move-object v2, v8

    .line 2980
    .local v2, ignoreView:Landroid/view/View;
    :goto_2
    invoke-virtual {v3, v8, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2984
    .end local v2           #ignoreView:Landroid/view/View;
    :cond_0
    invoke-direct {p0, p6}, Lcom/sec/android/app/twlauncher/Workspace;->isSamsungWidgetInfo(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2985
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-direct {p0, v6, p6}, Lcom/sec/android/app/twlauncher/Workspace;->findCellForResizableWidget([ILjava/lang/Object;)Z

    move-result v0

    .line 2989
    .local v0, accept:Z
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    if-eqz v0, :cond_5

    sget-object v7, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->NONE:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    :goto_4
    invoke-interface {v6, v7}, Lcom/sec/android/app/twlauncher/DragController;->setDefaultPaint(Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;)V

    .line 2991
    return v0

    .line 2975
    .end local v0           #accept:Z
    .end local v4           #spanX:I
    .end local v5           #spanY:I
    :cond_1
    iget v6, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move v4, v6

    goto :goto_0

    .line 2976
    .restart local v4       #spanX:I
    :cond_2
    iget v6, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    move v5, v6

    goto :goto_1

    .line 2979
    .restart local v5       #spanY:I
    :cond_3
    iget-object v6, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v2, v6

    goto :goto_2

    .line 2987
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mVacantCache:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v4, v5, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v0

    .restart local v0       #accept:Z
    goto :goto_3

    .line 2989
    :cond_5
    sget-object v7, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->TRANS:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    goto :goto_4
.end method

.method addApplicationShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .locals 8
    .parameter "info"
    .parameter "cellInfo"
    .parameter "insertAtFirst"

    .prologue
    .line 2447
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v5

    .line 2448
    .local v5, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 2450
    .local v7, result:[I
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v1, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v5, v0, v1, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 2451
    const/4 v1, 0x0

    const/4 v0, 0x0

    aget v2, v7, v0

    const/4 v0, 0x1

    aget v3, v7, v0

    new-instance v4, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v4, p1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    move-object v0, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;Z)V

    .line 2453
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 4
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
    const/4 v3, 0x1

    .line 1619
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1620
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 1621
    .local v0, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-nez v0, :cond_2

    .line 1622
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1623
    const/16 v1, 0x11

    if-ne p2, v1, :cond_1

    .line 1624
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lez v1, :cond_0

    .line 1625
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1636
    .end local v0           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1627
    .restart local v0       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_1
    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    .line 1628
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 1629
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1633
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method addInCurrentScreen(Landroid/view/View;IIII)V
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 637
    return-void
.end method

.method addInCurrentScreen(Landroid/view/View;IIIIZ)V
    .locals 8
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 653
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIII)V
    .locals 8
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 667
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 668
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 8
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 684
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    if-lt p2, v5, :cond_2

    .line 686
    :cond_0
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item in db lies on nonexistent screen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Screen count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Item will be deleted. Iteminfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mContext:Landroid/content/Context;

    .line 690
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 691
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "screen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 723
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #context:Landroid/content/Context;
    :cond_1
    :goto_0
    return-void

    .line 698
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 700
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 701
    .local v3, group:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v4, 0x0

    .line 702
    .local v4, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    if-eqz v5, :cond_3

    .line 704
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 707
    .restart local v4       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_3
    if-nez v4, :cond_5

    .line 708
    new-instance v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    invoke-direct {v4, p3, p4, p5, p6}, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;-><init>(IIII)V

    .line 715
    .restart local v4       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :goto_1
    if-eqz p7, :cond_6

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3, p1, v5, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 716
    instance-of v5, p1, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v5, :cond_4

    .line 717
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 720
    :cond_4
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v2

    .line 721
    .local v2, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v2, :cond_1

    .line 722
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    goto :goto_0

    .line 710
    .end local v2           #folder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_5
    iput p3, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    .line 711
    iput p4, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .line 712
    iput p5, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    .line 713
    iput p6, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_1

    .line 715
    :cond_6
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 481
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;)V

    .line 485
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 489
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;I)V

    .line 493
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 2
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 497
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;II)V

    .line 501
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 473
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 477
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 505
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    return-void
.end method

.method addWidget(Landroid/view/View;Lcom/sec/android/app/twlauncher/Widget;Z)V
    .locals 8
    .parameter "view"
    .parameter "widget"
    .parameter "insert"

    .prologue
    .line 726
    iget v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v6, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v1, p1

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 728
    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 3229
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method public animateClose()V
    .locals 3

    .prologue
    .line 3697
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->cancelRunningTransitionAnimation()V

    .line 3698
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    if-eqz v0, :cond_0

    .line 3699
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    check-cast v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotationCenter(FF)V

    .line 3702
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    .line 3703
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 3705
    return-void
.end method

.method public animateOpen()V
    .locals 3

    .prologue
    .line 3686
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->cancelRunningTransitionAnimation()V

    .line 3687
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    if-eqz v0, :cond_0

    .line 3688
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    check-cast v0, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Rotate3dAnimation;->setRotationCenter(FF)V

    .line 3691
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    .line 3692
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeIn3D:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 3694
    return-void
.end method

.method public cancelOutAnimIfRunning()Z
    .locals 2

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniRotateFadeOut3D:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_0

    .line 3320
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->cancelRunningTransitionAnimation()V

    .line 3321
    const/4 v0, 0x1

    .line 3323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 847
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 848
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->suspendWidgetUpdates()V

    .line 849
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 851
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 852
    .local v0, count:I
    if-lt v0, v6, :cond_0

    .line 853
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_3

    .line 854
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 860
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v1

    if-nez v1, :cond_1

    .line 863
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    .line 865
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    .line 905
    .end local v0           #count:I
    :cond_2
    :goto_1
    return-void

    .line 855
    .restart local v0       #count:I
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    sub-int v2, v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 856
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    goto :goto_0

    .line 866
    .end local v0           #count:I
    :cond_4
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    if-eq v1, v4, :cond_2

    .line 867
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 868
    .restart local v0       #count:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    sub-int v2, v0, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 870
    if-lt v0, v6, :cond_5

    .line 871
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 874
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-gez v1, :cond_7

    .line 875
    sub-int v1, v0, v3

    iput v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 882
    :cond_5
    :goto_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 883
    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 885
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-eq v1, v3, :cond_9

    .line 886
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 887
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->checkWidgetSpace(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    .line 891
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v1, :cond_6

    .line 892
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 899
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->resumeWidgetUpdates()V

    .line 900
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    goto :goto_1

    .line 876
    :cond_7
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-lt v1, v0, :cond_5

    .line 877
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    goto :goto_2

    .line 889
    :cond_8
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_3

    .line 894
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    if-eqz v1, :cond_6

    .line 895
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->checkWidgetSpace(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    goto :goto_4
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 957
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->canvas_factoryinfo:Landroid/graphics/Canvas;

    .line 959
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMEI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->canvas_factoryinfo:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->drawDefaultIMEIText(Landroid/graphics/Canvas;)V

    .line 972
    :cond_0
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v2, "IconDebug"

    .line 1082
    .line 1086
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    if-nez v0, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    if-nez v0, :cond_0

    .line 1089
    const-string v0, "IconDebug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkSpace dispatchDrawGL mIsAnimating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v8

    .line 1193
    :goto_0
    return v0

    .line 1093
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v0

    if-ltz v0, :cond_3

    .line 1096
    :cond_2
    const-string v0, "IconDebug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkSpace dispatchDrawGL mLauncher.getQuickViewWorkspace().isOpened()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const-string v0, "IconDebug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkSpace dispatchDrawGL mLauncher.getStateQuickNavigation()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 1099
    goto :goto_0

    .line 1101
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mEnablePageIndicatorShowHide:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    if-eqz v0, :cond_6

    .line 1102
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_4

    .line 1103
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1104
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    .line 1105
    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Workspace$1;-><init>(Lcom/sec/android/app/twlauncher/Workspace;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    .line 1112
    :cond_5
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 1113
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1116
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCylinderAnimationFactor()F

    move-result v1

    .line 1117
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->isCylinderAnimating()Z

    move-result v0

    or-int v2, v8, v0

    .line 1122
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDarkenFactor()F

    move-result v0

    .line 1123
    cmpl-float v3, v0, v7

    if-lez v3, :cond_7

    .line 1124
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1127
    const/high16 v3, 0x3f00

    mul-float/2addr v0, v3

    invoke-virtual {p1, v7, v7, v7, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    .line 1130
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    int-to-float v4, v0

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v5

    int-to-float v5, v0

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {p1, v3, v4, v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 1132
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1135
    :cond_7
    invoke-virtual {p1, p0, v8}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClipToView(Landroid/view/View;Z)V

    .line 1136
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    .line 1137
    neg-float v0, v0

    invoke-virtual {p1, v7, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    or-int/2addr v0, v2

    .line 1140
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1141
    invoke-virtual {p1, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 1146
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_8

    .line 1147
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/sec/android/app/twlauncher/Workspace;->drawHoverRect(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/Rect;FF)V

    .line 1148
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    or-int/2addr v0, v2

    .line 1150
    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_9

    .line 1151
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v3

    mul-float/2addr v3, v1

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/sec/android/app/twlauncher/Workspace;->drawHoverRect(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/Rect;FF)V

    .line 1152
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    or-int/2addr v0, v2

    .line 1157
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    .line 1158
    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1159
    cmpl-float v4, v1, v7

    if-gtz v4, :cond_a

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    rem-int/2addr v4, v2

    if-eqz v4, :cond_c

    .line 1160
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v4

    if-le v2, v4, :cond_b

    .line 1161
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 1162
    :cond_b
    sub-int v2, v3, v9

    invoke-virtual {p0, p1, v2, v1, v9}, Lcom/sec/android/app/twlauncher/Workspace;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1163
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, p1, v2, v1, v9}, Lcom/sec/android/app/twlauncher/Workspace;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1165
    :cond_c
    invoke-virtual {p0, p1, v3, v1, v8}, Lcom/sec/android/app/twlauncher/Workspace;->drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1169
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;

    .line 1186
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v1, :cond_d

    .line 1187
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawResizeGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1189
    :cond_d
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1191
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageIndicator(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1193
    goto/16 :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 1603
    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 1604
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    if-lez v0, :cond_1

    .line 1605
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    move v0, v2

    .line 1614
    :goto_0
    return v0

    .line 1608
    :cond_0
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 1609
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    move v0, v2

    .line 1611
    goto :goto_0

    .line 1614
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method draggingOverTouchSlop()V
    .locals 1

    .prologue
    .line 3657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    .line 3658
    return-void
.end method

.method protected drawChildAt(Lcom/sec/android/app/twlauncher/GLCanvas;IFZ)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x40a0

    const/high16 v9, 0x3f80

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 981
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_6

    .line 987
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    .line 990
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAtLooped(I)Landroid/view/View;

    move-result-object v2

    .line 993
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 995
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 996
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Workspace;->transformForPage(Lcom/sec/android/app/twlauncher/GLCanvas;IF)V

    .line 998
    const v1, 0x3a83126f

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 1000
    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageBackground(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    .line 1003
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1004
    const/high16 v1, 0x4000

    mul-float/2addr v1, p3

    mul-float v4, v5, p3

    mul-float/2addr v5, p3

    invoke-virtual {p1, v1, v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FFF)V

    .line 1006
    mul-float v1, v8, p3

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 1007
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/CellLayout;->drawShadows(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 1008
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1011
    :cond_1
    check-cast v2, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1012
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ne p2, v1, :cond_2

    .line 1014
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1015
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScaledRect:Landroid/graphics/RectF;

    invoke-static {p1, v1, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 1018
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCylinderAnimationFactor()F

    move-result v1

    cmpl-float v1, v1, v6

    if-nez v1, :cond_8

    .line 1019
    invoke-virtual {v2, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->setScreenClipExtendedEdge(I)V

    .line 1024
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_4

    if-ltz p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-lt p2, v1, :cond_4

    .line 1026
    :cond_3
    const v1, 0x186a0

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->setScreenClipExtendedEdge(I)V

    .line 1029
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getDarkenFactor()F

    move-result v1

    mul-float/2addr v1, v8

    sub-float v1, v9, v1

    .line 1030
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1033
    invoke-virtual {p1, v1, v1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFF)V

    .line 1036
    invoke-virtual {v2, p1, v7, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z

    move-result v1

    .line 1037
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1039
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollPage:I

    if-ne p2, v2, :cond_5

    .line 1043
    invoke-virtual {p1, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    .line 1044
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mPendingDragScrollFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v2

    .line 1045
    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->drawPageBorder(Lcom/sec/android/app/twlauncher/GLCanvas;F)V

    .line 1048
    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1049
    :goto_1
    return v1

    .line 984
    :cond_6
    if-ltz p2, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-lt p2, v1, :cond_0

    :cond_7
    move v1, v7

    .line 985
    goto :goto_1

    .line 1021
    :cond_8
    div-int/lit8 v1, v3, 0x4

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->setScreenClipExtendedEdge(I)V

    goto :goto_0
.end method

.method public drawWallpaperImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .parameter "canvas"
    .parameter "drawDst"

    .prologue
    const/4 v8, 0x1

    .line 918
    const/4 v0, 0x0

    .line 920
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 921
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageMenuWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 926
    :goto_0
    if-eqz v0, :cond_3

    .line 928
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 929
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 930
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 931
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 933
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v8

    mul-int v3, v6, v7

    .line 934
    .local v3, scrollXMax:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    .line 935
    .local v2, scrollX:I
    if-gez v2, :cond_0

    .line 936
    const/4 v2, 0x0

    .line 938
    :cond_0
    if-le v2, v3, :cond_1

    .line 939
    move v2, v3

    .line 942
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 943
    .local v1, savedCanvas:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v4, v6, v7

    .line 944
    .local v4, scrollableWidth:I
    const/4 v5, 0x0

    .line 945
    .local v5, translateX:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    if-le v6, v8, :cond_2

    .line 946
    neg-int v6, v4

    int-to-float v6, v6

    int-to-float v7, v2

    int-to-float v8, v3

    div-float/2addr v7, v8

    mul-float v5, v6, v7

    .line 948
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 949
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 950
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 952
    .end local v1           #savedCanvas:I
    .end local v2           #scrollX:I
    .end local v3           #scrollXMax:I
    .end local v4           #scrollableWidth:I
    .end local v5           #translateX:F
    :cond_3
    return-void

    .line 923
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public estimateDropLocation(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "recycle"

    .prologue
    .line 3001
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v6

    .line 3003
    .local v6, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3004
    .local v8, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v8, :cond_0

    const/4 v0, 0x1

    move v3, v0

    .line 3005
    .local v3, spanX:I
    :goto_0
    if-nez v8, :cond_1

    const/4 v0, 0x1

    move v4, v0

    .line 3006
    .local v4, spanY:I
    :goto_1
    if-nez v8, :cond_2

    const/4 v0, 0x0

    move-object v5, v0

    .line 3008
    .local v5, ignoreView:Landroid/view/View;
    :goto_2
    if-eqz p5, :cond_3

    move-object/from16 v10, p5

    .line 3011
    .local v10, location:Landroid/graphics/Rect;
    :goto_3
    sub-int v1, p1, p3

    sub-int v2, p2, p4

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempCell:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v9

    .line 3014
    .local v9, dropCell:[I
    if-nez v9, :cond_4

    .line 3015
    const/4 v0, 0x0

    .line 3026
    :goto_4
    return-object v0

    .line 3004
    .end local v3           #spanX:I
    .end local v4           #spanY:I
    .end local v5           #ignoreView:Landroid/view/View;
    .end local v9           #dropCell:[I
    .end local v10           #location:Landroid/graphics/Rect;
    :cond_0
    iget v0, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move v3, v0

    goto :goto_0

    .line 3005
    .restart local v3       #spanX:I
    :cond_1
    iget v0, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    move v4, v0

    goto :goto_1

    .line 3006
    .restart local v4       #spanY:I
    :cond_2
    iget-object v0, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v5, v0

    goto :goto_2

    .line 3008
    .restart local v5       #ignoreView:Landroid/view/View;
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v0

    goto :goto_3

    .line 3018
    .restart local v9       #dropCell:[I
    .restart local v10       #location:Landroid/graphics/Rect;
    :cond_4
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 3019
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 3020
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 3022
    const/4 v0, 0x0

    aget v0, v9, v0

    add-int/2addr v0, v3

    const/4 v1, 0x1

    aget v1, v9, v1

    add-int/2addr v1, v4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 3023
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 3024
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mTempEstimate:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    move-object v0, v10

    .line 3026
    goto :goto_4
.end method

.method findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 3
    .parameter "occupied"

    .prologue
    const/4 v2, 0x0

    .line 742
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 743
    .local v0, group:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v1

    .line 746
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .locals 6

    .prologue
    .line 750
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 751
    .local v2, group:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz v2, :cond_0

    .line 752
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v0

    .line 753
    .local v0, countX:I
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v1

    .line 754
    .local v1, countY:I
    filled-new-array {v0, v1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    .line 755
    .local v3, occupied:[[Z
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {v4, v3, v0, v1, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->findAllOccupiedCells([[ZIII)V

    .line 756
    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCellsFromOccupied([[ZII)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v4

    .line 758
    .end local v0           #countX:I
    .end local v1           #countY:I
    .end local v3           #occupied:[[Z
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public findSearchWidgetOnCurrentScreen()Lcom/sec/android/app/twlauncher/Search;
    .locals 2

    .prologue
    .line 3167
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 3168
    .local v0, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->findSearchWidget(Lcom/sec/android/app/twlauncher/CellLayout;)Lcom/sec/android/app/twlauncher/Search;

    move-result-object v1

    return-object v1
.end method

.method finishAppWidgetResize()V
    .locals 3

    .prologue
    .line 3661
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWidgetResizeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3662
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v0, :cond_2

    .line 3663
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-static {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3665
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    if-eqz v0, :cond_0

    .line 3666
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->end()V

    .line 3667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    .line 3670
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setOnUpdateListener(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;)V

    .line 3672
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->invalidate()V

    .line 3673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 3674
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    if-eqz v0, :cond_1

    .line 3675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    .line 3676
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mFirRectHandler:Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

    const/16 v2, 0xaa

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->removeMessages(I)V

    .line 3678
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    .line 3679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    .line 3680
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 3682
    :cond_2
    monitor-exit v1

    .line 3683
    return-void

    .line 3682
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAnimationGL()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 3708
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    return-object v0
.end method

.method protected getChildAtLooped(I)Landroid/view/View;
    .locals 2
    .parameter "index"

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 976
    .local v0, count:I
    add-int v1, v0, p1

    rem-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;
    .locals 2

    .prologue
    .line 597
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    .line 602
    .local v0, page:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/CellLayout;

    return-object p0

    .line 600
    .end local v0           #page:I
    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    move v0, v1

    .restart local v0       #page:I
    :goto_1
    goto :goto_0

    .end local v0           #page:I
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v0, v1

    goto :goto_1
.end method

.method getCurrentScreen()I
    .locals 2

    .prologue
    .line 582
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    .line 586
    .local v0, page:I
    :goto_0
    return v0

    .line 585
    .end local v0           #page:I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    move v0, v1

    .restart local v0       #page:I
    :goto_1
    goto :goto_0

    .end local v0           #page:I
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v0, v1

    goto :goto_1
.end method

.method protected getCylinderAnimationFactor()F
    .locals 3

    .prologue
    .line 1383
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Scene;->getCylinderAnimationFactor()F

    move-result v1

    .line 1385
    .local v1, superF:F
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    .line 1386
    .local v0, externalF:F
    const/high16 v2, 0x3f80

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v2

    return v2
.end method

.method public getDarkenFactor()F
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "outRect"

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getHitRect(Landroid/graphics/Rect;)V

    .line 429
    return-void
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/Folder;
    .locals 11
    .parameter "tag"

    .prologue
    .line 3172
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v8

    .line 3173
    .local v8, screenCount:I
    const/4 v7, 0x0

    .local v7, screen:I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 3174
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    .line 3175
    .local v3, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 3176
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 3177
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3178
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 3179
    .local v6, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v9, v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v10

    if-ne v9, v10, :cond_0

    iget v9, v6, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v10

    if-ne v9, v10, :cond_0

    instance-of v9, v1, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v9, :cond_0

    .line 3182
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    move-object v4, v0

    .line 3183
    .local v4, f:Lcom/sec/android/app/twlauncher/Folder;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v9

    if-ne v9, p1, :cond_0

    move-object v9, v4

    .line 3189
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #f:Lcom/sec/android/app/twlauncher/Folder;
    .end local v5           #i:I
    .end local v6           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :goto_2
    return-object v9

    .line 3176
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v5       #i:I
    .restart local v6       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3173
    .end local v1           #child:Landroid/view/View;
    .end local v6           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3189
    .end local v2           #count:I
    .end local v3           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #i:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 531
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    move v4, v6

    .line 532
    .local v4, index:I
    :goto_0
    const/4 v2, 0x0

    .line 533
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 534
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 538
    :goto_1
    if-nez v2, :cond_2

    move-object v6, v8

    .line 549
    :goto_2
    return-object v6

    .line 531
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #index:I
    :cond_0
    iget v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v4, v6

    goto :goto_0

    .line 536
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v4       #index:I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    goto :goto_1

    .line 540
    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 541
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 542
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 543
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 544
    .local v5, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v6, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v7

    if-ne v6, v7, :cond_3

    iget v6, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v7

    if-ne v6, v7, :cond_3

    instance-of v6, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v6, :cond_3

    .line 546
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    move-object v6, v0

    goto :goto_2

    .line 541
    .restart local v0       #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_4
    move-object v6, v8

    .line 549
    goto :goto_2
.end method

.method getOpenFolder(I)Lcom/sec/android/app/twlauncher/Folder;
    .locals 8
    .parameter "screen"

    .prologue
    const/4 v7, 0x0

    .line 512
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 513
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v2, :cond_0

    move-object v5, v7

    .line 524
    :goto_0
    return-object v5

    .line 515
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 516
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 517
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 518
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 519
    .local v4, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v6

    if-ne v5, v6, :cond_1

    iget v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v6

    if-ne v5, v6, :cond_1

    instance-of v5, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v5, :cond_1

    .line 521
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    move-object v5, v0

    goto :goto_0

    .line 516
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_2
    move-object v5, v7

    .line 524
    goto :goto_0
.end method

.method getOpenFolders()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    .line 554
    .local v7, screens:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 556
    .local v3, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    const/4 v6, 0x0

    .local v6, screen:I
    :goto_0
    if-ge v6, v7, :cond_2

    .line 557
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 558
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 559
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 560
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 561
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 562
    .local v5, lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v9

    if-ne v8, v9, :cond_1

    iget v8, v5, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v9

    if-ne v8, v9, :cond_1

    instance-of v8, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v8, :cond_1

    .line 565
    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 559
    .restart local v0       #child:Landroid/view/View;
    .restart local v5       #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 571
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v4           #i:I
    .end local v5           #lp:Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
    :cond_2
    return-object v3
.end method

.method getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;
    .locals 0
    .parameter "index"

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/CellLayout;

    return-object p0
.end method

.method public getScreenForView(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 3135
    const/4 v2, -0x1

    .line 3136
    .local v2, result:I
    if-eqz p1, :cond_1

    .line 3137
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 3138
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 3139
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3140
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move v4, v1

    .line 3145
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_1
    return v4

    .line 3139
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_1
    move v4, v2

    .line 3145
    goto :goto_1
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .parameter "tag"

    .prologue
    .line 3193
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    .line 3194
    .local v5, screenCount:I
    const/4 v4, 0x0

    .local v4, screen:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 3195
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 3196
    .local v2, currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 3197
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 3198
    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3199
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    move-object v6, v0

    .line 3204
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #i:I
    :goto_2
    return-object v6

    .line 3197
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3194
    .end local v0           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3204
    .end local v1           #count:I
    .end local v2           #currentScreen:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v3           #i:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method initAddWidget()V
    .locals 1

    .prologue
    .line 1488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    .line 1489
    return-void
.end method

.method protected isCylinderAnimating()Z
    .locals 1

    .prologue
    .line 1391
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Scene;->isCylinderAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    return v0
.end method

.method moveToDefaultScreen()V
    .locals 3

    .prologue
    .line 3367
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    .line 3369
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3373
    :goto_0
    return-void

    .line 3370
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;II)V

    .line 3371
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 3716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    .line 3717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAniTransition:Landroid/view/animation/Animation;

    .line 3718
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 3722
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 3712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAnimating:Z

    .line 3713
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
    .line 2702
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2705
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    .line 2706
    iput p3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    .line 2712
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 2782
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2783
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2784
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v0

    .line 2785
    .local v0, page:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    .line 2786
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 2788
    .end local v0           #page:I
    :cond_0
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 2722
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    sub-int/2addr v0, p2

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    sub-int/2addr v2, p3

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x402e

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 2723
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningBasis:D

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mPanningStopDelta:D

    .line 2724
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartX:I

    .line 2725
    iput p3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragStartY:I

    .line 2728
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v6

    .line 2729
    .local v6, cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    .line 2730
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverScratchRect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropLocation(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 2731
    .local v7, r:Landroid/graphics/Rect;
    if-eqz v7, :cond_1

    .line 2732
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getLeft()I

    move-result v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getTop()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2733
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Workspace;->setDropLocationFeedback(Landroid/graphics/Rect;)V

    .line 2737
    .end local v7           #r:Landroid/graphics/Rect;
    :cond_1
    invoke-super {p0, p2, p3}, Lcom/sec/android/app/twlauncher/Scene;->setPageOnDragOver(II)V

    .line 2738
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2545
    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/Workspace;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 2547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 2552
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v7

    .line 2553
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_2

    .line 2554
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    .line 2555
    sub-int v4, p2, p4

    sub-int v5, p3, p5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p6

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->onDropExternal(Lcom/sec/android/app/twlauncher/DragSource;IILjava/lang/Object;Lcom/sec/android/app/twlauncher/CellLayout;)V

    .line 2615
    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 2558
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v2, v0

    if-eqz v2, :cond_1

    .line 2560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v2, v0

    iget-object v13, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    move v2, v0

    move v6, v2

    .line 2563
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v2, v0

    iget v2, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    if-eq v6, v2, :cond_5

    .line 2564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v2, v0

    iget v2, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 2565
    invoke-virtual {v2, v13}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 2568
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2569
    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDrop()  both cell and cell parent are NULL : originalCellLayout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " screen="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v4, v0

    iget v4, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "cell.getParent()="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2574
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 2575
    const-string v2, "Launcher.Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDrop() cell screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2580
    :cond_4
    invoke-virtual {v7, v13}, Lcom/sec/android/app/twlauncher/CellLayout;->addView(Landroid/view/View;)V

    .line 2582
    :cond_5
    sub-int v9, p2, p4

    sub-int v10, p3, p5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v2, v0

    iget v11, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object v2, v0

    iget v12, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v15, v0

    move-object/from16 v8, p0

    move-object v14, v7

    invoke-direct/range {v8 .. v15}, Lcom/sec/android/app/twlauncher/Workspace;->estimateDropCell(IIIILandroid/view/View;Lcom/sec/android/app/twlauncher/CellLayout;[I)[I

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    .line 2584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v2, v0

    if-nez v2, :cond_7

    .line 2585
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2561
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v2, v0

    move v6, v2

    goto/16 :goto_2

    .line 2586
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mTargetCell:[I

    move-object v2, v0

    invoke-virtual {v7, v13, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropChild(Landroid/view/View;[I)V

    .line 2588
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 2589
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;

    .line 2590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v2, v0

    const-wide/16 v4, -0x64

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    move v8, v0

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    .line 2593
    instance-of v2, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v2, :cond_8

    .line 2594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v4, v0

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 2598
    :cond_8
    instance-of v2, v13, Lcom/sec/android/app/twlauncher/BubbleTextView;

    if-eqz v2, :cond_9

    .line 2599
    check-cast v13, Lcom/sec/android/app/twlauncher/BubbleTextView;

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setIsDragging(Z)V

    .line 2602
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v2

    .line 2603
    if-eqz v2, :cond_a

    .line 2604
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Folder;->bringToFront()V

    .line 2607
    :cond_a
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->isLauncherAppWidgetInfo()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    move v2, v0

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isShown()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2610
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual/range {p6 .. p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    check-cast p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/Workspace;->ResizeWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    .line 2612
    :cond_b
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mResizeModeCancel:Z

    goto/16 :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3049
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 3050
    instance-of v0, p7, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-nez v0, :cond_0

    .line 3051
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DragController.startDrag()\'s dragInfo argument should have been LauncherDragInfo instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3054
    :cond_0
    check-cast p7, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .line 3055
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->disableRollNavigation()V

    .line 3058
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 3059
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 3060
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;

    if-eqz v0, :cond_1

    .line 3066
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/twlauncher/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setIsDragging(Z)V

    .line 3068
    :cond_1
    if-eqz p6, :cond_4

    .line 3069
    if-eq p1, p0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    .line 3070
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v1

    .line 3071
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 3072
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 3074
    invoke-virtual {p7}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->shouldDelayRemovingFromSourceWhenDrop()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3076
    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    .line 3077
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3091
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3092
    return-void

    .line 3081
    :cond_3
    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropAborted(Landroid/view/View;)V

    goto :goto_0

    .line 3085
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    .line 3086
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 3087
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->onDropAborted(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 1640
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1644
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    if-eqz v1, :cond_3

    .line 1645
    :cond_0
    if-eq v0, v9, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1647
    :cond_1
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    .line 1649
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 1650
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1651
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    move v0, v9

    .line 1831
    :goto_0
    return v0

    .line 1656
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1660
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v1

    .line 1661
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 1662
    iget v4, v1, Landroid/graphics/PointF;->y:F

    .line 1663
    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1665
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_4

    .line 1666
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1669
    :cond_4
    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    move v0, v5

    .line 1830
    :cond_6
    :goto_2
    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 1672
    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v0, :cond_7

    .line 1673
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->onTouchResizeMode(Landroid/view/MotionEvent;)Z

    move v0, v9

    .line 1674
    goto :goto_2

    .line 1676
    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    if-eqz v0, :cond_9

    .line 1677
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v0, :cond_8

    .line 1678
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1682
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1683
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1685
    :cond_8
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 1686
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearFastScrollFactor()V

    .line 1688
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v10, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v0

    if-gez v0, :cond_5

    .line 1692
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float v0, v4, v0

    float-to-int v0, v0

    .line 1693
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float v1, v3, v1

    float-to-int v1, v1

    .line 1694
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mMovePinchStart:I

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    sub-int v0, v2, v0

    .line 1696
    const/16 v1, 0x2710

    if-le v0, v1, :cond_5

    .line 1697
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 1698
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 1699
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    move v0, v9

    .line 1700
    goto :goto_2

    .line 1705
    :cond_9
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1706
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 1708
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    if-le v0, v2, :cond_c

    move v2, v9

    .line 1709
    :goto_3
    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    if-le v1, v3, :cond_d

    move v3, v9

    .line 1711
    :goto_4
    if-nez v2, :cond_a

    if-eqz v3, :cond_5

    .line 1713
    :cond_a
    iput v10, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 1714
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v2, :cond_b

    .line 1715
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1719
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1720
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 1722
    :cond_b
    if-lt v0, v1, :cond_e

    .line 1724
    iput v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move v0, v9

    .line 1725
    goto/16 :goto_2

    :cond_c
    move v2, v5

    .line 1708
    goto :goto_3

    :cond_d
    move v3, v5

    .line 1709
    goto :goto_4

    .line 1727
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->isLastTouchAmbiguous()Z

    move-result v0

    if-nez v0, :cond_5

    float-to-int v0, v7

    float-to-int v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v0

    if-eq v0, v11, :cond_5

    .line 1730
    iput v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move v0, v9

    .line 1731
    goto/16 :goto_2

    .line 1741
    :pswitch_2
    iput v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    .line 1742
    iput v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    .line 1743
    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1744
    iput v11, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    .line 1745
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 1746
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 1752
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->isLastTouchAmbiguous()Z

    move-result v0

    if-nez v0, :cond_f

    float-to-int v0, v7

    float-to-int v1, v8

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v0

    if-eq v0, v11, :cond_15

    .line 1755
    :cond_f
    iput v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move v0, v9

    .line 1758
    :goto_5
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v1, :cond_10

    .line 1759
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->onTouchResizeMode(Landroid/view/MotionEvent;)Z

    move v0, v9

    .line 1762
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_6

    .line 1763
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1764
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 1774
    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-nez v0, :cond_12

    .line 1777
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getOpenedWidgetsCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 1778
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    .line 1782
    :cond_11
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 1783
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1784
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.wallpaper.tap"

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1788
    :cond_12
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    if-eqz v0, :cond_13

    .line 1789
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->onTouchResizeMode(Landroid/view/MotionEvent;)Z

    .line 1792
    :cond_13
    iput v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 1793
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1794
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 1797
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    .line 1798
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1799
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move v0, v5

    goto/16 :goto_2

    .line 1804
    :pswitch_4
    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    .line 1805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v10, :cond_5

    .line 1806
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float v0, v4, v0

    float-to-int v0, v0

    .line 1807
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float v1, v3, v1

    float-to-int v1, v1

    .line 1809
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mMovePinchStart:I

    .line 1811
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    if-eqz v0, :cond_14

    .line 1812
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 1816
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1817
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    :cond_14
    move v0, v5

    .line 1819
    goto/16 :goto_2

    .line 1823
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v10, :cond_5

    .line 1824
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mMultiTouchUsed:Z

    goto/16 :goto_1

    :cond_15
    move v0, v5

    goto/16 :goto_5

    .line 1669
    nop

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
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1552
    const/4 v1, 0x0

    .line 1553
    .local v1, childLeft:I
    const/4 v2, 0x0

    .line 1555
    .local v2, childTop:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    .line 1556
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 1557
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1558
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 1559
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1560
    .local v3, childWidth:I
    add-int v6, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1561
    add-int/2addr v1, v3

    .line 1556
    .end local v3           #childWidth:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1564
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v6, :cond_2

    .line 1565
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    sub-int v7, p4, p2

    invoke-virtual {v6, v4, v7}, Lcom/sec/android/app/twlauncher/PageIndicator;->setLayout(II)V

    .line 1566
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/4 v4, 0x0

    const-string v3, "Workspace can only be used in EXACTLY mode."

    .line 1518
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Scene;->onMeasure(II)V

    .line 1520
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1521
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1522
    if-eq v1, v2, :cond_0

    .line 1523
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1526
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1527
    if-eq v1, v2, :cond_1

    .line 1528
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1532
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    move v2, v4

    .line 1533
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1534
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    .line 1533
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1537
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    if-eqz v2, :cond_4

    .line 1538
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1540
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    mul-int/2addr v2, v0

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 1541
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1542
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    .line 1545
    :cond_3
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mFirstLayout:Z

    .line 1546
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    .line 1548
    :cond_4
    return-void
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "dragAction"

    .prologue
    .line 575
    if-nez p2, :cond_0

    .line 576
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 578
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 5
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1582
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1583
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v2

    .line 1584
    .local v2, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v2, :cond_0

    .line 1585
    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    .line 1598
    .end local v2           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :goto_0
    return v3

    .line 1588
    .restart local v2       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1589
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 1593
    .local v1, focusableScreen:I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1594
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1595
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 1598
    .end local v0           #child:Landroid/view/View;
    .end local v1           #focusableScreen:I
    .end local v2           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1591
    .restart local v2       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .restart local v1       #focusableScreen:I
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 2433
    move-object v0, p1

    check-cast v0, Landroid/view/AbsSavedState;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/sec/android/app/twlauncher/Scene;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2434
    instance-of v2, p1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    if-nez v2, :cond_1

    .line 2443
    :cond_0
    :goto_0
    return-void

    .line 2438
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    move-object v1, v0

    .line 2439
    .local v1, savedState:Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    iget v2, v1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIgnoreRestore:Z

    if-nez v2, :cond_0

    .line 2440
    iget v2, v1, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 2441
    iget v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 2426
    new-instance v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Scene;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2427
    .local v0, state:Lcom/sec/android/app/twlauncher/Workspace$SavedState;
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/Workspace$SavedState;->currentScreen:I

    .line 2428
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const-string v3, ","

    .line 434
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getWidth() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getHeight() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    .line 448
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosYGap:I

    .line 451
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Scene;->onSizeChanged(IIII)V

    .line 452
    return-void

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosX:I

    .line 445
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDefaultIMEIPosY:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "ev"

    .prologue
    .line 1836
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1840
    .local v5, action:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 1841
    :cond_0
    const/16 v20, 0x1

    move v0, v5

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    const/16 v20, 0x3

    move v0, v5

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1843
    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDiscardTouchEvents:Z

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 1847
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1850
    :cond_2
    const/16 v20, 0x1

    .line 2064
    :goto_0
    return v20

    .line 1852
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1853
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/Workspace;->onTouchResizeMode(Landroid/view/MotionEvent;)Z

    move-result v20

    goto :goto_0

    .line 1856
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 1857
    .local v16, transX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    .line 1860
    .local v17, transY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v10

    .line 1861
    .local v10, lastAbsTouch:Landroid/graphics/PointF;
    iget v3, v10, Landroid/graphics/PointF;->x:F

    .line 1862
    .local v3, absX:F
    iget v4, v10, Landroid/graphics/PointF;->y:F

    .line 1863
    .local v4, absY:F
    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1869
    :cond_5
    packed-switch v5, :pswitch_data_0

    .line 2064
    :cond_6
    :goto_1
    const/16 v20, 0x1

    goto :goto_0

    .line 1872
    :pswitch_0
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    .line 1873
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    .line 1878
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    move/from16 v20, v0

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort(F)Z

    goto :goto_1

    .line 1881
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1882
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 1883
    :cond_8
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 1884
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    goto/16 :goto_1

    .line 1891
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 1892
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1893
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    goto/16 :goto_1

    .line 1897
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    move/from16 v20, v0

    sub-float v20, v20, v3

    move/from16 v0, v20

    float-to-int v0, v0

    move v8, v0

    .line 1898
    .local v8, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsY:F

    move/from16 v20, v0

    sub-float v20, v20, v4

    move/from16 v0, v20

    float-to-int v0, v0

    move v9, v0

    .line 1900
    .local v9, deltaY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_a

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchSlop:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    .line 1904
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->suspendWidgetUpdates()V

    .line 1906
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 1907
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mDownAbsX:F

    .line 1908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v20

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1912
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    move v0, v3

    float-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/sec/android/app/twlauncher/PageIndicator;->getTouchScrollOffset(IIZ)I

    move-result v15

    .line 1913
    .local v15, newScrollX:I
    const/16 v20, -0x1

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 1914
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->setFastScrollFactor()V

    .line 1915
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v20

    if-nez v20, :cond_6

    .line 1917
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    .line 1925
    .end local v15           #newScrollX:I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    .line 1926
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v12

    .line 1931
    .local v12, minMaxScrollPadding:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    .line 1932
    .local v6, childCount:I
    if-gez v8, :cond_f

    .line 1933
    neg-int v13, v12

    .line 1934
    .local v13, minScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    move v1, v13

    if-le v0, v1, :cond_6

    .line 1935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v20, v0

    if-lez v20, :cond_e

    .line 1936
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    .line 1940
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v20

    if-nez v20, :cond_6

    .line 1941
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    .line 1928
    .end local v6           #childCount:I
    .end local v12           #minMaxScrollPadding:I
    .end local v13           #minScrollX:I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v20

    div-int/lit8 v12, v20, 0x4

    .restart local v12       #minMaxScrollPadding:I
    goto :goto_2

    .line 1938
    .restart local v6       #childCount:I
    .restart local v13       #minScrollX:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v20, v0

    sub-int v20, v13, v20

    move/from16 v0, v20

    move v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    goto :goto_3

    .line 1944
    .end local v13           #minScrollX:I
    :cond_f
    if-lez v8, :cond_6

    .line 1945
    const/16 v20, 0x1

    sub-int v20, v6, v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v21

    mul-int v20, v20, v21

    add-int v11, v20, v12

    .line 1946
    .local v11, maxScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    move v1, v11

    if-ge v0, v1, :cond_6

    .line 1947
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    move/from16 v0, v20

    move v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollBy(II)V

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->isWindowOpaque()Z

    move-result v20

    if-nez v20, :cond_6

    .line 1949
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto/16 :goto_1

    .line 1954
    .end local v6           #childCount:I
    .end local v8           #deltaX:I
    .end local v9           #deltaY:I
    .end local v11           #maxScrollX:I
    .end local v12           #minMaxScrollPadding:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/sec/android/app/twlauncher/PageIndicator;->enterSeekBarMode(IIZ)Z

    move-result v20

    if-nez v20, :cond_11

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/sec/android/app/twlauncher/PageIndicator;->isInPageIndicator(II)Z

    move-result v20

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v20

    if-nez v20, :cond_6

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/PageIndicator;->resetFastScrollTimer()V

    goto/16 :goto_1

    .line 1961
    :cond_11
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    goto/16 :goto_1

    .line 1967
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 1968
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    move/from16 v20, v0

    if-eqz v20, :cond_19

    .line 1969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 1970
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    move/from16 v20, v0

    if-nez v20, :cond_13

    .line 1971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1972
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 1975
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1977
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 1995
    :cond_13
    :goto_4
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mIsSingleTap:Z

    .line 2041
    :cond_14
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->resumeWidgetUpdates()V

    .line 2042
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 2043
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearFastScrollFactor()V

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 2048
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 1979
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getPageIndicatorArea(II)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mTouchedPageIndicatorIndex:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto :goto_4

    .line 1982
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v20

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-nez v20, :cond_13

    .line 1983
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mExistWidgetSpace:Z

    move/from16 v20, v0

    if-eqz v20, :cond_17

    .line 1984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddWidget(I)V

    goto/16 :goto_4

    .line 1986
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1987
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-eqz v20, :cond_18

    .line 1989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 1990
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1992
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    goto/16 :goto_4

    .line 1996
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/PageIndicator;->inSeekBarMode()Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 1997
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWhichScreen()I

    move-result v14

    .line 1998
    .local v14, newScreen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->centerCurrentPage(I)V

    .line 1999
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearFastScrollFactor()V

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto/16 :goto_5

    .line 2003
    .end local v14           #newScreen:I
    :cond_1a
    const/16 v20, 0x0

    const/16 v21, 0x3e8

    invoke-static/range {v20 .. v21}, Lcom/sec/android/app/twlauncher/SamsungUtils;->acquireDVFSlock(II)V

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 2007
    .local v18, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mMaximumVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2008
    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 2010
    .local v19, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    .line 2011
    .restart local v6       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v7, v0

    .line 2026
    .local v7, currentScreen:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1b

    if-ltz v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-nez v20, :cond_1b

    .line 2029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    sub-int v21, v7, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto/16 :goto_5

    .line 2030
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->SNAP_VELOCITY:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1c

    const/16 v20, 0x1

    sub-int v20, v6, v20

    move v0, v7

    move/from16 v1, v20

    if-gt v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v20

    if-nez v20, :cond_1c

    .line 2033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v20, v0

    add-int/lit8 v21, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    goto/16 :goto_5

    .line 2035
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToDestination()V

    goto/16 :goto_5

    .line 2053
    .end local v6           #childCount:I
    .end local v7           #currentScreen:I
    .end local v18           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v19           #velocityX:I
    :pswitch_3
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mTouchState:I

    .line 2054
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearFastScrollFactor()V

    .line 2057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    .line 2058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 2059
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Scene;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 1869
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchResizeMode(Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "event"

    .prologue
    .line 2068
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v24, v0

    .line 2069
    .local v24, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v25, v0

    .line 2071
    .local v25, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2205
    .end local p1
    :cond_0
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return v5

    .line 2074
    .restart local p1
    :pswitch_0
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    .line 2076
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mIsOnAnimation:Z

    .line 2077
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 2078
    .local v19, pxy:[I
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 2080
    .local v20, rectMeasure:[I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/sec/android/app/twlauncher/CellLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v6, v0

    iget v6, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 2084
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/CellLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v6, v0

    iget v6, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->spanToPixel(II[I)V

    .line 2086
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v6, v19, v6

    const/4 v7, 0x1

    aget v7, v19, v7

    const/4 v8, 0x0

    aget v8, v19, v8

    const/4 v9, 0x0

    aget v9, v20, v9

    add-int/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v19, v9

    const/4 v10, 0x1

    aget v10, v20, v10

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mCurrentWidgetRect:Landroid/graphics/Rect;

    .line 2088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mFirRectHandler:Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace$FitRectHandler;->startFitting()V

    .line 2092
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 2094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto/16 :goto_0

    .line 2098
    .end local v19           #pxy:[I
    .end local v20           #rectMeasure:[I
    .restart local p1
    :pswitch_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->checkResizeHandleRectTouchedDown(II)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    move v5, v0

    if-eqz v5, :cond_1

    .line 2105
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 2106
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 2108
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    .line 2109
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    .line 2110
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 2114
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mModeResize:Z

    move v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeHandleRectTouched:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 2115
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2117
    .local v15, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_2

    .line 2120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 2122
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move v0, v5

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 2123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object v5, v0

    add-int/lit8 v6, v24, 0x1e

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2125
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_4

    .line 2127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2129
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeBaseRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move v0, v5

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 2130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object v5, v0

    add-int/lit8 v6, v25, 0x28

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 2133
    :cond_5
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mResizeRect:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v15, v5, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCellRound(II)[I

    move-result-object v22

    .line 2137
    .local v22, tmpXy:[I
    new-instance v18, Lcom/sec/android/app/twlauncher/MultipleSize;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget-wide v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    move-object/from16 v0, v18

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>(J)V

    .line 2138
    .local v18, multipleSize:Lcom/sec/android/app/twlauncher/MultipleSize;
    const/4 v5, 0x0

    aget v5, v22, v5

    const/4 v6, 0x1

    aget v6, v22, v6

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->getBestFit(II)[I

    move-result-object v11

    .line 2140
    .local v11, bestFitXy:[I
    new-instance v21, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v6, v0

    iget v6, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v7, v0

    iget v7, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    const/4 v8, 0x0

    aget v8, v11, v8

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v8, v0

    iget v8, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    const/4 v9, 0x1

    aget v9, v11, v9

    add-int/2addr v8, v9

    move-object/from16 v0, v21

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2145
    .local v21, resizedCell:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    const/4 v6, 0x0

    aget v6, v11, v6

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    const/4 v6, 0x1

    aget v6, v11, v6

    if-eq v5, v6, :cond_9

    .line 2153
    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v15, v5, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v12

    .line 2155
    .local v12, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    move-object v0, v12

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 2156
    .local v16, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;>;"
    const/4 v13, 0x0

    .line 2157
    .local v13, found:Z
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    .line 2158
    .local v17, listItem:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    move v5, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    if-ne v5, v6, :cond_7

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    move v5, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    if-ne v5, v6, :cond_7

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    move v5, v0

    const/4 v6, 0x0

    aget v6, v11, v6

    if-ne v5, v6, :cond_7

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    move v5, v0

    const/4 v6, 0x1

    aget v6, v11, v6

    if-ne v5, v6, :cond_7

    .line 2162
    const/4 v13, 0x1

    .line 2166
    .end local v17           #listItem:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    :cond_8
    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    .line 2168
    if-eqz v13, :cond_a

    .line 2169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v23

    .line 2172
    .local v23, widgetManager:Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    iput v6, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 2173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    iput v6, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 2175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    const/4 v6, 0x0

    aget v6, v11, v6

    iput v6, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 2176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    const/4 v6, 0x1

    aget v6, v11, v6

    iput v6, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 2179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    const/4 v6, 0x0

    aget v6, v11, v6

    const/4 v7, 0x1

    aget v7, v11, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v8, v0

    iget v8, v8, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move-object/from16 v0, v23

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v9, v0

    iget v9, v9, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/app/twlauncher/Launcher;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->removeInScreen(Landroid/view/View;I)V

    .line 2184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 2185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget-object v6, v5, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget v7, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget v8, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget v9, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v5, v0

    iget v10, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 2189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mBestFitRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v6, v0

    iget v6, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v7, v0

    iget v7, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v10, v0

    iget v10, v10, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    aput v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Workspace;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v10, v0

    iget v10, v10, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    aput v10, v8, v9

    invoke-virtual {v15, v6, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->cellsToPixelRect(II[I)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2199
    .end local v12           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v13           #found:Z
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;>;"
    .end local v23           #widgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 2200
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 2195
    .restart local v12       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v13       #found:Z
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v16       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;>;"
    :cond_a
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Workspace;->mResizeEnableState:I

    goto :goto_2

    .line 2071
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onWidgetUpdated(Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;)V
    .locals 4
    .parameter

    .prologue
    .line 3644
    invoke-interface {p1}, Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;->getCustomCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3645
    if-nez v0, :cond_0

    .line 3646
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWidgetUpdated: no cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    :goto_0
    return-void

    .line 3650
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    if-nez v1, :cond_1

    .line 3651
    new-instance v1, Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    new-instance v2, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/twlauncher/Workspace$ResizeFlipListener;-><init>(Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/Workspace$1;)V

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;-><init>(Lcom/sec/android/app/twlauncher/CustomViewFlipper$ViewFlipperListener;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    .line 3653
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mCustomViewFlipper:Lcom/sec/android/app/twlauncher/CustomViewFlipper;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/CustomViewFlipper;->flipTo(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected panStart(I)V
    .locals 1
    .parameter "nextScreen"

    .prologue
    .line 3129
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 3130
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 3131
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->panStart(I)V

    .line 3132
    return-void
.end method

.method pauseScreen(I)V
    .locals 7
    .parameter "which"

    .prologue
    .line 3376
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 3377
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v0, :cond_1

    .line 3388
    :cond_0
    return-void

    .line 3379
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 3380
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3381
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3382
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 3383
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_2

    .line 3384
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 3380
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method removeInScreen(Landroid/view/View;I)V
    .locals 4
    .parameter "child"
    .parameter "screen"

    .prologue
    .line 731
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 732
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The screen must be >= 0 and < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 734
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 735
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 736
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 739
    :cond_2
    return-void
.end method

.method removeShortcutsForPackage(Ljava/lang/String;)V
    .locals 14
    .parameter

    .prologue
    .line 3241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3242
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v3

    .line 3243
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    .line 3245
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_6

    .line 3246
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v6

    .line 3247
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v7

    .line 3249
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3251
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v7, :cond_3

    .line 3252
    invoke-virtual {v6, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3253
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 3254
    instance-of v9, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v9, :cond_1

    .line 3255
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 3256
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v9

    .line 3258
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    move v10, v1

    :goto_2
    if-ltz v10, :cond_2

    .line 3259
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3260
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 3261
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 3263
    const-string v13, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3265
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    .line 3266
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v11, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3258
    :cond_0
    add-int/lit8 v1, v10, -0x1

    move v10, v1

    goto :goto_2

    .line 3271
    :cond_1
    instance-of v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v9, :cond_2

    .line 3272
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3278
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 3279
    if-eqz v9, :cond_2

    .line 3280
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 3282
    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3284
    invoke-virtual {v3, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3285
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v9, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 3286
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3251
    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_1

    .line 3293
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3294
    const/4 v0, 0x0

    move v7, v0

    :goto_3
    if-ge v7, v1, :cond_4

    .line 3295
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3294
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    .line 3298
    :cond_4
    if-lez v1, :cond_5

    .line 3299
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->requestLayout()V

    .line 3300
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 3245
    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 3303
    :cond_6
    return-void
.end method

.method public reqExtEndDrag()Z
    .locals 2

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2420
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDragWoDragFactor()Z

    move-result v0

    return v0
.end method

.method public reqExtEndDragWoDragFactor()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2410
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->disableRollNavigation()V

    .line 2411
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2413
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2414
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2415
    const/4 v0, 0x1

    return v0
.end method

.method public reqExtStartDrag(Landroid/view/View;)Z
    .locals 3
    .parameter "aView"

    .prologue
    const/4 v2, 0x1

    .line 2381
    new-instance v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2382
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iput-object p1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2383
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iput v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 2384
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iput v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 2385
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2386
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2387
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2388
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2389
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    .line 2390
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->enableRollNavigation()V

    .line 2391
    return v2
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1570
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1571
    .local v0, screen:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1572
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1573
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 1575
    :cond_1
    const/4 v1, 0x1

    .line 1577
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method resume(I)V
    .locals 4
    .parameter "which"

    .prologue
    .line 3406
    move v0, p1

    .line 3407
    .local v0, screen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    .line 3408
    .local v1, width:I
    if-eqz v1, :cond_1

    if-ltz v0, :cond_1

    .line 3409
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3410
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->abort()Z

    .line 3411
    :cond_0
    mul-int v2, v0, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 3413
    :cond_1
    return-void
.end method

.method resumeScreen(I)V
    .locals 7
    .parameter "which"

    .prologue
    .line 3391
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 3392
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v0, :cond_1

    .line 3403
    :cond_0
    return-void

    .line 3394
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 3395
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3396
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3397
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 3398
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v5, :cond_2

    .line 3399
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 3395
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resumeWidgetUpdates()V
    .locals 2

    .prologue
    .line 839
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 840
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->resumeUpdates()V

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 842
    :cond_0
    return-void
.end method

.method public scrollLeft()V
    .locals 3

    .prologue
    .line 3096
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3098
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-ltz v0, :cond_0

    .line 3099
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 3108
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    .line 3112
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3114
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 3115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(Landroid/view/animation/Interpolator;I)V

    .line 3124
    :cond_0
    return-void
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 3237
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAllowLongPress:Z

    .line 3238
    return-void
.end method

.method setAutoScrollScreen(I)V
    .locals 3
    .parameter "screen"

    .prologue
    .line 3449
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    .line 3450
    iput p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    .line 3451
    iget v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mEndScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mStartScreen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mScrollDirection:I

    .line 3453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 3454
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3455
    return-void
.end method

.method setCurrentScreen(I)V
    .locals 3
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 615
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 616
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    .line 617
    iget v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 618
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 619
    return-void
.end method

.method public setDropLocationFeedback(Landroid/graphics/Rect;)V
    .locals 10
    .parameter "location"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2741
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2742
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2743
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2745
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 2746
    .local v4, temp:Lcom/sec/android/app/twlauncher/ScalarAnimator;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 2747
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 2748
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v8, v7}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FF)V

    .line 2749
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v6, v8}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2751
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->getHeight()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 2754
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2755
    .local v3, padding:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2756
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int v5, v6, v7

    .line 2757
    .local v5, widthPadding:I
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int v2, v6, v7

    .line 2758
    .local v2, heightPadding:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2760
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2761
    .local v1, c:Landroid/graphics/Canvas;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2762
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverOutlineDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2763
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 2766
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #heightPadding:I
    .end local v3           #padding:Landroid/graphics/Rect;
    .end local v4           #temp:Lcom/sec/android/app/twlauncher/ScalarAnimator;
    .end local v5           #widthPadding:I
    :cond_1
    return-void
.end method

.method public setExternalBottomOffset(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalBottomOffset:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 814
    return-void
.end method

.method public setExternalZoomFactor(F)V
    .locals 1
    .parameter "factor"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mExternalZoomFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 826
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 456
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Scene;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 457
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 776
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 777
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 778
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 779
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 778
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 781
    :cond_0
    return-void
.end method

.method setShowIndicator()V
    .locals 1

    .prologue
    .line 622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mOpenFlag:Z

    .line 623
    return-void
.end method

.method protected snapToScreen(Landroid/view/animation/Interpolator;II)V
    .locals 9
    .parameter "interpolator"
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2292
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2334
    :goto_0
    return-void

    .line 2295
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2296
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v4, :cond_1

    .line 2297
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 2300
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 2301
    .local v1, childCount:I
    if-lt v1, v8, :cond_6

    .line 2302
    const/4 v4, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2307
    :goto_1
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    if-eq p2, v4, :cond_7

    move v0, v6

    .line 2308
    .local v0, changingScreens:Z
    :goto_2
    if-eqz v0, :cond_2

    .line 2309
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 2312
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    .line 2313
    .local v2, focusedChild:Landroid/view/View;
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 2314
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2317
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v4

    mul-int v3, p2, v4

    .line 2319
    .local v3, newX:I
    if-lt v1, v8, :cond_4

    .line 2320
    if-gez p2, :cond_8

    .line 2321
    sub-int p2, v1, v6

    .line 2326
    :cond_4
    :goto_3
    iput p2, p0, Lcom/sec/android/app/twlauncher/Scene;->mNextScreen:I

    .line 2328
    if-gez p3, :cond_5

    .line 2329
    iget p3, p0, Lcom/sec/android/app/twlauncher/Scene;->mSnapToScreenDuration:I

    .line 2331
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2332
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mScroller:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mScrollX:I

    int-to-float v5, v5

    int-to-float v6, v3

    int-to-long v7, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->start(FFJ)V

    .line 2333
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    goto :goto_0

    .line 2304
    .end local v0           #changingScreens:Z
    .end local v2           #focusedChild:Landroid/view/View;
    .end local v3           #newX:I
    :cond_6
    sub-int v4, v1, v6

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_7
    move v0, v7

    .line 2307
    goto :goto_2

    .line 2322
    .restart local v0       #changingScreens:Z
    .restart local v2       #focusedChild:Landroid/view/View;
    .restart local v3       #newX:I
    :cond_8
    if-lt p2, v1, :cond_4

    .line 2323
    const/4 p2, 0x0

    goto :goto_3
.end method

.method startDrag(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 8
    .parameter "cellInfo"

    .prologue
    const/4 v7, 0x0

    .line 2337
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2339
    .local v1, child:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mHoverInRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 2345
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_1

    instance-of v4, v1, Lcom/sec/android/app/twlauncher/Search;

    if-nez v4, :cond_1

    .line 2378
    :cond_0
    :goto_0
    return-void

    .line 2349
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;

    if-eqz v4, :cond_0

    .line 2353
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 2355
    .local v3, ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v4, :cond_2

    .line 2356
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v4, v0

    invoke-virtual {v5, v6, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 2360
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Workspace;->clearVacantCache()V

    .line 2362
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2363
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v5, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    iput v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2365
    iget v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    .line 2367
    .local v2, current:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 2368
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v4, :cond_3

    .line 2369
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v5, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;Z)V

    invoke-interface {v4, v1, p0, v5, v7}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 2375
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragFactor:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 2376
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->requestFrame()V

    .line 2377
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->enableRollNavigation()V

    goto :goto_0

    .line 2372
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Scene;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v5, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v5, v3}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    invoke-interface {v4, v1, p0, v5, v7}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method stopAutoScrollRunnable()V
    .locals 1

    .prologue
    .line 3487
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mIsAutoScrolling:Z

    .line 3489
    return-void
.end method

.method public suspendWidgetUpdates()V
    .locals 2

    .prologue
    .line 834
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 835
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->suspendUpdates()V

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 837
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 3213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Scene;->mLocked:Z

    .line 3214
    return-void
.end method

.method public updateDragInfo(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 2401
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    int-to-float v0, p1

    float-to-double v2, v0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v0

    int-to-float v0, v0

    float-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 2404
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Workspace;->mDragInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    int-to-float v1, p2

    float-to-double v1, v1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v3

    int-to-float v3, v3

    float-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 2406
    return-void
.end method

.method updateShortcutsForPackage(Ljava/lang/String;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 3327
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    move v3, v11

    .line 3328
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3329
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v4

    .line 3330
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v5

    move v6, v11

    .line 3331
    :goto_1
    if-ge v6, v5, :cond_3

    .line 3332
    invoke-virtual {v4, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3333
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 3334
    instance-of v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    .line 3335
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3341
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 3342
    if-nez v7, :cond_1

    .line 3363
    :cond_0
    return-void

    .line 3345
    :cond_1
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 3346
    iget v9, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3350
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 3352
    if-eqz v7, :cond_2

    iget-object v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eq v7, v8, :cond_2

    .line 3353
    iget-object v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3354
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Workspace;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 3355
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    .line 3356
    check-cast v1, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10, v0, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3331
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 3328
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method updateWallpaperOffset()V
    .locals 2

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset(I)V

    .line 785
    return-void
.end method

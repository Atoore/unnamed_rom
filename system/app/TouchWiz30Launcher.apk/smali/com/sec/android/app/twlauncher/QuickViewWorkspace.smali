.class public Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
.super Lcom/sec/android/app/twlauncher/QuickView;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final ADD_BTN_TAG:Ljava/lang/Object;

.field private static final kRowByColumnLayout:[[I


# instance fields
.field private mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

.field private mDefaultScreen:I

.field private mDragShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

.field private mDragState:I

.field private mHorizontalGap:I

.field private mIsDefaultScreen:Z

.field private mIsEditMode:Z

.field private mIsHomeIsLastScreen:Z

.field private mIsRemoved:Z

.field private mIsSwapped:Z

.field private mIsSwappedPosition:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMenuSethome:Landroid/view/View;

.field private mOrientation:I

.field private mPressBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mSetDefaultHomeIcon:Landroid/graphics/drawable/Drawable;

.field private mSetDefaultIconBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSetDefaultScreen:I

.field private mSurfaceAddBtn:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mTempDefaultScreen:I

.field private mTempNextDefaultScreen:I

.field private mTempRects:[Landroid/graphics/Rect;

.field private mTmpLocation:[I

.field private mTmpLocation2:[I

.field private mTouchSlop:I

.field private mUseFullScreenInLandScapeMode:Z

.field private mVerticalGap:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWorkspaceScreenCountOnOpen:I

.field private mWorkspaceScreenIndexOnOpen:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v2, [I

    aput v4, v1, v5

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    return-void

    .line 55
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    new-array v0, v0, [Lcom/sec/android/app/twlauncher/QuickView$Animate;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    .line 87
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 95
    new-instance v0, Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    .line 97
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 99
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    .line 115
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 116
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsRemoved:Z

    .line 117
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwappedPosition:Z

    .line 118
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwapped:Z

    .line 119
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempDefaultScreen:I

    .line 122
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    .line 123
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    .line 128
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    .line 777
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    .line 779
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->init()V

    .line 154
    return-void
.end method

.method private addScreen()V
    .locals 6

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 837
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v2, v1, v4

    .line 838
    .local v2, index:I
    if-gez v2, :cond_0

    .line 839
    const/4 v2, 0x0

    .line 840
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 842
    .local v0, add:Landroid/view/View;
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-lt v1, v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    .line 855
    :goto_0
    return-void

    .line 844
    :cond_1
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ne v1, v4, :cond_2

    .line 845
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 848
    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v3

    .line 849
    .local v3, screen:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 851
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onAdd()V

    .line 853
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto :goto_0
.end method

.method private applyDeleteZone()V
    .locals 3

    .prologue
    .line 797
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 798
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 800
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 801
    .local v0, scale:Landroid/graphics/Matrix;
    const/high16 v1, 0x3f80

    .line 802
    .local v1, scaleFactor:F
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 804
    return-void
.end method

.method private drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 1347
    const/4 v13, 0x0

    .line 1349
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1350
    const/high16 v5, 0x3f80

    .line 1351
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v14, v6

    .line 1352
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v15, v6

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_b

    .line 1355
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragShader:Lcom/sec/android/app/twlauncher/DragLayer$AdditiveShader;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 1357
    const-string v5, "additionalAlpha"

    const/high16 v6, 0x3f80

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderUniform(Ljava/lang/String;F)V

    .line 1358
    const/high16 v5, 0x3f80

    const v6, 0x3dcccccd

    const v7, 0x3dcccccd

    const v8, 0x3f19999a

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 1360
    :cond_0
    const v5, 0x3f933333

    move/from16 v16, v5

    .line 1363
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_8

    .line 1366
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    move-wide v7, v0

    sub-long/2addr v5, v7

    long-to-int v5, v5

    .line 1368
    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    move v6, v0

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1369
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 1371
    :goto_1
    const/high16 v6, 0x3f80

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1372
    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    new-instance v9, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v12

    invoke-direct {v9, v5, v6, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v17

    move-object v0, v10

    move v1, v5

    move v2, v6

    move v3, v12

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move/from16 v17, v13

    .line 1389
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 1391
    sget-object v5, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v13, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    if-eqz v5, :cond_a

    instance-of v5, v13, Ljava/lang/Integer;

    if-eqz v5, :cond_a

    .line 1392
    move-object v0, v13

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1398
    if-eqz v5, :cond_3

    .line 1399
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 1405
    cmpl-float v9, v7, v8

    if-lez v9, :cond_2

    move v7, v8

    .line 1407
    :cond_2
    mul-float v7, v7, v16

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object v8, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object v8, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object v8, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object v8, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object v8, v0

    iget v9, v8, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    mul-float v9, v9, v16

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object v8, v0

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    mul-float v9, v9, v16

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 1417
    const/16 v8, 0x11

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v9, v9

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object v12, v0

    invoke-static {v8, v9, v10, v11, v12}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float v8, v8, v16

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    mul-float v9, v9, v16

    .line 1428
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    .line 1429
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    mul-float/2addr v11, v7

    .line 1433
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    sub-float v12, v12, v18

    .line 1434
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v16

    sub-float v18, v18, v19

    .line 1439
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v12, v12, v19

    add-float/2addr v8, v12

    add-float/2addr v8, v10

    .line 1444
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    add-float v12, v12, v18

    add-float/2addr v9, v12

    add-float/2addr v9, v11

    .line 1445
    move-object/from16 v0, p1

    move v1, v8

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1446
    move-object/from16 v0, p1

    move v1, v7

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 1449
    neg-float v8, v10

    div-float/2addr v8, v7

    neg-float v9, v11

    div-float v7, v9, v7

    move-object/from16 v0, p1

    move v1, v8

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1450
    check-cast v5, Lcom/sec/android/app/twlauncher/CellLayout;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z

    .line 1452
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1455
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    move v5, v0

    if-ne v5, v6, :cond_3

    .line 1458
    const/16 v5, 0x26

    const/16 v6, 0x26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getButtonBounds(Landroid/view/View;II)Landroid/graphics/Rect;

    move-result-object v10

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultHomeIcon:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultHomeIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultIconBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultHomeIcon:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    new-instance v9, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v9, v11, v12, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v11, -0x4080

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultIconBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1477
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    .line 1478
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1480
    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1481
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 1482
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1483
    const/high16 v5, 0x3f00

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v9, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v10, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 1487
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1490
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1492
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsEditMode:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 1494
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    move v5, v0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    sget-object v5, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v13, v5, :cond_6

    instance-of v5, v13, Ljava/lang/Integer;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    move v5, v0

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/16 v6, 0x11

    const/16 v7, 0xab

    const/16 v8, 0xeb

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    new-instance v9, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-direct {v9, v5, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-direct {v10, v5, v6, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v11, -0x4080

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1506
    :cond_6
    return v17

    .line 1369
    :cond_7
    const/high16 v6, 0x3f80

    sub-float v5, v6, v5

    goto/16 :goto_1

    .line 1377
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    move v5, v0

    const/16 v6, 0x8

    if-ne v5, v6, :cond_9

    .line 1378
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_2

    .line 1380
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1381
    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1382
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 1383
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    new-instance v9, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-direct {v9, v5, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v12

    invoke-direct {v10, v5, v6, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v11, -0x4080

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1387
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move/from16 v17, v13

    goto/16 :goto_2

    .line 1469
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1471
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x2

    add-int v11, v7, v8

    .line 1472
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    add-int v12, v7, v8

    .line 1473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceAddBtn:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/16 v18, 0x0

    move-object v0, v9

    move v1, v10

    move/from16 v2, v18

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    add-int/2addr v5, v11

    add-int/2addr v6, v12

    invoke-direct {v10, v11, v12, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v11, -0x4080

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSurfaceAddBtn:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    goto/16 :goto_3

    :cond_b
    move/from16 v16, v5

    goto/16 :goto_0
.end method

.method private drop(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 734
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 735
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 738
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 741
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isDeleteZone(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    if-nez v1, :cond_1

    .line 745
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsRemoved:Z

    .line 747
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 748
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 749
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    .line 751
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    .line 752
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    .line 754
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 756
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isIncludeItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteWorkScreen()V

    .line 775
    :goto_0
    return-void

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeScreen()V

    goto :goto_0

    .line 766
    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    .line 768
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v0

    .line 769
    .local v0, dropedIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    .line 771
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_0

    .line 773
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_0
.end method

.method private enableWorkspaceScreensCache()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 500
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 501
    .local v3, ws:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 503
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 504
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 505
    .local v0, celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 506
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    .end local v0           #celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    return-void
.end method

.method private endDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 724
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 725
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 726
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 727
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    .line 728
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 729
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 730
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    .line 731
    return-void
.end method

.method private getTouchedIndex(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 567
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-nez v2, :cond_0

    move v2, v5

    .line 577
    :goto_0
    return v2

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v0, v2

    .line 570
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 571
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 570
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 573
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    add-int/2addr v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    .line 574
    goto :goto_0

    :cond_3
    move v2, v5

    .line 577
    goto :goto_0
.end method

.method private getViewLayout(III)V
    .locals 25
    .parameter "count"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 1190
    move/from16 v0, p1

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 1192
    if-lez p1, :cond_5

    sget-object v21, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_5

    .line 1193
    sget-object v21, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    const/16 v22, 0x1

    sub-int v22, p1, v22

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    array-length v0, v0

    move v15, v0

    .line 1194
    .local v15, rows:I
    const/4 v10, 0x0

    .line 1195
    .local v10, maxCols:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v15, :cond_1

    .line 1196
    sget-object v21, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    const/16 v22, 0x1

    sub-int v22, p1, v22

    aget-object v21, v21, v22

    aget v8, v21, v9

    .line 1197
    .local v8, colsOnThisRow:I
    if-le v8, v10, :cond_0

    .line 1198
    move v10, v8

    .line 1195
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1203
    .end local v8           #colsOnThisRow:I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWidth()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingLeft()I

    move-result v22

    sub-int v12, v21, v22

    .line 1204
    .local v12, ourWidth:I
    add-int/lit8 v21, v10, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    sub-int v20, v12, v21

    .line 1206
    .local v20, usableWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingTop()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingBottom()I

    move-result v22

    sub-int v11, v21, v22

    .line 1207
    .local v11, ourHeight:I
    add-int/lit8 v21, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v22, v0

    mul-int v21, v21, v22

    sub-int v19, v11, v21

    .line 1209
    .local v19, usableHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v21, v0

    add-int v21, v21, p3

    mul-int v21, v21, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v22, v0

    sub-int v17, v21, v22

    .line 1210
    .local v17, totChildHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v21, v0

    add-int v21, v21, p2

    mul-int v21, v21, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v22, v0

    sub-int v18, v21, v22

    .line 1211
    .local v18, totChildWidth:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 1212
    .local v16, scale:F
    const/high16 v21, 0x3f80

    cmpl-float v21, v16, v21

    if-lez v21, :cond_2

    .line 1213
    const/high16 v16, 0x3f80

    .line 1214
    :cond_2
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 p2, v0

    .line 1215
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 p3, v0

    .line 1218
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v21, v0

    add-int v21, v21, p3

    mul-int v21, v21, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v22, v0

    sub-int v17, v21, v22

    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingTop()I

    move-result v21

    sub-int v22, v11, v17

    div-int/lit8 v22, v22, 0x2

    add-int v14, v21, v22

    .line 1220
    .local v14, rowTop:I
    const/4 v5, 0x0

    .line 1221
    .local v5, childCount:I
    const/4 v13, 0x0

    .local v13, row:I
    :goto_1
    if-ge v13, v15, :cond_5

    .line 1222
    sget-object v21, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->kRowByColumnLayout:[[I

    const/16 v22, 0x1

    sub-int v22, p1, v22

    aget-object v21, v21, v22

    aget v7, v21, v13

    .line 1223
    .local v7, cols:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v21, v0

    add-int v21, v21, p2

    mul-int v21, v21, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v22, v0

    sub-int v18, v21, v22

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getPaddingLeft()I

    move-result v21

    sub-int v22, v12, v18

    div-int/lit8 v22, v22, 0x2

    add-int v6, v21, v22

    .line 1225
    .local v6, colLeft:I
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_4

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    aget-object v21, v21, v5

    if-nez v21, :cond_3

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    new-instance v22, Landroid/graphics/Rect;

    add-int v23, v6, p2

    add-int v24, v14, p3

    move-object/from16 v0, v22

    move v1, v6

    move v2, v14

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v22, v21, v5

    .line 1230
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 1231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    move/from16 v21, v0

    add-int v21, v21, p2

    add-int v6, v6, v21

    .line 1225
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1229
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    aget-object v21, v21, v5

    add-int v22, v6, p2

    add-int v23, v14, p3

    move-object/from16 v0, v21

    move v1, v6

    move v2, v14

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 1233
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    move/from16 v21, v0

    add-int v21, v21, p3

    add-int v14, v14, v21

    .line 1221
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1236
    .end local v5           #childCount:I
    .end local v6           #colLeft:I
    .end local v7           #cols:I
    .end local v9           #i:I
    .end local v10           #maxCols:I
    .end local v11           #ourHeight:I
    .end local v12           #ourWidth:I
    .end local v13           #row:I
    .end local v14           #rowTop:I
    .end local v15           #rows:I
    .end local v16           #scale:F
    .end local v17           #totChildHeight:I
    .end local v18           #totChildWidth:I
    .end local v19           #usableHeight:I
    .end local v20           #usableWidth:I
    :cond_5
    return-void
.end method

.method private isAvailableRect(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "rect"

    .prologue
    .line 1181
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    .line 1183
    :cond_0
    const/4 v0, 0x0

    .line 1185
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDeleteZone(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 784
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 785
    .local v0, dz:Lcom/sec/android/app/twlauncher/DeleteZone;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getDeleteAreaRect(Landroid/graphics/Rect;)V

    .line 789
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getLocationOnScreen([I)V

    .line 790
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationInWindow([I)V

    .line 791
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 793
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method private isIncludeItem()Z
    .locals 13

    .prologue
    .line 807
    const/4 v5, 0x0

    .line 808
    .local v5, ret:Z
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v8

    .line 810
    .local v8, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v4

    .line 811
    .local v4, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 813
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 814
    invoke-virtual {v4, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 815
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 817
    .local v6, tag:Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v3, v0

    .line 819
    .local v3, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget-wide v9, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    .line 820
    const/4 v5, 0x0

    .line 832
    .end local v3           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .end local v6           #tag:Ljava/lang/Object;
    .end local v7           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return v5

    .line 824
    .restart local v3       #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .restart local v6       #tag:Ljava/lang/Object;
    .restart local v7       #view:Landroid/view/View;
    :cond_1
    iget-wide v9, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v11, -0x64

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 827
    const/4 v5, 0x1

    .line 828
    goto :goto_1

    .line 813
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private makeAddBtn()Landroid/view/View;
    .locals 2

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v0

    .line 696
    .local v0, v:Landroid/view/View;
    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 697
    return-object v0
.end method

.method private makeScreen(I)Landroid/view/View;
    .locals 5
    .parameter "index"

    .prologue
    .line 701
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 703
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 704
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 706
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 708
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 709
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    return-object v0
.end method

.method private onAdd()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 915
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 916
    .local v1, count:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 918
    .local v3, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03001b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 920
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 921
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 922
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 923
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 926
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 930
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 931
    return-void
.end method

.method private onRemove()V
    .locals 23

    .prologue
    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v18

    .line 936
    .local v18, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v9

    .line 937
    .local v9, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v4

    .line 938
    .local v4, childCount:I
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v11

    .line 939
    .local v11, model:Lcom/sec/android/app/twlauncher/LauncherModel;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 940
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempNextDefaultScreen:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 941
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    move/from16 v19, v0

    sput v19, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 942
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    .line 944
    :cond_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_a

    .line 945
    invoke-virtual {v9, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 946
    .local v16, view:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 948
    .local v12, tag:Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/Folder;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 944
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 956
    :cond_1
    move-object v0, v12

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v7, v0

    .line 958
    .local v7, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    move-object v0, v7

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x1

    cmp-long v19, v19, v21

    if-nez v19, :cond_2

    .line 1018
    .end local v7           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .end local v12           #tag:Ljava/lang/Object;
    .end local v16           #view:Landroid/view/View;
    :goto_2
    return-void

    .line 961
    .restart local v7       #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .restart local v12       #tag:Ljava/lang/Object;
    .restart local v16       #view:Landroid/view/View;
    :cond_2
    move-object v0, v7

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x64

    cmp-long v19, v19, v21

    if-nez v19, :cond_7

    .line 962
    move-object v0, v7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 963
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v8, v0

    invoke-virtual {v11, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 976
    :cond_3
    :goto_3
    move-object v0, v7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 977
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v14, v0

    .line 978
    .local v14, userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 979
    invoke-virtual {v11, v14}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeUserFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 992
    .end local v14           #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_1

    .line 964
    :cond_5
    move-object v0, v7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 965
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v8, v0

    invoke-virtual {v11, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    goto :goto_3

    .line 967
    :cond_6
    invoke-virtual {v11, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_3

    .line 970
    :cond_7
    move-object v0, v12

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 971
    move-object v0, v12

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v13, v0

    .line 972
    .local v13, userFolder:Lcom/sec/android/app/twlauncher/UserFolder;
    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/UserFolder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 973
    .restart local v14       #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v11, v14, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeUserFolderItem(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_3

    .line 980
    .end local v13           #userFolder:Lcom/sec/android/app/twlauncher/UserFolder;
    .end local v14           #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_8
    move-object v0, v7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 981
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v8, v0

    .line 982
    .local v8, launcherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-result-object v3

    .line 983
    .local v3, appWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    if-eqz v3, :cond_4

    .line 984
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v19, v0

    move-object v0, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_4

    .line 986
    .end local v3           #appWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .end local v8           #launcherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_9
    move-object v0, v7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 987
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v6, v0

    .line 988
    .local v6, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance(Landroid/app/ActivityGroup;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v10

    .line 990
    .local v10, manager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    move-object v0, v10

    move-object/from16 v1, v19

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto :goto_4

    .line 995
    .end local v6           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    .end local v7           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .end local v10           #manager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .end local v12           #tag:Ljava/lang/Object;
    .end local v16           #view:Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 996
    .local v15, v:Landroid/view/View;
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeView(Landroid/view/View;)V

    .line 998
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateAppInfoInDatabase()V

    .line 1000
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwappedPosition:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 1001
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempDefaultScreen:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 1002
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    move/from16 v19, v0

    sput v19, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 1003
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwappedPosition:Z

    .line 1006
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1008
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    .line 1009
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    .line 1011
    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v17

    .line 1012
    .local v17, workScreenCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v19

    const/16 v20, 0x1

    sub-int v20, v17, v20

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 1017
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    goto/16 :goto_2
.end method

.method private onSwap(I)V
    .locals 4
    .parameter "dropedIndex"

    .prologue
    .line 897
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    .line 899
    .local v1, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 901
    .local v0, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 902
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 905
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setLauncherDefaultScreen(II)V

    .line 908
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 910
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateAppInfoInDatabase()V

    .line 911
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 912
    return-void
.end method

.method private setCloseEndRect(I)V
    .locals 14
    .parameter

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 1131
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationOnScreen([I)V

    .line 1132
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1135
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1137
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1138
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1139
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1140
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1141
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1143
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    .line 1144
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1145
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 1149
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 1150
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 1151
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 1152
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 1154
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    array-length v11, v11

    if-eq v11, v0, :cond_1

    .line 1155
    :cond_0
    new-array v11, v0, [Landroid/graphics/Rect;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    .line 1156
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v0, :cond_1

    .line 1157
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    aput-object v13, v12, v11

    .line 1156
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1161
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v11, v11, p1

    sub-int v7, v5, v7

    sub-int v9, v2, v9

    add-int/2addr v3, v5

    add-int/2addr v3, v8

    add-int/2addr v2, v4

    add-int/2addr v2, v10

    invoke-virtual {v11, v7, v9, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1164
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    if-eqz v2, :cond_2

    .line 1166
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    sub-int v1, v6, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1169
    :cond_2
    const/4 v1, 0x1

    sub-int v1, p1, v1

    :goto_1
    if-ltz v1, :cond_3

    .line 1170
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1171
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1169
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1174
    :cond_3
    add-int/lit8 v1, p1, 0x1

    :goto_2
    if-ge v1, v0, :cond_4

    .line 1175
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    const/4 v4, 0x1

    sub-int v4, v1, v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1176
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1174
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1178
    :cond_4
    return-void
.end method

.method private setDeleteZoneState(Z)V
    .locals 1
    .parameter "dragOver"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setDragEnterForced(Z)V

    .line 1022
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 1023
    return-void
.end method

.method private setLauncherDefaultScreen(II)V
    .locals 5
    .parameter "oldScreen"
    .parameter "newScreen"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1516
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 1517
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempDefaultScreen:I

    .line 1518
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwapped:Z

    .line 1519
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwappedPosition:Z

    .line 1520
    const/4 v0, -0x1

    .line 1522
    .local v0, defaultScreen:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-ne p1, v1, :cond_2

    .line 1523
    move v0, p2

    .line 1545
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1546
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 1547
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 1549
    :cond_1
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsRemoved:Z

    .line 1550
    return-void

    .line 1524
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-ge v1, p1, :cond_3

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-lt v1, p2, :cond_3

    .line 1525
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    add-int/lit8 v0, v1, 0x1

    .line 1526
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwappedPosition:Z

    goto :goto_0

    .line 1528
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-le v1, p1, :cond_4

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-gt v1, p2, :cond_4

    .line 1529
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    sub-int v0, v1, v3

    goto :goto_0

    .line 1530
    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsRemoved:Z

    if-eqz v1, :cond_0

    .line 1531
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-le v1, p2, :cond_5

    if-eq p1, p2, :cond_6

    :cond_5
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-le v1, p2, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    if-le v1, p1, :cond_0

    .line 1535
    :cond_6
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_7

    .line 1536
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    .line 1537
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempNextDefaultScreen:I

    .line 1542
    :goto_1
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwapped:Z

    goto :goto_0

    .line 1539
    :cond_7
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    sub-int v0, v1, v3

    goto :goto_1
.end method

.method private setOpenStartRect(I)V
    .locals 14
    .parameter

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 1078
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationOnScreen([I)V

    .line 1079
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1082
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1084
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1085
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1086
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1087
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1088
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1090
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    .line 1091
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1092
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 1096
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 1097
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 1098
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 1099
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 1101
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    array-length v11, v11

    if-eq v11, v0, :cond_1

    .line 1102
    :cond_0
    new-array v11, v0, [Landroid/graphics/Rect;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    .line 1103
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v0, :cond_1

    .line 1104
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    aput-object v13, v12, v11

    .line 1103
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1108
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v11, v11, p1

    sub-int v7, v5, v7

    sub-int v9, v2, v9

    add-int/2addr v3, v5

    add-int/2addr v3, v8

    add-int/2addr v2, v4

    add-int/2addr v2, v10

    invoke-virtual {v11, v7, v9, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1112
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    if-eqz v2, :cond_2

    .line 1114
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    sub-int v1, v6, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1117
    :cond_2
    const/4 v1, 0x1

    sub-int v1, p1, v1

    :goto_1
    if-ltz v1, :cond_3

    .line 1118
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1119
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1117
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1122
    :cond_3
    add-int/lit8 v1, p1, 0x1

    :goto_2
    if-ge v1, v0, :cond_4

    .line 1123
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    const/4 v4, 0x1

    sub-int v4, v1, v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1124
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1122
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1126
    :cond_4
    return-void
.end method

.method private startDrag(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 714
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 715
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 716
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    .line 717
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 718
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    .line 719
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 720
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 721
    return-void
.end method

.method private swapScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 893
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onSwap(I)V

    .line 894
    return-void
.end method

.method private updateAppInfoInDatabase()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x0

    const-string v0, "update favorites set screen=? where _id=?"

    .line 1026
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    .line 1027
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    .line 1032
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v3, "launcher.db"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1033
    :try_start_1
    const-string v0, "update favorites set screen=? where _id=?"

    .line 1034
    const-string v0, "update favorites set screen=? where _id=?"

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1039
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v5, v11

    .line 1040
    :goto_0
    if-ge v5, v2, :cond_2

    .line 1041
    invoke-virtual {v1, v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 1042
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v11

    .line 1043
    :goto_1
    if-ge v7, v6, :cond_1

    .line 1044
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1046
    if-eqz v0, :cond_0

    .line 1047
    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1048
    iget v8, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-eq v8, v5, :cond_0

    .line 1049
    iput v5, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1050
    const/4 v8, 0x1

    int-to-long v9, v5

    invoke-virtual {v4, v8, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1051
    const/4 v8, 0x2

    iget-wide v9, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v4, v8, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1052
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1043
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 1040
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 1058
    :cond_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1065
    if-eqz v4, :cond_3

    .line 1066
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1068
    :cond_3
    if-eqz v3, :cond_4

    .line 1069
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1070
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1073
    :cond_4
    :goto_2
    return-void

    .line 1062
    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    .line 1063
    :goto_3
    :try_start_3
    const-string v3, "QuickViewWorkspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAppInfoInDatabase() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1065
    if-eqz v1, :cond_5

    .line 1066
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1068
    :cond_5
    if-eqz v2, :cond_4

    .line 1069
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1070
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 1065
    :catchall_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    :goto_4
    if-eqz v1, :cond_6

    .line 1066
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1068
    :cond_6
    if-eqz v2, :cond_7

    .line 1069
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1070
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v0

    .line 1065
    :catchall_1
    move-exception v0

    move-object v1, v6

    move-object v2, v3

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v4

    move-object v2, v3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 1062
    :catch_1
    move-exception v0

    move-object v1, v6

    move-object v2, v3

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v4

    move-object v2, v3

    goto :goto_3
.end method

.method private updateTag()V
    .locals 5

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 859
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 860
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 861
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 862
    .local v3, tag:Ljava/lang/Object;
    sget-object v4, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 863
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 859
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 866
    .end local v0           #child:Landroid/view/View;
    .end local v3           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private updateWallpaperOffset(IIF)V
    .locals 7
    .parameter "newCurScreenIndex"
    .parameter "newScreenCount"
    .parameter "progress"

    .prologue
    const/4 v6, 0x1

    .line 182
    const/high16 v2, 0x3f00

    .line 183
    .local v2, wallpaperOffsetOnOpen:F
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    if-le v4, v6, :cond_0

    .line 184
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenIndexOnOpen:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 188
    :cond_0
    const/high16 v0, 0x3f00

    .line 189
    .local v0, targetWallpaperOffsetOnClose:F
    if-le p2, v6, :cond_1

    .line 190
    int-to-float v4, p1

    sub-int v5, p2, v6

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 193
    :cond_1
    sub-float v4, v0, v2

    mul-float/2addr v4, p3

    add-float v3, v2, v4

    .line 198
    .local v3, woffset:F
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 203
    .local v1, token:Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 204
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 206
    :cond_2
    return-void
.end method


# virtual methods
.method cancelDeleteView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 637
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsHomeIsLastScreen:Z

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 643
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    .line 645
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 647
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwapped:Z

    if-eqz v0, :cond_0

    .line 648
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempDefaultScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 649
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 650
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSwapped:Z

    goto :goto_0
.end method

.method cancelDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 615
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 617
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 619
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 626
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 627
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 628
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 629
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 630
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    .line 631
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 632
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    .line 633
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 634
    return-void
.end method

.method close()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 538
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    .line 539
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    .line 540
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setVisibility(I)V

    .line 541
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDeleteView()V

    .line 543
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setMode(Z)V

    .line 546
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 547
    .local v0, vDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 551
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMenuSethome:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 553
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->disableWorkspaceScreensCache()V

    .line 564
    return-void
.end method

.method disableWorkspaceScreensCache()V
    .locals 5

    .prologue
    .line 511
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 512
    .local v3, ws:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 514
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 515
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 517
    .local v0, celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    .end local v0           #celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 13
    .parameter "canvas"

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1241
    .local v1, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWidth()I

    move-result v8

    .line 1242
    .local v8, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getHeight()I

    move-result v3

    .line 1244
    .local v3, height:I
    const/4 v6, 0x0

    .line 1245
    .local v6, result:Z
    if-eqz v8, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v7, v6

    .line 1343
    .end local v6           #result:Z
    .local v7, result:I
    :goto_0
    return v7

    .line 1247
    .end local v7           #result:I
    .restart local v6       #result:Z
    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1249
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    .line 1251
    const/4 v9, 0x2

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 1252
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 1254
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setOpenStartRect(I)V

    .line 1255
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->requestLayout()V

    .line 1256
    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    .line 1257
    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1258
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 1259
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v9, v4

    .line 1260
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1261
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v9, v4

    .line 1258
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1263
    .end local v4           #i:I
    :cond_2
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    .line 1264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    .line 1265
    const/4 v9, 0x4

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 1266
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 1268
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->requestLayout()V

    .line 1269
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setCloseEndRect(I)V

    .line 1270
    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    .line 1271
    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1272
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, v1, :cond_3

    .line 1273
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v9, v4

    .line 1274
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1275
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    aput-object v10, v9, v4

    .line 1272
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1279
    .end local v4           #i:I
    :cond_3
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 1280
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    if-ge v4, v1, :cond_5

    .line 1281
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1282
    .local v0, child:Landroid/view/View;
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eq v0, v9, :cond_4

    .line 1283
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v6

    .line 1280
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1286
    .end local v0           #child:Landroid/view/View;
    :cond_5
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    add-int/2addr v11, v8

    iget v12, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    add-int/2addr v12, v3

    invoke-virtual {p1, v9, v10, v11, v12}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClip(IIII)V

    .line 1287
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-direct {p0, p1, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v6

    :cond_6
    :goto_4
    move v7, v6

    .line 1343
    .restart local v7       #result:I
    goto/16 :goto_0

    .line 1289
    .end local v4           #i:I
    .end local v7           #result:I
    :cond_7
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_8

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_11

    .line 1291
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    sub-long/2addr v9, v11

    long-to-int v2, v9

    .line 1293
    .local v2, current:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    if-lt v2, v9, :cond_9

    .line 1294
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    .line 1295
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_9

    .line 1296
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 1300
    :cond_9
    int-to-float v9, v2

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v10, v10

    div-float v5, v9, v10

    .line 1301
    .local v5, progress:F
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_a

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v10

    if-eq v9, v10, :cond_a

    .line 1303
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v10

    invoke-direct {p0, v9, v10, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateWallpaperOffset(IIF)V

    .line 1307
    :cond_a
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    if-lt v2, v9, :cond_b

    .line 1308
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    const/4 v9, 0x7

    :goto_5
    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 1312
    :cond_b
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    array-length v9, v9

    if-eq v9, v1, :cond_d

    .line 1316
    :cond_c
    if-lez v1, :cond_d

    .line 1317
    new-array v9, v1, [Landroid/graphics/Rect;

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1320
    :cond_d
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    invoke-virtual {v9, v10, v11, v12, v5}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 1322
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_6
    if-ge v4, v1, :cond_10

    .line 1324
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1325
    .restart local v0       #child:Landroid/view/View;
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v4

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v9, v10, v11, v12}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClip(IIII)V

    .line 1327
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v12, v12, v4

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 1329
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1330
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1331
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v6

    .line 1322
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1308
    .end local v0           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_f
    const/16 v9, 0x8

    goto :goto_5

    .line 1335
    .restart local v4       #i:I
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    goto/16 :goto_4

    .line 1338
    .end local v2           #current:I
    .end local v4           #i:I
    .end local v5           #progress:F
    :cond_11
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_7
    if-ge v4, v1, :cond_6

    .line 1339
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {p0, p1, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)Z

    move-result v6

    .line 1338
    add-int/lit8 v4, v4, 0x1

    goto :goto_7
.end method

.method getButtonBounds(Landroid/view/View;II)Landroid/graphics/Rect;
    .locals 9
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1560
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v2, v7, v8

    .line 1561
    .local v2, view_width:I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1563
    .local v3, view_x:I
    move v4, p2

    .line 1564
    .local v4, w:I
    move v0, p3

    .line 1565
    .local v0, h:I
    sub-int v7, v2, v4

    div-int/lit8 v5, v7, 0x2

    .line 1566
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v7, v0

    const/16 v8, 0xa

    sub-int v6, v7, v8

    .line 1568
    .local v6, y:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1570
    .local v1, rect:Landroid/graphics/Rect;
    add-int v7, v5, v3

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 1571
    add-int v7, v5, v4

    add-int/2addr v7, v3

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 1572
    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 1573
    add-int v7, v6, v0

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 1574
    return-object v1
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    return v0
.end method

.method public getDeleteIndex()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    return v0
.end method

.method getSetHomeMenu()Landroid/view/View;
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMenuSethome:Landroid/view/View;

    return-object v0
.end method

.method protected init()V
    .locals 6

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 159
    new-instance v4, Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    invoke-direct {v4}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    .line 160
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 164
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 165
    const v4, 0x7f0b0025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mVerticalGap:I

    .line 166
    const v4, 0x7f0b0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mHorizontalGap:I

    .line 167
    const v4, 0x7f090001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    .line 169
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 171
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 172
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 174
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v2, v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    new-instance v5, Lcom/sec/android/app/twlauncher/QuickView$Animate;

    invoke-direct {v5, p0}, Lcom/sec/android/app/twlauncher/QuickView$Animate;-><init>(Lcom/sec/android/app/twlauncher/QuickView;)V

    aput-object v5, v4, v2

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setClipChildren(Z)V

    .line 178
    return-void
.end method

.method initScreen(I)V
    .locals 8
    .parameter "screenCount"

    .prologue
    const v7, 0x7f0200e3

    .line 656
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeAllViews()V

    .line 658
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setBackgroundResource(I)V

    .line 660
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 661
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 663
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 664
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 666
    .local v4, resources:Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 667
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 669
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 670
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 671
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 673
    const v5, 0x7f020043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 675
    const v5, 0x7f020045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 676
    sget v5, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 677
    const v5, 0x7f02002c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultHomeIcon:Landroid/graphics/drawable/Drawable;

    .line 679
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 680
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    .line 679
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 683
    :cond_0
    sget v5, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge p1, v5, :cond_1

    .line 684
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 690
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 692
    return-void
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 599
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 601
    :cond_0
    const/4 v0, 0x0

    .line 603
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    .line 469
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsEditMode:Z

    if-eqz v0, :cond_2

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060028

    if-ne v0, v1, :cond_1

    .line 473
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 474
    const-string v0, "QuickViewWorkspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msetDefaultScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    .line 476
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 480
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setMode(Z)V

    .line 485
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    .line 492
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 497
    :goto_2
    return-void

    .line 483
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    goto :goto_0

    .line 488
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 489
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    goto :goto_1

    .line 495
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addScreen()V

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 257
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 258
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 260
    .local v7, y:F
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v10, 0x7

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v10, 0x8

    if-eq v9, v10, :cond_0

    move v9, v12

    .line 328
    :goto_0
    return v9

    .line 266
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 328
    :cond_1
    :goto_1
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-eqz v9, :cond_3

    move v9, v12

    goto :goto_0

    .line 268
    :sswitch_0
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    if-eqz v9, :cond_1

    .line 269
    iput v13, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 271
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    sub-float v9, v7, v9

    float-to-int v3, v9

    .line 272
    .local v3, dy:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    sub-float v9, v5, v9

    float-to-int v2, v9

    .line 274
    .local v2, dx:I
    mul-int v9, v3, v3

    mul-int v10, v2, v2

    add-int/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMovePinchStart:I

    sub-int v4, v9, v10

    .line 276
    .local v4, pinchDelta:I
    const/16 v9, 0x2710

    if-le v4, v9, :cond_1

    .line 277
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 278
    .local v1, childOnPinch:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v9, v10, :cond_1

    .line 282
    iput-boolean v13, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 283
    iput-boolean v13, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    .line 284
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 285
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    .line 286
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    move v9, v12

    .line 287
    goto :goto_0

    .line 295
    .end local v1           #childOnPinch:Landroid/view/View;
    .end local v2           #dx:I
    .end local v3           #dy:I
    .end local v4           #pinchDelta:I
    :sswitch_1
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    .line 296
    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    goto :goto_1

    .line 300
    :sswitch_2
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v9, :cond_2

    .line 301
    iput-boolean v13, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 302
    iput-boolean v13, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    goto :goto_1

    .line 304
    :cond_2
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->endDrag()V

    goto :goto_1

    .line 310
    :sswitch_3
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v9, :cond_1

    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-nez v9, :cond_1

    .line 311
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 313
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    int-to-float v8, v9

    .line 314
    .local v8, y1:F
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    int-to-float v6, v9

    .line 316
    .local v6, x1:F
    float-to-int v9, v5

    float-to-int v10, v7

    invoke-direct {p0, v9, v10}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v9

    float-to-int v10, v6

    float-to-int v11, v8

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 317
    sub-float v9, v7, v8

    float-to-int v3, v9

    .line 318
    .restart local v3       #dy:I
    sub-float v9, v5, v6

    float-to-int v2, v9

    .line 319
    .restart local v2       #dx:I
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    .line 320
    mul-int v9, v3, v3

    mul-int v10, v2, v2

    add-int/2addr v9, v10

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMovePinchStart:I

    .line 322
    float-to-int v9, v5

    float-to-int v10, v7

    invoke-direct {p0, v9, v10}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    goto/16 :goto_1

    .end local v2           #dx:I
    .end local v3           #dy:I
    .end local v6           #x1:F
    .end local v8           #y1:F
    :cond_3
    move v9, v13

    .line 328
    goto/16 :goto_0

    .line 266
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v3

    .line 215
    .local v3, count:I
    const/4 v6, 0x1

    if-ge v3, v6, :cond_1

    .line 251
    :cond_0
    return-void

    .line 218
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v6, v6

    if-eq v6, v3, :cond_3

    .line 219
    :cond_2
    if-lez v3, :cond_3

    .line 220
    new-array v6, v3, [Landroid/graphics/Rect;

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    .line 223
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 225
    .local v2, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 226
    .local v1, childHeight:I
    invoke-direct {p0, v3, v2, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getViewLayout(III)V

    .line 227
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 228
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 229
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 231
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_5

    .line 232
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    if-nez v6, :cond_4

    .line 233
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    aput-object v7, v6, v4

    .line 234
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 236
    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 237
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_6

    .line 239
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 243
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/app/twlauncher/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 227
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 246
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v4

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 441
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 460
    :goto_0
    return v0

    .line 444
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsEditMode:Z

    if-eqz v0, :cond_1

    move v0, v2

    .line 445
    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 449
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->startDrag(Landroid/view/View;)V

    .line 451
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    if-ne v0, v1, :cond_3

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 458
    :goto_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->performHapticFeedback(I)Z

    :cond_2
    move v0, v2

    .line 460
    goto :goto_0

    .line 456
    :cond_3
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "ev"

    .prologue
    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 334
    .local v0, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 335
    .local v8, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 339
    .local v9, y:F
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_0

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    .line 341
    const/4 v11, 0x0

    .line 433
    :goto_0
    return v11

    .line 343
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 433
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v11, 0x0

    goto :goto_0

    .line 347
    :pswitch_1
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    sub-float/2addr v11, v8

    float-to-int v2, v11

    .line 348
    .local v2, deltaX:I
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    sub-float/2addr v11, v9

    float-to-int v3, v11

    .line 350
    .local v3, deltaY:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 351
    .local v6, touchSlop:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v6, :cond_5

    const/4 v11, 0x1

    move v10, v11

    .line 353
    .local v10, yMoved:Z
    :goto_2
    if-eqz v10, :cond_2

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v11, :cond_2

    .line 354
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 357
    :cond_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 358
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 359
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 360
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    .line 361
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 362
    iget v11, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    iput v11, v5, Landroid/graphics/Rect;->left:I

    .line 363
    iget v11, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v3

    iput v11, v5, Landroid/graphics/Rect;->top:I

    .line 364
    iget v11, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v2

    iput v11, v5, Landroid/graphics/Rect;->right:I

    .line 365
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v3

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    .line 367
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 370
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_3
    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    .line 371
    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    .line 374
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 376
    .local v7, v:Landroid/view/View;
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v4

    .line 377
    .local v4, index:I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_4

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    if-eq v4, v11, :cond_4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_4

    .line 379
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 380
    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 381
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 386
    :cond_4
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isDeleteZone(II)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsDefaultScreen:Z

    if-nez v11, :cond_6

    .line 390
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->applyDeleteZone()V

    .line 391
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    goto/16 :goto_1

    .line 351
    .end local v1           #child:Landroid/view/View;
    .end local v4           #index:I
    .end local v7           #v:Landroid/view/View;
    .end local v10           #yMoved:Z
    :cond_5
    const/4 v11, 0x0

    move v10, v11

    goto :goto_2

    .line 393
    .restart local v1       #child:Landroid/view/View;
    .restart local v4       #index:I
    .restart local v7       #v:Landroid/view/View;
    .restart local v10       #yMoved:Z
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 394
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 398
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 400
    :cond_7
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 401
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v4

    .line 402
    const/4 v11, -0x1

    if-eq v4, v11, :cond_1

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    if-eq v4, v11, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_1

    .line 404
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 405
    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 406
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    goto/16 :goto_1

    .line 415
    .end local v1           #child:Landroid/view/View;
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #index:I
    .end local v6           #touchSlop:I
    .end local v7           #v:Landroid/view/View;
    .end local v10           #yMoved:Z
    :pswitch_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 416
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drop(II)V

    .line 419
    :cond_8
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    if-eqz v11, :cond_a

    .line 420
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 423
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->endDrag()V

    goto/16 :goto_1

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method open()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 522
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    .line 523
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 526
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 527
    .local v0, vDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 528
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->resetMode()V

    .line 530
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    .line 531
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenIndexOnOpen:I

    .line 533
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->enableWorkspaceScreensCache()V

    .line 535
    return-void
.end method

.method public removeScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 869
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 870
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    .line 888
    :goto_0
    return-void

    .line 874
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 876
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 877
    .local v0, count:I
    if-lt v0, v3, :cond_2

    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    .line 879
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 882
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onRemove()V

    .line 884
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 886
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto :goto_0
.end method

.method public setDefaultScreen(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 1556
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDefaultScreen:I

    .line 1557
    return-void
.end method

.method public setDeleteIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 585
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    .line 586
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 587
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    goto :goto_0
.end method

.method public setMode(Z)V
    .locals 4
    .parameter "isDeleteZoneVisible"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1578
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 1579
    .local v0, oDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    if-eqz p1, :cond_0

    .line 1580
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 1583
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMenuSethome:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1584
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    .line 1595
    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsEditMode:Z

    .line 1596
    return-void

    .line 1588
    :cond_0
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 1589
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSetDefaultScreen:I

    .line 1592
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMenuSethome:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method setSetHomeMenu(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMenuSethome:Landroid/view/View;

    .line 1608
    return-void
.end method

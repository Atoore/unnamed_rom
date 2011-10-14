.class public Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
.super Lcom/sec/android/app/twlauncher/QuickView;
.source "QuickViewMainMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;
    }
.end annotation


# instance fields
.field private mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

.field private mChildGapH:I

.field private mChildGapV:I

.field private mChildLeft:I

.field private mChildTop:I

.field private mIsDBUpdate:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaxDeltaY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOrientation:I

.field private final mPanelSizeLong:I

.field private final mPanelSizeLong2:I

.field private final mPanelSizeShort:I

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

.field private mScrollState:I

.field private mScrollTop:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mSurfacePress:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mTmpLocation:[I

.field private mTouchSlop:I

.field private mUseFullScreenInLandScapeMode:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    .line 78
    new-instance v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;-><init>(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    .line 88
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    .line 92
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    .line 94
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    .line 108
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mIsDBUpdate:Z

    .line 655
    const/4 v1, 0x4

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeShort:I

    .line 142
    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong:I

    .line 143
    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong2:I

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->init()V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/twlauncher/QuickViewMainMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    return p1
.end method

.method private drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z
    .locals 27
    .parameter "canvas"
    .parameter "view"
    .parameter "isAnimating"
    .parameter "current"

    .prologue
    .line 1031
    const/16 v23, 0x0

    .line 1034
    .local v23, ret:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    move/from16 v21, v0

    .line 1035
    .local v21, pTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getBottom()I

    move-result v5

    add-int v20, v21, v5

    .line 1037
    .local v20, pBottom:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    move v0, v5

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v5

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 1039
    :cond_0
    const/4 v5, 0x0

    .line 1096
    :goto_0
    return v5

    .line 1042
    :cond_1
    const/high16 v24, 0x3f80

    .line 1043
    .local v24, scaleFactor:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move v0, v5

    int-to-float v0, v0

    move/from16 v25, v0

    .line 1044
    .local v25, viewXCenter:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move v0, v5

    int-to-float v0, v0

    move/from16 v26, v0

    .line 1046
    .local v26, viewYCenter:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 1047
    const v24, 0x3f933333

    .line 1050
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1051
    if-eqz p3, :cond_6

    .line 1053
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    move v5, v0

    int-to-float v5, v5

    div-float v22, p4, v5

    .line 1054
    .local v22, progress:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x7

    if-ne v5, v6, :cond_5

    :cond_3
    move/from16 v11, v22

    .line 1056
    .local v11, backgroundAlpha:F
    :goto_1
    const/high16 v5, 0x3f80

    invoke-static {v5, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 1057
    const/4 v5, 0x0

    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

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

    move-result v13

    invoke-direct {v10, v5, v6, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfaceBg2:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1072
    .end local v11           #backgroundAlpha:F
    .end local v22           #progress:F
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChildReduced(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;F)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_4

    .line 1086
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1087
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1088
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 1089
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    neg-int v6, v6

    int-to-float v6, v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfacePress:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object v15, v0

    new-instance v16, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v8

    move-object/from16 v0, v16

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v8

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v18, -0x4080

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v19}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfacePress:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1093
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 1095
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move/from16 v5, v23

    .line 1096
    goto/16 :goto_0

    .line 1054
    .restart local v22       #progress:F
    :cond_5
    const/high16 v5, 0x3f80

    sub-float v5, v5, v22

    move v11, v5

    goto/16 :goto_1

    .line 1063
    .end local v22           #progress:F
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1064
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1065
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    neg-int v6, v6

    int-to-float v6, v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object v15, v0

    new-instance v16, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v8

    move-object/from16 v0, v16

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v8

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v18, -0x4080

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v19}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLDrawable(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Landroid/graphics/Rect;F[F)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mSurfaceBg:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 1070
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_2
.end method

.method private drawGLChildReduced(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;F)V
    .locals 23
    .parameter "canvas"
    .parameter "view"
    .parameter "scaleFactor"

    .prologue
    .line 1105
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 1106
    .local v13, tag:Ljava/lang/Object;
    if-nez v13, :cond_1

    .line 1180
    .end local v13           #tag:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1109
    .restart local v13       #tag:Ljava/lang/Object;
    :cond_1
    move-object v0, v13

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1115
    check-cast v13, Ljava/lang/Integer;

    .end local v13           #tag:Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1116
    .local v12, screen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1119
    .local v4, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1120
    if-eqz v4, :cond_0

    .line 1123
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 1127
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v20

    add-int v19, v19, v20

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 1129
    .local v11, scaleV:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v20

    add-int v19, v19, v20

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v10, v18, v19

    .line 1131
    .local v10, scaleH:F
    cmpl-float v18, v11, v10

    if-lez v18, :cond_2

    move v9, v10

    .line 1132
    .local v9, scale:F
    :goto_1
    mul-float v9, v9, p3

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p3

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p3

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1144
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p3

    sub-float v14, v18, v19

    .line 1145
    .local v14, viewXDelta:F
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

    mul-float v19, v19, p3

    sub-float v15, v18, v19

    .line 1147
    .local v15, viewYDelta:F
    const/16 v18, 0x11

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v9

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v9

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-static/range {v18 .. v22}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v16, v18, p3

    .line 1153
    .local v16, xOffset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v18, p3

    .line 1156
    .local v17, yOffset:F
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v7, v18, v9

    .line 1157
    .local v7, childScaledW:F
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v6, v18, v9

    .line 1163
    .local v6, childScaledH:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v14

    add-float v18, v18, v16

    add-float v5, v18, v7

    .line 1168
    .local v5, childLeft:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v15

    add-float v18, v18, v17

    add-float v8, v18, v6

    .line 1170
    .local v8, childTop:F
    move-object/from16 v0, p1

    move v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1171
    move-object/from16 v0, p1

    move v1, v9

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 1174
    move v0, v7

    neg-float v0, v0

    move/from16 v18, v0

    div-float v18, v18, v9

    move v0, v6

    neg-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v9

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 1176
    check-cast v4, Lcom/sec/android/app/twlauncher/AppMenu;

    .end local v4           #child:Landroid/view/View;
    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object v0, v4

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z

    .line 1177
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto/16 :goto_0

    .end local v5           #childLeft:F
    .end local v6           #childScaledH:F
    .end local v7           #childScaledW:F
    .end local v8           #childTop:F
    .end local v9           #scale:F
    .end local v14           #viewXDelta:F
    .end local v15           #viewYDelta:F
    .end local v16           #xOffset:F
    .end local v17           #yOffset:F
    .restart local v4       #child:Landroid/view/View;
    :cond_2
    move v9, v11

    .line 1131
    goto/16 :goto_1
.end method

.method private drop(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 641
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 644
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v0

    .line 645
    .local v0, dropedIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 646
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->swapScreen(I)V

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->swapScreen(I)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 632
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 633
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 634
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    .line 635
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 636
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 637
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    .line 638
    return-void
.end method

.method private fling(I)V
    .locals 9
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 820
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 825
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    .line 827
    :cond_0
    return-void
.end method

.method private getTouchedIndex(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 520
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-nez v2, :cond_0

    move v2, v5

    .line 530
    :goto_0
    return v2

    .line 522
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v0, v2

    .line 523
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 524
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 523
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 526
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    .line 527
    goto :goto_0

    :cond_3
    move v2, v5

    .line 530
    goto :goto_0
.end method

.method private isAvailableRect(Landroid/graphics/Rect;)Z
    .locals 3
    .parameter "rect"

    .prologue
    .line 811
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 813
    :cond_0
    const/4 v0, 0x0

    .line 815
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeScreen(I)Landroid/view/View;
    .locals 5
    .parameter "index"

    .prologue
    .line 606
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 607
    .local v0, v:Landroid/view/View;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 608
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 609
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeShort:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 610
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 617
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 618
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    return-object v0

    .line 612
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 613
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeLong2:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPanelSizeShort:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 614
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private onSwap(I)V
    .locals 4
    .parameter "dropedIndex"

    .prologue
    .line 691
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    .line 692
    .local v0, menumanager:Lcom/sec/android/app/twlauncher/MenuManager;
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 693
    .local v1, v:Landroid/view/View;
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v2, p1, v3}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 694
    iput p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 695
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateTag()V

    .line 696
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateAppInfo()V

    .line 697
    return-void
.end method

.method private savemenupage()V
    .locals 2

    .prologue
    .line 830
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    .line 832
    .local v0, menumanager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateAppInfo()V

    .line 833
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->startUpdateDB()V

    .line 834
    return-void
.end method

.method private scroll(II)V
    .locals 4
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x0

    .line 495
    if-gez p2, :cond_3

    .line 496
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    if-lez v1, :cond_2

    .line 497
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    add-int/2addr v1, p2

    if-gez v1, :cond_1

    .line 498
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-virtual {p0, v3, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    .line 503
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    goto :goto_0

    .line 505
    :cond_3
    if-lez p2, :cond_0

    .line 506
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    sub-int v0, v1, v2

    .line 507
    .local v0, availableToScroll:I
    if-lez v0, :cond_5

    .line 508
    if-le v0, p2, :cond_4

    .line 509
    invoke-virtual {p0, v3, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    .line 511
    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    .line 514
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method private setCloseEndRect(I)V
    .locals 22
    .parameter "index"

    .prologue
    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v2

    .line 756
    .local v2, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getLocationOnScreen([I)V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v12, v17, v18

    .line 760
    .local v12, myScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 762
    .local v6, menuScreen:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 763
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 764
    .local v11, menuScreenWidth:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 765
    .local v9, menuScreenHeight:I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 766
    .local v7, menuScreenClientPosX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    move/from16 v17, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v18

    add-int v8, v17, v18

    .line 767
    .local v8, menuScreenClientPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/MenuManager;->getPaddingRight()I

    move-result v3

    .line 769
    .local v3, horizontalOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    .line 770
    .local v5, menu:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getLocationOnScreen([I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1050004

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v10, v17, v18

    .line 775
    .local v10, menuScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v14, v0

    .line 776
    .local v14, panelPaddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    .line 777
    .local v15, panelPaddingRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 778
    .local v16, panelPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v13, v0

    .line 780
    .local v13, panelPaddingBottom:I
    if-eqz v2, :cond_4

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move v1, v2

    if-eq v0, v1, :cond_1

    .line 783
    :cond_0
    move v0, v2

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    .line 784
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v4

    .line 784
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 789
    .end local v4           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    sub-int v18, v7, v14

    sub-int v19, v8, v16

    add-int v20, v7, v11

    add-int v20, v20, v15

    add-int v21, v8, v9

    add-int v21, v21, v13

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    const/16 v18, 0x0

    sub-int v19, v10, v12

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    .line 797
    :cond_2
    const/16 v17, 0x1

    sub-int v4, p1, v17

    .restart local v4       #i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    .line 797
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 802
    :cond_3
    add-int/lit8 v4, p1, 0x1

    :goto_2
    if-ge v4, v2, :cond_4

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    sub-int v19, v4, v19

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int v18, v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    .line 802
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 808
    .end local v4           #i:I
    :cond_4
    return-void
.end method

.method private setOpenStartRect(I)V
    .locals 22
    .parameter "index"

    .prologue
    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v2

    .line 702
    .local v2, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getLocationOnScreen([I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v12, v17, v18

    .line 706
    .local v12, myScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 708
    .local v6, menuScreen:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 709
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 710
    .local v11, menuscreenWidth:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 711
    .local v10, menuscreenHeight:I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 712
    .local v8, menuscreenClientPosX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    move/from16 v17, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v18

    add-int v9, v17, v18

    .line 714
    .local v9, menuscreenClientPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    .line 715
    .local v5, menu:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getLocationOnScreen([I)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTmpLocation:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1050004

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v7, v17, v18

    .line 720
    .local v7, menuScreenPosY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v14, v0

    .line 721
    .local v14, panelPaddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    .line 722
    .local v15, panelPaddingRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 723
    .local v16, panelPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v13, v0

    .line 724
    .local v13, panelPaddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/MenuManager;->getPaddingRight()I

    move-result v3

    .line 726
    .local v3, horizontalOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move v1, v2

    if-eq v0, v1, :cond_1

    .line 727
    :cond_0
    move v0, v2

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    .line 728
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v4

    .line 728
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 733
    .end local v4           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    sub-int v18, v8, v14

    sub-int v19, v9, v16

    add-int v20, v8, v11

    add-int v20, v20, v15

    add-int v21, v9, v10

    add-int v21, v21, v13

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Rect;->set(IIII)V

    .line 737
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    const/16 v18, 0x0

    sub-int v19, v7, v12

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    .line 742
    :cond_2
    const/16 v17, 0x1

    sub-int v4, p1, v17

    .restart local v4       #i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, 0x1

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    .line 742
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 747
    :cond_3
    add-int/lit8 v4, p1, 0x1

    :goto_2
    if-ge v4, v2, :cond_4

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    sub-int v19, v4, v19

    aget-object v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    add-int v18, v18, v3

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Rect;->offset(II)V

    .line 747
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 751
    :cond_4
    return-void
.end method

.method private startDrag(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 623
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 624
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 625
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    .line 626
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 627
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    .line 628
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 629
    return-void
.end method

.method private swapScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 687
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->onSwap(I)V

    .line 688
    return-void
.end method

.method private updateAppInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 666
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v4

    .line 667
    .local v4, menumanager:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v6

    sub-int v5, v6, v7

    .local v5, page:I
    :goto_0
    if-ltz v5, :cond_3

    .line 668
    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 669
    .local v3, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    sub-int v2, v6, v7

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 670
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 671
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v6, :cond_1

    .line 669
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 674
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 675
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v0, v5, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    .line 680
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    goto :goto_2

    .line 667
    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #child:Landroid/view/View;
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 683
    .end local v2           #i:I
    .end local v3           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_3
    return-void
.end method

.method private updateTag()V
    .locals 4

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v1

    .line 659
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 660
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 661
    .local v0, child:Landroid/view/View;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 659
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 663
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method cancelDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->removeView(Landroid/view/View;)V

    .line 539
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;I)V

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 542
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->updateTag()V

    .line 544
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteIndex:I

    .line 545
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDeleteView:Landroid/view/View;

    .line 546
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 547
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 548
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 549
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    .line 550
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 551
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickView;->mOriginDragIndex:I

    .line 552
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 553
    return-void
.end method

.method close()V
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->savemenupage()V

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    .line 470
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setVisibility(I)V

    .line 471
    return-void
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    .line 838
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 839
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v2

    .line 840
    .local v2, index:I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    .line 842
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    if-le v8, v9, :cond_0

    .line 843
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    .line 847
    .end local v2           #index:I
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 848
    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    .line 849
    .local v3, oldX:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    .line 850
    .local v4, oldY:I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 851
    .local v6, x:I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 853
    .local v7, y:I
    iput v6, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    .line 854
    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    .line 856
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    if-ne v3, v8, :cond_1

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    if-eq v4, v8, :cond_2

    .line 857
    :cond_1
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    invoke-virtual {p0, v8, v9, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->onScrollChanged(IIII)V

    .line 860
    :cond_2
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 861
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    sub-int v1, v8, v4

    .line 862
    .local v1, deltaY:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    .line 863
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 864
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    .line 865
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 866
    iget v8, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 867
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 869
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 873
    .end local v0           #child:Landroid/view/View;
    .end local v1           #deltaY:I
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 875
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_4
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 12
    .parameter "canvas"

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v1

    .line 922
    .local v1, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getWidth()I

    move-result v6

    .line 923
    .local v6, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v3

    .line 925
    .local v3, height:I
    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    .line 926
    :cond_0
    const/4 v7, 0x0

    .line 1026
    :goto_0
    return v7

    .line 927
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 928
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 932
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 933
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 936
    .local v0, child:Landroid/view/View;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    if-eq v0, v7, :cond_2

    .line 937
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p1, v0, v7, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    .line 932
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 940
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    .line 941
    const/4 v7, 0x0

    goto :goto_0

    .line 943
    .end local v4           #i:I
    :cond_4
    const/4 v7, 0x1

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    if-ne v7, v8, :cond_6

    .line 944
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    .line 945
    const/4 v7, 0x2

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 946
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 947
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setOpenStartRect(I)V

    .line 948
    new-array v7, v1, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    .line 949
    new-array v7, v1, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 950
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, v1, :cond_6

    .line 951
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v4

    .line 952
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 953
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    if-ne v4, v7, :cond_5

    .line 954
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollTop:I

    .line 956
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v4

    .line 950
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 959
    .end local v4           #i:I
    :cond_6
    const/4 v7, 0x3

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    if-ne v7, v8, :cond_7

    .line 960
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    .line 961
    const/4 v7, 0x4

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 962
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 963
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setCloseEndRect(I)V

    .line 964
    new-array v7, v1, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    .line 965
    new-array v7, v1, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 966
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    if-ge v4, v1, :cond_7

    .line 967
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v4

    .line 968
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 969
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v4

    .line 966
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 972
    .end local v4           #i:I
    :cond_7
    const/4 v7, 0x2

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    if-eq v7, v8, :cond_8

    const/4 v7, 0x4

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    if-ne v7, v8, :cond_13

    .line 974
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationStartTime:J

    sub-long/2addr v7, v9

    long-to-float v2, v7

    .line 975
    .local v2, current:F
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v7, v7

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_a

    .line 976
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v2, v7

    .line 977
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_9

    .line 978
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 980
    :cond_9
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_e

    const/4 v7, 0x7

    :goto_4
    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    .line 984
    :cond_a
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 985
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v7, v7

    div-float v5, v2, v7

    .line 986
    .local v5, val:F
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_b

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_c

    .line 988
    :cond_b
    const/high16 v7, 0x3f80

    sub-float v5, v7, v5

    .line 992
    :cond_c
    const/high16 v7, 0x3f00

    mul-float/2addr v5, v7

    .line 993
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 994
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getLeft()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getRight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 995
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 997
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mStartRects:[Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationDuration:I

    int-to-float v11, v11

    div-float v11, v2, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 999
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    if-nez v7, :cond_f

    .line 1000
    const-string v7, "QuickViewMainMenu"

    const-string v8, "Failed to get current rectangles from animation engine"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_d
    :goto_5
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 980
    .end local v5           #val:F
    :cond_e
    const/16 v7, 0x8

    goto :goto_4

    .line 1002
    .restart local v5       #val:F
    :cond_f
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_6
    if-ge v4, v1, :cond_12

    .line 1003
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    if-ne v4, v7, :cond_11

    .line 1002
    :cond_10
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1005
    :cond_11
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1006
    .restart local v0       #child:Landroid/view/View;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1008
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1009
    const/4 v7, 0x1

    invoke-direct {p0, p1, v0, v7, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    goto :goto_7

    .line 1012
    .end local v0           #child:Landroid/view/View;
    :cond_12
    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    if-ltz v7, :cond_d

    iget v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    if-ge v7, v1, :cond_d

    .line 1013
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchIndex:I

    .line 1014
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1015
    .restart local v0       #child:Landroid/view/View;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v4

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1017
    const/4 v7, 0x1

    invoke-direct {p0, p1, v0, v7, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    goto :goto_5

    .line 1022
    .end local v0           #child:Landroid/view/View;
    .end local v2           #current:F
    .end local v4           #i:I
    .end local v5           #val:F
    :cond_13
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_8
    if-ge v4, v1, :cond_14

    .line 1023
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1024
    .restart local v0       #child:Landroid/view/View;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p1, v0, v7, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawGLChild(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;ZF)Z

    .line 1022
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1026
    .end local v0           #child:Landroid/view/View;
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method protected init()V
    .locals 5

    .prologue
    .line 150
    new-instance v3, Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    invoke-direct {v3}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    .line 151
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 154
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mOrientation:I

    .line 155
    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mUseFullScreenInLandScapeMode:Z

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 159
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 160
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    .line 162
    new-instance v3, Landroid/widget/Scroller;

    invoke-direct {v3, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    .line 164
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMinimumVelocity:I

    .line 165
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaximumVelocity:I

    .line 167
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setClipChildren(Z)V

    .line 168
    return-void
.end method

.method initScreen(I)V
    .locals 8
    .parameter "screenCount"

    .prologue
    const v6, 0x7f0b002c

    const v7, 0x7f0200e3

    .line 567
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->removeAllViews()V

    .line 569
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setBackgroundResource(I)V

    .line 571
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 573
    .local v3, res:Landroid/content/res/Resources;
    new-array v5, p1, [Lcom/sec/android/app/twlauncher/QuickView$Animate;

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    .line 575
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapV:I

    .line 576
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapH:I

    .line 577
    const v5, 0x7f0b002a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildLeft:I

    .line 578
    const v5, 0x7f0b002b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    .line 580
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 581
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 583
    .local v4, resources:Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 584
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    .line 586
    new-instance v5, Landroid/widget/Scroller;

    invoke-direct {v5, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    .line 588
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 589
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 590
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 592
    const v5, 0x7f020045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 594
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 595
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->makeScreen(I)Landroid/view/View;

    .line 596
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    new-instance v6, Lcom/sec/android/app/twlauncher/QuickView$Animate;

    invoke-direct {v6, p0}, Lcom/sec/android/app/twlauncher/QuickView$Animate;-><init>(Lcom/sec/android/app/twlauncher/QuickView;)V

    aput-object v6, v5, v2

    .line 594
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHitRect(Landroid/graphics/Rect;)V

    .line 603
    return-void
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 454
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    .line 455
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 457
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 234
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 235
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 237
    .local v7, y:F
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_0

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    .line 239
    const/4 v11, 0x1

    .line 315
    :goto_0
    return v11

    .line 243
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 315
    :cond_1
    :goto_1
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_0

    .line 245
    :sswitch_0
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    if-eqz v11, :cond_2

    .line 246
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 248
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float v11, v7, v11

    float-to-int v2, v11

    .line 249
    .local v2, dy:I
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sub-float v11, v5, v11

    float-to-int v1, v11

    .line 251
    .local v1, dx:I
    mul-int v11, v2, v2

    mul-int v12, v1, v1

    add-int/2addr v11, v12

    iget v12, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMovePinchStart:I

    sub-int v3, v11, v12

    .line 253
    .local v3, pinchDelta:I
    const/16 v11, 0x2710

    if-le v3, v11, :cond_1

    .line 256
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 257
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    .line 258
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 259
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 261
    const/4 v11, 0x1

    goto :goto_0

    .line 266
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #pinchDelta:I
    :cond_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    sub-float/2addr v11, v7

    float-to-int v9, v11

    .line 267
    .local v9, yDiff:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    .line 268
    .local v4, touchSlop:I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v4, :cond_3

    const/4 v11, 0x1

    move v10, v11

    .line 269
    .local v10, yMoved:Z
    :goto_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v11, :cond_1

    .line 270
    if-eqz v10, :cond_1

    .line 271
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 272
    const/4 v11, 0x0

    invoke-direct {p0, v11, v9}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->scroll(II)V

    .line 273
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    .line 274
    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    goto :goto_1

    .line 268
    .end local v10           #yMoved:Z
    :cond_3
    const/4 v11, 0x0

    move v10, v11

    goto :goto_2

    .line 281
    .end local v4           #touchSlop:I
    .end local v9           #yDiff:I
    :sswitch_1
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    .line 282
    iput v7, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    .line 283
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_3
    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 287
    :sswitch_2
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-eqz v11, :cond_5

    .line 288
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 289
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    goto :goto_1

    .line 291
    :cond_5
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->endDrag()V

    goto/16 :goto_1

    .line 297
    :sswitch_3
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    if-nez v11, :cond_1

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    if-nez v11, :cond_1

    .line 298
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMultiTouchUsed:Z

    .line 300
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 301
    .local v8, y1:F
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 303
    .local v6, x1:F
    float-to-int v11, v5

    float-to-int v12, v7

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v11

    float-to-int v12, v6

    float-to-int v13, v8

    invoke-direct {p0, v12, v13}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v12

    if-ne v11, v12, :cond_1

    .line 304
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutProcess:Z

    .line 305
    sub-float v11, v7, v8

    float-to-int v2, v11

    .line 306
    .restart local v2       #dy:I
    sub-float v11, v5, v6

    float-to-int v1, v11

    .line 307
    .restart local v1       #dx:I
    mul-int v11, v2, v2

    mul-int v12, v1, v1

    add-int/2addr v11, v12

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mMovePinchStart:I

    .line 309
    float-to-int v11, v5

    float-to-int v12, v7

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v11

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mPinchOutIndex:I

    goto/16 :goto_1

    .line 315
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v6           #x1:F
    .end local v8           #y1:F
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 243
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
    .locals 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 176
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildLeft:I

    .line 177
    .local v4, childLeft:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    .line 179
    .local v5, childTop:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapV:I

    .line 180
    .local v2, childGapV:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildGapH:I

    .line 182
    .local v1, childGapH:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v7

    .line 184
    .local v7, count:I
    const/4 v10, 0x1

    if-ge v7, v10, :cond_1

    .line 227
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v10, v10

    if-eq v10, v7, :cond_3

    .line 188
    :cond_2
    new-array v10, v7, [Landroid/graphics/Rect;

    iput-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    .line 191
    :cond_3
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 192
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, child:Landroid/view/View;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 194
    .local v9, r:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_7

    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 196
    .local v6, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 198
    .local v3, childHeight:I
    add-int v10, v4, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getMeasuredWidth()I

    move-result v11

    if-le v10, v11, :cond_4

    .line 199
    add-int v10, v2, v3

    add-int/2addr v5, v10

    .line 200
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildLeft:I

    .line 203
    :cond_4
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v8

    if-nez v10, :cond_5

    .line 204
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    aput-object v11, v10, v8

    .line 205
    :cond_5
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v8

    add-int v11, v4, v6

    add-int v12, v5, v3

    invoke-virtual {v10, v4, v5, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 208
    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 210
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_8

    .line 212
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_6

    .line 213
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickView$Animate;

    aget-object v10, v10, v8

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v11, v11, v8

    invoke-virtual {v10, v0, v11}, Lcom/sec/android/app/twlauncher/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 220
    :cond_6
    :goto_1
    add-int v10, v1, v6

    add-int/2addr v4, v10

    .line 222
    const/4 v10, 0x3

    sub-int v10, v7, v10

    if-ne v8, v10, :cond_7

    .line 223
    iget v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mChildTop:I

    sub-int v10, v5, v10

    iput v10, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaxDeltaY:I

    .line 191
    .end local v3           #childHeight:I
    .end local v6           #childWidth:I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 216
    .restart local v3       #childHeight:I
    .restart local v6       #childWidth:I
    :cond_8
    add-int v10, v4, v6

    add-int v11, v5, v3

    invoke-virtual {v0, v4, v5, v10, v11}, Landroid/view/View;->layout(IIII)V

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

    .line 448
    :goto_0
    return v0

    .line 443
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 445
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->startDrag(Landroid/view/View;)V

    .line 446
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->performHapticFeedback(I)Z

    :cond_1
    move v0, v2

    .line 448
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "ev"

    .prologue
    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 321
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 322
    .local v15, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    .line 326
    .local v16, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mAnimationState:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 328
    const/16 v18, 0x0

    .line 437
    :goto_0
    return v18

    .line 330
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 331
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 333
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 335
    packed-switch v5, :pswitch_data_0

    .line 437
    :cond_2
    :goto_1
    const/16 v18, 0x1

    goto :goto_0

    .line 337
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_3

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->abortAnimation()V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->computeScroll()V

    .line 342
    :cond_3
    const/high16 v18, 0x42a0

    cmpg-float v18, v16, v18

    if-ltz v18, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v18

    const/16 v19, 0x50

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v16, v18

    if-lez v18, :cond_5

    .line 343
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 346
    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    goto :goto_1

    .line 350
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    move/from16 v18, v0

    sub-float v18, v18, v15

    move/from16 v0, v18

    float-to-int v0, v0

    move v7, v0

    .line 351
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    move/from16 v18, v0

    sub-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move v8, v0

    .line 353
    .local v8, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mTouchSlop:I

    move v12, v0

    .line 354
    .local v12, touchSlop:I
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    move v1, v12

    if-le v0, v1, :cond_7

    const/16 v18, 0x1

    move/from16 v17, v18

    .line 356
    .local v17, yMoved:Z
    :goto_2
    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 357
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 360
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 361
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->scroll(II)V

    .line 362
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    .line 363
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    goto/16 :goto_1

    .line 354
    .end local v17           #yMoved:Z
    :cond_7
    const/16 v18, 0x0

    move/from16 v17, v18

    goto :goto_2

    .line 364
    .restart local v17       #yMoved:Z
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    move-object v6, v0

    .line 366
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_9

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTmpRect:Landroid/graphics/Rect;

    move-object v11, v0

    .line 368
    .local v11, r:Landroid/graphics/Rect;
    invoke-virtual {v6, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 369
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    sub-int v18, v18, v7

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 370
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v18, v18, v8

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 371
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v18, v18, v7

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 372
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v18, v18, v8

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 374
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object v0, v6

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 377
    .end local v11           #r:Landroid/graphics/Rect;
    :cond_9
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionX:F

    .line 378
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastMotionY:F

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    move-object v13, v0

    .line 381
    .local v13, v:Landroid/view/View;
    move v0, v15

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v9

    .line 383
    .local v9, index:I
    if-eqz v13, :cond_a

    const/16 v18, -0x1

    move v0, v9

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    move/from16 v18, v0

    move v0, v9

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 385
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->removeView(Landroid/view/View;)V

    .line 386
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->addView(Landroid/view/View;I)V

    .line 387
    const/16 v18, 0x4

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingIndex:I

    .line 391
    :cond_a
    const/high16 v18, 0x42a0

    cmpg-float v18, v16, v18

    if-gez v18, :cond_b

    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 393
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 397
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getHeight()I

    move-result v18

    const/16 v19, 0x50

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v16, v18

    if-lez v18, :cond_2

    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 399
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollState:I

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollRunnable:Lcom/sec/android/app/twlauncher/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 408
    .end local v6           #child:Landroid/view/View;
    .end local v7           #deltaX:I
    .end local v8           #deltaY:I
    .end local v9           #index:I
    .end local v12           #touchSlop:I
    .end local v13           #v:Landroid/view/View;
    .end local v17           #yMoved:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v14, v0

    .line 410
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 411
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move v10, v0

    .line 413
    .local v10, initialVelocity:I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getChildCount()I

    move-result v18

    if-lez v18, :cond_c

    .line 414
    move v0, v10

    neg-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->fling(I)V

    .line 417
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 419
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 421
    :cond_d
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    .line 426
    .end local v10           #initialVelocity:I
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 427
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->postInvalidate()V

    .line 430
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->endDrag()V

    goto/16 :goto_1

    .line 422
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 423
    move v0, v15

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drop(II)V

    goto :goto_3

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method open()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mEnabledChildAnimation:Z

    .line 461
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickView;->mCurrentPage:I

    .line 463
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    .line 464
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 884
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastScroll:J

    sub-long v0, v2, v4

    .line 885
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 886
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollX:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 888
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    .line 895
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mLastScroll:J

    .line 896
    return-void

    .line 890
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 891
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 893
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->scrollBy(II)V

    goto :goto_0
.end method

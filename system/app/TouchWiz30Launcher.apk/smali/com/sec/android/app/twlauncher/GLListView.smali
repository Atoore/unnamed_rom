.class public Lcom/sec/android/app/twlauncher/GLListView;
.super Landroid/widget/ListView;
.source "GLListView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBgBlue:F

.field private mBgGreen:F

.field private mBgOpacity:F

.field private mBgRed:F

.field private mDividerBlue:F

.field private mDividerGreen:F

.field private mDividerOpacity:F

.field private mDividerRed:F

.field private mDividerThickness:I

.field private mDrawSelectorOnTop:Z

.field private mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

.field private mHDividerHeight:I

.field private mMaxHeight:I

.field private mRequestFramePending:Z

.field private mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "GLListView"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 25
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    .line 26
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    .line 27
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    .line 28
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerThickness:I

    .line 29
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    .line 30
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    .line 33
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgRed:F

    .line 34
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgGreen:F

    .line 35
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgBlue:F

    .line 36
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    .line 39
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerRed:F

    .line 40
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerGreen:F

    .line 41
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerBlue:F

    .line 42
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    .line 46
    new-instance v0, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/GLListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 25
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    .line 26
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    .line 27
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    .line 28
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerThickness:I

    .line 29
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    .line 30
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    .line 33
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgRed:F

    .line 34
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgGreen:F

    .line 35
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgBlue:F

    .line 36
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    .line 39
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerRed:F

    .line 40
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerGreen:F

    .line 41
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerBlue:F

    .line 42
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    .line 55
    new-instance v1, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    .line 57
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->GLGridView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setBackgroundColor(I)V

    .line 63
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setDividerThickness(I)V

    .line 66
    const/4 v1, 0x6

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setDividerColor(I)V

    .line 69
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setDrawSelectorOnTop(Z)V

    .line 72
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setMaxHeight(I)V

    .line 75
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->setVerticalSpacing(I)V

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    return-void
.end method

.method private drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V
    .locals 7
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 208
    .local v3, selector:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 210
    .local v4, width:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 212
    .local v2, height:I
    invoke-virtual {v3, v5, v5, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 213
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 215
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 216
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLListView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 217
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLListView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v5, v6, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 219
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #height:I
    .end local v4           #width:I
    :cond_0
    return-void
.end method

.method private setHorizontalDividerHeight()V
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    .line 286
    return-void

    .line 285
    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerThickness:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private setRequestFramePending()V
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    .line 296
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 298
    :cond_0
    return-void
.end method

.method private startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, edgesRequired:Z
    const/4 v3, 0x4

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    .line 321
    .local v1, fadingEdgeStrength:[F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->isVerticalFadingEdgeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getTopFadingEdgeStrength()F

    move-result v3

    aput v3, v1, v5

    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getBottomFadingEdgeStrength()F

    move-result v3

    aput v3, v1, v6

    .line 325
    :cond_0
    aget v3, v1, v7

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    aget v3, v1, v5

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    aget v3, v1, v8

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    aget v3, v1, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 327
    :cond_1
    const/4 v3, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    .line 328
    .local v2, paddingOffset:[I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->isPaddingOffsetRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getLeftPaddingOffset()I

    move-result v3

    aput v3, v2, v7

    .line 330
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getTopPaddingOffset()I

    move-result v3

    aput v3, v2, v5

    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getRightPaddingOffset()I

    move-result v3

    aput v3, v2, v8

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLListView;->getBottomPaddingOffset()I

    move-result v3

    aput v3, v2, v6

    .line 334
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v3, p1, v1, v2}, Lcom/sec/android/app/twlauncher/GLScrollBars;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;[F[I)Z

    move-result v0

    .line 336
    .end local v2           #paddingOffset:[I
    :cond_3
    return v0

    .line 319
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 327
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public awakenScrollBars()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 1
    .parameter "scrollDelay"
    .parameter "invalidate"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 94
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 29
    .parameter "canvas"

    .prologue
    .line 98
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/GLListView;->mRequestFramePending:Z

    .line 99
    const/16 v18, 0x0

    .line 100
    .local v18, redraw:Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getChildCount()I

    move-result v11

    .line 103
    .local v11, count:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    move/from16 v25, v0

    const/16 v26, 0x0

    cmpl-float v25, v25, v26

    if-lez v25, :cond_0

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 105
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgRed:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgGreen:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgBlue:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 106
    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 111
    :cond_0
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClipToView(Landroid/view/View;Z)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getListPaddingLeft()I

    move-result v15

    .line 114
    .local v15, listLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getWidth()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->getListPaddingRight()I

    move-result v26

    sub-int v16, v25, v26

    .line 115
    .local v16, listRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    div-int/lit8 v24, v25, 0x2

    .line 117
    .local v24, yDivOffset:I
    const v23, 0x7fffffff

    .line 118
    .local v23, vDivTop:I
    const/high16 v22, -0x8000

    .line 120
    .local v22, vDivBottom:I
    const v20, 0x7fffffff

    .line 121
    .local v20, rowMinLeft:I
    const/high16 v19, -0x8000

    .line 123
    .local v19, rowMaxRight:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 124
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/GLListView;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 125
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v11, :cond_b

    .line 126
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 127
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v10

    .line 128
    .local v10, childVisibility:I
    const/16 v25, 0x8

    move v0, v10

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 130
    :try_start_0
    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    move-object v13, v0

    .line 131
    .local v13, glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    invoke-virtual {v5}, Landroid/view/View;->computeScroll()V

    .line 132
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 133
    .local v7, childLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 134
    .local v9, childTop:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v8

    .line 135
    .local v8, childRight:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 136
    .local v6, childBottom:I
    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    move/from16 v25, v0

    if-lez v25, :cond_1

    .line 141
    move/from16 v17, v22

    .line 142
    .local v17, nextDivTop:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerRed:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerGreen:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerBlue:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 144
    add-int v22, v22, v24

    .line 145
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mHDividerHeight:I

    move/from16 v25, v0

    add-int v17, v22, v25

    .line 146
    move v0, v15

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 148
    move/from16 v23, v17

    .line 150
    .end local v17           #nextDivTop:I
    :cond_1
    move/from16 v22, v6

    .line 151
    move/from16 v20, v7

    .line 153
    :cond_2
    move/from16 v19, v8

    .line 154
    move v0, v7

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 155
    move/from16 v20, v7

    .line 156
    :cond_3
    move v0, v9

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 157
    move/from16 v23, v9

    .line 158
    :cond_4
    move v0, v6

    move/from16 v1, v22

    if-le v0, v1, :cond_5

    .line 159
    move/from16 v22, v6

    .line 161
    :cond_5
    if-nez v10, :cond_9

    .line 162
    invoke-virtual {v5}, Landroid/view/View;->isPressed()Z

    move-result v25

    if-nez v25, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v25

    if-eqz v25, :cond_a

    :cond_6
    const/16 v25, 0x1

    move/from16 v21, v25

    .line 163
    .local v21, selectorNeeded:Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 164
    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v25

    sub-int v25, v7, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v26

    sub-int v26, v9, v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 167
    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    move/from16 v25, v0

    if-nez v25, :cond_7

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLListView;->drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V

    .line 170
    :cond_7
    move-object v0, v13

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v25

    or-int v18, v18, v25

    .line 172
    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    .line 173
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLListView;->drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V

    .line 175
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v6           #childBottom:I
    .end local v7           #childLeft:I
    .end local v8           #childRight:I
    .end local v9           #childTop:I
    .end local v13           #glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    .end local v21           #selectorNeeded:Z
    :cond_9
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 162
    .restart local v6       #childBottom:I
    .restart local v7       #childLeft:I
    .restart local v8       #childRight:I
    .restart local v9       #childTop:I
    .restart local v13       #glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    :cond_a
    const/16 v25, 0x0

    move/from16 v21, v25

    goto :goto_1

    .line 178
    .end local v6           #childBottom:I
    .end local v7           #childLeft:I
    .end local v8           #childRight:I
    .end local v9           #childTop:I
    .end local v13           #glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    :catch_0
    move-exception v25

    move-object/from16 v12, v25

    .line 179
    .local v12, e:Ljava/lang/ClassCastException;
    sget-object v25, Lcom/sec/android/app/twlauncher/GLListView;->LOG_TAG:Ljava/lang/String;

    const-string v26, "Child is not of type GLSurfaceViewGroup.DispatchDrawGL"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v12

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 184
    .end local v5           #child:Landroid/view/View;
    .end local v10           #childVisibility:I
    .end local v12           #e:Ljava/lang/ClassCastException;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/GLScrollBars;->isHorizontalScrollBarDrawing()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeHorizontalScrollRange()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeHorizontalScrollOffset()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeHorizontalScrollExtent()I

    move-result v28

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLScrollBars;->drawHorizontalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z

    move-result v25

    or-int v18, v18, v25

    .line 189
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/twlauncher/GLScrollBars;->isVerticalScrollBarDrawing()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLListView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeVerticalScrollRange()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeVerticalScrollOffset()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLListView;->computeVerticalScrollExtent()I

    move-result v28

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLScrollBars;->drawVerticalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z

    move-result v25

    or-int v18, v18, v25

    .line 193
    :cond_d
    return v18
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 200
    return-void
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Landroid/widget/ListView;->invalidate()V

    .line 228
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setRequestFramePending()V

    .line 229
    return-void
.end method

.method public invalidate(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->invalidate(IIII)V

    .line 240
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setRequestFramePending()V

    .line 241
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    .line 234
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setRequestFramePending()V

    .line 235
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, -0x8000

    .line 245
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    if-lez v2, :cond_1

    .line 246
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 247
    .local v0, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 249
    .local v1, heightSize:I
    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    if-ge v2, v1, :cond_1

    .line 251
    :cond_0
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 253
    .end local v0           #heightMode:I
    .end local v1           #heightSize:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 254
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    const/high16 v1, 0x437f

    .line 258
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgRed:F

    .line 259
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgGreen:F

    .line 260
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgBlue:F

    .line 261
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mBgOpacity:F

    .line 262
    invoke-super {p0, p1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 263
    return-void
.end method

.method public setDividerColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    const/high16 v1, 0x437f

    .line 266
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerRed:F

    .line 267
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerGreen:F

    .line 268
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerBlue:F

    .line 269
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerOpacity:F

    .line 270
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setHorizontalDividerHeight()V

    .line 271
    return-void
.end method

.method public setDividerThickness(I)V
    .locals 0
    .parameter "thickness"

    .prologue
    .line 274
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDividerThickness:I

    .line 275
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setHorizontalDividerHeight()V

    .line 276
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mDrawSelectorOnTop:Z

    .line 281
    invoke-super {p0, p1}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 282
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter "maxHeight"

    .prologue
    .line 290
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mMaxHeight:I

    .line 291
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 301
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLListView;->mVerticalSpacing:I

    .line 302
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLListView;->setHorizontalDividerHeight()V

    .line 303
    return-void
.end method

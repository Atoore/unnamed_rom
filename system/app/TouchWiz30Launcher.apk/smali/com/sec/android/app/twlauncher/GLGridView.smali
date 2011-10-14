.class public Lcom/sec/android/app/twlauncher/GLGridView;
.super Landroid/widget/GridView;
.source "GLGridView.java"

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

.field private mHorizontalSpacing:I

.field private mMaxHeight:I

.field private mRequestFramePending:Z

.field private mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mVDividerWidth:I

.field private mVerticalSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "GLGridView"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLGridView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 25
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    .line 26
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    .line 27
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    .line 28
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    .line 29
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    .line 30
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    .line 31
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    .line 32
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    .line 35
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgRed:F

    .line 36
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgGreen:F

    .line 37
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgBlue:F

    .line 38
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    .line 41
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    .line 42
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    .line 43
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    .line 44
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    .line 48
    new-instance v0, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/GLGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
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

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 25
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    .line 26
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    .line 27
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    .line 28
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    .line 29
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    .line 30
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    .line 31
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    .line 32
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    .line 35
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgRed:F

    .line 36
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgGreen:F

    .line 37
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgBlue:F

    .line 38
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    .line 41
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    .line 42
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    .line 43
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    .line 44
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    .line 57
    new-instance v1, Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/twlauncher/GLScrollBars;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    .line 59
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->GLGridView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setBackgroundColor(I)V

    .line 65
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setDividerThickness(I)V

    .line 68
    const/4 v1, 0x6

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setDividerColor(I)V

    .line 71
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setDrawSelectorOnTop(Z)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setHorizontalSpacing(I)V

    .line 77
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setMaxHeight(I)V

    .line 80
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->setVerticalSpacing(I)V

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method private drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V
    .locals 7
    .parameter "canvas"
    .parameter "child"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 248
    .local v3, selector:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 249
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 250
    .local v4, width:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 252
    .local v2, height:I
    invoke-virtual {v3, v5, v5, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 256
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 257
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v5, v6, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 259
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #height:I
    .end local v4           #width:I
    :cond_0
    return-void
.end method

.method private drawVerticalDividers(Lcom/sec/android/app/twlauncher/GLCanvas;IIIIIII)V
    .locals 10
    .parameter "canvas"
    .parameter "listLeft"
    .parameter "listRight"
    .parameter "minLeftItem"
    .parameter "maxLeftItem"
    .parameter "itemWidth"
    .parameter "divTop"
    .parameter "divBottom"

    .prologue
    .line 271
    iget v6, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    sub-int/2addr v6, v7

    div-int/lit8 v5, v6, 0x2

    .line 272
    .local v5, xDivOffset:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    add-int v1, p6, v6

    .line 273
    .local v1, cellWidth:I
    sub-int v6, p3, p6

    sub-int/2addr v6, v1

    invoke-static {v6, p5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 275
    .local v2, maxLeftDraw:I
    move v3, p2

    .local v3, nextLeft:I
    :goto_0
    if-gt v3, v2, :cond_1

    .line 276
    add-int v6, v3, v1

    if-lt v6, p4, :cond_0

    .line 277
    add-int v6, v3, p6

    add-int v4, v6, v5

    .line 278
    .local v4, x:I
    int-to-float v6, v4

    move/from16 v0, p7

    int-to-float v0, v0

    move v7, v0

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    add-int/2addr v8, v4

    int-to-float v8, v8

    move/from16 v0, p8

    int-to-float v0, v0

    move v9, v0

    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 275
    .end local v4           #x:I
    :cond_0
    add-int/2addr v3, v1

    goto :goto_0

    .line 281
    :cond_1
    return-void
.end method

.method private setHorizontalDividerHeight()V
    .locals 2

    .prologue
    .line 349
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    .line 350
    return-void

    .line 349
    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private setRequestFramePending()V
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    if-nez v0, :cond_0

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    .line 366
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 368
    :cond_0
    return-void
.end method

.method private setVerticalDividerWidth()V
    .locals 2

    .prologue
    .line 371
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    .line 372
    return-void

    .line 371
    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, edgesRequired:Z
    const/4 v3, 0x4

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    .line 397
    .local v1, fadingEdgeStrength:[F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->isHorizontalFadingEdgeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getLeftFadingEdgeStrength()F

    move-result v3

    aput v3, v1, v5

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getRightFadingEdgeStrength()F

    move-result v3

    aput v3, v1, v7

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->isVerticalFadingEdgeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getTopFadingEdgeStrength()F

    move-result v3

    aput v3, v1, v6

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getBottomFadingEdgeStrength()F

    move-result v3

    aput v3, v1, v8

    .line 405
    :cond_1
    aget v3, v1, v5

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    aget v3, v1, v6

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    aget v3, v1, v7

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    aget v3, v1, v8

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 407
    :cond_2
    const/4 v3, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    .line 408
    .local v2, paddingOffset:[I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->isPaddingOffsetRequired()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 409
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getLeftPaddingOffset()I

    move-result v3

    aput v3, v2, v5

    .line 410
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getTopPaddingOffset()I

    move-result v3

    aput v3, v2, v6

    .line 411
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getRightPaddingOffset()I

    move-result v3

    aput v3, v2, v7

    .line 412
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getBottomPaddingOffset()I

    move-result v3

    aput v3, v2, v8

    .line 414
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v3, p1, v1, v2}, Lcom/sec/android/app/twlauncher/GLScrollBars;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;[F[I)Z

    move-result v0

    .line 416
    .end local v2           #paddingOffset:[I
    :cond_4
    return v0

    .line 395
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 407
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
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 1
    .parameter "scrollDelay"
    .parameter "invalidate"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLScrollBars;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 99
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 32
    .parameter "canvas"

    .prologue
    .line 103
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/GLGridView;->mRequestFramePending:Z

    .line 104
    const/16 v26, 0x0

    .line 105
    .local v26, redraw:Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getChildCount()I

    move-result v20

    .line 108
    .local v20, count:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgRed:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgGreen:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgBlue:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    move v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 111
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 116
    :cond_0
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClipToView(Landroid/view/View;Z)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getListPaddingLeft()I

    move-result v7

    .line 119
    .local v7, listLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getListPaddingRight()I

    move-result v6

    sub-int v8, v5, v6

    .line 120
    .local v8, listRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    move v6, v0

    sub-int/2addr v5, v6

    div-int/lit8 v31, v5, 0x2

    .line 130
    .local v31, yDivOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mVDividerWidth:I

    move v5, v0

    if-lez v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->getStretchMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    const/4 v5, 0x1

    move/from16 v30, v5

    .line 133
    .local v30, verticalOK:Z
    :goto_0
    const v12, 0x7fffffff

    .line 134
    .local v12, vDivTop:I
    const/high16 v13, -0x8000

    .line 136
    .local v13, vDivBottom:I
    const v28, 0x7fffffff

    .line 137
    .local v28, rowMinLeft:I
    const/high16 v10, -0x8000

    .line 138
    .local v10, rowMaxLeft:I
    const/high16 v27, -0x8000

    .line 140
    .local v27, rowMaxRight:I
    const/4 v11, 0x0

    .line 141
    .local v11, childWidth:I
    const/16 v22, 0x1

    .line 142
    .local v22, firstRow:Z
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 143
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/GLGridView;->startFadingEdgesShader(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 144
    const/16 v24, 0x0

    .local v24, i:I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 145
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 146
    .local v14, child:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v19

    .line 147
    .local v19, childVisibility:I
    const/16 v5, 0x8

    move/from16 v0, v19

    move v1, v5

    if-eq v0, v1, :cond_c

    .line 149
    :try_start_0
    move-object v0, v14

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    move-object/from16 v23, v0

    .line 150
    .local v23, glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    invoke-virtual {v14}, Landroid/view/View;->computeScroll()V

    .line 151
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v16

    .line 152
    .local v16, childLeft:I
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v18

    .line 153
    .local v18, childTop:I
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v17

    .line 154
    .local v17, childRight:I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 155
    .local v15, childBottom:I
    sub-int v11, v17, v16

    .line 156
    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    move v5, v0

    if-gtz v5, :cond_1

    if-eqz v30, :cond_4

    .line 160
    :cond_1
    move/from16 v25, v13

    .line 161
    .local v25, nextDivTop:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v9

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    move v5, v0

    if-lez v5, :cond_2

    .line 167
    add-int v13, v13, v31

    .line 168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mHDividerHeight:I

    move v5, v0

    add-int v25, v13, v5

    .line 169
    int-to-float v5, v7

    int-to-float v6, v13

    int-to-float v9, v8

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v9

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 171
    :cond_2
    if-eqz v30, :cond_3

    .line 172
    if-eqz v22, :cond_e

    move/from16 v9, v28

    :goto_2
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v13}, Lcom/sec/android/app/twlauncher/GLGridView;->drawVerticalDividers(Lcom/sec/android/app/twlauncher/GLCanvas;IIIIIII)V

    .line 176
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 177
    move/from16 v12, v25

    .line 179
    .end local v25           #nextDivTop:I
    :cond_4
    const/16 v22, 0x0

    .line 180
    move v13, v15

    .line 181
    move/from16 v28, v16

    .line 183
    :cond_5
    move/from16 v10, v16

    .line 184
    move/from16 v27, v17

    .line 185
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    .line 186
    move/from16 v28, v16

    .line 187
    :cond_6
    move/from16 v0, v18

    move v1, v12

    if-ge v0, v1, :cond_7

    .line 188
    move/from16 v12, v18

    .line 189
    :cond_7
    if-le v15, v13, :cond_8

    .line 190
    move v13, v15

    .line 192
    :cond_8
    if-nez v19, :cond_c

    .line 193
    invoke-virtual {v14}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v14}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_9
    const/4 v5, 0x1

    move/from16 v29, v5

    .line 194
    .local v29, selectorNeeded:Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 195
    invoke-virtual {v14}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int v5, v16, v5

    int-to-float v5, v5

    invoke-virtual {v14}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int v6, v18, v6

    int-to-float v6, v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 198
    if-eqz v29, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    move v5, v0

    if-nez v5, :cond_a

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLGridView;->drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V

    .line 201
    :cond_a
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v5

    or-int v26, v26, v5

    .line 203
    if-eqz v29, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    move v5, v0

    if-eqz v5, :cond_b

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLGridView;->drawSelector(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;)V

    .line 206
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v15           #childBottom:I
    .end local v16           #childLeft:I
    .end local v17           #childRight:I
    .end local v18           #childTop:I
    .end local v23           #glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    .end local v29           #selectorNeeded:Z
    :cond_c
    :goto_4
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 130
    .end local v10           #rowMaxLeft:I
    .end local v11           #childWidth:I
    .end local v12           #vDivTop:I
    .end local v13           #vDivBottom:I
    .end local v14           #child:Landroid/view/View;
    .end local v19           #childVisibility:I
    .end local v22           #firstRow:Z
    .end local v24           #i:I
    .end local v27           #rowMaxRight:I
    .end local v28           #rowMinLeft:I
    .end local v30           #verticalOK:Z
    :cond_d
    const/4 v5, 0x0

    move/from16 v30, v5

    goto/16 :goto_0

    .restart local v10       #rowMaxLeft:I
    .restart local v11       #childWidth:I
    .restart local v12       #vDivTop:I
    .restart local v13       #vDivBottom:I
    .restart local v14       #child:Landroid/view/View;
    .restart local v15       #childBottom:I
    .restart local v16       #childLeft:I
    .restart local v17       #childRight:I
    .restart local v18       #childTop:I
    .restart local v19       #childVisibility:I
    .restart local v22       #firstRow:Z
    .restart local v23       #glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    .restart local v24       #i:I
    .restart local v25       #nextDivTop:I
    .restart local v27       #rowMaxRight:I
    .restart local v28       #rowMinLeft:I
    .restart local v30       #verticalOK:Z
    :cond_e
    move v9, v7

    .line 172
    goto/16 :goto_2

    .line 193
    .end local v25           #nextDivTop:I
    :cond_f
    const/4 v5, 0x0

    move/from16 v29, v5

    goto :goto_3

    .line 209
    .end local v15           #childBottom:I
    .end local v16           #childLeft:I
    .end local v17           #childRight:I
    .end local v18           #childTop:I
    .end local v23           #glChild:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
    :catch_0
    move-exception v5

    move-object/from16 v21, v5

    .line 210
    .local v21, e:Ljava/lang/ClassCastException;
    sget-object v5, Lcom/sec/android/app/twlauncher/GLGridView;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Child is not of type GLSurfaceViewGroup.DispatchDrawGL"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 215
    .end local v14           #child:Landroid/view/View;
    .end local v19           #childVisibility:I
    .end local v21           #e:Ljava/lang/ClassCastException;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 218
    if-eqz v30, :cond_11

    if-lez v11, :cond_11

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    move v14, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v9

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move v9, v7

    .line 221
    invoke-direct/range {v5 .. v13}, Lcom/sec/android/app/twlauncher/GLGridView;->drawVerticalDividers(Lcom/sec/android/app/twlauncher/GLCanvas;IIIIIII)V

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 226
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLScrollBars;->isHorizontalScrollBarDrawing()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeHorizontalScrollRange()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeHorizontalScrollOffset()I

    move-result v7

    .end local v7           #listLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeHorizontalScrollExtent()I

    move-result v8

    .end local v8           #listRight:I
    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLScrollBars;->drawHorizontalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z

    move-result v5

    or-int v26, v26, v5

    .line 229
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLScrollBars;->isVerticalScrollBarDrawing()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLGridView;->mGLScrollBars:Lcom/sec/android/app/twlauncher/GLScrollBars;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeVerticalScrollRange()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeVerticalScrollOffset()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLGridView;->computeVerticalScrollExtent()I

    move-result v8

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLScrollBars;->drawVerticalScrollBar(Lcom/sec/android/app/twlauncher/GLCanvas;III)Z

    move-result v5

    or-int v26, v26, v5

    .line 233
    :cond_13
    return v26
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 240
    return-void
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0}, Landroid/widget/GridView;->invalidate()V

    .line 290
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setRequestFramePending()V

    .line 291
    return-void
.end method

.method public invalidate(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridView;->invalidate(IIII)V

    .line 302
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setRequestFramePending()V

    .line 303
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/widget/GridView;->invalidate(Landroid/graphics/Rect;)V

    .line 296
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setRequestFramePending()V

    .line 297
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, -0x8000

    .line 307
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    if-lez v2, :cond_1

    .line 308
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 309
    .local v0, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 311
    .local v1, heightSize:I
    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    if-ge v2, v1, :cond_1

    .line 313
    :cond_0
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 315
    .end local v0           #heightMode:I
    .end local v1           #heightSize:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 316
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    const/high16 v1, 0x437f

    .line 320
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgRed:F

    .line 321
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgGreen:F

    .line 322
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgBlue:F

    .line 323
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mBgOpacity:F

    .line 324
    invoke-super {p0, p1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    .line 325
    return-void
.end method

.method public setDividerColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    const/high16 v1, 0x437f

    .line 328
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerRed:F

    .line 329
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerGreen:F

    .line 330
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerBlue:F

    .line 331
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerOpacity:F

    .line 332
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setHorizontalDividerHeight()V

    .line 333
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setVerticalDividerWidth()V

    .line 334
    return-void
.end method

.method public setDividerThickness(I)V
    .locals 0
    .parameter "thickness"

    .prologue
    .line 337
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDividerThickness:I

    .line 338
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setHorizontalDividerHeight()V

    .line 339
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setVerticalDividerWidth()V

    .line 340
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mDrawSelectorOnTop:Z

    .line 345
    invoke-super {p0, p1}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 346
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 354
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mHorizontalSpacing:I

    .line 355
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 356
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setVerticalDividerWidth()V

    .line 357
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0
    .parameter "maxHeight"

    .prologue
    .line 360
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mMaxHeight:I

    .line 361
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 376
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLGridView;->mVerticalSpacing:I

    .line 377
    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 378
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLGridView;->setHorizontalDividerHeight()V

    .line 379
    return-void
.end method

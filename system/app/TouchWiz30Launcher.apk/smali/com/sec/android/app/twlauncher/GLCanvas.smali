.class Lcom/sec/android/app/twlauncher/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;,
        Lcom/sec/android/app/twlauncher/GLCanvas$Grid;,
        Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;,
        Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;,
        Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;,
        Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;,
        Lcom/sec/android/app/twlauncher/GLCanvas$ImmediateSurface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;,
        Lcom/sec/android/app/twlauncher/GLCanvas$RenderSurface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$Surface;,
        Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;,
        Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final TRACK_TEXTURE_UPLOADS:Z


# instance fields
.field private mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

.field private mHeight:I

.field private mIdentityMatrix:[F

.field private mIsTouchTrackingEnabled:Z

.field private mNativeSelf:I

.field private mPreloadQueue:Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;

.field mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

.field private mScratchMatrix:[F

.field private mTransRefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/TransRef;",
            ">;"
        }
    .end annotation
.end field

.field mTransformPointResult:[F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "glcanvas"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeClassInit()V

    .line 43
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->nativeClassInit()V

    .line 1296
    const-string v0, "GLCanvas"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLCanvas;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;II)V
    .locals 5
    .parameter "retained"
    .parameter "pq"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    .line 993
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mWidth:I

    .line 995
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mHeight:I

    .line 997
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    .line 1292
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    .line 1294
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIdentityMatrix:[F

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    .line 50
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mPreloadQueue:Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;

    .line 51
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    .line 52
    iput p3, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mWidth:I

    .line 53
    iput p4, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mHeight:I

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIdentityMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 55
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIsTouchTrackingEnabled:Z

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->access$000(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)I

    move-result v0

    invoke-direct {p0, p3, p4, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeInit(III)V

    .line 59
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$100(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    .line 62
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFuncPremultipliedAlpha()V

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$200(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/ShaderProgram;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->clearClip()V

    .line 66
    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mPreloadQueue:Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->createRenderCache()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->destroyRenderCache(I)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static checkGlError(Ljava/lang/String;)V
    .locals 5
    .parameter "op"

    .prologue
    const-string v4, ": glError "

    .line 1304
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_0

    .line 1305
    sget-object v1, Lcom/sec/android/app/twlauncher/GLCanvas;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1308
    :cond_0
    return-void
.end method

.method static clamp(FFF)F
    .locals 1
    .parameter "val"
    .parameter "minVal"
    .parameter "maxVal"

    .prologue
    .line 545
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static native createRenderCache()I
.end method

.method private static native destroyRenderCache(I)V
.end method

.method private native isStackSizeOne()Z
.end method

.method static mix(FFF)F
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "mix"

    .prologue
    .line 533
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeInit(III)V
.end method

.method private native nativeRestore()Z
.end method

.method private native nativeSetClip(IIII)V
.end method

.method private native setGeometry(IIII)V
.end method

.method private native setShaderSurface(Ljava/lang/String;I)V
.end method

.method private transformPoint(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "r"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    aput v1, v0, v2

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, v0, v3

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, v0, v4

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    aput v1, v0, v5

    .line 320
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->transformPoint([F)V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    aget v0, v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    aget v0, v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    aget v0, v0, v4

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransformPointResult:[F

    aget v0, v0, v5

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 325
    return-void
.end method

.method private native transformPoint([F)V
.end method


# virtual methods
.method public accumulateAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    const/high16 v0, 0x3f80

    .line 505
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 506
    return-void
.end method

.method public accumulateColor(FFF)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 522
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 523
    return-void
.end method

.method public native accumulateColor(FFFF)V
.end method

.method public accumulateColor(I)V
    .locals 5
    .parameter "argb"

    .prologue
    const/high16 v4, 0x437f

    .line 515
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v4

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v4

    ushr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v4

    ushr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 519
    return-void
.end method

.method public addTransRef(IIIIIIII)V
    .locals 2
    .parameter "absLeft"
    .parameter "absTop"
    .parameter "absRight"
    .parameter "absBottom"
    .parameter "transLeft"
    .parameter "transTop"
    .parameter "transRight"
    .parameter "transBottom"

    .prologue
    .line 375
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIsTouchTrackingEnabled:Z

    if-eqz v1, :cond_0

    .line 376
    invoke-static/range {p1 .. p8}, Lcom/sec/android/app/twlauncher/TransRef;->requestTransRef(IIIIIIII)Lcom/sec/android/app/twlauncher/TransRef;

    move-result-object v0

    .line 378
    .local v0, tRef:Lcom/sec/android/app/twlauncher/TransRef;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/TransRef;->getTransRefRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->transformPoint(Landroid/graphics/Rect;)V

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v0           #tRef:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_0
    return-void
.end method

.method public addTransRef(Landroid/view/View;IIII)V
    .locals 2
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 366
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIsTouchTrackingEnabled:Z

    if-eqz v1, :cond_0

    .line 367
    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/android/app/twlauncher/TransRef;->requestTransRef(Landroid/view/View;IIII)Lcom/sec/android/app/twlauncher/TransRef;

    move-result-object v0

    .line 368
    .local v0, tRef:Lcom/sec/android/app/twlauncher/TransRef;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/TransRef;->getTransRefRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->transformPoint(Landroid/graphics/Rect;)V

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v0           #tRef:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_0
    return-void
.end method

.method public addTransRefChild(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 346
    .local v7, sx:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v8

    .line 347
    .local v8, sy:I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 348
    .local v6, p:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr v7, v0

    .line 349
    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v0

    add-int/2addr v8, v0

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int v2, v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int v3, v8, v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    add-int v4, v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int v5, v8, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRef(Landroid/view/View;IIII)V

    .line 351
    return-void
.end method

.method public addTransRefSelf(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 361
    .local v2, sx:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 362
    .local v3, sy:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v4, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int v5, v3, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRef(Landroid/view/View;IIII)V

    .line 363
    return-void
.end method

.method assertBalancedSaveRestore()V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->isStackSizeOne()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const-string v0, "GLCanvas"

    const-string v1, "unbalanced save/restore: save() called more times than restore()"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-void
.end method

.method public clearClip()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeSetClip(IIII)V

    .line 274
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FF)V
    .locals 6
    .parameter "b"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v4, p2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFFF)V

    .line 165
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFFF)V
    .locals 6
    .parameter "b"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 168
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$ImmediateSurface;

    invoke-direct {v1, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$ImmediateSurface;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, s:Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 170
    return-void
.end method

.method public drawRect(FFFF)V
    .locals 6
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 249
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 250
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Rect;)V

    .line 254
    return-void
.end method

.method public drawSurface(IFFFF)V
    .locals 10
    .parameter "textureId"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v6, 0x0

    .line 191
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(IFFFFFFFF)V

    .line 192
    return-void
.end method

.method public native drawSurface(IFFFFFFFF)V
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V
    .locals 6
    .parameter "s"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v4, p2, v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v5, p3, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 199
    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V
    .locals 10
    .parameter "s"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v6, 0x0

    .line 187
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 188
    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V
    .locals 10
    .parameter "s"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"
    .parameter "tl"
    .parameter "tt"
    .parameter "tr"
    .parameter "tb"

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$300(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object p1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->addSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 177
    iget v0, p1, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    if-gez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v0, v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(IFFFFFFFF)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_1
    iget v1, p1, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(IFFFFFFFF)V

    goto :goto_0
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "s"
    .parameter "r"

    .prologue
    .line 202
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 203
    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10
    .parameter "s"
    .parameter "r"
    .parameter "source"

    .prologue
    .line 206
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v0

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v7, v0

    iget v0, p3, Landroid/graphics/Rect;->right:I

    int-to-float v8, v0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFFFFFF)V

    .line 208
    return-void
.end method

.method public drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;Landroid/graphics/RectF;)V
    .locals 6
    .parameter "s"
    .parameter "r"

    .prologue
    .line 211
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 212
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 117
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeFinalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public native getAlpha()F
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mHeight:I

    return v0
.end method

.method public native getMatrix([F)V
.end method

.method public native getProjectionMatrix([F)V
.end method

.method public getProjectionMatrix()[F
    .locals 2

    .prologue
    .line 408
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 409
    .local v0, m:[F
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getProjectionMatrix([F)V

    .line 410
    return-object v0
.end method

.method getSceneGraph()Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    return-object v0
.end method

.method public native getShaderUniform(Ljava/lang/String;[F)I
.end method

.method public getTransRef(Landroid/view/View;)Lcom/sec/android/app/twlauncher/TransRef;
    .locals 3
    .parameter "v"

    .prologue
    .line 387
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 388
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/TransRef;

    .line 389
    .local v1, tRef:Lcom/sec/android/app/twlauncher/TransRef;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/TransRef;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 393
    .end local v1           #tRef:Lcom/sec/android/app/twlauncher/TransRef;
    :goto_1
    return-object v2

    .line 387
    .restart local v1       #tRef:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    .end local v1           #tRef:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getTransRefList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/TransRef;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mWidth:I

    return v0
.end method

.method public preloadShader(Lcom/sec/android/app/twlauncher/ShaderProgram;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->preloadShader(Lcom/sec/android/app/twlauncher/ShaderProgram;)V

    .line 232
    return-void
.end method

.method public preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->addSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 228
    return-void
.end method

.method public native premultiplyMatrix([F)V
.end method

.method public queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mPreloadQueue:Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;

    invoke-interface {v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 224
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 136
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 137
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 138
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mTransRefList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TransRef;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/TransRef;->releaseTransRef(Lcom/sec/android/app/twlauncher/TransRef;)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeFinalize()V

    .line 143
    return-void
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeRestore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, "GLCanvas"

    const-string v1, "unbalanced save/restore: restore() called once more than save()"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    return-void
.end method

.method public rotate(FFFF)V
    .locals 6
    .parameter "degrees"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->premultiplyMatrix([F)V

    .line 302
    return-void
.end method

.method public rotateX(F)V
    .locals 2
    .parameter "degrees"

    .prologue
    const/4 v1, 0x0

    .line 288
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotate(FFFF)V

    .line 289
    return-void
.end method

.method public rotateY(F)V
    .locals 2
    .parameter "degrees"

    .prologue
    const/4 v1, 0x0

    .line 292
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotate(FFFF)V

    .line 293
    return-void
.end method

.method public rotateZ(F)V
    .locals 2
    .parameter "degrees"

    .prologue
    const/4 v1, 0x0

    .line 296
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotate(FFFF)V

    .line 297
    return-void
.end method

.method public native save()V
.end method

.method public scale(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 310
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FFF)V

    .line 311
    return-void
.end method

.method public scale(FFF)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIdentityMatrix:[F

    move v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->scaleM([FI[FIFFF)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->premultiplyMatrix([F)V

    .line 307
    return-void
.end method

.method public native setAlpha(F)V
.end method

.method public setBlendFunc(II)V
    .locals 0
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 441
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    .line 442
    return-void
.end method

.method public native setBlendFunc(IIII)V
.end method

.method public setBlendFuncErase()V
    .locals 2

    .prologue
    const/16 v1, 0x303

    const/4 v0, 0x0

    .line 450
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(IIII)V

    .line 456
    return-void
.end method

.method public setBlendFuncPremultipliedAlpha()V
    .locals 2

    .prologue
    .line 459
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendFunc(II)V

    .line 460
    return-void
.end method

.method public native setBlendingEnabled(Z)V
.end method

.method public setClip(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 261
    if-lt p1, p3, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "left must be less than right"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    if-lt p2, p4, :cond_1

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "top must be less than bottom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result v0

    sub-int/2addr v0, p4

    sub-int v1, p3, p1

    sub-int v2, p4, p2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->nativeSetClip(IIII)V

    .line 266
    return-void
.end method

.method public setClipToView(Landroid/view/View;Z)V
    .locals 11
    .parameter "v"
    .parameter "clipToPadding"

    .prologue
    .line 87
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 89
    .local v5, viewRect:Landroid/graphics/RectF;
    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 92
    iget v6, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    .line 93
    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 95
    :cond_0
    invoke-static {p0, v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 99
    .local v1, clipRect:Landroid/graphics/RectF;
    iget v6, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 100
    .local v2, left:I
    iget v6, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 101
    .local v3, right:I
    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 102
    .local v4, top:I
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 103
    .local v0, bottom:I
    if-ge v2, v3, :cond_1

    if-ge v4, v0, :cond_1

    .line 104
    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setClip(IIII)V

    .line 105
    :cond_1
    return-void
.end method

.method public setColor(FFF)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getAlpha()F

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFFF)V

    .line 510
    return-void
.end method

.method public native setColor(FFFF)V
.end method

.method public setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V
    .locals 4
    .parameter "geometry"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 463
    if-nez p1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$100(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    .line 475
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$400(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mGeometriesToResend:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mGeometriesToResend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, v1, v0

    invoke-direct {p0, v0, v2, v1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(IIII)V

    goto :goto_0

    .line 472
    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$400(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$500(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v1

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$600(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v2

    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;->access$700(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(IIII)V

    goto :goto_0
.end method

.method public native setProjectionMatrix([F)V
.end method

.method public native setShaderProgram(II)V
.end method

.method public setShaderProgram(Lcom/sec/android/app/twlauncher/ShaderProgram;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 426
    iget v0, p1, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mShadersToResend:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mShadersToResend:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getTransformType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(II)V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    iget v0, p1, Lcom/sec/android/app/twlauncher/ShaderProgram;->prog:I

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ShaderProgram;->getTransformType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderProgram(II)V

    goto :goto_0
.end method

.method public setShaderSurface(Ljava/lang/String;Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V
    .locals 2
    .parameter "name"
    .parameter "s"

    .prologue
    .line 235
    if-nez p2, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$300(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Surface;

    move-result-object p2

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->addSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 238
    iget v0, p2, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    if-gez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mGraph:Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;->mSurfacesToResend:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderSurface(Ljava/lang/String;I)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_1
    iget v0, p2, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setShaderSurface(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public native setShaderUnfirom(Ljava/lang/String;[F)V
.end method

.method public native setShaderUniform(Ljava/lang/String;F)V
.end method

.method public native setShaderUniform(Ljava/lang/String;FF)V
.end method

.method public native setShaderUniform(Ljava/lang/String;FFF)V
.end method

.method public native setShaderUniform(Ljava/lang/String;FFFF)V
.end method

.method public native setShaderUniform(Ljava/lang/String;[F)V
.end method

.method public setSubdivide(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 487
    if-eqz p1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$800(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;->access$100(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;)Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    goto :goto_0
.end method

.method public setTouchTrackingEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIsTouchTrackingEnabled:Z

    .line 336
    return-void
.end method

.method public translate(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FFF)V

    .line 280
    return-void
.end method

.method public translate(FFF)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mIdentityMatrix:[F

    move v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/opengl/Matrix;->translateM([FI[FIFFF)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas;->mScratchMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->premultiplyMatrix([F)V

    .line 285
    return-void
.end method

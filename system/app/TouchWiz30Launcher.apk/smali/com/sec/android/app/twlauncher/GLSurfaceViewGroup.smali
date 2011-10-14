.class public Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
.super Landroid/view/ViewGroup;
.source "GLSurfaceViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GLSurfaceCreatedNotifier;,
        Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;,
        Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;,
        Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sStatusBarTop:I

.field public static sTextureUploadLock:Ljava/lang/Object;

.field private static screenShotCounter:I


# instance fields
.field private IM4x4:[F

.field private M3x3:[F

.field private M4x4:[F

.field private SM4x4:[F

.field private TM4x4:[F

.field private mAllPreloaded:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockDispatchDraw:Z

.field private mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

.field private mCanvasRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

.field private mDrawBlackFrame:Z

.field private mDrawRequested:Z

.field private mFocalDepth:F

.field private mFrameDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mLastFrameStartTime:J

.field private mMyLoc:[I

.field private mPreloadOnNextFrame:Z

.field private mPreloadQueue:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mProjection:[F

.field private mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

.field private mSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mSuspendDrawingUntilResume:Z

.field private mTransRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/TransRef;",
            ">;"
        }
    .end annotation
.end field

.field private mViewLoc:[I

.field private mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->screenShotCounter:I

    .line 76
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sStatusBarTop:I

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    .line 1047
    const-string v0, "GLSurfaceViewGroup"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/16 v2, 0x10

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvasRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    .line 60
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    .line 68
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    .line 70
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    .line 72
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mProjection:[F

    .line 74
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    .line 78
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    .line 82
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    .line 84
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFrameDelay:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    .line 547
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mLastFrameStartTime:J

    .line 548
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    .line 549
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mHandler:Landroid/os/Handler;

    .line 852
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->SM4x4:[F

    .line 854
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TM4x4:[F

    .line 856
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->IM4x4:[F

    .line 894
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M4x4:[F

    .line 896
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M3x3:[F

    .line 1013
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    .line 1015
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/16 v2, 0x10

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvasRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    .line 60
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    .line 68
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    .line 70
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    .line 72
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mProjection:[F

    .line 74
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    .line 78
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    .line 82
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    .line 84
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFrameDelay:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    .line 547
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mLastFrameStartTime:J

    .line 548
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    .line 549
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mHandler:Landroid/os/Handler;

    .line 852
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->SM4x4:[F

    .line 854
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TM4x4:[F

    .line 856
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->IM4x4:[F

    .line 894
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M4x4:[F

    .line 896
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M3x3:[F

    .line 1013
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    .line 1015
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->refreshAllPreloaded()V

    return-void
.end method

.method static synthetic access$302(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawWithoutViewRoot()V

    return-void
.end method

.method private calcProjectionMatrix()V
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/4 v1, 0x0

    const/high16 v10, 0x4000

    .line 496
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v2

    int-to-float v9, v2

    .line 497
    .local v9, w:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v2

    int-to-float v8, v2

    .line 498
    .local v8, h:F
    new-array v0, v11, [F

    .line 499
    .local v0, projection:[F
    mul-float v2, v9, v10

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    .line 500
    neg-float v2, v9

    div-float/2addr v2, v10

    div-float v3, v9, v10

    div-float v4, v8, v10

    neg-float v5, v8

    div-float/2addr v5, v10

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    mul-float/2addr v7, v10

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 505
    const/16 v2, 0xa

    const/16 v3, 0xe

    const/4 v4, 0x0

    aput v4, v0, v3

    aput v4, v0, v2

    .line 509
    new-array v6, v11, [F

    .line 510
    .local v6, pretrans:[F
    invoke-static {v6, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 511
    neg-float v2, v9

    div-float/2addr v2, v10

    neg-float v3, v8

    div-float/2addr v3, v10

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    neg-float v4, v4

    invoke-static {v6, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 512
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mProjection:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 513
    return-void
.end method

.method private convertMatrix3x3To4x4([F[F)V
    .locals 11
    .parameter "M3x3"
    .parameter "M4x4"

    .prologue
    const/high16 v9, 0x3f00

    const/high16 v8, -0x4080

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 859
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TM4x4:[F

    .line 860
    .local v2, localTM4x4:[F
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->SM4x4:[F

    .line 861
    .local v4, localSM4x4:[F
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->IM4x4:[F

    .line 863
    .local v0, localIM4x4:[F
    aget v3, p1, v1

    aput v3, v2, v1

    .line 864
    const/4 v3, 0x1

    const/4 v5, 0x3

    aget v5, p1, v5

    aput v5, v2, v3

    .line 865
    const/4 v3, 0x2

    aput v6, v2, v3

    .line 866
    const/4 v3, 0x3

    const/4 v5, 0x6

    aget v5, p1, v5

    aput v5, v2, v3

    .line 868
    const/4 v3, 0x4

    const/4 v5, 0x1

    aget v5, p1, v5

    aput v5, v2, v3

    .line 869
    const/4 v3, 0x5

    const/4 v5, 0x4

    aget v5, p1, v5

    aput v5, v2, v3

    .line 870
    const/4 v3, 0x6

    aput v6, v2, v3

    .line 871
    const/4 v3, 0x7

    const/4 v5, 0x7

    aget v5, p1, v5

    aput v5, v2, v3

    .line 873
    const/16 v3, 0x8

    aput v6, v2, v3

    .line 874
    const/16 v3, 0x9

    aput v6, v2, v3

    .line 875
    const/16 v3, 0xa

    aput v7, v2, v3

    .line 876
    const/16 v3, 0xb

    aput v6, v2, v3

    .line 878
    const/16 v3, 0xc

    const/4 v5, 0x2

    aget v5, p1, v5

    aput v5, v2, v3

    .line 879
    const/16 v3, 0xd

    const/4 v5, 0x5

    aget v5, p1, v5

    aput v5, v2, v3

    .line 880
    const/16 v3, 0xe

    aput v6, v2, v3

    .line 881
    const/16 v3, 0xf

    const/16 v5, 0x8

    aget v5, p1, v5

    aput v5, v2, v3

    .line 883
    invoke-static {v4, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 884
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    invoke-static {v4, v1, v3, v5, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 885
    invoke-static {v4, v1, v7, v7, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move v3, v1

    move v5, v1

    .line 886
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 888
    invoke-static {v4, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 889
    invoke-static {v4, v1, v8, v8, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 890
    const/high16 v3, 0x4000

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x4000

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v1, v3, v5, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    move-object v5, p2

    move v6, v1

    move-object v7, v4

    move v8, v1

    move-object v9, v0

    move v10, v1

    .line 891
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 892
    return-void
.end method

.method private doDispatchDrawGL()V
    .locals 9

    .prologue
    const/high16 v5, 0x4000

    const/4 v8, 0x1

    .line 615
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    if-eqz v3, :cond_0

    .line 616
    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "Skipped drawing due to suspendDrawingUntilResume()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    monitor-enter v3

    .line 620
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->isReady()Z

    move-result v4

    if-nez v4, :cond_2

    .line 621
    sget-object v4, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v5, "Skipped drawing because egl surface is not ready yet"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 626
    sget-object v4, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v5, "Surface is not valid, skip rendering, from 1st meet"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->stopRender()V

    .line 628
    monitor-exit v3

    goto :goto_0

    .line 636
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 631
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 633
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    .line 634
    monitor-exit v3

    goto :goto_0

    .line 636
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mLastFrameStartTime:J

    .line 641
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 642
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->measure(II)V

    .line 646
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->layout(IIII)V

    .line 655
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    monitor-enter v3

    .line 657
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    if-eqz v4, :cond_4

    .line 658
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->recycle()V

    .line 661
    :cond_4
    new-instance v4, Lcom/sec/android/app/twlauncher/GLCanvas;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvasRetainedObjects:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, p0, v6, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;-><init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedObjects;Lcom/sec/android/app/twlauncher/GLCanvas$PreloadQueue;II)V

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    .line 663
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mProjection:[F

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->setProjectionMatrix([F)V

    .line 665
    const/4 v2, 0x0

    .line 666
    .local v2, more:Z
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {p0, v4, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 668
    if-eqz v2, :cond_5

    .line 669
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestDraw()V

    .line 671
    :cond_5
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    if-ne v4, v8, :cond_6

    .line 672
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->doPreload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 673
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    .line 676
    :cond_6
    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->hasNextPreloadable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 677
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadOnNextFrame:Z

    .line 678
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->postInvalidate()V

    .line 681
    :cond_7
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->getSceneGraph()Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->setSceneGraph(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    .line 688
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 690
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->getTransRefList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    .line 692
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 696
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_8

    .line 697
    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "Surface is not valid, skip rendering, from 2nd meet"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->stopRender()V

    goto/16 :goto_0

    .line 688
    .end local v2           #more:Z
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 702
    .restart local v2       #more:Z
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 704
    :try_start_4
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mWaitFrameSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 706
    .local v0, acquired:Z
    if-nez v0, :cond_9

    .line 707
    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "timeout while waiting for GLThread to draw a frame"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 714
    .end local v0           #acquired:Z
    :cond_9
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->assertBalancedSaveRestore()V

    goto/16 :goto_0

    .line 710
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 711
    .local v1, e:Ljava/lang/InterruptedException;
    sget-object v3, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->TAG:Ljava/lang/String;

    const-string v4, "InterruptedException caught while waiting for GLThread to draw a frame."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized doPreload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1033
    monitor-enter p0

    const/16 v0, 0x8

    .line 1034
    .local v0, left:I
    :goto_0
    if-lez v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->hasNextPreloadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1035
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getNextPreloadable()Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    move-result-object v1

    .line 1036
    .local v1, preloadable:Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    if-eqz v1, :cond_0

    .line 1037
    invoke-interface {v1, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1040
    goto :goto_0

    .line 1041
    .end local v1           #preloadable:Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    :cond_1
    monitor-exit p0

    return-void

    .line 1033
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private drawWithoutViewRoot()V
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestLayout()V

    .line 571
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->doDispatchDrawGL()V

    goto :goto_0
.end method

.method public static drawableToRetainedSurface(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .locals 7
    .parameter "canvas"
    .parameter "surface"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 446
    if-nez p3, :cond_0

    move-object v3, p1

    .line 463
    .end local p1
    .local v3, surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    :goto_0
    return-object v3

    .line 449
    .end local v3           #surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .restart local p1
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 450
    new-instance v2, Landroid/graphics/Point;

    iget v4, p3, Landroid/graphics/Rect;->right:I

    iget v5, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    iget v6, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 451
    .local v2, size:Landroid/graphics/Point;
    iget v4, v2, Landroid/graphics/Point;->x:I

    if-lez v4, :cond_1

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-lez v4, :cond_1

    .line 452
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 454
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 455
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 456
    if-nez p1, :cond_2

    .line 457
    new-instance p1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .end local p1
    invoke-direct {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    .line 458
    .restart local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    :cond_1
    :goto_1
    move-object v3, p1

    .line 463
    .end local p1
    .restart local v3       #surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    goto :goto_0

    .line 460
    .end local v3           #surface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v1       #c:Landroid/graphics/Canvas;
    .restart local p1
    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public static findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    .locals 2
    .parameter "child"

    .prologue
    .line 471
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 472
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    if-nez v1, :cond_0

    .line 473
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 474
    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    if-eqz v1, :cond_1

    .line 475
    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    move-object v1, v0

    .line 477
    :goto_1
    return-object v1

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private declared-synchronized getNextPreloadable()Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    .locals 3

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1023
    .local v0, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1024
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    .line 1025
    .local v1, p:Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    .line 1028
    .end local v1           #p:Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1022
    .end local v0           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized hasNextPreloadable()Z
    .locals 1

    .prologue
    .line 1018
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static invalidateViewTree(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 410
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    .line 411
    .local v0, found:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    .line 413
    :cond_0
    return-void
.end method

.method private declared-synchronized refreshAllPreloaded()V
    .locals 2

    .prologue
    .line 1044
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    monitor-exit p0

    return-void

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static requestFrame(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 404
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    .line 405
    .local v0, found:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestDraw()V

    .line 407
    :cond_0
    return-void
.end method


# virtual methods
.method applyAnimation(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;)Z
    .locals 9
    .parameter "canvas"
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 899
    invoke-interface {p2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;->getAnimationGL()Landroid/view/animation/Animation;

    move-result-object v6

    .line 901
    .local v6, a:Landroid/view/animation/Animation;
    if-eqz v6, :cond_0

    .line 902
    new-instance v8, Landroid/view/animation/Transformation;

    invoke-direct {v8}, Landroid/view/animation/Transformation;-><init>()V

    .line 904
    .local v8, t:Landroid/view/animation/Transformation;
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 906
    .local v0, RM4x4:[F
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3, v8}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v7

    .line 908
    .local v7, more:Z
    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M3x3:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 910
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M3x3:[F

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M4x4:[F

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->convertMatrix3x3To4x4([F[F)V

    .line 912
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->getProjectionMatrix()[F

    move-result-object v4

    .line 914
    .local v4, originalM:[F
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->M4x4:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 916
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->setProjectionMatrix([F)V

    .line 918
    invoke-virtual {v8}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    move v1, v7

    .line 922
    .end local v0           #RM4x4:[F
    .end local v4           #originalM:[F
    .end local v7           #more:Z
    .end local v8           #t:Landroid/view/animation/Transformation;
    :cond_0
    return v1
.end method

.method public calculateCenterOffset(Landroid/view/View;[F)Z
    .locals 12
    .parameter "child"
    .parameter "offsets"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x3f00

    .line 780
    if-eqz p2, :cond_0

    array-length v6, p2

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 781
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "offsets must be an array of two integers"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 783
    :cond_1
    const/4 v4, 0x0

    .line 784
    .local v4, rc:Z
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 785
    .local v1, centerX:F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    add-float v2, v6, v7

    .line 787
    .local v2, centerY:F
    aput v9, p2, v10

    .line 788
    aput v9, p2, v11

    .line 790
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 791
    .local v3, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v6, v3, Landroid/view/View;

    if-eqz v6, :cond_2

    .line 792
    move-object v0, v3

    check-cast v0, Landroid/view/View;

    move-object v5, v0

    .line 793
    .local v5, view:Landroid/view/View;
    if-ne v5, p0, :cond_3

    .line 794
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    sub-float v6, v1, v6

    aput v6, p2, v10

    .line 795
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    sub-float v6, v2, v6

    aput v6, p2, v11

    .line 796
    const/4 v4, 0x1

    .line 803
    .end local v5           #view:Landroid/view/View;
    :cond_2
    return v4

    .line 799
    .restart local v5       #view:Landroid/view/View;
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v1, v6

    .line 800
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v2, v6

    .line 801
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 802
    goto :goto_0
.end method

.method public declared-synchronized cancelPreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 1001
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    monitor-exit p0

    return-void

    .line 1001
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public detectTransRefCollision(Landroid/graphics/Point;)Z
    .locals 5
    .parameter "p"

    .prologue
    .line 822
    const/4 v0, 0x0

    .line 823
    .local v0, hit:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 824
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TransRef;

    .line 825
    .local v2, temp:Lcom/sec/android/app/twlauncher/TransRef;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/TransRef;->detectTransCollision(Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 826
    const/4 v0, 0x1

    .line 827
    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TransRef;->mapXToOriginal(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 828
    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TransRef;->mapYToOriginal(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 832
    .end local v2           #temp:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_0
    return v0

    .line 823
    .restart local v2       #temp:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 578
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 579
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getTop()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v0

    int-to-float v3, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 580
    invoke-virtual {p1, v6, v6, v6}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 583
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    if-eqz v0, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 602
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    if-nez v0, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestDraw()V

    goto :goto_0
.end method

.method drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;)Z
    .locals 10
    .parameter "canvas"
    .parameter "vg"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 927
    const/4 v2, 0x0

    .line 929
    .local v2, more:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 930
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 931
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 932
    instance-of v6, v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v6, :cond_2

    .line 934
    invoke-virtual {v5}, Landroid/view/View;->computeScroll()V

    .line 935
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 936
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getLocationOnScreen([I)V

    .line 937
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 938
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    aget v6, v6, v8

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    aget v7, v7, v8

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int v3, v6, v7

    .line 939
    .local v3, tx:I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mViewLoc:[I

    aget v6, v6, v9

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mMyLoc:[I

    aget v7, v7, v9

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v7

    sub-int v4, v6, v7

    .line 940
    .local v4, ty:I
    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 942
    instance-of v6, v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;

    if-eqz v6, :cond_0

    .line 943
    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;

    move-object v6, v0

    invoke-virtual {p0, p1, v6}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->applyAnimation(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 946
    :cond_0
    check-cast v5, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    .end local v5           #v:Landroid/view/View;
    invoke-interface {v5, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 948
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 929
    .end local v3           #tx:I
    .end local v4           #ty:I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 949
    .restart local v5       #v:Landroid/view/View;
    :cond_2
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 950
    check-cast v5, Landroid/view/ViewGroup;

    .end local v5           #v:Landroid/view/View;
    invoke-virtual {p0, p1, v5}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;)Z

    move-result v6

    or-int/2addr v2, v6

    goto :goto_1

    .line 954
    :cond_3
    return v2
.end method

.method drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z
    .locals 12
    .parameter "canvas"
    .parameter "vg"
    .parameter "px"
    .parameter "py"

    .prologue
    const/4 v11, 0x0

    .line 958
    const/4 v3, 0x0

    .line 959
    .local v3, more:Z
    const/4 v1, 0x0

    .line 960
    .local v1, debug:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 961
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 962
    .local v6, v:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 963
    .local v7, x:I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    .line 964
    .local v8, y:I
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_2

    .line 965
    instance-of v9, v6, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v9, :cond_3

    .line 966
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 967
    add-int v9, p3, v7

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v10

    sub-int v4, v9, v10

    .line 968
    .local v4, tx:I
    add-int v9, p4, v8

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v10

    sub-int v5, v9, v10

    .line 969
    .local v5, ty:I
    int-to-float v9, v4

    int-to-float v10, v5

    invoke-virtual {p1, v9, v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 970
    instance-of v9, v6, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;

    if-eqz v9, :cond_0

    .line 971
    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;

    move-object v9, v0

    invoke-virtual {p0, p1, v9}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->applyAnimation(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$GetAnimationGL;)Z

    move-result v9

    or-int/2addr v3, v9

    .line 973
    :cond_0
    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    move-object v9, v0

    invoke-interface {v9, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v9

    or-int/2addr v3, v9

    .line 974
    if-eqz v1, :cond_1

    .line 975
    const/high16 v9, 0x3f80

    invoke-static {p1, v6, v9, v11, v11}, Lcom/sec/android/app/twlauncher/SamsungUtils;->drawBorder(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    .line 977
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 960
    .end local v4           #tx:I
    .end local v5           #ty:I
    .end local v6           #v:Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 978
    .restart local v6       #v:Landroid/view/View;
    :cond_3
    instance-of v9, v6, Landroid/view/ViewGroup;

    if-eqz v9, :cond_2

    .line 979
    check-cast v6, Landroid/view/ViewGroup;

    .end local v6           #v:Landroid/view/View;
    add-int v9, p3, v7

    add-int v10, p4, v8

    invoke-virtual {p0, p1, v6, v9, v10}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v9

    or-int/2addr v3, v9

    goto :goto_1

    .line 983
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_4
    return v3
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public getTransRefList()Ljava/util/ArrayList;
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
    .line 849
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isAbsRefEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 836
    const/4 v1, 0x0

    .line 837
    .local v1, isAbsEvt:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 838
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TransRef;

    .line 839
    .local v2, temp:Lcom/sec/android/app/twlauncher/TransRef;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/TransRef;->detectAbsCollision(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 840
    const/4 v1, 0x1

    .line 845
    .end local v2           #temp:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_0
    return v1

    .line 837
    .restart local v2       #temp:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v1, 0x8

    .line 112
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 114
    new-instance v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$1;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$1;-><init>(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v5, 0x10

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 123
    new-instance v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;-><init>(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0, v7, v7}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->addView(Landroid/view/View;II)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v8}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    .line 135
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getChildCount()I

    move-result v1

    .line 356
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 357
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 358
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 359
    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 356
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v0           #child:Landroid/view/View;
    :cond_1
    if-eqz p1, :cond_2

    if-eq p2, p4, :cond_2

    if-eq p3, p5, :cond_2

    .line 364
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->calcProjectionMatrix()V

    .line 366
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 312
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 313
    .local v8, wSpec:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 315
    .local v2, hSpec:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 316
    .local v9, window:Landroid/view/Window;
    const v10, 0x1020002

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 329
    .local v7, topView:Landroid/view/View;
    if-ge v8, v2, :cond_0

    const/4 v10, 0x1

    move v5, v10

    .line 330
    .local v5, isPortrait:Z
    :goto_0
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v10

    if-ne v2, v10, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v10

    if-ne v8, v10, :cond_1

    if-eqz v5, :cond_1

    .line 331
    sget v10, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sStatusBarTop:I

    sub-int v3, v2, v10

    .line 332
    .local v3, height:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 333
    .local v1, hMode:I
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 344
    .end local v1           #hMode:I
    .end local v3           #height:I
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 347
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getChildCount()I

    move-result v0

    .line 348
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_2

    .line 349
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Landroid/view/View;->measure(II)V

    .line 348
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 329
    .end local v0           #count:I
    .end local v4           #i:I
    .end local v5           #isPortrait:Z
    :cond_0
    const/4 v10, 0x0

    move v5, v10

    goto :goto_0

    .line 335
    .restart local v5       #isPortrait:Z
    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 336
    .local v6, rect:Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 341
    iget v10, v6, Landroid/graphics/Rect;->top:I

    sput v10, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sStatusBarTop:I

    goto :goto_1

    .line 351
    .end local v6           #rect:Landroid/graphics/Rect;
    .restart local v0       #count:I
    .restart local v4       #i:I
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->suspendDrawingUntilResume()V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->recycle()V

    .line 375
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mCanvas:Lcom/sec/android/app/twlauncher/GLCanvas;

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mRenderer:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$MyRenderer;->setSceneGraph(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraph;)V

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawBlackFrame:Z

    .line 380
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 391
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    .line 392
    return-void
.end method

.method public processTransformRefEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 808
    const/4 v1, 0x0

    .line 809
    .local v1, isTransEvnt:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 810
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mTransRefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/TransRef;

    .line 811
    .local v2, temp:Lcom/sec/android/app/twlauncher/TransRef;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/TransRef;->detectTransCollision(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/TransRef;->adjustEventToView(Landroid/view/MotionEvent;)V

    .line 813
    const/4 v1, 0x1

    .line 818
    .end local v2           #temp:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_0
    return v1

    .line 809
    .restart local v2       #temp:Lcom/sec/android/app/twlauncher/TransRef;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 996
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mPreloadQueue:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    monitor-exit p0

    return-void

    .line 996
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestDraw()V
    .locals 8

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mDrawRequested:Z

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$2;-><init>(Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mLastFrameStartTime:J

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFrameDelay:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :cond_0
    monitor-exit p0

    return-void

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V
    .locals 5
    .parameter "canvas"
    .parameter "child"
    .parameter "scale"
    .parameter "transX"
    .parameter "transY"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 752
    const/4 v2, 0x2

    new-array v0, v2, [F

    .line 753
    .local v0, centerOffsets:[F
    cmpg-float v2, p3, v3

    if-lez v2, :cond_0

    cmpl-float v2, p3, v4

    if-gtz v2, :cond_0

    invoke-virtual {p0, p2, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->calculateCenterOffset(Landroid/view/View;[F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 754
    :cond_0
    invoke-virtual {p1, p4, p5, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FFF)V

    .line 761
    :goto_0
    return-void

    .line 756
    :cond_1
    sub-float v2, v4, p3

    div-float v1, v2, p3

    .line 757
    .local v1, xlateScale:F
    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, p4

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, p5

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFocalDepth:F

    neg-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {p1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FFF)V

    goto :goto_0
.end method

.method public setFrameDelay(I)V
    .locals 0
    .parameter "frameDelay"

    .prologue
    .line 97
    iput p1, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mFrameDelay:I

    .line 98
    return-void
.end method

.method public stopSuspendingDrawing()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    .line 384
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidate()V

    .line 385
    return-void
.end method

.method public suspendDrawingUntilResume()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mSuspendDrawingUntilResume:Z

    .line 108
    return-void
.end method

.method public unblockDispatchDraw()V
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    if-eqz v0, :cond_0

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mBlockDispatchDraw:Z

    .line 610
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestDraw()V

    .line 612
    :cond_0
    return-void
.end method

.method public declared-synchronized willBePreloaded(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1010
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->mAllPreloaded:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

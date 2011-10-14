.class public final Landroid/view/ViewRoot;
.super Landroid/os/Handler;
.source "ViewRoot.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRoot$RunQueue;,
        Landroid/view/ViewRoot$CalledFromWrongThreadException;,
        Landroid/view/ViewRoot$TrackballAxis;,
        Landroid/view/ViewRoot$W;,
        Landroid/view/ViewRoot$InputMethodCallback;,
        Landroid/view/ViewRoot$TakenSurfaceHolder;,
        Landroid/view/ViewRoot$GestureSurfaceTouch;,
        Landroid/view/ViewRoot$ResizedInfo;
    }
.end annotation


# static fields
.field public static final CHECK_FOCUS:I = 0x3f5

.field public static final CLOSE_SYSTEM_DIALOGS:I = 0x3f6

.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT:Z = true

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_MOUSE:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field public static final DIE:I = 0x3e9

.field public static final DISPATCH_APP_VISIBILITY:I = 0x3f0

.field public static final DISPATCH_GET_NEW_SURFACE:I = 0x3f1

.field public static final DISPATCH_KEY:I = 0x3ed

.field public static final DISPATCH_KEY_FROM_IME:I = 0x3f3

.field public static final DISPATCH_MOUSE:I = 0x3f7

.field public static final DISPATCH_POINTER:I = 0x3ee

.field public static final DISPATCH_TRACKBALL:I = 0x3ef

.field public static final DO_TRAVERSAL:I = 0x3e8

.field public static final FINISHED_EVENT:I = 0x3f2

.field public static final FINISH_INPUT_CONNECTION:I = 0x3f4

.field private static final LOCAL_LOGV:Z = false

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MEASURE_LATENCY:Z = false

.field public static final RESIZED:I = 0x3ea

.field public static final RESIZED_REPORT:I = 0x3eb

.field private static final SHOW_FPS:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewRoot"

.field private static final WATCH_POINTER:Z = false

.field public static final WINDOW_FOCUS_CHANGED:I = 0x3ec

.field private static lt:Landroid/os/LatencyTimer;

.field static mInitialized:Z

.field static final mStaticInit:Ljava/lang/Object;

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private static sDrawTime:I

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static sInstanceCount:J

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRoot$RunQueue;",
            ">;"
        }
    .end annotation
.end field

.field static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field mAddNesting:I

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field mCurScrollY:I

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field mDrawingAllowed:Z

.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFinishedCallback:Ljava/lang/Runnable;

.field mFirst:Z

.field mFocusedView:Landroid/view/View;

.field mFullRedrawNeeded:Z

.field mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mGesture:Landroid/view/GestureDetector;

.field mGlCanvas:Landroid/graphics/Canvas;

.field mGlWanted:Z

.field mHasHadWindowFocus:Z

.field mHeight:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field mInputChannel:Landroid/view/InputChannel;

.field private final mInputHandler:Landroid/view/InputHandler;

.field final mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mIsAnimating:Z

.field mIsCreating:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastScrolledFocus:Landroid/view/View;

.field mLastTrackballTime:J

.field mLastWasImTarget:Z

.field mLayoutRequested:Z

.field final mLocation:Landroid/view/WindowLeaked;

.field mNewSurfaceNeeded:Z

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingEventSeq:I

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field private mProfile:Z

.field mRealFocusedView:Landroid/view/View;

.field mReportNextDraw:Z

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSoftInputMode:I

.field private final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

.field final mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalScheduled:Z

.field mUseGL:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRoot$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 109
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/view/ViewRoot;->sInstanceCount:J

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->mStaticInit:Ljava/lang/Object;

    .line 114
    sput-boolean v2, Landroid/view/ViewRoot;->mInitialized:Z

    .line 116
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 119
    sput-boolean v2, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 255
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRoot;->mLastTrackballTime:J

    .line 127
    new-instance v0, Landroid/view/ViewRoot$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRoot$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

    .line 128
    new-instance v0, Landroid/view/ViewRoot$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRoot$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRoot;->mTmpLocation:[I

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    .line 134
    iput v2, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    .line 140
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 148
    iput-boolean v4, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    .line 183
    iput-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 187
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 199
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 202
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 203
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 345
    iput-boolean v2, p0, Landroid/view/ViewRoot;->mProfile:Z

    .line 2937
    new-instance v0, Landroid/view/ViewRoot$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRoot$1;-><init>(Landroid/view/ViewRoot;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mInputHandler:Landroid/view/InputHandler;

    .line 3454
    new-instance v0, Landroid/view/ViewRoot$2;

    invoke-direct {v0, p0}, Landroid/view/ViewRoot$2;-><init>(Landroid/view/ViewRoot;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mHolder:Landroid/view/SurfaceHolder;

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    .line 269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRoot;->mThread:Ljava/lang/Thread;

    .line 270
    new-instance v0, Landroid/view/WindowLeaked;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    .line 271
    iget-object v0, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 272
    iput v3, p0, Landroid/view/ViewRoot;->mWidth:I

    .line 273
    iput v3, p0, Landroid/view/ViewRoot;->mHeight:I

    .line 274
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    .line 275
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    .line 276
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    .line 277
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    .line 278
    new-instance v0, Landroid/view/ViewRoot$W;

    invoke-direct {v0, p0, p1}, Landroid/view/ViewRoot$W;-><init>(Landroid/view/ViewRoot;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    .line 279
    new-instance v0, Landroid/view/ViewRoot$InputMethodCallback;

    invoke-direct {v0, p0}, Landroid/view/ViewRoot$InputMethodCallback;-><init>(Landroid/view/ViewRoot;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

    .line 280
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRoot;->mViewVisibility:I

    .line 281
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    .line 282
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 283
    iput-boolean v4, p0, Landroid/view/ViewRoot;->mFirst:Z

    .line 284
    iput-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 285
    new-instance v0, Landroid/view/View$AttachInfo;

    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-direct {v0, v1, v2, p0, p0}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 286
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRoot;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRoot;->mDensity:I

    .line 294
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewRoot;Ljava/lang/Runnable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/view/ViewRoot;->startInputEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewRoot;Landroid/view/KeyEvent;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchKey(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/ViewRoot;Landroid/view/MotionEvent;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchMotion(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/ViewRoot;)Landroid/view/Surface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 339
    sget-object v0, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 340
    :try_start_3
    sget-object v1, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 331
    sget-object v0, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 332
    :try_start_3
    sget-boolean v1, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    if-nez v1, :cond_c

    .line 333
    sget-object v1, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_c
    monitor-exit v0

    .line 336
    return-void

    .line 335
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private static captureKeyLog(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .registers 6
    .parameter "subTag"
    .parameter "ev"

    .prologue
    const/16 v3, 0x2c

    .line 2589
    if-eqz p1, :cond_d

    const-string v1, "debug.captureevent"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_e

    .line 2603
    :cond_d
    :goto_d
    return-void

    .line 2593
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2594
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2595
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2596
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2597
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2598
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2599
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2600
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2601
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2602
    const-string v1, "ViewRoot"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private static captureMotionLog(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "subTag"
    .parameter "ev"

    .prologue
    const/16 v3, 0x2c

    .line 2564
    if-eqz p1, :cond_d

    const-string v1, "debug.captureevent"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_e

    .line 2583
    :cond_d
    :goto_d
    return-void

    .line 2569
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2570
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2575
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2577
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2582
    const-string v1, "ViewRoot"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d
.end method

.method private checkEglErrors()V
    .registers 3

    .prologue
    .line 465
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mUseGL:Z

    if-eqz v1, :cond_18

    .line 466
    iget-object v1, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 467
    .local v0, err:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_18

    .line 470
    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyGL()V

    .line 471
    const/16 v1, 0x300e

    if-eq v0, v1, :cond_18

    .line 473
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mGlWanted:Z

    .line 477
    .end local v0           #err:I
    :cond_18
    return-void
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 2515
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2516
    .local v0, action:I
    if-eqz v0, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    move v1, v3

    .line 2556
    :goto_b
    return v1

    .line 2519
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_16

    move v1, v3

    .line 2520
    goto :goto_b

    .line 2524
    :cond_16
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v1, :cond_1e

    move v1, v3

    .line 2525
    goto :goto_b

    .line 2535
    :cond_1e
    invoke-static {p1}, Landroid/view/ViewRoot;->isKeyboardKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_5d

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 2536
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 2537
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_4c

    move v1, v3

    .line 2541
    goto :goto_b

    .line 2543
    :cond_4c
    invoke-virtual {p0, v3}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2544
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "should not have changed focus when leaving touch mode while a view has focus."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5b
    move v1, v3

    .line 2547
    goto :goto_b

    .line 2550
    :cond_5d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRoot;->isDirectional(I)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 2554
    invoke-virtual {p0, v3}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    move-result v1

    goto :goto_b

    :cond_6c
    move v1, v3

    .line 2556
    goto :goto_b
.end method

.method private deliverKeyEvent(Landroid/view/KeyEvent;Z)V
    .registers 10
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/4 v6, 0x1

    .line 2625
    iget-object v4, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v4, :cond_14

    iget-object v4, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v4

    move v1, v4

    .line 2627
    .local v1, handled:Z
    :goto_c
    if-eqz v1, :cond_16

    .line 2628
    if-eqz p2, :cond_13

    .line 2629
    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    .line 2660
    :cond_13
    :goto_13
    return-void

    .end local v1           #handled:Z
    :cond_14
    move v1, v6

    .line 2625
    goto :goto_c

    .line 2636
    .restart local v1       #handled:Z
    :cond_16
    iget-boolean v4, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    if-eqz v4, :cond_52

    .line 2641
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_38

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v6, :cond_38

    .line 2644
    iget-object v4, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "clipboardEx"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 2645
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 2649
    .end local v0           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_38
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 2650
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_52

    iget-object v4, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v4, :cond_52

    .line 2651
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRoot;->enqueuePendingEvent(Ljava/lang/Object;Z)I

    move-result v3

    .line 2654
    .local v3, seq:I
    iget-object v4, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/view/ViewRoot;->mInputMethodCallback:Landroid/view/ViewRoot$InputMethodCallback;

    invoke-virtual {v2, v4, v3, p1, v5}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    goto :goto_13

    .line 2659
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #seq:I
    :cond_52
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V

    goto :goto_13
.end method

.method private deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V
    .registers 12
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2683
    :try_start_0
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v7, :cond_73

    iget-boolean v7, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v7, :cond_73

    .line 2684
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2685
    .local v0, action:I
    if-nez v0, :cond_1c

    const/4 v7, 0x1

    move v4, v7

    .line 2687
    .local v4, isDown:Z
    :goto_10
    invoke-direct {p0, p1}, Landroid/view/ViewRoot;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_8d

    move-result v7

    if-eqz v7, :cond_1f

    .line 2744
    if-eqz p2, :cond_1b

    .line 2745
    .end local v0           #action:I
    .end local v4           #isDown:Z
    :goto_18
    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    .line 2750
    :cond_1b
    return-void

    .line 2685
    .restart local v0       #action:I
    :cond_1c
    const/4 v7, 0x0

    move v4, v7

    goto :goto_10

    .line 2694
    .restart local v4       #isDown:Z
    :cond_1f
    :try_start_1f
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    .line 2696
    .local v5, keyHandled:Z
    if-nez v5, :cond_73

    if-eqz v4, :cond_73

    .line 2697
    const/4 v1, 0x0

    .line 2698
    .local v1, direction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    packed-switch v7, :pswitch_data_94

    .line 2713
    :goto_31
    if-eqz v1, :cond_73

    .line 2715
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v7, :cond_82

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 2716
    .local v3, focused:Landroid/view/View;
    :goto_3e
    if-eqz v3, :cond_73

    .line 2717
    invoke-virtual {v3, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v6

    .line 2718
    .local v6, v:Landroid/view/View;
    const/4 v2, 0x0

    .line 2719
    .local v2, focusPassed:Z
    if-eqz v6, :cond_6c

    if-eq v6, v3, :cond_6c

    .line 2723
    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2724
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_66

    .line 2725
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2727
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, v8}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2730
    :cond_66
    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v7}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 2733
    :cond_6c
    if-nez v2, :cond_85

    .line 2734
    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7, v3, v1}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    .line 2744
    .end local v0           #action:I
    .end local v1           #direction:I
    .end local v2           #focusPassed:Z
    .end local v3           #focused:Landroid/view/View;
    .end local v4           #isDown:Z
    .end local v5           #keyHandled:Z
    .end local v6           #v:Landroid/view/View;
    :cond_73
    :goto_73
    if-eqz p2, :cond_1b

    goto :goto_18

    .line 2700
    .restart local v0       #action:I
    .restart local v1       #direction:I
    .restart local v4       #isDown:Z
    .restart local v5       #keyHandled:Z
    :pswitch_76
    const/16 v1, 0x11

    .line 2701
    goto :goto_31

    .line 2703
    :pswitch_79
    const/16 v1, 0x42

    .line 2704
    goto :goto_31

    .line 2706
    :pswitch_7c
    const/16 v1, 0x21

    .line 2707
    goto :goto_31

    .line 2709
    :pswitch_7f
    const/16 v1, 0x82

    goto :goto_31

    .line 2715
    :cond_82
    const/4 v7, 0x0

    move-object v3, v7

    goto :goto_3e

    .line 2736
    .restart local v2       #focusPassed:Z
    .restart local v3       #focused:Landroid/view/View;
    .restart local v6       #v:Landroid/view/View;
    :cond_85
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/ViewRoot;->playSoundEffect(I)V
    :try_end_8c
    .catchall {:try_start_1f .. :try_end_8c} :catchall_8d

    goto :goto_73

    .line 2744
    .end local v0           #action:I
    .end local v1           #direction:I
    .end local v2           #focusPassed:Z
    .end local v3           #focused:Landroid/view/View;
    .end local v4           #isDown:Z
    .end local v5           #keyHandled:Z
    .end local v6           #v:Landroid/view/View;
    :catchall_8d
    move-exception v7

    if-eqz p2, :cond_93

    .line 2745
    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    .line 2744
    :cond_93
    throw v7

    .line 2698
    :pswitch_data_94
    .packed-switch 0x13
        :pswitch_7c
        :pswitch_7f
        :pswitch_76
        :pswitch_79
    .end packed-switch
.end method

.method private deliverMouseEvent(Landroid/view/MotionEvent;)V
    .registers 13
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2437
    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 2438
    .local v5, wm:Landroid/view/IWindowManager;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 2439
    .local v0, action:I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_3e

    .line 2440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v6, v8

    .line 2441
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v7, v8

    .line 2444
    .local v7, y:I
    :try_start_20
    invoke-interface {v5, v6, v7}, Landroid/view/IWindowManager;->setMouseCursor(II)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 2477
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_23
    :goto_23
    return-void

    .line 2445
    .restart local v6       #x:I
    .restart local v7       #y:I
    :catch_24
    move-exception v1

    .line 2446
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "ViewRoot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Oops: failed to setMouseCursor exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 2451
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v6           #x:I
    .end local v7           #y:I
    :cond_3e
    if-eqz v0, :cond_42

    if-ne v0, v9, :cond_23

    .line 2456
    :cond_42
    const/16 v8, 0x1002

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2458
    iget-object v8, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v8, :cond_50

    .line 2459
    iget-object v8, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v8, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    .line 2463
    :cond_50
    iget-object v8, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v8, :cond_23

    iget-boolean v8, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v8, :cond_23

    .line 2465
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_7b

    move v4, v9

    .line 2466
    .local v4, isDown:Z
    :goto_5f
    if-eqz v4, :cond_64

    .line 2467
    invoke-virtual {p0, v9}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 2470
    :cond_64
    iget-object v8, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 2471
    .local v3, handled:Z
    if-nez v3, :cond_23

    if-eqz v4, :cond_23

    .line 2472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    .line 2473
    .local v2, edgeFlags:I
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 2474
    iget-object v8, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_23

    .end local v2           #edgeFlags:I
    .end local v3           #handled:Z
    .end local v4           #isDown:Z
    :cond_7b
    move v4, v10

    .line 2465
    goto :goto_5f
.end method

.method private deliverPointerEvent(Landroid/view/MotionEvent;)V
    .registers 15
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2236
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_b

    .line 2237
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    .line 2240
    :cond_b
    const/4 v8, 0x0

    .line 2241
    .local v8, handled:Z
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v0, :cond_82

    iget-boolean v0, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v0, :cond_82

    .line 2244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_83

    move v9, v12

    .line 2245
    .local v9, isDown:Z
    :goto_1b
    if-eqz v9, :cond_20

    .line 2246
    invoke-virtual {p0, v12}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 2251
    :cond_20
    iget v0, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-eqz v0, :cond_2b

    .line 2252
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2268
    :cond_2b
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 2275
    if-nez v8, :cond_82

    if-eqz v9, :cond_82

    .line 2276
    iget-object v0, p0, Landroid/view/ViewRoot;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v7

    .line 2278
    .local v7, edgeSlop:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v6

    .line 2279
    .local v6, edgeFlags:I
    const/16 v4, 0x21

    .line 2280
    .local v4, direction:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    .line 2281
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 2282
    .local v3, y:I
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 2284
    .local v5, deltas:[I
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_8e

    .line 2285
    const/16 v4, 0x82

    .line 2286
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_85

    .line 2287
    aput v7, v5, v11

    .line 2288
    add-int/2addr v2, v7

    .line 2308
    :cond_5b
    :goto_5b
    if-eqz v6, :cond_82

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_82

    .line 2309
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual/range {v0 .. v5}, Landroid/view/FocusFinder;->findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;

    move-result-object v10

    .line 2311
    .local v10, nearest:Landroid/view/View;
    if-eqz v10, :cond_82

    .line 2312
    aget v0, v5, v11

    int-to-float v0, v0

    aget v1, v5, v12

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2313
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 2314
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2319
    .end local v2           #x:I
    .end local v3           #y:I
    .end local v4           #direction:I
    .end local v5           #deltas:[I
    .end local v6           #edgeFlags:I
    .end local v7           #edgeSlop:I
    .end local v9           #isDown:Z
    .end local v10           #nearest:Landroid/view/View;
    :cond_82
    return-void

    :cond_83
    move v9, v11

    .line 2244
    goto :goto_1b

    .line 2289
    .restart local v2       #x:I
    .restart local v3       #y:I
    .restart local v4       #direction:I
    .restart local v5       #deltas:[I
    .restart local v6       #edgeFlags:I
    .restart local v7       #edgeSlop:I
    .restart local v9       #isDown:Z
    :cond_85
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_5b

    .line 2290
    neg-int v0, v7

    aput v0, v5, v11

    .line 2291
    sub-int/2addr v2, v7

    goto :goto_5b

    .line 2293
    :cond_8e
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_a5

    .line 2294
    const/16 v4, 0x21

    .line 2295
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_9c

    .line 2296
    aput v7, v5, v11

    .line 2297
    add-int/2addr v2, v7

    goto :goto_5b

    .line 2298
    :cond_9c
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_5b

    .line 2299
    neg-int v0, v7

    aput v0, v5, v11

    .line 2300
    sub-int/2addr v2, v7

    goto :goto_5b

    .line 2302
    :cond_a5
    and-int/lit8 v0, v6, 0x4

    if-eqz v0, :cond_ac

    .line 2303
    const/16 v4, 0x42

    goto :goto_5b

    .line 2304
    :cond_ac
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_5b

    .line 2305
    const/16 v4, 0x11

    goto :goto_5b
.end method

.method private deliverTrackballEvent(Landroid/view/MotionEvent;)V
    .registers 34
    .parameter "event"

    .prologue
    .line 2324
    const/16 v26, 0x0

    .line 2325
    .local v26, handled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    if-eqz v5, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v5, v0

    if-eqz v5, :cond_26

    .line 2326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v26

    .line 2327
    if-eqz v26, :cond_26

    .line 2332
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->ensureTouchMode(Z)Z

    .line 2433
    :cond_25
    :goto_25
    return-void

    .line 2340
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTrackballAxisX:Landroid/view/ViewRoot$TrackballAxis;

    move-object/from16 v28, v0

    .line 2341
    .local v28, x:Landroid/view/ViewRoot$TrackballAxis;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTrackballAxisY:Landroid/view/ViewRoot$TrackballAxis;

    move-object/from16 v30, v0

    .line 2343
    .local v30, y:Landroid/view/ViewRoot$TrackballAxis;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2344
    .local v6, curTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ViewRoot;->mLastTrackballTime:J

    move-wide v8, v0

    const-wide/16 v10, 0xfa

    add-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-gez v5, :cond_55

    .line 2347
    const/4 v5, 0x0

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2348
    const/4 v5, 0x0

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2349
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewRoot;->mLastTrackballTime:J

    .line 2352
    :cond_55
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v25

    .line 2353
    .local v25, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    .line 2354
    .local v13, metastate:I
    packed-switch v25, :pswitch_data_18e

    .line 2377
    :goto_60
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const-string v10, "X"

    move-object/from16 v0, v28

    move v1, v5

    move-wide v2, v8

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewRoot$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v29

    .line 2378
    .local v29, xOff:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    const-string v10, "Y"

    move-object/from16 v0, v30

    move v1, v5

    move-wide v2, v8

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewRoot$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v31

    .line 2386
    .local v31, yOff:F
    const/4 v11, 0x0

    .line 2387
    .local v11, keycode:I
    const/16 v27, 0x0

    .line 2388
    .local v27, movement:I
    const/high16 v23, 0x3f80

    .line 2389
    .local v23, accel:F
    cmpl-float v5, v29, v31

    if-lez v5, :cond_159

    .line 2390
    const/high16 v5, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v8

    div-float/2addr v5, v8

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->generate(F)I

    move-result v27

    .line 2391
    if-eqz v27, :cond_b1

    .line 2392
    if-lez v27, :cond_154

    const/16 v5, 0x16

    move v11, v5

    .line 2394
    :goto_a4
    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    move/from16 v23, v0

    .line 2395
    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2407
    :cond_b1
    :goto_b1
    if-eqz v11, :cond_25

    .line 2408
    if-gez v27, :cond_ba

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    .line 2409
    :cond_ba
    move/from16 v0, v27

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v23

    move v0, v5

    float-to-int v0, v0

    move/from16 v24, v0

    .line 2413
    .local v24, accelMovement:I
    move/from16 v0, v24

    move/from16 v1, v27

    if-le v0, v1, :cond_dd

    .line 2416
    add-int/lit8 v27, v27, -0x1

    .line 2417
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x2

    sub-int v12, v24, v27

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 2421
    :cond_dd
    :goto_dd
    if-lez v27, :cond_186

    .line 2424
    add-int/lit8 v27, v27, -0x1

    .line 2425
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2426
    new-instance v14, Landroid/view/KeyEvent;

    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v22

    move-wide v15, v6

    move-wide/from16 v17, v6

    move/from16 v20, v11

    invoke-direct/range {v14 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 2428
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_dd

    .line 2356
    .end local v11           #keycode:I
    .end local v23           #accel:F
    .end local v24           #accelMovement:I
    .end local v27           #movement:I
    .end local v29           #xOff:F
    .end local v31           #yOff:F
    :pswitch_110
    const/4 v5, 0x2

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2357
    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2358
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x0

    const/16 v11, 0x17

    const/4 v12, 0x0

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_60

    .line 2363
    :pswitch_132
    const/4 v5, 0x2

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2364
    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    .line 2365
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    const/16 v11, 0x17

    const/4 v12, 0x0

    move-wide v8, v6

    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v8

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_60

    .line 2392
    .restart local v11       #keycode:I
    .restart local v23       #accel:F
    .restart local v27       #movement:I
    .restart local v29       #xOff:F
    .restart local v31       #yOff:F
    :cond_154
    const/16 v5, 0x15

    move v11, v5

    goto/16 :goto_a4

    .line 2397
    :cond_159
    const/4 v5, 0x0

    cmpl-float v5, v31, v5

    if-lez v5, :cond_b1

    .line 2398
    const/high16 v5, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v8

    div-float/2addr v5, v8

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->generate(F)I

    move-result v27

    .line 2399
    if-eqz v27, :cond_b1

    .line 2400
    if-lez v27, :cond_182

    const/16 v5, 0x14

    move v11, v5

    .line 2402
    :goto_173
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewRoot$TrackballAxis;->acceleration:F

    move/from16 v23, v0

    .line 2403
    const/4 v5, 0x2

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot$TrackballAxis;->reset(I)V

    goto/16 :goto_b1

    .line 2400
    :cond_182
    const/16 v5, 0x13

    move v11, v5

    goto :goto_173

    .line 2431
    .restart local v24       #accelMovement:I
    :cond_186
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewRoot;->mLastTrackballTime:J

    goto/16 :goto_25

    .line 2354
    nop

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_110
        :pswitch_132
    .end packed-switch
.end method

.method private destroyGL()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 448
    invoke-static {}, Landroid/view/ViewRoot;->nativeAbandonGlCaches()V

    .line 450
    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 452
    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/ViewRoot;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 453
    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 454
    iget-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 455
    iput-object v5, p0, Landroid/view/ViewRoot;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 456
    iput-object v5, p0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 457
    iput-object v5, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 458
    iput-object v5, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 459
    iput-object v5, p0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    .line 460
    iput-object v5, p0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mUseGL:Z

    .line 462
    return-void
.end method

.method private dispatchKey(Landroid/view/KeyEvent;Z)V
    .registers 6
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2967
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2968
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2969
    if-eqz p2, :cond_15

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2974
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2975
    return-void

    .line 2969
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private dispatchMotion(Landroid/view/MotionEvent;Z)V
    .registers 7
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 2984
    .local v0, source:I
    const/16 v1, 0x2002

    if-ne v0, v1, :cond_c

    .line 2985
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchMouse(Landroid/view/MotionEvent;Z)V

    .line 2998
    :cond_b
    :goto_b
    return-void

    .line 2987
    :cond_c
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_14

    .line 2988
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchPointer(Landroid/view/MotionEvent;Z)V

    goto :goto_b

    .line 2989
    :cond_14
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1c

    .line 2990
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRoot;->dispatchTrackball(Landroid/view/MotionEvent;Z)V

    goto :goto_b

    .line 2993
    :cond_1c
    const-string v1, "ViewRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping unsupported motion event (unimplemented): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    if-eqz p2, :cond_b

    .line 2995
    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    goto :goto_b
.end method

.method private dispatchMouse(Landroid/view/MotionEvent;Z)V
    .registers 6
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3024
    const/16 v1, 0x3f7

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3025
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3026
    if-eqz p2, :cond_15

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3028
    return-void

    .line 3026
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;Z)V
    .registers 6
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3005
    const/16 v1, 0x3ee

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3006
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3007
    if-eqz p2, :cond_15

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3008
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3009
    return-void

    .line 3007
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private dispatchTrackball(Landroid/view/MotionEvent;Z)V
    .registers 6
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3016
    const/16 v1, 0x3ef

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3017
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3018
    if-eqz p2, :cond_15

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3019
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRoot;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3020
    return-void

    .line 3018
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private draw(Z)V
    .registers 28
    .parameter "fullRedrawNeeded"

    .prologue
    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object/from16 v18, v0

    .line 1384
    .local v18, surface:Landroid/view/Surface;
    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/view/Surface;->isValid()Z

    move-result v21

    if-nez v21, :cond_f

    .line 1598
    :cond_e
    :goto_e
    return-void

    .line 1388
    :cond_f
    sget-boolean v21, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    if-nez v21, :cond_3b

    .line 1389
    sget-object v21, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v21

    .line 1390
    const/16 v22, 0x1

    :try_start_18
    sput-boolean v22, Landroid/view/ViewRoot;->sFirstDrawComplete:Z

    .line 1391
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1b
    sget-object v22, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_3a

    .line 1392
    sget-object v22, Landroid/view/ViewRoot;->sFirstDrawHandlers:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewRoot;->post(Ljava/lang/Runnable;)Z

    .line 1391
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b

    .line 1394
    :cond_3a
    monitor-exit v21
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_d3

    .line 1397
    .end local v10           #i:I
    :cond_3b
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRoot;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_73

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 1405
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v21

    if-eqz v21, :cond_d6

    const/16 v21, 0x1

    move/from16 v15, v21

    .line 1406
    .local v15, scrolling:Z
    :goto_8b
    if-eqz v15, :cond_db

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->getCurrY()I

    move-result v20

    .line 1411
    .local v20, yoff:I
    :goto_97
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mCurScrollY:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_ab

    .line 1412
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mCurScrollY:I

    .line 1413
    const/16 p1, 0x1

    .line 1415
    :cond_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move v5, v0

    .line 1416
    .local v5, appScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move v14, v0

    .line 1418
    .local v14, scalingRequired:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    move-object v8, v0

    .line 1419
    .local v8, dirty:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e2

    .line 1421
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_e

    .line 1394
    .end local v5           #appScale:F
    .end local v8           #dirty:Landroid/graphics/Rect;
    .end local v14           #scalingRequired:Z
    .end local v15           #scrolling:Z
    .end local v20           #yoff:I
    :catchall_d3
    move-exception v22

    :try_start_d4
    monitor-exit v21
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw v22

    .line 1405
    :cond_d6
    const/16 v21, 0x0

    move/from16 v15, v21

    goto :goto_8b

    .line 1409
    .restart local v15       #scrolling:Z
    :cond_db
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mScrollY:I

    move/from16 v20, v0

    .restart local v20       #yoff:I
    goto :goto_97

    .line 1425
    .restart local v5       #appScale:F
    .restart local v8       #dirty:Landroid/graphics/Rect;
    .restart local v14       #scalingRequired:Z
    :cond_e2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1ea

    .line 1426
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_1d3

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v7, v0

    .line 1428
    .local v7, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1d3

    if-eqz v7, :cond_1d3

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    const/16 v22, 0xc11

    invoke-interface/range {v21 .. v22}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-interface/range {v21 .. v25}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    const/16 v22, 0x4000

    invoke-interface/range {v21 .. v22}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v21, v0

    const/16 v22, 0xc11

    invoke-interface/range {v21 .. v22}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x20

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1438
    const/16 v21, 0x1

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v13

    .line 1440
    .local v13, saveCount:I
    const/16 v21, 0x0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    :try_start_178
    move-object v0, v7

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_194

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 1444
    :cond_194
    if-eqz v14, :cond_1e2

    sget v21, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_198
    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1aa
    .catchall {:try_start_178 .. :try_end_1aa} :catchall_1e5

    .line 1451
    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1457
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->checkEglErrors()V

    .line 1468
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v13           #saveCount:I
    :cond_1d3
    if-eqz v15, :cond_e

    .line 1469
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1470
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_e

    .line 1444
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v13       #saveCount:I
    :cond_1e2
    const/16 v21, 0x0

    goto :goto_198

    .line 1451
    :catchall_1e5
    move-exception v21

    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v21

    .line 1475
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v13           #saveCount:I
    :cond_1ea
    if-eqz p1, :cond_236

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1477
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    const/high16 v24, 0x3f00

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v5

    const/high16 v25, 0x3f00

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object v0, v8

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1489
    :cond_236
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_244

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mIsAnimating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_34a

    .line 1492
    :cond_244
    :try_start_244
    iget v11, v8, Landroid/graphics/Rect;->left:I

    .line 1493
    .local v11, left:I
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 1494
    .local v19, top:I
    iget v12, v8, Landroid/graphics/Rect;->right:I

    .line 1495
    .local v12, right:I
    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    .line 1496
    .local v6, bottom:I
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v7

    .line 1498
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-ne v0, v1, :cond_27f

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_27f

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move v0, v12

    move/from16 v1, v21

    if-ne v0, v1, :cond_27f

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move v0, v6

    move/from16 v1, v21

    if-eq v0, v1, :cond_28d

    .line 1500
    :cond_27f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1504
    :cond_28d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mDensity:I

    move/from16 v21, v0

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_299
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_244 .. :try_end_299} :catch_359
    .catch Ljava/lang/IllegalArgumentException; {:try_start_244 .. :try_end_299} :catch_36a

    .line 1518
    :try_start_299
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_2a7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mIsAnimating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_344

    .line 1519
    :cond_2a7
    const-wide/16 v16, 0x0

    .line 1539
    .local v16, startTime:J
    invoke-virtual {v7}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v21

    if-eqz v21, :cond_2b1

    if-eqz v20, :cond_2bd

    .line 1540
    :cond_2b1
    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v7

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1543
    :cond_2bd
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 1544
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsAnimating:Z

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v22, v0

    or-int/lit8 v22, v22, 0x20

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1554
    const/16 v21, 0x1

    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I
    :try_end_2f4
    .catchall {:try_start_299 .. :try_end_2f4} :catchall_391

    move-result v13

    .line 1556
    .restart local v13       #saveCount:I
    const/16 v21, 0x0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    :try_start_301
    move-object v0, v7

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_31d

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 1560
    :cond_31d
    if-eqz v14, :cond_37b

    sget v21, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_321
    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_333
    .catchall {:try_start_301 .. :try_end_333} :catchall_37e

    .line 1564
    :try_start_333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1565
    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_344
    .catchall {:try_start_333 .. :try_end_344} :catchall_391

    .line 1586
    .end local v13           #saveCount:I
    .end local v16           #startTime:J
    :cond_344
    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1594
    .end local v6           #bottom:I
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v11           #left:I
    .end local v12           #right:I
    .end local v19           #top:I
    :cond_34a
    if-eqz v15, :cond_e

    .line 1595
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1596
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_e

    .line 1505
    :catch_359
    move-exception v21

    move-object/from16 v9, v21

    .line 1506
    .local v9, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v21, "ViewRoot"

    const-string v22, "OutOfResourcesException locking surface"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 1510
    .end local v9           #e:Landroid/view/Surface$OutOfResourcesException;
    :catch_36a
    move-exception v21

    move-object/from16 v9, v21

    .line 1511
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const-string v21, "ViewRoot"

    const-string v22, "IllegalArgumentException locking surface"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 1560
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #bottom:I
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v11       #left:I
    .restart local v12       #right:I
    .restart local v13       #saveCount:I
    .restart local v16       #startTime:J
    .restart local v19       #top:I
    :cond_37b
    const/16 v21, 0x0

    goto :goto_321

    .line 1564
    :catchall_37e
    move-exception v21

    :try_start_37f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1565
    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1564
    throw v21
    :try_end_391
    .catchall {:try_start_37f .. :try_end_391} :catchall_391

    .line 1586
    .end local v13           #saveCount:I
    .end local v16           #startTime:J
    :catchall_391
    move-exception v21

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v21
.end method

.method private ensureTouchModeLocally(Z)Z
    .registers 3
    .parameter "inTouchMode"

    .prologue
    .line 2142
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_8

    const/4 v0, 0x0

    .line 2147
    :goto_7
    return v0

    .line 2144
    :cond_8
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 2145
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 2147
    if-eqz p1, :cond_1a

    invoke-direct {p0}, Landroid/view/ViewRoot;->enterTouchMode()Z

    move-result v0

    goto :goto_7

    :cond_1a
    invoke-direct {p0}, Landroid/view/ViewRoot;->leaveTouchMode()Z

    move-result v0

    goto :goto_7
.end method

.method private enterTouchMode()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2151
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v2, :cond_36

    .line 2152
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2156
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2157
    .local v1, focused:Landroid/view/View;
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_36

    .line 2159
    invoke-direct {p0, v1}, Landroid/view/ViewRoot;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 2161
    .local v0, ancestorToTakeFocus:Landroid/view/ViewGroup;
    if-eqz v0, :cond_26

    .line 2164
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 2175
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :goto_25
    return v2

    .line 2167
    .restart local v0       #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .restart local v1       #focused:Landroid/view/View;
    :cond_26
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->unFocus()V

    .line 2168
    iget-object v2, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 2169
    iput-object v3, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 2170
    const/4 v2, 0x1

    goto :goto_25

    .line 2175
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :cond_36
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 8
    .parameter "focused"

    .prologue
    const/4 v5, 0x0

    .line 2186
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2187
    .local v1, parent:Landroid/view/ViewParent;
    :goto_5
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2a

    .line 2188
    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 2189
    .local v2, vgParent:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_1d

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v3, v2

    .line 2199
    .end local v2           #vgParent:Landroid/view/ViewGroup;
    :goto_1c
    return-object v3

    .line 2193
    .restart local v2       #vgParent:Landroid/view/ViewGroup;
    :cond_1d
    invoke-virtual {v2}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_25

    move-object v3, v5

    .line 2194
    goto :goto_1c

    .line 2196
    :cond_25
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 2198
    goto :goto_5

    .end local v2           #vgParent:Landroid/view/ViewGroup;
    :cond_2a
    move-object v3, v5

    .line 2199
    goto :goto_1c
.end method

.method private finishInputEvent()V
    .registers 3

    .prologue
    .line 2098
    iget-object v0, p0, Landroid/view/ViewRoot;->mFinishedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 2099
    iget-object v0, p0, Landroid/view/ViewRoot;->mFinishedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRoot;->mFinishedCallback:Ljava/lang/Runnable;

    .line 2105
    :goto_c
    return-void

    .line 2102
    :cond_d
    const-string v0, "ViewRoot"

    const-string v1, "Attempted to tell the input queue that the current input event is finished but there is no input event actually in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private static forceLayout(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 1857
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 1858
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1c

    .line 1859
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 1860
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1861
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v1, :cond_1c

    .line 1862
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewRoot;->forceLayout(Landroid/view/View;)V

    .line 1861
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1865
    .end local v1           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_1c
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 2753
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 2754
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2756
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_20

    .line 2757
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    .line 2759
    :cond_20
    iget-object v0, p0, Landroid/view/ViewRoot;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static getInstanceCount()J
    .registers 2

    .prologue
    .line 327
    sget-wide v0, Landroid/view/ViewRoot;->sInstanceCount:J

    return-wide v0
.end method

.method private getRootMeasureSpec(II)I
    .registers 5
    .parameter "windowSize"
    .parameter "rootDimension"

    .prologue
    const/high16 v1, 0x4000

    .line 1364
    packed-switch p2, :pswitch_data_16

    .line 1376
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1379
    .local v0, measureSpec:I
    :goto_9
    return v0

    .line 1368
    .end local v0           #measureSpec:I
    :pswitch_a
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1369
    .restart local v0       #measureSpec:I
    goto :goto_9

    .line 1372
    .end local v0           #measureSpec:I
    :pswitch_f
    const/high16 v1, -0x8000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1373
    .restart local v0       #measureSpec:I
    goto :goto_9

    .line 1364
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRoot$RunQueue;
    .registers 2

    .prologue
    .line 3504
    sget-object v1, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot$RunQueue;

    .line 3505
    .local v0, rq:Landroid/view/ViewRoot$RunQueue;
    if-eqz v0, :cond_b

    .line 3510
    :goto_a
    return-object v0

    .line 3508
    :cond_b
    new-instance v0, Landroid/view/ViewRoot$RunQueue;

    .end local v0           #rq:Landroid/view/ViewRoot$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRoot$RunQueue;-><init>()V

    .line 3509
    .restart local v0       #rq:Landroid/view/ViewRoot$RunQueue;
    sget-object v1, Landroid/view/ViewRoot;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public static getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;
    .registers 6
    .parameter "mainLooper"

    .prologue
    .line 239
    sget-object v1, Landroid/view/ViewRoot;->mStaticInit:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_3
    sget-boolean v2, Landroid/view/ViewRoot;->mInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2b

    if-nez v2, :cond_27

    .line 242
    :try_start_7
    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 243
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v2

    sput-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    .line 246
    const/4 v2, 0x1

    sput-boolean v2, Landroid/view/ViewRoot;->mInitialized:Z
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_27} :catch_2e

    .line 250
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_27
    :goto_27
    :try_start_27
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v1

    return-object v2

    .line 251
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2b

    throw v2

    .line 247
    :catch_2e
    move-exception v2

    goto :goto_27
.end method

.method private initializeGL()V
    .registers 3

    .prologue
    .line 374
    invoke-direct {p0}, Landroid/view/ViewRoot;->initializeGLInner()V

    .line 375
    iget-object v1, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 376
    .local v0, err:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_13

    .line 378
    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyGL()V

    .line 379
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mGlWanted:Z

    .line 381
    :cond_13
    return-void
.end method

.method private initializeGLInner()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x1

    .line 384
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 385
    .local v0, egl:Ljavax/microedition/khronos/egl/EGL10;
    iput-object v0, p0, Landroid/view/ViewRoot;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 390
    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 391
    .local v1, eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    iput-object v1, p0, Landroid/view/ViewRoot;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 396
    const/4 v11, 0x2

    new-array v10, v11, [I

    .line 397
    .local v10, version:[I
    invoke-interface {v0, v1, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 403
    const/16 v11, 0x9

    new-array v2, v11, [I

    fill-array-data v2, :array_4e

    .line 410
    .local v2, configSpec:[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 411
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v4, [I

    .line 412
    .local v5, num_config:[I
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 413
    const/4 v11, 0x0

    aget-object v6, v3, v11

    .line 419
    .local v6, config:Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v6, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v7

    .line 421
    .local v7, context:Ljavax/microedition/khronos/egl/EGLContext;
    iput-object v7, p0, Landroid/view/ViewRoot;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 426
    iget-object v11, p0, Landroid/view/ViewRoot;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1, v6, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v9

    .line 427
    .local v9, surface:Ljavax/microedition/khronos/egl/EGLSurface;
    iput-object v9, p0, Landroid/view/ViewRoot;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 433
    invoke-interface {v0, v1, v9, v9, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 440
    invoke-virtual {v7}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v8

    check-cast v8, Ljavax/microedition/khronos/opengles/GL11;

    .line 441
    .local v8, gl:Ljavax/microedition/khronos/opengles/GL11;
    iput-object v8, p0, Landroid/view/ViewRoot;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 442
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v8}, Landroid/graphics/Canvas;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    iput-object v11, p0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    .line 443
    iput-boolean v4, p0, Landroid/view/ViewRoot;->mUseGL:Z

    .line 444
    return-void

    .line 403
    :array_4e
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method static isDirectional(I)Z
    .registers 2
    .parameter "keyCode"

    .prologue
    .line 2485
    packed-switch p0, :pswitch_data_8

    .line 2492
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2490
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2485
    nop

    :pswitch_data_8
    .packed-switch 0x13
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static isInTouchMode()Z
    .registers 1

    .prologue
    .line 364
    sget-boolean v0, Landroid/view/ViewRoot;->mInitialized:Z

    if-eqz v0, :cond_c

    .line 366
    :try_start_4
    sget-object v0, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v0

    .line 370
    :goto_a
    return v0

    .line 367
    :catch_b
    move-exception v0

    .line 370
    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isKeyboardKey(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "keyEvent"

    .prologue
    .line 2501
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 2502
    .local v0, convertedKey:I
    if-lez v0, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 1848
    if-ne p0, p1, :cond_5

    move v1, v2

    .line 1853
    :goto_4
    return v1

    .line 1852
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1853
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRoot;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v2

    goto :goto_4

    :cond_17
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private leaveTouchMode()Z
    .registers 6

    .prologue
    const/16 v4, 0x82

    const/4 v3, 0x0

    .line 2203
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_39

    .line 2204
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2206
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 2207
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1f

    move v1, v3

    .line 2225
    :goto_1e
    return v1

    .line 2210
    :cond_1f
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-eq v1, v2, :cond_2d

    move v1, v3

    .line 2214
    goto :goto_1e

    .line 2220
    :cond_2d
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewRoot;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2221
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_39

    .line 2222
    invoke-virtual {v0, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    goto :goto_1e

    .end local v0           #focused:Landroid/view/View;
    :cond_39
    move v1, v3

    .line 2225
    goto :goto_1e
.end method

.method private static native nativeAbandonGlCaches()V
.end method

.method private static native nativeShowFPS(Landroid/graphics/Canvas;I)V
.end method

.method private performTraversals()V
    .registers 63

    .prologue
    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object/from16 v34, v0

    .line 752
    .local v34, host:Landroid/view/View;
    if-eqz v34, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAdded:Z

    move v6, v0

    if-nez v6, :cond_10

    .line 1335
    :cond_f
    :goto_f
    return-void

    .line 755
    :cond_10
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    .line 756
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    .line 757
    const/16 v60, 0x0

    .line 758
    .local v60, windowResizesToFitContent:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    move/from16 v29, v0

    .line 759
    .local v29, fullRedrawNeeded:Z
    const/16 v45, 0x0

    .line 760
    .local v45, newSurface:Z
    const/16 v53, 0x0

    .line 761
    .local v53, surfaceChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v43, v0

    .line 768
    .local v43, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v14, v0

    .line 770
    .local v14, attachInfo:Landroid/view/View$AttachInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->getHostVisibility()I

    move-result v55

    .line 771
    .local v55, viewVisibility:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mViewVisibility:I

    move v6, v0

    move v0, v6

    move/from16 v1, v55

    if-ne v0, v1, :cond_48

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    move v6, v0

    if-eqz v6, :cond_1cb

    :cond_48
    const/4 v6, 0x1

    move/from16 v56, v6

    .line 774
    .local v56, viewVisibilityChanged:Z
    :goto_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget v12, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 776
    .local v12, appScale:F
    const/16 v48, 0x0

    .line 777
    .local v48, params:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    move v6, v0

    if-eqz v6, :cond_65

    .line 778
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 779
    const/16 v53, 0x1

    .line 780
    move-object/from16 v48, v43

    .line 782
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    .line 783
    .local v28, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-eqz v6, :cond_1d3

    .line 784
    const/16 v29, 0x1

    .line 785
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v47

    .line 789
    .local v47, packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v47

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    .line 790
    .local v24, desiredWindowWidth:I
    move-object/from16 v0, v47

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    .line 796
    .local v23, desiredWindowHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    iput-object v6, v14, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 797
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v6, v0

    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v6

    if-nez v6, :cond_b1

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1d0

    :cond_b1
    const/4 v6, 0x1

    :goto_b2
    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 799
    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 800
    move/from16 v0, v55

    move-object v1, v14

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 801
    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 802
    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 803
    const/16 v56, 0x0

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 805
    const/4 v6, 0x0

    move-object/from16 v0, v34

    move-object v1, v14

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 820
    .end local v47           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_dc
    :goto_dc
    if-eqz v56, :cond_10a

    .line 821
    move/from16 v0, v55

    move-object v1, v14

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 822
    move-object/from16 v0, v34

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 823
    if-nez v55, :cond_f3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    move v6, v0

    if-eqz v6, :cond_fd

    .line 824
    :cond_f3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move v6, v0

    if-eqz v6, :cond_fd

    .line 825
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->destroyGL()V

    .line 828
    :cond_fd
    const/16 v6, 0x8

    move/from16 v0, v55

    move v1, v6

    if-ne v0, v1, :cond_10a

    .line 831
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    .line 835
    :cond_10a
    const/16 v40, 0x0

    .line 837
    .local v40, insetsChanged:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move v6, v0

    if-eqz v6, :cond_16f

    .line 840
    invoke-static {}, Landroid/view/ViewRoot;->getRunQueue()Landroid/view/ViewRoot$RunQueue;

    move-result-object v6

    iget-object v7, v14, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/view/ViewRoot$RunQueue;->executeActions(Landroid/os/Handler;)V

    .line 842
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-eqz v6, :cond_1fe

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    move v7, v0

    if-nez v7, :cond_1fb

    const/4 v7, 0x1

    :goto_13d
    iput-boolean v7, v6, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 847
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    move v6, v0

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    .line 872
    :cond_14a
    :goto_14a
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v6, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v19

    .line 873
    .local v19, childWidthMeasureSpec:I
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v6, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v18

    .line 879
    .local v18, childHeightMeasureSpec:I
    move-object/from16 v0, v34

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 888
    .end local v18           #childHeightMeasureSpec:I
    .end local v19           #childWidthMeasureSpec:I
    :cond_16f
    iget-boolean v6, v14, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v6, :cond_18e

    .line 890
    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 891
    move-object v0, v14

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move/from16 v46, v0

    .line 892
    .local v46, oldVal:Z
    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 893
    const/4 v6, 0x0

    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 894
    iget-boolean v6, v14, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move v0, v6

    move/from16 v1, v46

    if-eq v0, v1, :cond_18e

    .line 895
    move-object/from16 v48, v43

    .line 900
    .end local v46           #oldVal:Z
    :cond_18e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-nez v6, :cond_199

    iget-boolean v6, v14, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v6, :cond_2a0

    .line 901
    :cond_199
    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 902
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mSoftInputMode:I

    move v6, v0

    move v0, v6

    and-int/lit16 v0, v0, 0xf0

    move/from16 v50, v0

    .line 906
    .local v50, resizeMode:I
    if-nez v50, :cond_2a0

    .line 907
    iget-object v6, v14, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 908
    .local v11, N:I
    const/16 v35, 0x0

    .local v35, i:I
    :goto_1b0
    move/from16 v0, v35

    move v1, v11

    if-ge v0, v1, :cond_280

    .line 909
    iget-object v6, v14, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_1c8

    .line 910
    const/16 v50, 0x10

    .line 908
    :cond_1c8
    add-int/lit8 v35, v35, 0x1

    goto :goto_1b0

    .line 771
    .end local v11           #N:I
    .end local v12           #appScale:F
    .end local v23           #desiredWindowHeight:I
    .end local v24           #desiredWindowWidth:I
    .end local v28           #frame:Landroid/graphics/Rect;
    .end local v35           #i:I
    .end local v40           #insetsChanged:Z
    .end local v48           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v50           #resizeMode:I
    .end local v56           #viewVisibilityChanged:Z
    :cond_1cb
    const/4 v6, 0x0

    move/from16 v56, v6

    goto/16 :goto_4b

    .line 797
    .restart local v12       #appScale:F
    .restart local v23       #desiredWindowHeight:I
    .restart local v24       #desiredWindowWidth:I
    .restart local v28       #frame:Landroid/graphics/Rect;
    .restart local v47       #packageMetrics:Landroid/util/DisplayMetrics;
    .restart local v48       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v56       #viewVisibilityChanged:Z
    :cond_1d0
    const/4 v6, 0x0

    goto/16 :goto_b2

    .line 809
    .end local v23           #desiredWindowHeight:I
    .end local v24           #desiredWindowWidth:I
    .end local v47           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_1d3
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v24

    .line 810
    .restart local v24       #desiredWindowWidth:I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v23

    .line 811
    .restart local v23       #desiredWindowHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move/from16 v0, v24

    move v1, v6

    if-ne v0, v1, :cond_1ef

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move/from16 v0, v23

    move v1, v6

    if-eq v0, v1, :cond_dc

    .line 814
    :cond_1ef
    const/16 v29, 0x1

    .line 815
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 816
    const/16 v60, 0x1

    goto/16 :goto_dc

    .line 846
    .restart local v40       #insetsChanged:Z
    :cond_1fb
    const/4 v7, 0x0

    goto/16 :goto_13d

    .line 849
    :cond_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22e

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 852
    const/16 v40, 0x1

    .line 856
    :cond_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24f

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 861
    :cond_24f
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v6, v0

    const/4 v7, -0x2

    if-eq v6, v7, :cond_25f

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v6, v0

    const/4 v7, -0x2

    if-ne v6, v7, :cond_14a

    .line 863
    :cond_25f
    const/16 v60, 0x1

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v47

    .line 867
    .restart local v47       #packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v47

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    .line 868
    move-object/from16 v0, v47

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    goto/16 :goto_14a

    .line 913
    .end local v47           #packageMetrics:Landroid/util/DisplayMetrics;
    .restart local v11       #N:I
    .restart local v35       #i:I
    .restart local v50       #resizeMode:I
    :cond_280
    if-nez v50, :cond_284

    .line 914
    const/16 v50, 0x20

    .line 916
    :cond_284
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v6, v0

    and-int/lit16 v6, v6, 0xf0

    move v0, v6

    move/from16 v1, v50

    if-eq v0, v1, :cond_2a0

    .line 918
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move v6, v0

    and-int/lit16 v6, v6, -0xf1

    or-int v6, v6, v50

    move v0, v6

    move-object/from16 v1, v43

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 921
    move-object/from16 v48, v43

    .line 926
    .end local v11           #N:I
    .end local v35           #i:I
    .end local v50           #resizeMode:I
    :cond_2a0
    if-eqz v48, :cond_2bc

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_2bc

    .line 927
    move-object/from16 v0, v48

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v6, v0

    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v6

    if-nez v6, :cond_2bc

    .line 928
    const/4 v6, -0x3

    move v0, v6

    move-object/from16 v1, v48

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 932
    :cond_2bc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move v6, v0

    if-eqz v6, :cond_4f3

    if-eqz v60, :cond_4f3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move v7, v0

    if-ne v6, v7, :cond_315

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move v7, v0

    if-ne v6, v7, :cond_315

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v6, v0

    const/4 v7, -0x2

    if-ne v6, v7, :cond_2f9

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v6

    move v0, v6

    move/from16 v1, v24

    if-ge v0, v1, :cond_2f9

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v7, v0

    if-ne v6, v7, :cond_315

    :cond_2f9
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v6, v0

    const/4 v7, -0x2

    if-ne v6, v7, :cond_4f3

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v6

    move v0, v6

    move/from16 v1, v23

    if-ge v0, v1, :cond_4f3

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v7, v0

    if-eq v6, v7, :cond_4f3

    :cond_315
    const/4 v6, 0x1

    move/from16 v61, v6

    .line 939
    .local v61, windowShouldResize:Z
    :goto_318
    iget-object v6, v14, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v20

    .line 941
    .local v20, computesInternalInsets:Z
    const/16 v41, 0x0

    .line 942
    .local v41, insetsPending:Z
    const/16 v49, 0x0

    .line 943
    .local v49, relayoutResult:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-nez v6, :cond_331

    if-nez v61, :cond_331

    if-nez v40, :cond_331

    if-nez v56, :cond_331

    if-eqz v48, :cond_67a

    .line 946
    :cond_331
    if-nez v55, :cond_359

    .line 956
    if-eqz v20, :cond_4f8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-nez v6, :cond_33e

    if-eqz v56, :cond_4f8

    :cond_33e
    const/4 v6, 0x1

    move/from16 v41, v6

    .line 959
    :goto_341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_359

    .line 960
    if-nez v48, :cond_353

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v48, v0

    .line 963
    :cond_353
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mGlWanted:Z

    .line 967
    :cond_359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    if-eqz v6, :cond_370

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 969
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mDrawingAllowed:Z

    .line 972
    :cond_370
    const/16 v38, 0x0

    .line 973
    .local v38, initialized:Z
    const/16 v22, 0x0

    .line 975
    .local v22, contentInsetsChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v32

    .line 977
    .local v32, hadSurface:Z
    const/16 v26, 0x0

    .line 978
    .local v26, fl:I
    if-eqz v48, :cond_397

    .line 979
    :try_start_381
    move-object/from16 v0, v48

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    .line 980
    iget-boolean v6, v14, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v6, :cond_397

    .line 981
    move-object/from16 v0, v48

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x80

    move v0, v6

    move-object/from16 v1, v48

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 988
    :cond_397
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v55

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRoot;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v49

    .line 990
    if-eqz v48, :cond_3ab

    .line 991
    move/from16 v0, v26

    move-object/from16 v1, v48

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 999
    :cond_3ab
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    iget v6, v6, Landroid/content/res/Configuration;->seq:I

    if-eqz v6, :cond_3d0

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v7, v0

    if-nez v7, :cond_4fd

    const/4 v7, 0x1

    :goto_3c1
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRoot;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Landroid/content/res/Configuration;->seq:I

    .line 1006
    :cond_3d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_500

    const/4 v6, 0x1

    move/from16 v22, v6

    .line 1008
    :goto_3e5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_505

    const/4 v6, 0x1

    move/from16 v58, v6

    .line 1010
    .local v58, visibleInsetsChanged:Z
    :goto_3fa
    if-eqz v22, :cond_418

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 1016
    :cond_418
    if-eqz v58, :cond_429

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1022
    :cond_429
    if-nez v32, :cond_50f

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_45d

    .line 1031
    const/16 v45, 0x1

    .line 1032
    const/16 v29, 0x1

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Region;->setEmpty()V

    .line 1035
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mGlWanted:Z

    move v6, v0

    if-eqz v6, :cond_45d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mUseGL:Z

    move v6, v0

    if-nez v6, :cond_45d

    .line 1036
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRoot;->initializeGL()V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v6, v0
    :try_end_458
    .catch Landroid/os/RemoteException; {:try_start_381 .. :try_end_458} :catch_53c

    if-eqz v6, :cond_50a

    const/4 v6, 0x1

    move/from16 v38, v6

    .line 1055
    .end local v58           #visibleInsetsChanged:Z
    :cond_45d
    :goto_45d
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    iput v6, v14, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 1056
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    iput v6, v14, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 1061
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mWidth:I

    .line 1062
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mHeight:I

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    if-eqz v6, :cond_59a

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_49b

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v7, v0

    iput-object v7, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 1071
    :cond_49b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_914

    .line 1073
    if-nez v32, :cond_541

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1076
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsCreating:Z

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v16

    .line 1079
    .local v16, callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v16, :cond_53f

    .line 1080
    move-object/from16 v13, v16

    .local v13, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object v0, v13

    array-length v0, v0

    move/from16 v42, v0

    .local v42, len$:I
    const/16 v36, 0x0

    .local v36, i$:I
    :goto_4e0
    move/from16 v0, v36

    move/from16 v1, v42

    if-ge v0, v1, :cond_53f

    aget-object v15, v13, v36

    .line 1081
    .local v15, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-interface {v15, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1080
    add-int/lit8 v36, v36, 0x1

    goto :goto_4e0

    .line 932
    .end local v13           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v15           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v16           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v20           #computesInternalInsets:Z
    .end local v22           #contentInsetsChanged:Z
    .end local v26           #fl:I
    .end local v32           #hadSurface:Z
    .end local v36           #i$:I
    .end local v38           #initialized:Z
    .end local v41           #insetsPending:Z
    .end local v42           #len$:I
    .end local v49           #relayoutResult:I
    .end local v61           #windowShouldResize:Z
    :cond_4f3
    const/4 v6, 0x0

    move/from16 v61, v6

    goto/16 :goto_318

    .line 956
    .restart local v20       #computesInternalInsets:Z
    .restart local v41       #insetsPending:Z
    .restart local v49       #relayoutResult:I
    .restart local v61       #windowShouldResize:Z
    :cond_4f8
    const/4 v6, 0x0

    move/from16 v41, v6

    goto/16 :goto_341

    .line 1002
    .restart local v22       #contentInsetsChanged:Z
    .restart local v26       #fl:I
    .restart local v32       #hadSurface:Z
    .restart local v38       #initialized:Z
    :cond_4fd
    const/4 v7, 0x0

    goto/16 :goto_3c1

    .line 1006
    :cond_500
    const/4 v6, 0x0

    move/from16 v22, v6

    goto/16 :goto_3e5

    .line 1008
    :cond_505
    const/4 v6, 0x0

    move/from16 v58, v6

    goto/16 :goto_3fa

    .line 1037
    .restart local v58       #visibleInsetsChanged:Z
    :cond_50a
    const/4 v6, 0x0

    move/from16 v38, v6

    goto/16 :goto_45d

    .line 1040
    :cond_50f
    :try_start_50f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-nez v6, :cond_45d

    .line 1043
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    .line 1044
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mCurScrollY:I

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mScrollY:I

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v6, v0

    if-eqz v6, :cond_45d

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V
    :try_end_53a
    .catch Landroid/os/RemoteException; {:try_start_50f .. :try_end_53a} :catch_53c

    goto/16 :goto_45d

    .line 1049
    .end local v58           #visibleInsetsChanged:Z
    :catch_53c
    move-exception v6

    goto/16 :goto_45d

    .line 1084
    .restart local v16       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_53f
    const/16 v53, 0x1

    .line 1086
    .end local v16           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_541
    if-eqz v53, :cond_594

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v7, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v10, v0

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v16

    .line 1090
    .restart local v16       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v16, :cond_594

    .line 1091
    move-object/from16 v13, v16

    .restart local v13       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object v0, v13

    array-length v0, v0

    move/from16 v42, v0

    .restart local v42       #len$:I
    const/16 v36, 0x0

    .restart local v36       #i$:I
    :goto_572
    move/from16 v0, v36

    move/from16 v1, v42

    if-ge v0, v1, :cond_594

    aget-object v15, v13, v36

    .line 1092
    .restart local v15       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v9, v0

    invoke-interface {v15, v6, v7, v8, v9}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1091
    add-int/lit8 v36, v36, 0x1

    goto :goto_572

    .line 1097
    .end local v13           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v15           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v16           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v36           #i$:I
    .end local v42           #len$:I
    :cond_594
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsCreating:Z

    .line 1115
    :cond_59a
    :goto_59a
    if-eqz v38, :cond_5ba

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v7, v0

    int-to-float v7, v7

    mul-float/2addr v7, v12

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v8, v0

    int-to-float v8, v8

    mul-float/2addr v8, v12

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 1120
    :cond_5ba
    and-int/lit8 v6, v49, 0x1

    if-eqz v6, :cond_973

    const/4 v6, 0x1

    :goto_5bf
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    move-result v27

    .line 1122
    .local v27, focusChangedDueToTouchMode:Z
    if-nez v27, :cond_5e2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move v7, v0

    if-ne v6, v7, :cond_5e2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move v7, v0

    if-ne v6, v7, :cond_5e2

    if-eqz v22, :cond_67a

    .line 1124
    :cond_5e2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v19

    .line 1125
    .restart local v19       #childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRoot;->getRootMeasureSpec(II)I

    move-result v18

    .line 1134
    .restart local v18       #childHeightMeasureSpec:I
    move-object/from16 v0, v34

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1139
    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move/from16 v59, v0

    .line 1140
    .local v59, width:I
    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move/from16 v33, v0

    .line 1141
    .local v33, height:I
    const/16 v44, 0x0

    .line 1143
    .local v44, measureAgain:Z
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_643

    .line 1144
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mWidth:I

    move v6, v0

    sub-int v6, v6, v59

    int-to-float v6, v6

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    move v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v59, v59, v6

    .line 1145
    const/high16 v6, 0x4000

    move/from16 v0, v59

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    .line 1147
    const/16 v44, 0x1

    .line 1149
    :cond_643
    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_669

    .line 1150
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRoot;->mHeight:I

    move v6, v0

    sub-int v6, v6, v33

    int-to-float v6, v6

    move-object/from16 v0, v43

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    move v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int v33, v33, v6

    .line 1151
    const/high16 v6, 0x4000

    move/from16 v0, v33

    move v1, v6

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 1153
    const/16 v44, 0x1

    .line 1156
    :cond_669
    if-eqz v44, :cond_674

    .line 1160
    move-object/from16 v0, v34

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1163
    :cond_674
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 1167
    .end local v18           #childHeightMeasureSpec:I
    .end local v19           #childWidthMeasureSpec:I
    .end local v22           #contentInsetsChanged:Z
    .end local v26           #fl:I
    .end local v27           #focusChangedDueToTouchMode:Z
    .end local v32           #hadSurface:Z
    .end local v33           #height:I
    .end local v38           #initialized:Z
    .end local v44           #measureAgain:Z
    .end local v59           #width:I
    :cond_67a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    move/from16 v25, v0

    .line 1168
    .local v25, didLayout:Z
    if-nez v25, :cond_686

    iget-boolean v6, v14, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v6, :cond_976

    :cond_686
    const/4 v6, 0x1

    move/from16 v54, v6

    .line 1170
    .local v54, triggerGlobalLayoutListener:Z
    :goto_689
    if-eqz v25, :cond_74d

    .line 1171
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 1172
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mScrollMayChange:Z

    .line 1176
    const-wide/16 v51, 0x0

    .line 1180
    .local v51, startTime:J
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredWidth:I

    move v8, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mMeasuredHeight:I

    move v9, v0

    move-object/from16 v0, v34

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1197
    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_74d

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v6, v0

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v9, v0

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mRight:I

    move v10, v0

    add-int/2addr v9, v10

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v10, v0

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTmpLocation:[I

    move-object v10, v0

    const/4 v11, 0x1

    aget v10, v10, v11

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v11, v0

    add-int/2addr v10, v11

    move-object/from16 v0, v34

    iget v0, v0, Landroid/view/View;->mTop:I

    move v11, v0

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Region;->set(IIII)Z

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, v34

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    if-eqz v6, :cond_721

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 1210
    :cond_721
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_74d

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1214
    :try_start_73e
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTransparentRegion:Landroid/graphics/Region;

    move-object v8, v0

    invoke-interface {v6, v7, v8}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_74d
    .catch Landroid/os/RemoteException; {:try_start_73e .. :try_end_74d} :catch_9b7

    .line 1227
    .end local v51           #startTime:J
    :cond_74d
    :goto_74d
    if-eqz v54, :cond_757

    .line 1228
    const/4 v6, 0x0

    iput-boolean v6, v14, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1229
    iget-object v6, v14, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 1232
    :cond_757
    if-eqz v20, :cond_7f9

    .line 1233
    move-object v0, v14

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v39, v0

    .line 1234
    .local v39, insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    iget-object v6, v14, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v0, v6

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    .line 1235
    .local v30, givenContent:Landroid/graphics/Rect;
    iget-object v6, v14, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v0, v6

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    .line 1236
    .local v31, givenVisible:Landroid/graphics/Rect;
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move v0, v6

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move v0, v6

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move v0, v6

    move-object/from16 v1, v31

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move v0, v6

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move v0, v6

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move v0, v6

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move v0, v6

    move-object/from16 v1, v30

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1239
    iget-object v6, v14, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object v0, v6

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1240
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 1241
    .local v21, contentInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object/from16 v57, v0

    .line 1242
    .local v57, visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    if-eqz v6, :cond_7c8

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v21

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisbileInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v57

    .line 1246
    :cond_7c8
    if-nez v41, :cond_7d8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7f9

    .line 1247
    :cond_7d8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1249
    :try_start_7e3
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    move v8, v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    move-object/from16 v3, v21

    move-object/from16 v4, v57

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_7f9
    .catch Landroid/os/RemoteException; {:try_start_7e3 .. :try_end_7f9} :catch_9b4

    .line 1256
    .end local v21           #contentInsets:Landroid/graphics/Rect;
    .end local v30           #givenContent:Landroid/graphics/Rect;
    .end local v31           #givenVisible:Landroid/graphics/Rect;
    .end local v39           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .end local v57           #visibleInsets:Landroid/graphics/Rect;
    :cond_7f9
    :goto_7f9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mFirst:Z

    move v6, v0

    if-eqz v6, :cond_82e

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    if-eqz v6, :cond_82e

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_97b

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/View;->requestFocus(I)Z

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1274
    :cond_82e
    :goto_82e
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFirst:Z

    .line 1275
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    .line 1276
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    .line 1277
    move/from16 v0, v55

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRoot;->mViewVisibility:I

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v6, :cond_8a1

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v37

    .line 1282
    .local v37, imTarget:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    move v6, v0

    move/from16 v0, v37

    move v1, v6

    if-eq v0, v1, :cond_8a1

    .line 1283
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    .line 1284
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 1285
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_8a1

    if-eqz v37, :cond_8a1

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v8, v0

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    move v9, v0

    if-nez v9, :cond_98b

    const/4 v9, 0x1

    :goto_897
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v10, v0

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 1294
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v37           #imTarget:Z
    :cond_8a1
    iget-object v6, v14, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v17

    .line 1296
    .local v17, cancelDraw:Z
    if-nez v17, :cond_99d

    if-nez v45, :cond_99d

    .line 1297
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1298
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/view/ViewRoot;->draw(Z)V

    .line 1300
    and-int/lit8 v6, v49, 0x2

    if-nez v6, :cond_8c3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRoot;->mReportNextDraw:Z

    move v6, v0

    if-eqz v6, :cond_f

    .line 1305
    :cond_8c3
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mReportNextDraw:Z

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    if-eqz v6, :cond_98e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_98e

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v16

    .line 1309
    .restart local v16       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v16, :cond_98e

    .line 1310
    move-object/from16 v13, v16

    .restart local v13       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object v0, v13

    array-length v0, v0

    move/from16 v42, v0

    .restart local v42       #len$:I
    const/16 v36, 0x0

    .restart local v36       #i$:I
    :goto_8fb
    move/from16 v0, v36

    move/from16 v1, v42

    if-ge v0, v1, :cond_98e

    aget-object v15, v13, v36

    .line 1311
    .restart local v15       #c:Landroid/view/SurfaceHolder$Callback;
    instance-of v6, v15, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v6, :cond_911

    .line 1312
    check-cast v15, Landroid/view/SurfaceHolder$Callback2;

    .end local v15           #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-interface {v15, v6}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1310
    :cond_911
    add-int/lit8 v36, v36, 0x1

    goto :goto_8fb

    .line 1098
    .end local v13           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v16           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v17           #cancelDraw:Z
    .end local v25           #didLayout:Z
    .end local v36           #i$:I
    .end local v42           #len$:I
    .end local v54           #triggerGlobalLayoutListener:Z
    .restart local v22       #contentInsetsChanged:Z
    .restart local v26       #fl:I
    .restart local v32       #hadSurface:Z
    .restart local v38       #initialized:Z
    :cond_914
    if-eqz v32, :cond_59a

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v16

    .line 1101
    .restart local v16       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1102
    if-eqz v16, :cond_951

    .line 1103
    move-object/from16 v13, v16

    .restart local v13       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object v0, v13

    array-length v0, v0

    move/from16 v42, v0

    .restart local v42       #len$:I
    const/16 v36, 0x0

    .restart local v36       #i$:I
    :goto_93e
    move/from16 v0, v36

    move/from16 v1, v42

    if-ge v0, v1, :cond_951

    aget-object v15, v13, v36

    .line 1104
    .restart local v15       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    invoke-interface {v15, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1103
    add-int/lit8 v36, v36, 0x1

    goto :goto_93e

    .line 1107
    .end local v13           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v15           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v36           #i$:I
    .end local v42           #len$:I
    :cond_951
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7}, Landroid/view/Surface;-><init>()V

    iput-object v7, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_59a

    .line 1120
    .end local v16           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_973
    const/4 v6, 0x0

    goto/16 :goto_5bf

    .line 1168
    .end local v22           #contentInsetsChanged:Z
    .end local v26           #fl:I
    .end local v32           #hadSurface:Z
    .end local v38           #initialized:Z
    .restart local v25       #didLayout:Z
    :cond_976
    const/4 v6, 0x0

    move/from16 v54, v6

    goto/16 :goto_689

    .line 1267
    .restart local v54       #triggerGlobalLayoutListener:Z
    :cond_97b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    goto/16 :goto_82e

    .line 1287
    .restart local v5       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v37       #imTarget:Z
    :cond_98b
    const/4 v9, 0x0

    goto/16 :goto_897

    .line 1319
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v37           #imTarget:Z
    .restart local v17       #cancelDraw:Z
    :cond_98e
    :try_start_98e
    sget-object v6, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v7, v0

    invoke-interface {v6, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_998
    .catch Landroid/os/RemoteException; {:try_start_98e .. :try_end_998} :catch_99a

    goto/16 :goto_f

    .line 1320
    :catch_99a
    move-exception v6

    goto/16 :goto_f

    .line 1326
    :cond_99d
    and-int/lit8 v6, v49, 0x2

    if-eqz v6, :cond_9a7

    .line 1327
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mReportNextDraw:Z

    .line 1329
    :cond_9a7
    if-eqz v29, :cond_9af

    .line 1330
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 1333
    :cond_9af
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    goto/16 :goto_f

    .line 1251
    .end local v17           #cancelDraw:Z
    .restart local v21       #contentInsets:Landroid/graphics/Rect;
    .restart local v30       #givenContent:Landroid/graphics/Rect;
    .restart local v31       #givenVisible:Landroid/graphics/Rect;
    .restart local v39       #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v57       #visibleInsets:Landroid/graphics/Rect;
    :catch_9b4
    move-exception v6

    goto/16 :goto_7f9

    .line 1215
    .end local v21           #contentInsets:Landroid/graphics/Rect;
    .end local v30           #givenContent:Landroid/graphics/Rect;
    .end local v31           #givenVisible:Landroid/graphics/Rect;
    .end local v39           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .end local v57           #visibleInsets:Landroid/graphics/Rect;
    .restart local v51       #startTime:J
    :catch_9b7
    move-exception v6

    goto/16 :goto_74d
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .registers 21
    .parameter "params"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v2, v0

    iget v14, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 2766
    .local v14, appScale:F
    const/16 v16, 0x0

    .line 2767
    .local v16, restore:Z
    if-eqz p1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    if-eqz v2, :cond_22

    .line 2768
    const/16 v16, 0x1

    .line 2769
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 2770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 2772
    :cond_22
    if-eqz p1, :cond_24

    .line 2775
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/res/Configuration;->seq:I

    .line 2777
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v4, v0

    iget v4, v4, Landroid/view/View;->mMeasuredWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    move-object v4, v0

    iget v4, v4, Landroid/view/View;->mMeasuredHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v6, 0x3f00

    add-float/2addr v4, v6

    float-to-int v6, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    move-object v13, v0

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {v2 .. v13}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v15

    .line 2785
    .local v15, relayoutResult:I
    if-eqz v16, :cond_75

    .line 2786
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 2789
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    if-eqz v2, :cond_a3

    .line 2790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 2791
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2792
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2794
    :cond_a3
    return v15
.end method

.method private sendAccessibilityEvents()V
    .registers 4

    .prologue
    .line 3062
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 3070
    :cond_10
    :goto_10
    return-void

    .line 3065
    :cond_11
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3066
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3067
    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eq v0, v1, :cond_10

    .line 3068
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_10
.end method

.method private sendUserActionEvent()V
    .registers 5

    .prologue
    .line 3590
    const-string v2, "gsm.sim.userEvent"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 3591
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;-><init>(I)V

    .line 3592
    .local v1, stkEventUserActivity:Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.event"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3593
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "STK EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3594
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3596
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #stkEventUserActivity:Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
    :cond_24
    return-void
.end method

.method private startInputEvent(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "finishedCallback"

    .prologue
    .line 2087
    iget-object v0, p0, Landroid/view/ViewRoot;->mFinishedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 2088
    const-string v0, "ViewRoot"

    const-string v1, "Received a new input event from the input queue but there is already an unfinished input event in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_b
    iput-object p1, p0, Landroid/view/ViewRoot;->mFinishedCallback:Ljava/lang/Runnable;

    .line 2093
    return-void
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 722
    return-void
.end method

.method checkThread()V
    .registers 3

    .prologue
    .line 3087
    iget-object v0, p0, Landroid/view/ViewRoot;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_10

    .line 3088
    new-instance v0, Landroid/view/ViewRoot$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRoot$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3091
    :cond_10
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 3080
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .registers 6
    .parameter "child"

    .prologue
    const/4 v3, 0x0

    .line 1734
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1736
    iget-object v0, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1739
    .local v0, oldFocus:Landroid/view/View;
    iput-object v3, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1740
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1742
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1743
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 1748
    :cond_26
    :goto_26
    return-void

    .line 1745
    :cond_27
    if-eqz v0, :cond_26

    .line 1746
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    goto :goto_26
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 3077
    return-void
.end method

.method public debug()V
    .registers 2

    .prologue
    .line 2865
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 2866
    return-void
.end method

.method public die(Z)V
    .registers 3
    .parameter "immediate"

    .prologue
    .line 2869
    if-eqz p1, :cond_6

    .line 2870
    invoke-virtual {p0}, Landroid/view/ViewRoot;->doDie()V

    .line 2874
    :goto_5
    return-void

    .line 2872
    :cond_6
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendEmptyMessage(I)Z

    goto :goto_5
.end method

.method public dispatchAppVisibility(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 3032
    const/16 v1, 0x3f0

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3033
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_9
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3034
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 3035
    return-void

    .line 3033
    :cond_f
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .registers 4
    .parameter "reason"

    .prologue
    .line 3051
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3052
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3f6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3053
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3054
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 3055
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1785
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1786
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1789
    :cond_a
    iput-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 1790
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 1791
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 1793
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mUseGL:Z

    if-eqz v0, :cond_1b

    .line 1794
    invoke-direct {p0}, Landroid/view/ViewRoot;->destroyGL()V

    .line 1796
    :cond_1b
    iget-object v0, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1798
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_31

    .line 1799
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_44

    .line 1800
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRoot;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 1801
    iput-object v2, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 1808
    :cond_31
    :goto_31
    :try_start_31
    sget-object v0, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_38} :catch_4a

    .line 1814
    :goto_38
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_43

    .line 1815
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1816
    iput-object v2, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    .line 1818
    :cond_43
    return-void

    .line 1803
    :cond_44
    iget-object v0, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {v0}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    goto :goto_31

    .line 1809
    :catch_4a
    move-exception v0

    goto :goto_38
.end method

.method public dispatchFinishedEvent(IZ)V
    .registers 5
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 2906
    const/16 v1, 0x3f2

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2907
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2908
    if-eqz p2, :cond_11

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2909
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 2910
    return-void

    .line 2908
    :cond_11
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public dispatchGetNewSurface()V
    .registers 3

    .prologue
    .line 3038
    const/16 v1, 0x3f1

    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3039
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 3040
    return-void
.end method

.method public dispatchKey(Landroid/view/KeyEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 2950
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRoot;->dispatchKey(Landroid/view/KeyEvent;Z)V

    .line 2951
    return-void
.end method

.method public dispatchMotion(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 2978
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRoot;->dispatchMotion(Landroid/view/MotionEvent;Z)V

    .line 2979
    return-void
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 3001
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRoot;->dispatchPointer(Landroid/view/MotionEvent;Z)V

    .line 3002
    return-void
.end method

.method public dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .registers 11
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    .line 2918
    if-eqz p5, :cond_43

    const/16 v2, 0x3eb

    :goto_4
    invoke-virtual {p0, v2}, Landroid/view/ViewRoot;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2919
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_24

    .line 2920
    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2921
    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 2922
    int-to-float v2, p1

    iget-object v3, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p1, v2

    .line 2923
    int-to-float v2, p2

    iget-object v3, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p2, v2

    .line 2925
    :cond_24
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2926
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2927
    new-instance v1, Landroid/view/ViewRoot$ResizedInfo;

    invoke-direct {v1, p0}, Landroid/view/ViewRoot$ResizedInfo;-><init>(Landroid/view/ViewRoot;)V

    .line 2928
    .local v1, ri:Landroid/view/ViewRoot$ResizedInfo;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRoot$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    .line 2929
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRoot$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 2930
    iput-object p6, v1, Landroid/view/ViewRoot$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    .line 2931
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2932
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 2933
    return-void

    .line 2918
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #ri:Landroid/view/ViewRoot$ResizedInfo;
    :cond_43
    const/16 v2, 0x3ea

    goto :goto_4
.end method

.method public dispatchTrackball(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 3012
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRoot;->dispatchTrackball(Landroid/view/MotionEvent;Z)V

    .line 3013
    return-void
.end method

.method doDie()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2877
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 2879
    monitor-enter p0

    .line 2880
    :try_start_5
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v2, :cond_36

    iget-boolean v2, p0, Landroid/view/ViewRoot;->mFirst:Z

    if-nez v2, :cond_36

    .line 2881
    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 2882
    .local v0, viewVisibility:I
    iget v2, p0, Landroid/view/ViewRoot;->mViewVisibility:I

    if-eq v2, v0, :cond_42

    const/4 v2, 0x1

    move v1, v2

    .line 2883
    .local v1, viewVisibilityChanged:Z
    :goto_19
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_44

    if-nez v2, :cond_1f

    if-eqz v1, :cond_31

    .line 2888
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Landroid/view/ViewRoot;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_31

    .line 2890
    sget-object v2, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_44
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_31} :catch_47

    .line 2896
    :cond_31
    :goto_31
    :try_start_31
    iget-object v2, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 2898
    .end local v0           #viewVisibility:I
    .end local v1           #viewVisibilityChanged:Z
    :cond_36
    iget-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v2, :cond_40

    .line 2899
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 2900
    invoke-virtual {p0}, Landroid/view/ViewRoot;->dispatchDetachedFromWindow()V

    .line 2902
    :cond_40
    monitor-exit p0

    .line 2903
    return-void

    .restart local v0       #viewVisibility:I
    :cond_42
    move v1, v3

    .line 2882
    goto :goto_19

    .line 2902
    .end local v0           #viewVisibility:I
    :catchall_44
    move-exception v2

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_31 .. :try_end_46} :catchall_44

    throw v2

    .line 2892
    .restart local v0       #viewVisibility:I
    .restart local v1       #viewVisibilityChanged:Z
    :catch_47
    move-exception v2

    goto :goto_31
.end method

.method enqueuePendingEvent(Ljava/lang/Object;Z)I
    .registers 5
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2606
    iget v1, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    add-int/lit8 v0, v1, 0x1

    .line 2607
    .local v0, seq:I
    if-gez v0, :cond_7

    const/4 v0, 0x0

    .line 2608
    :cond_7
    iput v0, p0, Landroid/view/ViewRoot;->mPendingEventSeq:I

    .line 2609
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2610
    if-eqz p2, :cond_12

    move v1, v0

    :goto_11
    return v1

    :cond_12
    neg-int v1, v0

    goto :goto_11
.end method

.method ensureTouchMode(Z)Z
    .registers 4
    .parameter "inTouchMode"

    .prologue
    .line 2119
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_8

    const/4 v1, 0x0

    .line 2129
    :goto_7
    return v1

    .line 2123
    :cond_8
    :try_start_8
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_12

    .line 2129
    invoke-direct {p0, p1}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    move-result v1

    goto :goto_7

    .line 2124
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 2125
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 2857
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 2858
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 2859
    const/4 v0, 0x0

    .line 2861
    .end local p0
    :goto_a
    return-object v0

    .restart local p0
    :cond_b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object p0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .end local p0
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_a
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1752
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1754
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1755
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 1770
    :cond_12
    :goto_12
    return-void

    .line 1760
    :cond_13
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1761
    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_3d

    const/4 v1, 0x1

    move v0, v1

    .line 1765
    .local v0, descendantsHaveDibsOnFocus:Z
    :goto_2f
    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/ViewRoot;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1767
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_12

    .line 1761
    .end local v0           #descendantsHaveDibsOnFocus:Z
    :cond_3d
    const/4 v1, 0x0

    move v0, v1

    goto :goto_2f
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 7
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    .line 713
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_d

    .line 714
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_d
    iget v0, p0, Landroid/view/ViewRoot;->mWidth:I

    iget v1, p0, Landroid/view/ViewRoot;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .registers 2

    .prologue
    .line 739
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x8

    goto :goto_a
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Landroid/view/ViewRoot;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 704
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected getWindowFrame()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 3083
    iget-object v0, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method handleAppVisibility(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 653
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    if-eq v0, p1, :cond_9

    .line 654
    iput-boolean p1, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    .line 655
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 657
    :cond_9
    return-void
.end method

.method handleFinishedEvent(IZ)V
    .registers 8
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 2663
    invoke-virtual {p0, p1}, Landroid/view/ViewRoot;->retrievePendingEvent(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 2666
    .local v0, event:Landroid/view/KeyEvent;
    if-eqz v0, :cond_11

    .line 2667
    if-ltz p1, :cond_12

    const/4 v2, 0x1

    move v1, v2

    .line 2668
    .local v1, sendDone:Z
    :goto_c
    if-nez p2, :cond_15

    .line 2669
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRoot;->deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V

    .line 2679
    .end local v1           #sendDone:Z
    :cond_11
    :goto_11
    return-void

    .line 2667
    :cond_12
    const/4 v2, 0x0

    move v1, v2

    goto :goto_c

    .line 2671
    .restart local v1       #sendDone:Z
    :cond_15
    if-eqz v1, :cond_1b

    .line 2672
    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    goto :goto_11

    .line 2674
    :cond_1b
    const-string v2, "ViewRoot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFinishedEvent(seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ev="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") neither delivering nor finishing key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method handleGetNewSurface()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 660
    iput-boolean v0, p0, Landroid/view/ViewRoot;->mNewSurfaceNeeded:Z

    .line 661
    iput-boolean v0, p0, Landroid/view/ViewRoot;->mFullRedrawNeeded:Z

    .line 662
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 663
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v13, 0x1

    const/4 v5, 0x0

    .line 1886
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_254

    .line 2084
    .end local p0
    :cond_9
    :goto_9
    return-void

    .line 1888
    .restart local p0
    :sswitch_a
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_9

    .line 1891
    .restart local p0
    :sswitch_12
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 1892
    .local v11, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v1, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v2, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v3, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v4, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v5, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 1893
    invoke-virtual {v11}, Landroid/view/View$AttachInfo$InvalidateInfo;->release()V

    goto :goto_9

    .line 1896
    .end local v11           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    :sswitch_27
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mProfile:Z

    if-eqz v1, :cond_30

    .line 1897
    const-string v1, "ViewRoot"

    invoke-static {v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 1900
    :cond_30
    invoke-direct {p0}, Landroid/view/ViewRoot;->performTraversals()V

    .line 1902
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mProfile:Z

    if-eqz v1, :cond_9

    .line 1903
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1904
    iput-boolean v5, p0, Landroid/view/ViewRoot;->mProfile:Z

    goto :goto_9

    .line 1908
    :sswitch_3d
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_48

    move v2, v13

    :goto_44
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewRoot;->handleFinishedEvent(IZ)V

    goto :goto_9

    :cond_48
    move v2, v5

    goto :goto_44

    .line 1911
    :sswitch_4a
    invoke-direct {p0}, Landroid/view/ViewRoot;->sendUserActionEvent()V

    .line 1915
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_5a

    move v2, v13

    :goto_56
    invoke-direct {p0, v1, v2}, Landroid/view/ViewRoot;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_9

    :cond_5a
    move v2, v5

    goto :goto_56

    .line 1918
    :sswitch_5c
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/MotionEvent;

    .line 1919
    .local v8, event:Landroid/view/MotionEvent;
    invoke-direct {p0}, Landroid/view/ViewRoot;->sendUserActionEvent()V

    .line 1921
    :try_start_63
    invoke-direct {p0, v8}, Landroid/view/ViewRoot;->deliverPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_71

    .line 1923
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1924
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_9

    .line 1925
    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    goto :goto_9

    .line 1923
    :catchall_71
    move-exception v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1924
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_7c

    .line 1925
    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    .line 1923
    :cond_7c
    throw v1

    .line 1931
    .end local v8           #event:Landroid/view/MotionEvent;
    :sswitch_7d
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/MotionEvent;

    .line 1933
    .restart local v8       #event:Landroid/view/MotionEvent;
    :try_start_81
    invoke-direct {p0, v8}, Landroid/view/ViewRoot;->deliverTrackballEvent(Landroid/view/MotionEvent;)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_90

    .line 1935
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1936
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_9

    .line 1937
    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    goto/16 :goto_9

    .line 1935
    :catchall_90
    move-exception v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1936
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_9b

    .line 1937
    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    .line 1935
    :cond_9b
    throw v1

    .line 1943
    .end local v8           #event:Landroid/view/MotionEvent;
    :sswitch_9c
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/MotionEvent;

    .line 1945
    .restart local v8       #event:Landroid/view/MotionEvent;
    :try_start_a0
    invoke-direct {p0, v8}, Landroid/view/ViewRoot;->deliverMouseEvent(Landroid/view/MotionEvent;)V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_af

    .line 1947
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1948
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_9

    .line 1949
    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    goto/16 :goto_9

    .line 1947
    :catchall_af
    move-exception v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1948
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_ba

    .line 1949
    invoke-direct {p0}, Landroid/view/ViewRoot;->finishInputEvent()V

    .line 1947
    :cond_ba
    throw v1

    .line 1955
    .end local v8           #event:Landroid/view/MotionEvent;
    :sswitch_bb
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_c5

    move v1, v13

    :goto_c0
    invoke-virtual {p0, v1}, Landroid/view/ViewRoot;->handleAppVisibility(Z)V

    goto/16 :goto_9

    :cond_c5
    move v1, v5

    goto :goto_c0

    .line 1958
    :sswitch_c7
    invoke-virtual {p0}, Landroid/view/ViewRoot;->handleGetNewSurface()V

    goto/16 :goto_9

    .line 1961
    :sswitch_cc
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/view/ViewRoot$ResizedInfo;

    .line 1963
    .local v12, ri:Landroid/view/ViewRoot$ResizedInfo;
    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_100

    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_100

    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, v12, Landroid/view/ViewRoot$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, v12, Landroid/view/ViewRoot$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v1, v1, Landroid/view/ViewRoot$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_9

    .line 1971
    .end local v12           #ri:Landroid/view/ViewRoot$ResizedInfo;
    :cond_100
    :sswitch_100
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v1, :cond_9

    .line 1972
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v7, v1, Landroid/view/ViewRoot$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    .line 1973
    .local v7, config:Landroid/content/res/Configuration;
    if-eqz v7, :cond_10f

    .line 1974
    invoke-virtual {p0, v7, v5}, Landroid/view/ViewRoot;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 1976
    :cond_10f
    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 1977
    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1978
    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 1979
    iget-object v1, p0, Landroid/view/ViewRoot;->mWinFrame:Landroid/graphics/Rect;

    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 1980
    iget-object v2, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v1, v1, Landroid/view/ViewRoot$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1981
    iget-object v2, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRoot$ResizedInfo;

    iget-object v1, v1, Landroid/view/ViewRoot$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1982
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_141

    .line 1983
    iput-boolean v13, p0, Landroid/view/ViewRoot;->mReportNextDraw:Z

    .line 1986
    :cond_141
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_14a

    .line 1987
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/view/ViewRoot;->forceLayout(Landroid/view/View;)V

    .line 1989
    :cond_14a
    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    goto/16 :goto_9

    .line 1993
    .end local v7           #config:Landroid/content/res/Configuration;
    :sswitch_14f
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    if-eqz v1, :cond_9

    .line 1994
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1ff

    move v9, v13

    .line 1995
    .local v9, hasWindowFocus:Z
    :goto_158
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v9, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 1996
    if-eqz v9, :cond_191

    .line 1997
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_202

    move v10, v13

    .line 1998
    .local v10, inTouchMode:Z
    :goto_163
    invoke-direct {p0, v10}, Landroid/view/ViewRoot;->ensureTouchModeLocally(Z)Z

    .line 2000
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mGlWanted:Z

    if-eqz v1, :cond_191

    .line 2001
    invoke-direct {p0}, Landroid/view/ViewRoot;->checkEglErrors()V

    .line 2003
    iget-boolean v1, p0, Landroid/view/ViewRoot;->mGlWanted:Z

    if-eqz v1, :cond_191

    iget-boolean v1, p0, Landroid/view/ViewRoot;->mUseGL:Z

    if-nez v1, :cond_191

    .line 2004
    invoke-direct {p0}, Landroid/view/ViewRoot;->initializeGL()V

    .line 2005
    iget-object v1, p0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_191

    .line 2006
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 2007
    .local v6, appScale:F
    iget-object v1, p0, Landroid/view/ViewRoot;->mGlCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Landroid/view/ViewRoot;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Landroid/view/ViewRoot;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 2015
    .end local v6           #appScale:F
    .end local v10           #inTouchMode:Z
    :cond_191
    iget-object v1, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    .line 2018
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2019
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_1bc

    .line 2020
    if-eqz v9, :cond_1b0

    if-eqz v0, :cond_1b0

    iget-boolean v1, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    if-eqz v1, :cond_1b0

    .line 2021
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 2023
    :cond_1b0
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v1}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 2024
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 2029
    :cond_1bc
    if-eqz v9, :cond_1f4

    .line 2030
    if-eqz v0, :cond_1dc

    iget-boolean v1, p0, Landroid/view/ViewRoot;->mLastWasImTarget:Z

    if-eqz v1, :cond_1dc

    .line 2031
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-boolean v4, p0, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    if-nez v4, :cond_205

    move v4, v13

    :goto_1d5
    iget-object v5, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 2037
    :cond_1dc
    iget-object v1, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2039
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2042
    iput-boolean v13, p0, Landroid/view/ViewRoot;->mHasHadWindowFocus:Z

    .line 2045
    :cond_1f4
    if-eqz v9, :cond_9

    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 2046
    invoke-direct {p0}, Landroid/view/ViewRoot;->sendAccessibilityEvents()V

    goto/16 :goto_9

    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v9           #hasWindowFocus:Z
    :cond_1ff
    move v9, v5

    .line 1994
    goto/16 :goto_158

    .restart local v9       #hasWindowFocus:Z
    :cond_202
    move v10, v5

    .line 1997
    goto/16 :goto_163

    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_205
    move v4, v5

    .line 2031
    goto :goto_1d5

    .line 2051
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v9           #hasWindowFocus:Z
    :sswitch_207
    invoke-virtual {p0}, Landroid/view/ViewRoot;->doDie()V

    goto/16 :goto_9

    .line 2057
    :sswitch_20c
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/KeyEvent;

    .line 2058
    .local v8, event:Landroid/view/KeyEvent;
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_222

    .line 2061
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x9

    invoke-static {v8, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v8

    .line 2064
    :cond_222
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    invoke-direct {p0, v1, v5}, Landroid/view/ViewRoot;->deliverKeyEventToViewHierarchy(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_9

    .line 2067
    .end local v8           #event:Landroid/view/KeyEvent;
    :sswitch_22b
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2068
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_9

    .line 2069
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_9

    .line 2073
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local p0
    :sswitch_23a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2074
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_9

    .line 2075
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_9

    .line 2079
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_245
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 2080
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1886
    :sswitch_data_254
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_12
        0x3e8 -> :sswitch_27
        0x3e9 -> :sswitch_207
        0x3ea -> :sswitch_cc
        0x3eb -> :sswitch_100
        0x3ec -> :sswitch_14f
        0x3ed -> :sswitch_4a
        0x3ee -> :sswitch_5c
        0x3ef -> :sswitch_7d
        0x3f0 -> :sswitch_bb
        0x3f1 -> :sswitch_c7
        0x3f2 -> :sswitch_3d
        0x3f3 -> :sswitch_20c
        0x3f4 -> :sswitch_22b
        0x3f5 -> :sswitch_23a
        0x3f6 -> :sswitch_245
        0x3f7 -> :sswitch_9c
    .end sparse-switch
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 6
    .parameter "child"
    .parameter "dirty"

    .prologue
    const/4 v2, -0x1

    .line 682
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 684
    iget v0, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_30

    .line 685
    :cond_c
    iget-object v0, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 686
    iget-object p2, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    .line 687
    iget v0, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    if-eqz v0, :cond_1e

    .line 688
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRoot;->mCurScrollY:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 690
    :cond_1e
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_27

    .line 691
    iget-object v0, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 693
    :cond_27
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_30

    .line 694
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 697
    :cond_30
    iget-object v0, p0, Landroid/view/ViewRoot;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 698
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    if-nez v0, :cond_3c

    .line 699
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 701
    :cond_3c
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 4
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v0, 0x0

    .line 708
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRoot;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 709
    return-object v0
.end method

.method public isLayoutRequested()Z
    .registers 2

    .prologue
    .line 678
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    return v0
.end method

.method public performHapticFeedback(IZ)Z
    .registers 6
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 2847
    :try_start_0
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 2849
    :goto_8
    return v1

    .line 2848
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 2849
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public playSoundEffect(I)V
    .registers 8
    .parameter "effectId"

    .prologue
    const-string v5, "ViewRoot"

    .line 2801
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 2804
    :try_start_5
    invoke-direct {p0}, Landroid/view/ViewRoot;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2806
    .local v0, audioManager:Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_92

    .line 2824
    const/16 v2, 0x9

    if-lt p1, v2, :cond_67

    const/16 v2, 0x10

    if-gt p1, v2, :cond_67

    .line 2826
    const-string v2, "ViewRoot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TwFramework: Sound effect play: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2840
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_2f
    return-void

    .line 2808
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :pswitch_30
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_34
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_34} :catch_35

    goto :goto_2f

    .line 2835
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catch_35
    move-exception v2

    move-object v1, v2

    .line 2837
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "ViewRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2f

    .line 2811
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :pswitch_53
    const/4 v2, 0x2

    :try_start_54
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_2f

    .line 2814
    :pswitch_58
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_2f

    .line 2817
    :pswitch_5d
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_2f

    .line 2820
    :pswitch_62
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_2f

    .line 2832
    :cond_67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_91
    .catch Ljava/lang/IllegalStateException; {:try_start_54 .. :try_end_91} :catch_35

    .line 2806
    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_30
        :pswitch_58
        :pswitch_62
        :pswitch_5d
        :pswitch_53
    .end packed-switch
.end method

.method public profile()V
    .registers 2

    .prologue
    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mProfile:Z

    .line 353
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 1773
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1774
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_13

    .line 1775
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1776
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mWillDrawSoon:Z

    if-nez v0, :cond_13

    .line 1777
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 1780
    :cond_13
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1723
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1724
    iget-object v0, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    if-eq v0, p2, :cond_13

    .line 1725
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 1726
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 1728
    :cond_13
    iput-object p2, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewRoot;->mFocusedView:Landroid/view/View;

    .line 1731
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 3099
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRoot;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .parameter "disallowIntercept"

    .prologue
    .line 3095
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 669
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 670
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mLayoutRequested:Z

    .line 671
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 672
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 1339
    invoke-virtual {p0}, Landroid/view/ViewRoot;->checkThread()V

    .line 1340
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_15

    .line 1341
    iget-object v0, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 1344
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 1345
    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    .line 1347
    :cond_15
    return-void
.end method

.method retrievePendingEvent(I)Ljava/lang/Object;
    .registers 4
    .parameter "seq"

    .prologue
    .line 2614
    if-gez p1, :cond_3

    neg-int p1, p1

    .line 2615
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2616
    .local v0, event:Ljava/lang/Object;
    if-eqz v0, :cond_10

    .line 2617
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2619
    :cond_10
    return-object v0
.end method

.method public scheduleTraversals()V
    .registers 2

    .prologue
    .line 725
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    if-nez v0, :cond_c

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    .line 727
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendEmptyMessage(I)Z

    .line 729
    :cond_c
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .registers 13
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1601
    iget-object v0, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1602
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 1603
    .local v1, ci:Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 1604
    .local v5, vi:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 1605
    .local v4, scrollY:I
    const/4 v3, 0x0

    .line 1607
    .local v3, handled:Z
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_22

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_22

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_22

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_41

    .line 1613
    :cond_22
    iget v4, p0, Landroid/view/ViewRoot;->mScrollY:I

    .line 1620
    iget-object v2, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    .line 1625
    .local v2, focus:Landroid/view/View;
    if-eqz v2, :cond_2e

    iget-object v6, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eq v6, v7, :cond_32

    .line 1626
    :cond_2e
    iput-object v8, p0, Landroid/view/ViewRoot;->mRealFocusedView:Landroid/view/View;

    move v6, v9

    .line 1719
    .end local v2           #focus:Landroid/view/View;
    :goto_31
    return v6

    .line 1630
    .restart local v2       #focus:Landroid/view/View;
    :cond_32
    iget-object v6, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    if-eq v2, v6, :cond_37

    .line 1634
    const/4 p1, 0x0

    .line 1639
    :cond_37
    iget-object v6, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    if-ne v2, v6, :cond_67

    iget-boolean v6, p0, Landroid/view/ViewRoot;->mScrollMayChange:Z

    if-nez v6, :cond_67

    if-nez p1, :cond_67

    .line 1705
    .end local v2           #focus:Landroid/view/View;
    :cond_41
    :goto_41
    iget v6, p0, Landroid/view/ViewRoot;->mScrollY:I

    if-eq v4, v6, :cond_65

    .line 1708
    if-nez p2, :cond_e5

    .line 1709
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    if-nez v6, :cond_58

    .line 1710
    new-instance v6, Landroid/widget/Scroller;

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    .line 1712
    :cond_58
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    iget v7, p0, Landroid/view/ViewRoot;->mScrollY:I

    iget v8, p0, Landroid/view/ViewRoot;->mScrollY:I

    sub-int v8, v4, v8

    invoke-virtual {v6, v9, v7, v9, v8}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 1716
    :cond_63
    :goto_63
    iput v4, p0, Landroid/view/ViewRoot;->mScrollY:I

    :cond_65
    move v6, v3

    .line 1719
    goto :goto_31

    .line 1646
    .restart local v2       #focus:Landroid/view/View;
    :cond_67
    if-eqz v2, :cond_41

    .line 1650
    iput-object v2, p0, Landroid/view/ViewRoot;->mLastScrolledFocus:Landroid/view/View;

    .line 1651
    iput-boolean v9, p0, Landroid/view/ViewRoot;->mScrollMayChange:Z

    .line 1654
    iget-object v6, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1659
    if-nez p1, :cond_ab

    .line 1660
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1663
    iget-object v6, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_8b

    .line 1664
    iget-object v6, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1678
    :cond_8b
    :goto_8b
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/ViewRoot;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1682
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_b1

    .line 1699
    :cond_a9
    :goto_a9
    const/4 v3, 0x1

    goto :goto_41

    .line 1672
    :cond_ab
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_8b

    .line 1688
    :cond_b1
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_c4

    .line 1689
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v4

    sub-int/2addr v6, v7

    sub-int/2addr v4, v6

    goto :goto_a9

    .line 1692
    :cond_c4
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_a9

    .line 1694
    iget-object v6, p0, Landroid/view/ViewRoot;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v7, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    add-int/2addr v4, v6

    goto :goto_a9

    .line 1713
    .end local v2           #focus:Landroid/view/View;
    :cond_e5
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    if-eqz v6, :cond_63

    .line 1714
    iget-object v6, p0, Landroid/view/ViewRoot;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_63
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .registers 8
    .parameter "attrs"
    .parameter "newView"

    .prologue
    .line 627
    monitor-enter p0

    .line 628
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 630
    .local v1, oldSoftInputMode:I
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000

    and-int v0, v2, v3

    .line 632
    .local v0, compatibleWindowFlag:I
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 633
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 635
    if-eqz p2, :cond_22

    .line 636
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v2, p0, Landroid/view/ViewRoot;->mSoftInputMode:I

    .line 637
    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    .line 640
    :cond_22
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0xf0

    if-nez v2, :cond_35

    .line 642
    iget-object v2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0xf1

    and-int/lit16 v4, v1, 0xf0

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 647
    :cond_35
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 648
    invoke-virtual {p0}, Landroid/view/ViewRoot;->scheduleTraversals()V

    .line 649
    monitor-exit p0

    .line 650
    return-void

    .line 649
    .end local v0           #compatibleWindowFlag:I
    .end local v1           #oldSoftInputMode:I
    :catchall_3d
    move-exception v2

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .registers 16
    .parameter "view"
    .parameter "attrs"
    .parameter "panelParentView"

    .prologue
    .line 484
    monitor-enter p0

    .line 485
    :try_start_1
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-nez v1, :cond_233

    .line 486
    iput-object p1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 487
    iget-object v1, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 488
    iget-object p2, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 489
    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_2d

    .line 490
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v1, v0

    invoke-interface {v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 492
    iget-object v1, p0, Landroid/view/ViewRoot;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v1, :cond_2d

    .line 493
    new-instance v1, Landroid/view/ViewRoot$TakenSurfaceHolder;

    invoke-direct {v1, p0}, Landroid/view/ViewRoot$TakenSurfaceHolder;-><init>(Landroid/view/ViewRoot;)V

    iput-object v1, p0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 494
    iget-object v1, p0, Landroid/view/ViewRoot;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 497
    :cond_2d
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 498
    .local v10, resources:Landroid/content/res/Resources;
    invoke-virtual {v10}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    .line 499
    .local v7, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 501
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v1, :cond_4b

    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_56

    .line 502
    :cond_4b
    iget-object v1, p0, Landroid/view/ViewRoot;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setCompatibleDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 506
    :cond_56
    const/4 v11, 0x0

    .line 507
    .local v11, restore:Z
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_64

    .line 508
    const/4 v11, 0x1

    .line 509
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 510
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 514
    :cond_64
    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_71

    .line 515
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 518
    :cond_71
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v1, p0, Landroid/view/ViewRoot;->mSoftInputMode:I

    .line 519
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mWindowAttributesChanged:Z

    .line 520
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p1, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 521
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_10d

    const/4 v2, 0x1

    :goto_83
    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 522
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v2, :cond_110

    const/high16 v2, 0x3f80

    :goto_8d
    iput v2, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 524
    if-eqz p3, :cond_99

    .line 525
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 528
    :cond_99
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 534
    invoke-virtual {p0}, Landroid/view/ViewRoot;->requestLayout()V

    .line 535
    new-instance v1, Landroid/view/InputChannel;

    invoke-direct {v1}, Landroid/view/InputChannel;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;
    :try_end_a6
    .catchall {:try_start_1 .. :try_end_a6} :catchall_10a

    .line 537
    :try_start_a6
    sget-object v1, Landroid/view/ViewRoot;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewRoot;->getHostVisibility()I

    move-result v4

    iget-object v5, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v1 .. v6}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_b9
    .catchall {:try_start_a6 .. :try_end_b9} :catchall_131
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_b9} :catch_116

    move-result v9

    .line 548
    .local v9, res:I
    if-eqz v11, :cond_bf

    .line 549
    :try_start_bc
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 553
    :cond_bf
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_cc

    .line 554
    iget-object v1, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 556
    :cond_cc
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 557
    iget-object v1, p0, Landroid/view/ViewRoot;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 559
    if-gez v9, :cond_200

    .line 560
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 561
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 562
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 563
    invoke-virtual {p0}, Landroid/view/ViewRoot;->unscheduleTraversals()V

    .line 564
    packed-switch v9, :pswitch_data_246

    .line 595
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- unknown error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    .end local v7           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v9           #res:I
    .end local v10           #resources:Landroid/content/res/Resources;
    .end local v11           #restore:Z
    .end local p3
    :catchall_10a
    move-exception v1

    monitor-exit p0
    :try_end_10c
    .catchall {:try_start_bc .. :try_end_10c} :catchall_10a

    throw v1

    .line 521
    .restart local v7       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v10       #resources:Landroid/content/res/Resources;
    .restart local v11       #restore:Z
    .restart local p3
    :cond_10d
    const/4 v2, 0x0

    goto/16 :goto_83

    .line 522
    :cond_110
    :try_start_110
    iget-object v2, p0, Landroid/view/ViewRoot;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v2, v2, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_114
    .catchall {:try_start_110 .. :try_end_114} :catchall_10a

    goto/16 :goto_8d

    .line 540
    :catch_116
    move-exception v1

    move-object v8, v1

    .line 541
    .local v8, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    :try_start_119
    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAdded:Z

    .line 542
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 543
    iget-object v1, p0, Landroid/view/ViewRoot;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 544
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    .line 545
    invoke-virtual {p0}, Landroid/view/ViewRoot;->unscheduleTraversals()V

    .line 546
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Adding window failed"

    invoke-direct {v1, v2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_131
    .catchall {:try_start_119 .. :try_end_131} :catchall_131

    .line 548
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_131
    move-exception v1

    if-eqz v11, :cond_137

    .line 549
    :try_start_134
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 548
    :cond_137
    throw v1

    .line 567
    .restart local v9       #res:I
    :pswitch_138
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid; is your activity running?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 571
    :pswitch_159
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not for an application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :pswitch_17a
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- app for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is exiting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 579
    :pswitch_19b
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 585
    :pswitch_1bc
    monitor-exit p0

    .line 616
    .end local v7           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v9           #res:I
    .end local v10           #resources:Landroid/content/res/Resources;
    .end local v11           #restore:Z
    .end local p3
    :goto_1bd
    return-void

    .line 587
    .restart local v7       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v9       #res:I
    .restart local v10       #resources:Landroid/content/res/Resources;
    .restart local v11       #restore:Z
    .restart local p3
    :pswitch_1be
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- another window of this type already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 591
    :pswitch_1df
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRoot;->mWindow:Landroid/view/ViewRoot$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- permission denied for this window type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 599
    :cond_200
    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_20e

    .line 600
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object p3, v0

    .end local p3
    invoke-interface {p3}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 603
    :cond_20e
    iget-object v1, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_235

    .line 604
    new-instance v1, Landroid/view/InputQueue;

    iget-object v2, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    invoke-direct {v1, v2}, Landroid/view/InputQueue;-><init>(Landroid/view/InputChannel;)V

    iput-object v1, p0, Landroid/view/ViewRoot;->mInputQueue:Landroid/view/InputQueue;

    .line 605
    iget-object v1, p0, Landroid/view/ViewRoot;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRoot;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 611
    :goto_222
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 612
    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_241

    const/4 v1, 0x1

    :goto_22a
    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAddedTouchMode:Z

    .line 613
    and-int/lit8 v1, v9, 0x2

    if-eqz v1, :cond_243

    const/4 v1, 0x1

    :goto_231
    iput-boolean v1, p0, Landroid/view/ViewRoot;->mAppVisible:Z

    .line 615
    .end local v7           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v9           #res:I
    .end local v10           #resources:Landroid/content/res/Resources;
    .end local v11           #restore:Z
    :cond_233
    monitor-exit p0

    goto :goto_1bd

    .line 607
    .restart local v7       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v9       #res:I
    .restart local v10       #resources:Landroid/content/res/Resources;
    .restart local v11       #restore:Z
    :cond_235
    iget-object v1, p0, Landroid/view/ViewRoot;->mInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Landroid/view/ViewRoot;->mInputHandler:Landroid/view/InputHandler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_240
    .catchall {:try_start_134 .. :try_end_240} :catchall_10a

    goto :goto_222

    .line 612
    :cond_241
    const/4 v1, 0x0

    goto :goto_22a

    .line 613
    :cond_243
    const/4 v1, 0x0

    goto :goto_231

    .line 564
    nop

    :pswitch_data_246
    .packed-switch -0x8
        :pswitch_1df
        :pswitch_1be
        :pswitch_1bc
        :pswitch_19b
        :pswitch_17a
        :pswitch_159
        :pswitch_138
        :pswitch_138
    .end packed-switch
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 3
    .parameter "originalView"

    .prologue
    .line 3073
    const/4 v0, 0x0

    return v0
.end method

.method public unscheduleTraversals()V
    .registers 2

    .prologue
    .line 732
    iget-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    if-eqz v0, :cond_c

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRoot;->mTraversalScheduled:Z

    .line 734
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->removeMessages(I)V

    .line 736
    :cond_c
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .registers 7
    .parameter "config"
    .parameter "force"

    .prologue
    .line 1825
    sget-object v2, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1826
    :try_start_3
    sget-object v1, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_c
    if-ltz v0, :cond_1c

    .line 1827
    sget-object v1, Landroid/view/ViewRoot;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentCallbacks;

    invoke-interface {v1, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1826
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1829
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_44

    .line 1830
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_43

    .line 1834
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    if-eqz v1, :cond_2f

    .line 1835
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 1837
    :cond_2f
    if-nez p2, :cond_39

    iget-object v1, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_43

    .line 1838
    :cond_39
    iget-object v1, p0, Landroid/view/ViewRoot;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1839
    iget-object v1, p0, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1842
    :cond_43
    return-void

    .line 1829
    .end local v0           #i:I
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public windowFocusChanged(ZZ)V
    .registers 7
    .parameter "hasFocus"
    .parameter "inTouchMode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3043
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3044
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3045
    if-eqz p1, :cond_18

    move v1, v3

    :goto_d
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3046
    if-eqz p2, :cond_1a

    move v1, v3

    :goto_12
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3047
    invoke-virtual {p0, v0}, Landroid/view/ViewRoot;->sendMessage(Landroid/os/Message;)Z

    .line 3048
    return-void

    :cond_18
    move v1, v2

    .line 3045
    goto :goto_d

    :cond_1a
    move v1, v2

    .line 3046
    goto :goto_12
.end method

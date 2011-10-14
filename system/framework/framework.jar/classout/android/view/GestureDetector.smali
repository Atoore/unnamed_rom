.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnShapeGestureListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x2

.field static final SHAPE_LOG_ON:Z = false

.field private static final SHOW_PRESS:I = 0x1

.field private static final SWEEP_DOWN2UP:I = 0x3

.field private static final SWEEP_LEFT2RIGHT:I = 0x1

.field private static final SWEEP_RIGHT2LEFT:I = 0x0

.field private static final SWEEP_UP2DOWN:I = 0x2

.field static final TAG:Ljava/lang/String; = "GestureDetector"

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field InitFlag:I

.field InitX:F

.field InitY:F

.field private LiftTapStep1:Z

.field private LiftTapStep2:Z

.field private LiftTapStep3:Z

.field MaxSize:F

.field MaxSsumEccen:F

.field MinSize:F

.field Nd:[I

.field Sad:[[F

.field Sed:[[F

.field Sid:[[I

.field Spd:[[F

.field Ssd:[[F

.field StartTime:J

.field SvarX:[F

.field SvarY:[F

.field private SwTimeFlag:Z

.field private SweepDown:Z

.field private SweepStep1:Z

.field Sxd:[[F

.field Syd:[[F

.field TouchCnt:I

.field private bHandTouchCancel:Z

.field private bInitHandTouch:Z

.field private bLiftTapCancel:Z

.field cTime:[J

.field dispHeight:I

.field dispWidth:I

.field dist1:F

.field g_InitTwistAngle:F

.field g_bInitTwist:Z

.field private g_bScrollCancel:Z

.field g_bSweepReady:Z

.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mBiggerTouchSlopSquare:I

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mHandTouched:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreMultitouch:Z

.field private mInLongPress:Z

.field mInitX:F

.field mInitY:F

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field mLastX:F

.field mLastY:F

.field private mLiftTapDown:Z

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPalmDown:Z

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

.field private mShapeSweepLRDown:Z

.field private mStillDown:Z

.field private mSweepLRDown:Z

.field private mTouchSlopSquare:I

.field private mTwistDown:Z

.field private mTwistTempDown:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field maxAngleT:F

.field maxSizeT:F

.field maxSwAngle:F

.field medFlag:Z

.field medSize:F

.field medX:F

.field medY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 244
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 245
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 246
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 449
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 6
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 464
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 466
    return-void

    .line 464
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .registers 12
    .parameter "context"
    .parameter "listener"
    .parameter "handler"
    .parameter "ignoreMultitouch"

    .prologue
    const v6, -0x3b864000

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/16 v0, 0x190

    iput v0, p0, Landroid/view/GestureDetector;->mBiggerTouchSlopSquare:I

    .line 264
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mPalmDown:Z

    .line 265
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 266
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mTwistTempDown:Z

    .line 267
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mSweepLRDown:Z

    .line 268
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    .line 269
    iput-boolean v2, p0, Landroid/view/GestureDetector;->SweepDown:Z

    .line 270
    iput-boolean v2, p0, Landroid/view/GestureDetector;->SweepStep1:Z

    .line 271
    iput-boolean v2, p0, Landroid/view/GestureDetector;->SwTimeFlag:Z

    .line 273
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 274
    iput-boolean v2, p0, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    .line 275
    iput-boolean v5, p0, Landroid/view/GestureDetector;->bInitHandTouch:Z

    .line 277
    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    .line 278
    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    .line 279
    iput-boolean v2, p0, Landroid/view/GestureDetector;->LiftTapStep3:Z

    .line 280
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mLiftTapDown:Z

    .line 281
    iput-boolean v2, p0, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    .line 283
    iput-boolean v2, p0, Landroid/view/GestureDetector;->g_bScrollCancel:Z

    .line 285
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Sxd:[[F

    .line 286
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Syd:[[F

    .line 287
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Ssd:[[F

    .line 288
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Sed:[[F

    .line 289
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Sad:[[F

    .line 290
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Landroid/view/GestureDetector;->Spd:[[F

    .line 291
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/view/GestureDetector;->Sid:[[I

    .line 292
    new-array v0, v3, [J

    iput-object v0, p0, Landroid/view/GestureDetector;->cTime:[J

    .line 293
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector;->Nd:[I

    .line 294
    new-array v0, v3, [F

    iput-object v0, p0, Landroid/view/GestureDetector;->SvarX:[F

    .line 295
    new-array v0, v3, [F

    iput-object v0, p0, Landroid/view/GestureDetector;->SvarY:[F

    .line 297
    iput v2, p0, Landroid/view/GestureDetector;->TouchCnt:I

    .line 298
    iput v2, p0, Landroid/view/GestureDetector;->InitFlag:I

    .line 299
    iput v2, p0, Landroid/view/GestureDetector;->dispWidth:I

    .line 300
    iput v2, p0, Landroid/view/GestureDetector;->dispHeight:I

    .line 303
    iput v6, p0, Landroid/view/GestureDetector;->MaxSize:F

    .line 304
    const v0, 0x4479c000

    iput v0, p0, Landroid/view/GestureDetector;->MinSize:F

    .line 305
    iput v6, p0, Landroid/view/GestureDetector;->MaxSsumEccen:F

    .line 308
    iput v4, p0, Landroid/view/GestureDetector;->dist1:F

    .line 309
    iput v4, p0, Landroid/view/GestureDetector;->maxSizeT:F

    .line 310
    iput v4, p0, Landroid/view/GestureDetector;->maxAngleT:F

    .line 311
    iput v4, p0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    .line 312
    iput-boolean v5, p0, Landroid/view/GestureDetector;->g_bInitTwist:Z

    .line 313
    iput-boolean v5, p0, Landroid/view/GestureDetector;->g_bSweepReady:Z

    .line 316
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/GestureDetector;->StartTime:J

    .line 317
    iput v4, p0, Landroid/view/GestureDetector;->mLastX:F

    .line 318
    iput v4, p0, Landroid/view/GestureDetector;->mLastY:F

    .line 319
    iput v4, p0, Landroid/view/GestureDetector;->mInitX:F

    .line 320
    iput v4, p0, Landroid/view/GestureDetector;->mInitY:F

    .line 321
    iput v4, p0, Landroid/view/GestureDetector;->InitX:F

    .line 322
    iput v4, p0, Landroid/view/GestureDetector;->InitY:F

    .line 323
    iput v4, p0, Landroid/view/GestureDetector;->maxSwAngle:F

    .line 332
    iput v4, p0, Landroid/view/GestureDetector;->medX:F

    .line 333
    iput v4, p0, Landroid/view/GestureDetector;->medY:F

    .line 334
    iput v4, p0, Landroid/view/GestureDetector;->medSize:F

    .line 335
    iput-boolean v5, p0, Landroid/view/GestureDetector;->medFlag:Z

    .line 484
    if-eqz p3, :cond_f2

    .line 485
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 489
    :goto_e3
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 504
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_ee

    .line 505
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    .end local p2
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 507
    :cond_ee
    invoke-direct {p0, p1, p4}, Landroid/view/GestureDetector;->init(Landroid/content/Context;Z)V

    .line 508
    return-void

    .line 487
    .restart local p2
    :cond_f2
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_e3
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .registers 3
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 434
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 4
    .parameter "listener"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 415
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 416
    return-void
.end method

.method static synthetic access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/GestureDetector;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/GestureDetector;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1191
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1192
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1193
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1194
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1195
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1196
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1197
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1198
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_25

    .line 1199
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1201
    :cond_25
    return-void
.end method

.method private dispatchLongPress()V
    .registers 3

    .prologue
    .line 1219
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1220
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1221
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 1222
    return-void
.end method

.method private init(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "ignoreMultitouch"

    .prologue
    .line 511
    iget-object v3, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v3, :cond_c

    .line 512
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "OnGestureListener must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 514
    :cond_c
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 515
    iput-boolean p2, p0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    .line 519
    if-nez p1, :cond_30

    .line 521
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    .line 522
    .local v2, touchSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    .line 524
    .local v1, doubleTapSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 525
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 533
    :goto_27
    mul-int v3, v2, v2

    iput v3, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 534
    mul-int v3, v1, v1

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 535
    return-void

    .line 527
    .end local v1           #doubleTapSlop:I
    .end local v2           #touchSlop:I
    :cond_30
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 528
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 529
    .restart local v2       #touchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 530
    .restart local v1       #doubleTapSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 531
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_27
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "firstDown"
    .parameter "firstUp"
    .parameter "secondDown"

    .prologue
    const/4 v6, 0x0

    .line 1205
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v2, :cond_7

    move v2, v6

    .line 1215
    :goto_6
    return v2

    .line 1209
    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget v4, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_19

    move v2, v6

    .line 1210
    goto :goto_6

    .line 1213
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 1214
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 1215
    .local v1, deltaY:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iget v3, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v2, v3, :cond_3c

    const/4 v2, 0x1

    goto :goto_6

    :cond_3c
    move v2, v6

    goto :goto_6
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .registers 2

    .prologue
    .line 565
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 28
    .parameter "ev"

    .prologue
    .line 1032
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1033
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 1034
    .local v19, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 1036
    .local v18, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-nez v20, :cond_1e

    .line 1037
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1039
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1041
    const/4 v11, 0x0

    .line 1043
    .local v11, handled:Z
    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_3fc

    .line 1187
    :cond_34
    :goto_34
    :pswitch_34
    return v11

    .line 1045
    :pswitch_35
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v20, v0

    if-eqz v20, :cond_34

    .line 1047
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto :goto_34

    .line 1053
    :pswitch_41
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v20, v0

    if-eqz v20, :cond_34

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_34

    .line 1054
    const v20, 0xff00

    and-int v20, v20, v5

    shr-int/lit8 v20, v20, 0x8

    if-nez v20, :cond_90

    const/16 v20, 0x1

    move/from16 v12, v20

    .line 1056
    .local v12, index:I
    :goto_62
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1057
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 1059
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_34

    .line 1054
    .end local v12           #index:I
    :cond_90
    const/16 v20, 0x0

    move/from16 v12, v20

    goto :goto_62

    .line 1064
    :pswitch_95
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10c

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    .line 1066
    .local v10, hadTapMessage:Z
    if-eqz v10, :cond_b6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1067
    :cond_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1bd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1bd

    if-eqz v10, :cond_1bd

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_1bd

    .line 1070
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 1081
    .end local v10           #hadTapMessage:Z
    :cond_10c
    :goto_10c
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1082
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_129

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 1086
    :cond_129
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 1087
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1088
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 1089
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1090
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1092
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_18d

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v22

    sget v24, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    sget v24, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1097
    :cond_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v22

    sget v24, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 1099
    goto/16 :goto_34

    .line 1077
    .restart local v10       #hadTapMessage:Z
    :cond_1bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    sget v22, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_10c

    .line 1109
    .end local v10           #hadTapMessage:Z
    :pswitch_1d1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v20, v0

    if-nez v20, :cond_34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreMultitouch:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1ed

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_34

    .line 1113
    :cond_1ed
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastMotionX:F

    move/from16 v20, v0

    sub-float v13, v20, v18

    .line 1114
    .local v13, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastMotionY:F

    move/from16 v20, v0

    sub-float v14, v20, v19

    .line 1115
    .local v14, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v20, v0

    if-eqz v20, :cond_217

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    goto/16 :goto_34

    .line 1118
    :cond_217
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2b2

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    sub-float v20, v18, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v7, v0

    .line 1120
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    sub-float v20, v19, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v8, v0

    .line 1121
    .local v8, deltaY:I
    mul-int v20, v7, v7

    mul-int v21, v8, v8

    add-int v9, v20, v21

    .line 1122
    .local v9, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-le v0, v1, :cond_29d

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    .line 1124
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1125
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    .line 1126
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1131
    :cond_29d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mBiggerTouchSlopSquare:I

    move/from16 v20, v0

    move v0, v9

    move/from16 v1, v20

    if-le v0, v1, :cond_34

    .line 1132
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_34

    .line 1134
    .end local v7           #deltaX:I
    .end local v8           #deltaY:I
    .end local v9           #distance:I
    :cond_2b2
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x3f80

    cmpl-float v20, v20, v21

    if-gez v20, :cond_2c6

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v20

    const/high16 v21, 0x3f80

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_34

    .line 1135
    :cond_2c6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move v3, v13

    move v4, v14

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    .line 1136
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionX:F

    .line 1137
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastMotionY:F

    goto/16 :goto_34

    .line 1142
    .end local v13           #scrollX:F
    .end local v14           #scrollY:F
    :pswitch_2ec
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1143
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 1144
    .local v6, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v20, v0

    if-eqz v20, :cond_35f

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    or-int v11, v11, v20

    .line 1172
    :cond_310
    :goto_310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_321

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 1176
    :cond_321
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/VelocityTracker;->recycle()V

    .line 1178
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1179
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1182
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bScrollCancel:Z

    goto/16 :goto_34

    .line 1147
    :cond_35f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_37b

    .line 1148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 1149
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_310

    .line 1150
    :cond_37b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v20, v0

    if-eqz v20, :cond_393

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v11

    goto/16 :goto_310

    .line 1155
    :cond_393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v15, v0

    .line 1156
    .local v15, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v20, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v15

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1157
    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    .line 1158
    .local v17, velocityY:F
    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v16

    .line 1160
    .local v16, velocityX:F
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_3db

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_310

    .line 1168
    :cond_3db
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v11

    goto/16 :goto_310

    .line 1185
    .end local v6           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v15           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v16           #velocityX:F
    .end local v17           #velocityY:F
    :pswitch_3f7
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto/16 :goto_34

    .line 1043
    :pswitch_data_3fc
    .packed-switch 0x0
        :pswitch_95
        :pswitch_2ec
        :pswitch_1d1
        :pswitch_3f7
        :pswitch_34
        :pswitch_35
        :pswitch_41
    .end packed-switch
.end method

.method public onTouchEvent_ex(Landroid/view/MotionEvent;)Z
    .registers 50
    .parameter "ev"

    .prologue
    .line 579
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 580
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v47

    .line 581
    .local v47, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v46

    .line 583
    .local v46, x:F
    const/16 v37, 0x0

    .line 585
    .local v37, handled:Z
    const/16 v40, 0x0

    .local v40, jj:I
    const/16 v41, 0x0

    .line 586
    .local v41, kk:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    .line 587
    .local v12, N:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v43

    .line 588
    .local v43, size:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAngle()F

    move-result v35

    .line 589
    .local v35, angle:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEccen()F

    move-result v36

    .line 590
    .local v36, eccen:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v42

    .line 592
    .local v42, pressure:F
    const/16 v4, 0xa

    new-array v6, v4, [F

    .line 593
    .local v6, xd:[F
    const/16 v4, 0xa

    new-array v7, v4, [F

    .line 594
    .local v7, yd:[F
    const/16 v4, 0xa

    new-array v8, v4, [F

    .line 595
    .local v8, sd:[F
    const/16 v4, 0xa

    new-array v9, v4, [F

    .line 596
    .local v9, ad:[F
    const/16 v4, 0xa

    new-array v10, v4, [F

    .line 597
    .local v10, ed:[F
    const/16 v4, 0xa

    new-array v11, v4, [F

    .line 598
    .local v11, pd:[F
    const/16 v4, 0xa

    new-array v13, v4, [I

    .line 601
    .local v13, id:[I
    const/16 v28, 0x0

    .line 602
    .local v28, SsumX:F
    const/16 v29, 0x0

    .line 603
    .local v29, SsumY:F
    const/16 v27, 0x0

    .line 604
    .local v27, SsumSize:F
    const/16 v25, 0x0

    .line 605
    .local v25, SsumEccen:F
    const/16 v26, 0x0

    .line 606
    .local v26, SsumPres:F
    const/16 v24, 0x0

    .line 607
    .local v24, SsumAngle:F
    const/16 v22, 0x0

    .line 608
    .local v22, SmeanX:F
    const/16 v23, 0x0

    .line 609
    .local v23, SmeanY:F
    const/16 v21, 0x0

    .line 610
    .local v21, SmeanSize:F
    const/16 v19, 0x0

    .line 611
    .local v19, SmeanEccen:F
    const/16 v20, 0x0

    .line 612
    .local v20, SmeanPres:F
    const/16 v18, 0x0

    .line 613
    .local v18, SmeanAngle:F
    const/16 v33, 0x0

    .line 614
    .local v33, SweepX:F
    const/16 v34, 0x0

    .line 615
    .local v34, SweepY:F
    const/16 v30, 0x0

    .line 616
    .local v30, SwDeltaX:F
    const/16 v31, 0x0

    .line 617
    .local v31, SwDeltaY:F
    const/16 v32, 0x0

    .line 620
    .local v32, SwDist:F
    const/16 v16, 0x0

    .line 621
    .local v16, SFsumAngle:F
    const/16 v17, 0x0

    .line 622
    .local v17, SFsumSize:F
    const/16 v4, 0xa

    const/16 v14, 0xa

    filled-new-array {v4, v14}, [I

    move-result-object v4

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, [[F

    .line 623
    .local v44, velX:[[F
    const/16 v4, 0xa

    const/16 v14, 0xa

    filled-new-array {v4, v14}, [I

    move-result-object v4

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, [[F

    .line 625
    .local v45, velY:[[F
    const/16 v38, 0x0

    .local v38, i:I
    :goto_8a
    const/16 v4, 0xa

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_a9

    .line 626
    const/4 v4, 0x0

    aput v4, v6, v38

    .line 627
    const/4 v4, 0x0

    aput v4, v7, v38

    .line 628
    const/4 v4, 0x0

    aput v4, v8, v38

    .line 629
    const/4 v4, 0x0

    aput v4, v9, v38

    .line 630
    const/4 v4, 0x0

    aput v4, v10, v38

    .line 631
    const/4 v4, 0x0

    aput v4, v11, v38

    .line 632
    const/4 v4, 0x0

    aput v4, v13, v38

    .line 625
    add-int/lit8 v38, v38, 0x1

    goto :goto_8a

    .line 635
    :cond_a9
    const/16 v38, 0x0

    :goto_ab
    move/from16 v0, v38

    move v1, v12

    if-ge v0, v1, :cond_ff

    .line 636
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v6, v38

    .line 637
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v7, v38

    .line 638
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v4

    const/high16 v14, 0x41f0

    mul-float/2addr v4, v14

    aput v4, v8, v38

    .line 639
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAngle(I)F

    move-result v4

    aput v4, v9, v38

    .line 640
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getEccen(I)F

    move-result v4

    aput v4, v10, v38

    .line 641
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    const/high16 v14, 0x41f0

    mul-float/2addr v4, v14

    aput v4, v11, v38

    .line 642
    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    aput v4, v13, v38

    .line 635
    add-int/lit8 v38, v38, 0x1

    goto :goto_ab

    .line 645
    :cond_ff
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitFlag:I

    move v4, v0

    if-nez v4, :cond_127

    .line 646
    const/16 v38, 0x0

    :goto_108
    const/16 v4, 0xa

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_11b

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v4, v0

    const-wide/16 v14, 0x0

    aput-wide v14, v4, v38

    .line 646
    add-int/lit8 v38, v38, 0x1

    goto :goto_108

    .line 649
    :cond_11b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitFlag:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->InitFlag:I

    .line 652
    :cond_127
    const/16 v39, 0x0

    .local v39, j:I
    :goto_129
    const/16 v4, 0xa

    move/from16 v0, v39

    move v1, v4

    if-ge v0, v1, :cond_1c8

    .line 653
    const/16 v38, 0x8

    :goto_132
    if-ltz v38, :cond_1c4

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Spd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Spd:[[F

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sid:[[I

    move-object v4, v0

    aget-object v4, v4, v39

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sid:[[I

    move-object v15, v0

    aget-object v15, v15, v39

    aget v15, v15, v38

    aput v15, v4, v14

    .line 653
    add-int/lit8 v38, v38, -0x1

    goto/16 :goto_132

    .line 652
    :cond_1c4
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_129

    .line 664
    :cond_1c8
    const/16 v38, 0x8

    :goto_1ca
    if-ltz v38, :cond_20f

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v4, v0

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v15, v0

    aget-wide v15, v15, v38

    aput-wide v15, v4, v14

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v15, v0

    aget v15, v15, v38

    aput v15, v4, v14

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v15, v0

    aget v15, v15, v38

    aput v15, v4, v14

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v4, v0

    add-int/lit8 v14, v38, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v15, v0

    aget v15, v15, v38

    aput v15, v4, v14

    .line 664
    add-int/lit8 v38, v38, -0x1

    goto :goto_1ca

    .line 671
    :cond_20f
    const/16 v38, 0x0

    .end local v16           #SFsumAngle:F
    :goto_211
    move/from16 v0, v38

    move v1, v12

    if-ge v0, v1, :cond_2a0

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    aput v15, v4, v14

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    aput v15, v4, v14

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v15

    const/high16 v16, 0x41f0

    mul-float v15, v15, v16

    aput v15, v4, v14

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAngle(I)F

    move-result v15

    aput v15, v4, v14

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getEccen(I)F

    move-result v15

    aput v15, v4, v14

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Spd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v15

    const/high16 v16, 0x41f0

    mul-float v15, v15, v16

    aput v15, v4, v14

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sid:[[I

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v15

    aput v15, v4, v14

    .line 671
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_211

    .line 680
    :cond_2a0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v4, v0

    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    aput-wide v15, v4, v14

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v14, 0x0

    aput v12, v4, v14

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v14, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v15

    invoke-interface/range {v4 .. v15}, Landroid/view/GestureDetector$OnShapeGestureListener;->onMultiAction(I[F[F[F[F[F[FI[I[JI)Z

    .line 691
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->TouchCnt:I

    .line 693
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_331

    .line 694
    .end local v6           #xd:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v7, v0

    .end local v7           #yd:[F
    const/4 v8, 0x0

    aget-object v7, v7, v8

    .end local v8           #sd:[F
    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v4, v6

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v4, v6

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v4, v6

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v4, v6

    .line 700
    :cond_331
    const/16 v38, 0x0

    :goto_333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_3d0

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    add-float v28, v28, v4

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    add-float v29, v29, v4

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    add-float v27, v27, v4

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    add-float v25, v25, v4

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Spd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    add-float v26, v26, v4

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    add-float v24, v24, v4

    .line 707
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->MinSize:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v6, v0

    aget-object v6, v6, v38

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3aa

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->MinSize:F

    .line 708
    :cond_3aa
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->MaxSize:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v6, v0

    aget-object v6, v6, v38

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3cc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->MaxSize:F

    .line 700
    :cond_3cc
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_333

    .line 710
    :cond_3d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-float v4, v4

    div-float v22, v28, v4

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-float v4, v4

    div-float v23, v29, v4

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-float v4, v4

    div-float v21, v27, v4

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-float v4, v4

    div-float v19, v25, v4

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-float v4, v4

    div-float v20, v26, v4

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-float v4, v4

    div-float v18, v24, v4

    .line 717
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->TouchCnt:I

    move v4, v0

    const/4 v6, 0x3

    if-ge v4, v6, :cond_44e

    .line 718
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->maxSizeT:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_44e

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x1

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->maxSizeT:F

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x1

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->maxAngleT:F

    .line 723
    :cond_44e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->dist1:F

    move v4, v0

    float-to-double v14, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x1

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget v6, v6, v7

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget v7, v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x2

    aget v7, v7, v8

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    .end local v9           #ad:[F
    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    move v0, v4

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    add-double v14, v14, v16

    double-to-float v4, v14

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->dist1:F

    .line 725
    if-nez v5, :cond_519

    .line 726
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastX:F

    .line 727
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastY:F

    .line 728
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mInitX:F

    .line 729
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mInitY:F

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->InitX:F

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->InitY:F

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v4, v0

    const/4 v6, 0x0

    aget-wide v14, v4, v6

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/GestureDetector;->StartTime:J

    .line 733
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepStep1:Z

    .line 734
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 737
    :cond_519
    const/16 v39, 0x0

    :goto_51b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    move/from16 v0, v39

    move v1, v4

    if-ge v0, v1, :cond_546

    .line 738
    const/16 v38, 0x8

    :goto_52a
    if-ltz v38, :cond_543

    .line 739
    aget-object v4, v44, v39

    add-int/lit8 v6, v38, 0x1

    aget-object v7, v44, v39

    aget v7, v7, v38

    aput v7, v4, v6

    .line 740
    aget-object v4, v45, v39

    add-int/lit8 v6, v38, 0x1

    aget-object v7, v45, v39

    aget v7, v7, v38

    aput v7, v4, v6

    .line 738
    add-int/lit8 v38, v38, -0x1

    goto :goto_52a

    .line 737
    :cond_543
    add-int/lit8 v39, v39, 0x1

    goto :goto_51b

    .line 743
    :cond_546
    const/16 v38, 0x0

    :goto_548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_5b4

    .line 744
    aget-object v4, v44, v38

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v7, v0

    aget-object v7, v7, v38

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v8, v0

    aget-object v8, v8, v38

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v8, v0

    const/4 v9, 0x1

    aget-wide v14, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v8, v0

    const/4 v9, 0x2

    aget-wide v16, v8, v9

    sub-long v14, v14, v16

    long-to-float v8, v14

    div-float/2addr v7, v8

    aput v7, v4, v6

    .line 745
    aget-object v4, v45, v38

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v7, v0

    aget-object v7, v7, v38

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v8, v0

    aget-object v8, v8, v38

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v8, v0

    const/4 v9, 0x1

    aget-wide v14, v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v8, v0

    const/4 v9, 0x2

    aget-wide v16, v8, v9

    sub-long v14, v14, v16

    long-to-float v8, v14

    div-float/2addr v7, v8

    aput v7, v4, v6

    .line 743
    add-int/lit8 v38, v38, 0x1

    goto :goto_548

    .line 748
    :cond_5b4
    const/16 v38, 0x0

    :goto_5b6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_5f0

    .line 749
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->maxSwAngle:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v6, v0

    aget-object v6, v6, v38

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_5ed

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    aget-object v4, v4, v38

    const/4 v6, 0x0

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->maxSwAngle:F

    .line 748
    :cond_5ed
    add-int/lit8 v38, v38, 0x1

    goto :goto_5b6

    .line 754
    :cond_5f0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v4, v6

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v4, v6

    .line 757
    const/16 v38, 0x0

    .end local v10           #ed:[F
    :goto_604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_674

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v8, v0

    aget-object v8, v8, v38

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-float v8, v8, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v9, v0

    aget-object v9, v9, v38

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v9, v9, v22

    mul-float/2addr v8, v9

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v8, v14

    add-float/2addr v7, v8

    aput v7, v4, v6

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v4, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v8, v0

    aget-object v8, v8, v38

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-float v8, v8, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v9, v0

    aget-object v9, v9, v38

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float v9, v9, v23

    mul-float/2addr v8, v9

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v8, v14

    add-float/2addr v7, v8

    aput v7, v4, v6

    .line 757
    add-int/lit8 v38, v38, 0x1

    goto :goto_604

    .line 762
    :cond_674
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->MaxSsumEccen:F

    move v4, v0

    cmpg-float v4, v4, v25

    if-gez v4, :cond_683

    .line 763
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->MaxSsumEccen:F

    .line 764
    :cond_683
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move v4, v0

    if-nez v4, :cond_85d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    move v4, v0

    if-nez v4, :cond_85d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move v4, v0

    if-nez v4, :cond_85d

    .line 766
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepLRDown:Z

    move v4, v0

    if-nez v4, :cond_6d2

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    const/4 v6, 0x4

    if-lt v4, v6, :cond_6d2

    const/high16 v4, 0x42c8

    cmpl-float v4, v27, v4

    if-lez v4, :cond_6d2

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    const/high16 v6, 0x43fa

    cmpl-float v4, v4, v6

    if-lez v4, :cond_6d2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    const/high16 v6, 0x43fa

    cmpl-float v4, v4, v6

    if-lez v4, :cond_6d2

    .line 771
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mPalmDown:Z

    .line 776
    :cond_6d2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6f3

    .line 777
    const-string v4, "GestureDetector"

    const-string v6, "[Surface Touch Event] Palm touch"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    move-result v37

    .line 780
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepLRDown:Z

    .line 784
    :cond_6f3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastX:F

    move v4, v0

    sub-float v33, v4, v22

    .line 785
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastY:F

    move v4, v0

    sub-float v34, v4, v23

    .line 787
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_749

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_749

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->cTime:[J

    move-object v4, v0

    const/4 v6, 0x0

    aget-wide v14, v4, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/GestureDetector;->StartTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/16 v16, 0x2bc

    cmp-long v4, v14, v16

    if-gez v4, :cond_749

    .line 788
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SwTimeFlag:Z

    .line 789
    :cond_749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    const/high16 v6, 0x4316

    cmpl-float v4, v4, v6

    if-lez v4, :cond_763

    .line 790
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSweepReady:Z

    .line 791
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepLRDown:Z

    .line 793
    :cond_763
    const/high16 v4, 0x4220

    cmpl-float v4, v27, v4

    if-ltz v4, :cond_806

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_806

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_806

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bSweepReady:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_806

    .line 794
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bScrollCancel:Z

    .line 795
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->SwTimeFlag:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_806

    .line 796
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->SweepStep1:Z

    move v4, v0

    if-eqz v4, :cond_a54

    .line 797
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mInitX:F

    move v4, v0

    sub-float v30, v22, v4

    .line 798
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mInitY:F

    move v4, v0

    sub-float v31, v23, v4

    .line 799
    mul-float v4, v30, v30

    mul-float v6, v31, v31

    add-float v32, v4, v6

    .line 800
    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x447a

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7e4

    .line 801
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepDown:Z

    .line 802
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastX:F

    .line 803
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastY:F

    .line 804
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepStep1:Z

    .line 812
    :cond_7e4
    :goto_7e4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->SweepDown:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_806

    .line 813
    const/high16 v4, 0x3f80

    cmpl-float v4, v25, v4

    if-ltz v4, :cond_a7c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    const/high16 v6, 0x42c8

    cmpg-float v4, v4, v6

    if-gez v4, :cond_a7c

    .line 814
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepLRDown:Z

    .line 820
    :cond_806
    :goto_806
    const/4 v4, 0x1

    if-ne v5, v4, :cond_80f

    .line 821
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepLRDown:Z

    .line 824
    :cond_80f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepLRDown:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_840

    .line 825
    const/4 v4, 0x0

    cmpl-float v4, v33, v4

    if-ltz v4, :cond_a84

    .line 826
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move v4, v0

    sub-float v4, v4, v22

    const/high16 v6, 0x4348

    cmpl-float v4, v4, v6

    if-lez v4, :cond_840

    .line 827
    const-string v4, "GestureDetector"

    const-string v6, "[Surface Touch Event] Shape sweep, RIGHT2LEFT"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/view/GestureDetector$OnShapeGestureListener;->onShapeSweepLR(I)Z

    move-result v37

    .line 829
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    .line 840
    :cond_840
    :goto_840
    const/high16 v4, 0x4348

    cmpl-float v4, v27, v4

    if-gtz v4, :cond_857

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    const/high16 v6, 0x42b4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_85d

    .line 841
    :cond_857
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepLRDown:Z

    .line 846
    :cond_85d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    move v4, v0

    if-nez v4, :cond_8d2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move v4, v0

    if-nez v4, :cond_8d2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move v4, v0

    if-nez v4, :cond_8d2

    .line 848
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    move v4, v0

    if-nez v4, :cond_885

    .line 850
    const/high16 v4, 0x4270

    cmpl-float v4, v27, v4

    if-lez v4, :cond_885

    .line 852
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 856
    :cond_885
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarX:[F

    move-object v4, v0

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->SvarY:[F

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    add-float/2addr v4, v6

    const v6, 0x453b8000

    cmpl-float v4, v4, v6

    if-lez v4, :cond_8a9

    .line 858
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 859
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    .line 862
    :cond_8a9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mHandTouched:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8d2

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onHandTouched(Landroid/view/MotionEvent;)Z

    move-result v37

    .line 865
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bInitHandTouch:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_8d2

    .line 867
    const-string v4, "GestureDetector"

    const-string v6, "[Surface Touch Event] HandTouched"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bInitHandTouch:Z

    .line 874
    :cond_8d2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mLiftTapDown:Z

    move v4, v0

    if-nez v4, :cond_a4d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    move v4, v0

    if-nez v4, :cond_a4d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move v4, v0

    if-nez v4, :cond_a4d

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    const/high16 v6, 0x43fa

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_909

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    const/high16 v6, 0x447a

    cmpg-float v4, v4, v6

    if-gez v4, :cond_90f

    .line 878
    :cond_909
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    .line 881
    :cond_90f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    move v4, v0

    if-nez v4, :cond_961

    .line 883
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move v4, v0

    const/high16 v6, 0x442f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_961

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:F

    move v4, v0

    const v6, 0x44898000

    cmpl-float v4, v4, v6

    if-lez v4, :cond_961

    .line 885
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float/2addr v4, v6

    const/high16 v6, 0x4248

    cmpl-float v4, v4, v6

    if-lez v4, :cond_961

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitY:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float/2addr v4, v6

    const/high16 v6, 0x42c8

    cmpl-float v4, v4, v6

    if-lez v4, :cond_961

    .line 887
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep1:Z

    .line 893
    :cond_961
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep1:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9ec

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    move v4, v0

    if-nez v4, :cond_9ec

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-gez v4, :cond_9a8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_9ec

    .line 897
    :cond_9a8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->medFlag:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9e6

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medX:F

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x0

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medY:F

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    const/4 v6, 0x2

    aget v4, v4, v6

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medSize:F

    .line 902
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->medFlag:Z

    .line 905
    :cond_9e6
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep2:Z

    .line 909
    :cond_9ec
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->LiftTapStep2:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_a4d

    .line 911
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medX:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medY:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    add-float/2addr v4, v6

    const/high16 v6, -0x4080

    cmpg-float v4, v4, v6

    if-gez v4, :cond_a4d

    .line 913
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->medSize:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-float/2addr v4, v6

    const/high16 v6, -0x3f60

    cmpg-float v4, v4, v6

    if-gez v4, :cond_a4d

    .line 915
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mLiftTapDown:Z

    .line 916
    const-string v4, "GestureDetector"

    const-string v6, "[Surface Touch Event] Lift tap Event"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onLiftTap(Landroid/view/MotionEvent;)Z

    move-result v37

    .line 923
    :cond_a4d
    and-int/lit16 v4, v5, 0xff

    packed-switch v4, :pswitch_data_e5e

    .line 1027
    .end local v5           #action:I
    :cond_a52
    :goto_a52
    const/4 v4, 0x0

    return v4

    .line 806
    .restart local v5       #action:I
    :cond_a54
    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x3f80

    cmpl-float v4, v4, v6

    if-gez v4, :cond_a68

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x3f80

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_7e4

    .line 807
    :cond_a68
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepDown:Z

    .line 808
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastX:F

    .line 809
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastY:F

    goto/16 :goto_7e4

    .line 815
    :cond_a7c
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepDown:Z

    goto/16 :goto_806

    .line 832
    :cond_a84
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->InitX:F

    move v4, v0

    sub-float v4, v4, v22

    const/high16 v6, -0x3cb8

    cmpg-float v4, v4, v6

    if-gez v4, :cond_840

    .line 833
    const-string v4, "GestureDetector"

    const-string v6, "[Surface Touch Event] Shape sweep, LEFT2RIGHT"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Landroid/view/GestureDetector$OnShapeGestureListener;->onShapeSweepLR(I)Z

    move-result v37

    .line 835
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    goto/16 :goto_840

    .line 925
    :pswitch_aaa
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mSweepLRDown:Z

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_a52

    .end local v5           #action:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_a52

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_a52

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_a52

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Nd:[I

    move-object v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b30

    .line 931
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->g_bInitTwist:Z

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b04

    .line 932
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bInitTwist:Z

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget v4, v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    .line 935
    :cond_b04
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4120

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b30

    .line 936
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->dist1:F

    move v4, v0

    const/high16 v5, 0x42f0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_b30

    .line 937
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 942
    :cond_b30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mTwistDown:Z

    move v4, v0

    if-eqz v4, :cond_a52

    .line 943
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_c09

    .line 944
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, -0x3d4c

    cmpg-float v4, v4, v5

    if-gez v4, :cond_bba

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x42b4

    add-float/2addr v6, v7

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p1

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/view/GestureDetector$OnShapeGestureListener;->onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v37

    .line 946
    const-string v4, "GestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Surface Touch Event] Twist - right, angle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    neg-float v6, v6

    const/high16 v7, 0x42b4

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a52

    .line 948
    :cond_bba
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p1

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/view/GestureDetector$OnShapeGestureListener;->onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v37

    .line 949
    const-string v4, "GestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Surface Touch Event] Twist - left, angle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a52

    .line 952
    :cond_c09
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-float/2addr v4, v5

    const/high16 v5, 0x42b4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_c75

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x42b4

    sub-float/2addr v6, v7

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p1

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/view/GestureDetector$OnShapeGestureListener;->onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v37

    .line 954
    const-string v4, "GestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Surface Touch Event] Twist - left, angle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/high16 v6, 0x42b4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a52

    .line 956
    :cond_c75
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p1

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/view/GestureDetector$OnShapeGestureListener;->onTwist(Landroid/view/MotionEvent;Landroid/view/MotionEvent;F)Z

    move-result v37

    .line 957
    const-string v4, "GestureDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Surface Touch Event] Twist - right, angle:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a52

    .line 965
    .restart local v5       #action:I
    :pswitch_cc4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mPalmDown:Z

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_cde

    .line 966
    .end local v5           #action:I
    const-string v4, "GestureDetector"

    const-string v5, "[Surface Touch Event] Palm touch up"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    .line 971
    :cond_cde
    const/16 v39, 0x0

    :goto_ce0
    const/16 v4, 0xa

    move/from16 v0, v39

    move v1, v4

    if-ge v0, v1, :cond_d3c

    .line 972
    const/16 v38, 0x0

    :goto_ce9
    const/16 v4, 0xa

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_d39

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Ssd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sed:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sad:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Spd:[[F

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sid:[[I

    move-object v4, v0

    aget-object v4, v4, v39

    const/4 v5, 0x0

    aput v5, v4, v38

    .line 972
    add-int/lit8 v38, v38, 0x1

    goto :goto_ce9

    .line 971
    :cond_d39
    add-int/lit8 v39, v39, 0x1

    goto :goto_ce0

    .line 983
    :cond_d3c
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->TouchCnt:I

    .line 984
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mPalmDown:Z

    .line 985
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mSweepLRDown:Z

    .line 986
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistDown:Z

    .line 987
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mTwistTempDown:Z

    .line 988
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mShapeSweepLRDown:Z

    .line 989
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepDown:Z

    .line 990
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SweepStep1:Z

    .line 991
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->SwTimeFlag:Z

    .line 993
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->dist1:F

    .line 994
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->maxSizeT:F

    .line 995
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->maxAngleT:F

    .line 996
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->maxSwAngle:F

    .line 998
    const v4, 0x4479c000

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->MinSize:F

    .line 999
    const v4, -0x3b864000

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->MaxSize:F

    .line 1000
    const v4, -0x3b864000

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->MaxSsumEccen:F

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Sxd:[[F

    move-object v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->Syd:[[F

    move-object v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 1011
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medX:F

    .line 1012
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medY:F

    .line 1013
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->medSize:F

    .line 1014
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->medFlag:Z

    .line 1015
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep1:Z

    .line 1016
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep2:Z

    .line 1017
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->LiftTapStep3:Z

    .line 1018
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mLiftTapDown:Z

    .line 1019
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bLiftTapCancel:Z

    .line 1020
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bHandTouchCancel:Z

    .line 1021
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mHandTouched:Z

    .line 1022
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->bInitHandTouch:Z

    .line 1023
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->g_InitTwistAngle:F

    .line 1024
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bInitTwist:Z

    .line 1025
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->g_bSweepReady:Z

    goto/16 :goto_a52

    .line 923
    :pswitch_data_e5e
    .packed-switch 0x1
        :pswitch_cc4
        :pswitch_aaa
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .registers 2
    .parameter "isLongpressEnabled"

    .prologue
    .line 558
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 559
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2
    .parameter "onDoubleTapListener"

    .prologue
    .line 545
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 546
    return-void
.end method

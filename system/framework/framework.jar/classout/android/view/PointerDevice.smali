.class public final Landroid/view/PointerDevice;
.super Ljava/lang/Object;
.source "PointerDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PointerDevice$LooperThread;,
        Landroid/view/PointerDevice$PointerState;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final MAX_POINTERS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PointerDevice"

.field private static mPointerDevice:Landroid/view/PointerDevice;

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoordOrigin:[I

.field private mInputChannel:Landroid/view/InputChannel;

.field private final mInputHandler:Landroid/view/InputHandler;

.field private mIsWaitingForSync:Z

.field private mLatestEventTime:J

.field private mLooperThread:Landroid/view/PointerDevice$LooperThread;

.field private mStates:[Landroid/view/PointerDevice$PointerState;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    const-string v0, "1"

    const-string v1, "debug.pointerdevice"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/PointerDevice;->DBG:Z

    .line 34
    const/4 v0, 0x0

    sput-object v0, Landroid/view/PointerDevice;->mPointerDevice:Landroid/view/PointerDevice;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/view/PointerDevice;->mCoordOrigin:[I

    .line 254
    new-instance v2, Landroid/view/PointerDevice$1;

    invoke-direct {v2, p0}, Landroid/view/PointerDevice$1;-><init>(Landroid/view/PointerDevice;)V

    iput-object v2, p0, Landroid/view/PointerDevice;->mInputHandler:Landroid/view/InputHandler;

    .line 51
    invoke-virtual {p0}, Landroid/view/PointerDevice;->newPointerStates()[Landroid/view/PointerDevice$PointerState;

    move-result-object v2

    iput-object v2, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    .line 52
    iput-object p1, p0, Landroid/view/PointerDevice;->mContext:Landroid/content/Context;

    .line 53
    iget-object v2, p0, Landroid/view/PointerDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 54
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 55
    .local v0, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v2

    iput-object v2, p0, Landroid/view/PointerDevice;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 57
    invoke-direct {p0}, Landroid/view/PointerDevice;->registerInputHandler()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Landroid/view/PointerDevice;)Landroid/view/InputChannel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/view/PointerDevice;->mInputChannel:Landroid/view/InputChannel;

    return-object v0
.end method

.method static synthetic access$002(Landroid/view/PointerDevice;Landroid/view/InputChannel;)Landroid/view/InputChannel;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/view/PointerDevice;->mInputChannel:Landroid/view/InputChannel;

    return-object p1
.end method

.method static synthetic access$100()Landroid/view/IWindowManager;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Landroid/view/PointerDevice;->sWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/PointerDevice;)Landroid/view/InputHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/view/PointerDevice;->mInputHandler:Landroid/view/InputHandler;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 186
    const-string v0, "PointerDevice"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method public static declared-synchronized obtain(Landroid/content/Context;)Landroid/view/PointerDevice;
    .registers 4
    .parameter "context"

    .prologue
    .line 66
    const-class v0, Landroid/view/PointerDevice;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    sput-object v1, Landroid/view/PointerDevice;->sWindowManager:Landroid/view/IWindowManager;

    .line 67
    sget-object v1, Landroid/view/PointerDevice;->mPointerDevice:Landroid/view/PointerDevice;

    if-nez v1, :cond_26

    .line 68
    sget-boolean v1, Landroid/view/PointerDevice;->DBG:Z

    if-eqz v1, :cond_1f

    .line 69
    const-string v1, "PointerDevice"

    const-string v2, "PointerDevice object created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1f
    new-instance v1, Landroid/view/PointerDevice;

    invoke-direct {v1, p0}, Landroid/view/PointerDevice;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/view/PointerDevice;->mPointerDevice:Landroid/view/PointerDevice;

    .line 73
    :cond_26
    sget-object v1, Landroid/view/PointerDevice;->mPointerDevice:Landroid/view/PointerDevice;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    monitor-exit v0

    return-object v1

    .line 66
    :catchall_2a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerInputHandler()V
    .registers 2

    .prologue
    .line 267
    new-instance v0, Landroid/view/PointerDevice$LooperThread;

    invoke-direct {v0, p0}, Landroid/view/PointerDevice$LooperThread;-><init>(Landroid/view/PointerDevice;)V

    iput-object v0, p0, Landroid/view/PointerDevice;->mLooperThread:Landroid/view/PointerDevice$LooperThread;

    .line 268
    iget-object v0, p0, Landroid/view/PointerDevice;->mLooperThread:Landroid/view/PointerDevice$LooperThread;

    invoke-virtual {v0}, Landroid/view/PointerDevice$LooperThread;->start()V

    .line 269
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getXY([I)V
    .registers 6
    .parameter "xy"

    .prologue
    const/4 v2, 0x1

    .line 81
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2d

    .line 82
    :try_start_6
    iget-object v1, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/view/PointerDevice$PointerState;->id:I

    if-nez v1, :cond_2a

    iget-object v1, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroid/view/PointerDevice$PointerState;->pressed:Z

    if-ne v1, v2, :cond_2a

    .line 83
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/view/PointerDevice$PointerState;->x:I

    aput v2, p1, v1

    .line 84
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/view/PointerDevice$PointerState;->y:I

    aput v2, p1, v1
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_42

    .line 92
    :goto_28
    monitor-exit p0

    return-void

    .line 81
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 90
    :cond_2d
    const/4 v1, 0x0

    :try_start_2e
    iget-object v2, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/view/PointerDevice$PointerState;->x:I

    aput v2, p1, v1

    .line 91
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Landroid/view/PointerDevice$PointerState;->y:I

    aput v2, p1, v1
    :try_end_41
    .catchall {:try_start_2e .. :try_end_41} :catchall_42

    goto :goto_28

    .line 81
    :catchall_42
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public newPointerStates()[Landroid/view/PointerDevice$PointerState;
    .registers 5

    .prologue
    const/4 v3, 0x5

    .line 193
    new-array v1, v3, [Landroid/view/PointerDevice$PointerState;

    .line 194
    .local v1, m:[Landroid/view/PointerDevice$PointerState;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v3, :cond_10

    .line 195
    new-instance v2, Landroid/view/PointerDevice$PointerState;

    invoke-direct {v2}, Landroid/view/PointerDevice$PointerState;-><init>()V

    aput-object v2, v1, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 198
    :cond_10
    return-object v1
.end method

.method declared-synchronized onNewEvent(Landroid/view/MotionEvent;Landroid/content/res/CompatibilityInfo$Translator;)V
    .registers 15
    .parameter "event"
    .parameter "translator"

    .prologue
    const/4 v11, 0x5

    .line 109
    monitor-enter p0

    if-eqz p2, :cond_b

    .line 110
    :try_start_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 111
    invoke-virtual {p2, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9f

    .line 115
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 116
    .local v2, pointerCount:I
    const/4 v1, 0x0

    .line 117
    .local v1, i:I
    :goto_10
    if-ge v1, v2, :cond_48

    .line 118
    iget-object v7, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v7, v7, v1

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/view/PointerDevice$PointerState;->pressed:Z

    .line 119
    iget-object v7, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v7, v7, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Landroid/view/PointerDevice;->mCoordOrigin:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/PointerDevice$PointerState;->x:I

    .line 120
    iget-object v7, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v7, v7, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Landroid/view/PointerDevice;->mCoordOrigin:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/view/PointerDevice$PointerState;->y:I

    .line 121
    iget-object v7, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v7, v7, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v7, Landroid/view/PointerDevice$PointerState;->id:I

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 123
    :cond_48
    :goto_48
    if-ge v1, v11, :cond_54

    .line 124
    iget-object v7, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v7, v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/view/PointerDevice$PointerState;->pressed:Z

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 128
    :cond_54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I
    :try_end_57
    .catchall {:try_start_b .. :try_end_57} :catchall_98

    move-result v7

    sparse-switch v7, :sswitch_data_a2

    .line 146
    :cond_5b
    if-eqz p2, :cond_60

    .line 147
    :try_start_5d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 151
    :cond_60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 152
    .local v3, time:J
    iget-wide v7, p0, Landroid/view/PointerDevice;->mLatestEventTime:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_6c

    .line 153
    iput-wide v3, p0, Landroid/view/PointerDevice;->mLatestEventTime:J

    .line 156
    :cond_6c
    iget-boolean v7, p0, Landroid/view/PointerDevice;->mIsWaitingForSync:Z

    if-eqz v7, :cond_73

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_9f

    .line 159
    :cond_73
    monitor-exit p0

    return-void

    .line 131
    .end local v3           #time:J
    :sswitch_75
    :try_start_75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 132
    .local v0, action:I
    const v7, 0xff00

    and-int/2addr v7, v0

    shr-int/lit8 v6, v7, 0x8

    .line 133
    .local v6, uppedIndex:I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 135
    .local v5, uppedID:I
    const/4 v1, 0x0

    :goto_84
    if-ge v1, v11, :cond_5b

    .line 136
    iget-object v7, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v7, v7, v1

    iget v7, v7, Landroid/view/PointerDevice$PointerState;->id:I

    if-ne v7, v5, :cond_95

    .line 137
    iget-object v7, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v7, v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/view/PointerDevice$PointerState;->pressed:Z
    :try_end_95
    .catchall {:try_start_75 .. :try_end_95} :catchall_98

    .line 135
    :cond_95
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 146
    .end local v0           #action:I
    .end local v1           #i:I
    .end local v2           #pointerCount:I
    .end local v5           #uppedID:I
    .end local v6           #uppedIndex:I
    :catchall_98
    move-exception v7

    if-eqz p2, :cond_9e

    .line 147
    :try_start_9b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_9e
    throw v7
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_9f

    .line 109
    :catchall_9f
    move-exception v7

    monitor-exit p0

    throw v7

    .line 128
    :sswitch_data_a2
    .sparse-switch
        0x1 -> :sswitch_75
        0x6 -> :sswitch_75
    .end sparse-switch
.end method

.method public declared-synchronized setCoordOrigin(II)V
    .registers 5
    .parameter "coordX"
    .parameter "coordY"

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/view/PointerDevice;->mCoordOrigin:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 99
    iget-object v0, p0, Landroid/view/PointerDevice;->mCoordOrigin:[I

    const/4 v1, 0x1

    aput p2, v0, v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 100
    monitor-exit p0

    return-void

    .line 98
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized syncWithMainLooper(J)V
    .registers 10
    .parameter "waitUntilEventTime"

    .prologue
    .line 168
    monitor-enter p0

    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Landroid/view/PointerDevice;->mIsWaitingForSync:Z

    .line 169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 170
    .local v0, started:J
    :goto_8
    iget-wide v3, p0, Landroid/view/PointerDevice;->mLatestEventTime:J

    cmp-long v3, v3, p1

    if-gez v3, :cond_2c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_24

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v5, 0xf

    cmp-long v3, v3, v5

    if-gez v3, :cond_2c

    .line 174
    const-wide/16 v3, 0x1

    :try_start_1b
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_24
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_8

    .line 175
    :catch_1f
    move-exception v2

    .line 176
    .local v2, t:Ljava/lang/Throwable;
    :try_start_20
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_8

    .line 181
    .end local v0           #started:J
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_24
    move-exception v3

    const/4 v4, 0x0

    :try_start_26
    iput-boolean v4, p0, Landroid/view/PointerDevice;->mIsWaitingForSync:Z

    throw v3
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_29

    .line 168
    :catchall_29
    move-exception v3

    monitor-exit p0

    throw v3

    .line 181
    .restart local v0       #started:J
    :cond_2c
    const/4 v3, 0x0

    :try_start_2d
    iput-boolean v3, p0, Landroid/view/PointerDevice;->mIsWaitingForSync:Z
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_29

    .line 183
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized update([Landroid/view/PointerDevice$PointerState;)V
    .registers 5
    .parameter "copy"

    .prologue
    .line 103
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v1, 0x5

    if-ge v0, v1, :cond_11

    .line 104
    :try_start_5
    aget-object v1, p1, v0

    iget-object v2, p0, Landroid/view/PointerDevice;->mStates:[Landroid/view/PointerDevice$PointerState;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/PointerDevice$PointerState;->copyFrom(Landroid/view/PointerDevice$PointerState;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 106
    :cond_11
    monitor-exit p0

    return-void

    .line 103
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.class public final Landroid/view/InputQueue;
.super Ljava/lang/Object;
.source "InputQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputQueue$FinishedCallback;,
        Landroid/view/InputQueue$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InputQueue"

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field final mChannel:Landroid/view/InputChannel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/InputQueue;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/InputChannel;)V
    .registers 2
    .parameter "channel"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/view/InputQueue;->mChannel:Landroid/view/InputChannel;

    .line 61
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Landroid/view/InputQueue;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(J)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    invoke-static {p0, p1}, Landroid/view/InputQueue;->nativeFinished(J)V

    return-void
.end method

.method private static dispatchKeyEvent(Landroid/view/InputHandler;Landroid/view/KeyEvent;J)V
    .registers 5
    .parameter "inputHandler"
    .parameter "event"
    .parameter "finishedToken"

    .prologue
    .line 119
    invoke-static {p2, p3}, Landroid/view/InputQueue$FinishedCallback;->obtain(J)Landroid/view/InputQueue$FinishedCallback;

    move-result-object v0

    .line 120
    .local v0, finishedCallback:Ljava/lang/Runnable;
    invoke-interface {p0, p1, v0}, Landroid/view/InputHandler;->handleKey(Landroid/view/KeyEvent;Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method private static dispatchMotionEvent(Landroid/view/InputHandler;Landroid/view/MotionEvent;J)V
    .registers 5
    .parameter "inputHandler"
    .parameter "event"
    .parameter "finishedToken"

    .prologue
    .line 126
    invoke-static {p2, p3}, Landroid/view/InputQueue$FinishedCallback;->obtain(J)Landroid/view/InputQueue$FinishedCallback;

    move-result-object v0

    .line 127
    .local v0, finishedCallback:Ljava/lang/Runnable;
    invoke-interface {p0, p1, v0}, Landroid/view/InputHandler;->handleMotion(Landroid/view/MotionEvent;Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method private static native nativeFinished(J)V
.end method

.method private static native nativeRegisterInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
.end method

.method private static native nativeUnregisterInputChannel(Landroid/view/InputChannel;)V
.end method

.method public static registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    .registers 5
    .parameter "inputChannel"
    .parameter "inputHandler"
    .parameter "messageQueue"

    .prologue
    .line 77
    if-nez p0, :cond_a

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_a
    if-nez p1, :cond_14

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputHandler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_14
    if-nez p2, :cond_1f

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "messageQueue must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1f
    sget-object v0, Landroid/view/InputQueue;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_22
    invoke-static {p0, p1, p2}, Landroid/view/InputQueue;->nativeRegisterInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V

    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public static unregisterInputChannel(Landroid/view/InputChannel;)V
    .registers 3
    .parameter "inputChannel"

    .prologue
    .line 103
    if-nez p0, :cond_a

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_a
    sget-object v0, Landroid/view/InputQueue;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_d
    invoke-static {p0}, Landroid/view/InputQueue;->nativeUnregisterInputChannel(Landroid/view/InputChannel;)V

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public getInputChannel()Landroid/view/InputChannel;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Landroid/view/InputQueue;->mChannel:Landroid/view/InputChannel;

    return-object v0
.end method

.class public Lcom/broadcom/bt/service/opp/OppEventLoop;
.super Lcom/broadcom/bt/service/framework/BaseEventLoop;
.source "OppEventLoop.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/OppConstants;


# static fields
.field private static final TAG:Ljava/lang/String; = "OppEventLoop"

.field private static final V:Z = true


# instance fields
.field mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/opp/IOppCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mOpsAccessGranted:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const-string v0, "OppEventLoop"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USE_STANDALONE_EVENT_LOOP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    invoke-static {v0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->classInitNative(Z)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseEventLoop;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mOpsAccessGranted:Z

    .line 125
    new-instance v0, Lcom/broadcom/bt/service/opp/OppEventLoop$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/opp/OppEventLoop$1;-><init>(Lcom/broadcom/bt/service/opp/OppEventLoop;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    return-void
.end method

.method private static native classInitNative(Z)V
.end method

.method private native clearObexEventLoopNative()V
.end method

.method private createOpcIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "action"

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createOpsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "action"

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createVcardIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .parameter "action"

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "actionType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private native initObexEventLoopNative()V
.end method

.method private native isEventLoopRunningNative()Z
.end method

.method private native startEventLoopNative()V
.end method

.method private native stopEventLoopNative()V
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    const-string v0, "bluetooth_opp_service"

    return-object v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->initObexEventLoopNative()V

    .line 68
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 70
    return-void
.end method

.method declared-synchronized onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .registers 8
    .parameter "filePath"

    .prologue
    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 567
    monitor-enter p0

    :try_start_5
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOpOwnerVcardNotSet ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_5c

    move-result v0

    .line 577
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2b
    if-ge v1, v0, :cond_5f

    .line 579
    :try_start_2d
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpOwnerVcardNotSet(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_5c
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_38} :catch_3b

    .line 577
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 580
    :catch_3b
    move-exception v3

    move-object v2, v3

    .line 581
    .local v2, t:Ljava/lang/Throwable;
    :try_start_3d
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpOwnerVcardNotSet ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_3d .. :try_end_5b} :catchall_5c

    goto :goto_38

    .line 567
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_5c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 584
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_5f
    :try_start_5f
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 587
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpOwnerVcardNotSet ()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_5c

    .line 589
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpcAmpStateChanged(Ljava/lang/String;I)V
    .registers 9
    .parameter "peerBDAddress"
    .parameter "ampState"

    .prologue
    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 363
    monitor-enter p0

    :try_start_5
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOpcAmpStateChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_70

    move-result v0

    .line 374
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_35
    if-ge v1, v0, :cond_73

    .line 376
    :try_start_37
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcAmpStateChanged(Ljava/lang/String;I)V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_70
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_42} :catch_45

    .line 374
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 377
    :catch_45
    move-exception v3

    move-object v2, v3

    .line 378
    .local v2, t:Ljava/lang/Throwable;
    :try_start_47
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpcAmpStateChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_47 .. :try_end_6f} :catchall_70

    goto :goto_42

    .line 363
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_70
    move-exception v3

    monitor-exit p0

    throw v3

    .line 382
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_73
    :try_start_73
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 385
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpcAmpStateChanged()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_70

    .line 388
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpcClose(I)V
    .registers 8
    .parameter "status"

    .prologue
    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 244
    monitor-enter p0

    :try_start_5
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOpcClose ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_5c

    move-result v0

    .line 256
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2b
    if-ge v1, v0, :cond_5f

    .line 258
    :try_start_2d
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcClose(I)V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_5c
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_38} :catch_3b

    .line 256
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 259
    :catch_3b
    move-exception v3

    move-object v2, v3

    .line 260
    .local v2, t:Ljava/lang/Throwable;
    :try_start_3d
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpcClose("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_3d .. :try_end_5b} :catchall_5c

    goto :goto_38

    .line 244
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_5c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 263
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_5f
    :try_start_5f
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 266
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpcClose()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_5c

    .line 268
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpcEnable()V
    .registers 6

    .prologue
    const-string v3, "OppEventLoop"

    .line 181
    monitor-enter p0

    :try_start_3
    const-string v3, "OppEventLoop"

    const-string/jumbo v4, "onOpcEnable()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2c

    move-result v0

    .line 191
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_2f

    .line 193
    :try_start_14
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcEnable()V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_2c
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1f} :catch_22

    .line 191
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 194
    :catch_22
    move-exception v3

    move-object v2, v3

    .line 195
    .local v2, t:Ljava/lang/Throwable;
    :try_start_24
    const-string v3, "OppEventLoop"

    const-string v4, "Error: onOpcEnable()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2c

    goto :goto_1f

    .line 181
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_2c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 198
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_2f
    :try_start_2f
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 202
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpcEnable()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_2c

    .line 205
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpcObjectPushed(ILjava/lang/String;)V
    .registers 9
    .parameter "status"
    .parameter "filePath"

    .prologue
    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 277
    monitor-enter p0

    :try_start_5
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOpcObjectPushed("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_70

    move-result v0

    .line 289
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_35
    if-ge v1, v0, :cond_73

    .line 291
    :try_start_37
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcObjectPushed(ILjava/lang/String;)V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_70
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_42} :catch_45

    .line 289
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 292
    :catch_45
    move-exception v3

    move-object v2, v3

    .line 293
    .local v2, t:Ljava/lang/Throwable;
    :try_start_47
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpcObjectPushed("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_47 .. :try_end_6f} :catchall_70

    goto :goto_42

    .line 277
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_70
    move-exception v3

    monitor-exit p0

    throw v3

    .line 296
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_73
    :try_start_73
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 299
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpcObjectPushed()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_70

    .line 301
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpcObjectReceived(ILjava/lang/String;)V
    .registers 9
    .parameter "status"
    .parameter "filePath"

    .prologue
    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 305
    monitor-enter p0

    :try_start_5
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOpcObjectReceived("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_70

    move-result v0

    .line 318
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_35
    if-ge v1, v0, :cond_73

    .line 320
    :try_start_37
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcObjectReceived(ILjava/lang/String;)V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_70
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_42} :catch_45

    .line 318
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 321
    :catch_45
    move-exception v3

    move-object v2, v3

    .line 322
    .local v2, t:Ljava/lang/Throwable;
    :try_start_47
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpcObjectReceived("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_47 .. :try_end_6f} :catchall_70

    goto :goto_42

    .line 305
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_70
    move-exception v3

    monitor-exit p0

    throw v3

    .line 325
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_73
    :try_start_73
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 328
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpcObjectReceived()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_70

    .line 330
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpcOpen()V
    .registers 6

    .prologue
    const-string v3, "OppEventLoop"

    .line 212
    monitor-enter p0

    :try_start_3
    const-string v3, "OppEventLoop"

    const-string/jumbo v4, "onOpcOpen()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2c

    move-result v0

    .line 222
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_2f

    .line 224
    :try_start_14
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcOpen()V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_2c
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1f} :catch_22

    .line 222
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 225
    :catch_22
    move-exception v3

    move-object v2, v3

    .line 226
    .local v2, t:Ljava/lang/Throwable;
    :try_start_24
    const-string v3, "OppEventLoop"

    const-string v4, "Error: onOpcOpen()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2c

    goto :goto_1f

    .line 212
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_2c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 229
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_2f
    :try_start_2f
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 233
    const-string v3, "OppEventLoop"

    const-string v4, "Leavaing onOpcOpen()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_2c

    .line 236
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpcProgress(II)V
    .registers 9
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 334
    monitor-enter p0

    :try_start_5
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOpcProgress("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_70

    move-result v0

    .line 346
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_35
    if-ge v1, v0, :cond_73

    .line 348
    :try_start_37
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcProgress(II)V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_70
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_42} :catch_45

    .line 346
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 349
    :catch_45
    move-exception v3

    move-object v2, v3

    .line 350
    .local v2, t:Ljava/lang/Throwable;
    :try_start_47
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpcObjectReceived("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_47 .. :try_end_6f} :catchall_70

    goto :goto_42

    .line 334
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_70
    move-exception v3

    monitor-exit p0

    throw v3

    .line 354
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_73
    :try_start_73
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 357
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpcProgress()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_70

    .line 360
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 19
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePath"
    .parameter "totalBytes"

    .prologue
    .line 404
    monitor-enter p0

    :try_start_1
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOpsAccessRequest("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-boolean v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mOpsAccessGranted:Z

    if-nez v3, :cond_8d

    .line 418
    const-string v3, "OppEventLoop"

    const-string v4, "Sending OPP access request broadcast intent..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/opp/OppEventLoop;->createOpsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 420
    .local v2, i:Landroid/content/Intent;
    const-string v3, "bluetooth_opp_service"

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v9}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createAccessRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Landroid/content/Intent;

    .line 422
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 423
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mOpsAccessGranted:Z

    .line 440
    .end local v2           #i:Landroid/content/Intent;
    :goto_84
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpsAccessRequest()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_1 .. :try_end_8b} :catchall_109

    .line 442
    monitor-exit p0

    return-void

    .line 425
    :cond_8d
    :try_start_8d
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_109

    move-result v10

    .line 426
    .local v10, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_94
    if-ge v2, v10, :cond_10c

    .line 428
    :try_start_96
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_aa
    .catchall {:try_start_96 .. :try_end_aa} :catchall_109
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_aa} :catch_ad

    .line 426
    :goto_aa
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 430
    :catch_ad
    move-exception v3

    move-object v11, v3

    .line 431
    .local v11, t:Ljava/lang/Throwable;
    :try_start_af
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpsAccessRequest("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_108
    .catchall {:try_start_af .. :try_end_108} :catchall_109

    goto :goto_aa

    .line 404
    .end local v2           #i:I
    .end local v10           #N:I
    .end local v11           #t:Ljava/lang/Throwable;
    :catchall_109
    move-exception v3

    monitor-exit p0

    throw v3

    .line 436
    .restart local v2       #i:I
    .restart local v10       #N:I
    :cond_10c
    :try_start_10c
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_111
    .catchall {:try_start_10c .. :try_end_111} :catchall_109

    goto/16 :goto_84
.end method

.method declared-synchronized onOpsAmpStateChanged(Ljava/lang/String;I)V
    .registers 9
    .parameter "peerBDAddress"
    .parameter "ampState"

    .prologue
    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 472
    monitor-enter p0

    :try_start_5
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOpsAmpStateChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_70

    move-result v0

    .line 484
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_35
    if-ge v1, v0, :cond_73

    .line 486
    :try_start_37
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsAmpStateChanged(Ljava/lang/String;I)V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_70
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_42} :catch_45

    .line 484
    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 487
    :catch_45
    move-exception v3

    move-object v2, v3

    .line 488
    .local v2, t:Ljava/lang/Throwable;
    :try_start_47
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpsAmpStateChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_47 .. :try_end_6f} :catchall_70

    goto :goto_42

    .line 472
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_70
    move-exception v3

    monitor-exit p0

    throw v3

    .line 492
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_73
    :try_start_73
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 495
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpsAmpStateChanged()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_70

    .line 498
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpsClose()V
    .registers 6

    .prologue
    const-string v3, "OppEventLoop"

    .line 446
    monitor-enter p0

    :try_start_3
    const-string v3, "OppEventLoop"

    const-string/jumbo v4, "onOpsClose()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mOpsAccessGranted:Z

    .line 454
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2f

    move-result v0

    .line 455
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v0, :cond_32

    .line 457
    :try_start_17
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsClose()V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_2f
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_22} :catch_25

    .line 455
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 458
    :catch_25
    move-exception v3

    move-object v2, v3

    .line 459
    .local v2, t:Ljava/lang/Throwable;
    :try_start_27
    const-string v3, "OppEventLoop"

    const-string v4, "Error: onOpsClose()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2f

    goto :goto_22

    .line 446
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_2f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 463
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 466
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpsClose()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_2f

    .line 468
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpsObjectReceived(ILjava/lang/String;)V
    .registers 9
    .parameter "format"
    .parameter "filePath"

    .prologue
    const-string v3, ":"

    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 502
    monitor-enter p0

    :try_start_7
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOpsObjectReceived("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_72

    move-result v0

    .line 515
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_37
    if-ge v1, v0, :cond_75

    .line 517
    :try_start_39
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsObjectReceived(ILjava/lang/String;)V
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_72
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_44} :catch_47

    .line 515
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 518
    :catch_47
    move-exception v3

    move-object v2, v3

    .line 519
    .local v2, t:Ljava/lang/Throwable;
    :try_start_49
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpcObjectReceived("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_49 .. :try_end_71} :catchall_72

    goto :goto_44

    .line 502
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_72
    move-exception v3

    monitor-exit p0

    throw v3

    .line 522
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_75
    :try_start_75
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 525
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpcObjectReceived()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_72

    .line 527
    monitor-exit p0

    return-void
.end method

.method declared-synchronized onOpsOpen()V
    .registers 3

    .prologue
    const-string v0, "OppEventLoop"

    .line 392
    monitor-enter p0

    :try_start_3
    const-string v0, "OppEventLoop"

    const-string/jumbo v1, "onOpsOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v0, "OppEventLoop"

    const-string v1, "Leaving onOpsOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 399
    monitor-exit p0

    return-void

    .line 392
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onOpsProgress(II)V
    .registers 9
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    const-string v3, ":"

    const-string v3, ")"

    const-string v3, "OppEventLoop"

    .line 531
    monitor-enter p0

    :try_start_7
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onOpsProgress("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_72

    move-result v0

    .line 545
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_37
    if-ge v1, v0, :cond_75

    .line 547
    :try_start_39
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsProgress(II)V
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_72
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_44} :catch_47

    .line 545
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 548
    :catch_47
    move-exception v3

    move-object v2, v3

    .line 549
    .local v2, t:Ljava/lang/Throwable;
    :try_start_49
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: onOpsProgress("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_49 .. :try_end_71} :catchall_72

    goto :goto_44

    .line 531
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_72
    move-exception v3

    monitor-exit p0

    throw v3

    .line 553
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_75
    :try_start_75
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 556
    const-string v3, "OppEventLoop"

    const-string v4, "Leaving onOpsProgress()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_75 .. :try_end_81} :catchall_72

    .line 558
    monitor-exit p0

    return-void
.end method

.method registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 149
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_b

    .line 150
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 152
    :cond_b
    return-void
.end method

.method public declared-synchronized start()V
    .registers 4

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_34

    if-eqz v1, :cond_7

    .line 98
    :goto_5
    monitor-exit p0

    return-void

    .line 82
    :cond_7
    :try_start_7
    sget-boolean v1, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    if-eqz v1, :cond_1b

    .line 83
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->isEventLoopRunningNative()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 85
    const-string v1, "OppEventLoop"

    const-string v2, "Starting OPP Event Loop as Standalone..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->startEventLoopNative()V

    .line 91
    :cond_1b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z

    .line 93
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.AMP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop;->onStateChangeEvent(Z)V
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_34

    goto :goto_5

    .line 79
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catchall_34
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stop()V
    .registers 3

    .prologue
    .line 105
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mOpsAccessGranted:Z

    .line 107
    iget-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z

    if-eqz v0, :cond_23

    .line 108
    sget-boolean v0, Lcom/broadcom/bt/service/opp/OppServiceConfig;->USE_STANDALONE_EVENT_LOOP:Z

    if-eqz v0, :cond_1c

    .line 110
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 112
    const-string v0, "OppEventLoop"

    const-string v1, "Stopping standalone OPP Event Loop..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->stopEventLoopNative()V

    .line 117
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mStarted:Z

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->onStateChangeEvent(Z)V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_25

    .line 123
    :cond_23
    monitor-exit p0

    return-void

    .line 105
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 155
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_b

    .line 156
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 158
    :cond_b
    return-void
.end method

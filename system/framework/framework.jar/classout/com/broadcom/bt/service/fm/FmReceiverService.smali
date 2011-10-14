.class public final Lcom/broadcom/bt/service/fm/FmReceiverService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmReceiverService$BrdcstReceiver;
    }
.end annotation


# static fields
.field private static final BCM_VOL_0:I = 0x0

.field private static final BCM_VOL_1:I = 0x2

.field private static final BCM_VOL_10:I = 0x4b

.field private static final BCM_VOL_11:I = 0x5a

.field private static final BCM_VOL_12:I = 0x69

.field private static final BCM_VOL_13:I = 0x78

.field private static final BCM_VOL_14:I = 0x87

.field private static final BCM_VOL_15:I = 0x96

.field private static final BCM_VOL_2:I = 0x4

.field private static final BCM_VOL_3:I = 0x8

.field private static final BCM_VOL_4:I = 0xc

.field private static final BCM_VOL_5:I = 0x12

.field private static final BCM_VOL_6:I = 0x19

.field private static final BCM_VOL_7:I = 0x22

.field private static final BCM_VOL_8:I = 0x2d

.field private static final BCM_VOL_9:I = 0x3c

.field private static final FM_BROADCAST_RECEIVER_INCLUDED:Z = true

.field private static final FM_RADIO_STATE_FORCE_OFF_IF_TURNOFF:Z = true

.field private static final TAG:Ljava/lang/String; = "FmReceiverService"

.field private static final V:Z = true

.field private static final volumeTable:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final m_callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/fm/IFmReceiverCallback;",
            ">;"
        }
    .end annotation
.end field

.field public operationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable:[I

    .line 110
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiverService;->classFmInitNative()V

    .line 111
    return-void

    .line 80
    nop

    :array_e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const-string v3, "FmReceiverService"

    .line 116
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    .line 319
    new-instance v2, Lcom/broadcom/bt/service/fm/FmReceiverService$1;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService$1;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    iput-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    .line 119
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$BrdcstReceiver;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService$BrdcstReceiver;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    .line 124
    .local v0, broadcastRcvr:Landroid/content/BroadcastReceiver;
    if-eqz v0, :cond_3b

    .line 126
    if-eqz p1, :cond_33

    .line 128
    const-string v2, "FmReceiverService"

    const-string v2, "broadcastRcvr addAction .."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v1, iFilter:Landroid/content/IntentFilter;
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    .end local v1           #iFilter:Landroid/content/IntentFilter;
    :goto_32
    return-void

    .line 137
    :cond_33
    const-string v2, "FmReceiverService"

    const-string v2, "context  is  null"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 142
    :cond_3b
    const-string v2, "FmReceiverService"

    const-string v2, "broadcastRcvr\tis null"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method static synthetic access$000()[I
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->volumeTable:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeStateMachine()V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/fm/FmReceiverService;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z

    move-result v0

    return v0
.end method

.method private static native classFmInitNative()V
.end method

.method private native cleanupLoopNative()V
.end method

.method private native configureDeemphasisNative(I)Z
.end method

.method private native configureSignalNotificationNative(I)Z
.end method

.method private native disableNative(Z)Z
.end method

.method private native enableNative(I)Z
.end method

.method private native estimateNoiseFloorNative(I)Z
.end method

.method private native getAudioQualityNative(Z)Z
.end method

.method private native initLoopNative()V
.end method

.method private native initNativeDataNative()V
.end method

.method private initializeStateMachine()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    .line 237
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 238
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 239
    const/16 v0, 0x7f

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 240
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 241
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    .line 242
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    .line 243
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    .line 244
    const-string v0, ""

    sput-object v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    .line 245
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    .line 246
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 247
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    .line 248
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    .line 249
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 250
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAlternateFreqHopThreshold:I

    .line 251
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 252
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    .line 253
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    .line 254
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mStepSize:I

    .line 255
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mLiveAudioQuality:Z

    .line 256
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    .line 257
    const/16 v0, 0x64

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSignalPollInterval:I

    .line 258
    const/16 v0, 0x40

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mDeemphasisTime:I

    .line 259
    return-void
.end method

.method private native muteNative(Z)Z
.end method

.method private native searchAbortNative()Z
.end method

.method private native searchNative(IIII)Z
.end method

.method private sendAudioModeEventCallback(I)V
    .registers 8
    .parameter "audioMode"

    .prologue
    const-string/jumbo v5, "sendAudioModeEventCallback"

    const-string v4, "FmReceiverService"

    .line 512
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendAudioModeEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 520
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v0, :cond_2f

    .line 523
    :try_start_16
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioModeEvent(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24

    .line 520
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 524
    :catch_24
    move-exception v3

    move-object v2, v3

    .line 525
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendAudioModeEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 528
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2f
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 530
    return-void
.end method

.method private sendAudioModeEventCallbackFromLocalStore()V
    .registers 3

    .prologue
    .line 500
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "sendAudioModeEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallback(I)V

    .line 502
    return-void
.end method

.method private sendAudioPathEventCallback(I)V
    .registers 8
    .parameter "audioPath"

    .prologue
    const-string/jumbo v5, "sendAudioPathEventCallback"

    const-string v4, "FmReceiverService"

    .line 548
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendAudioPathEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 557
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v0, :cond_2f

    .line 560
    :try_start_16
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioPathEvent(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24

    .line 557
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 561
    :catch_24
    move-exception v3

    move-object v2, v3

    .line 562
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendAudioPathEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 565
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2f
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 567
    return-void
.end method

.method private sendAudioPathEventCallbackFromLocalStore()V
    .registers 3

    .prologue
    .line 536
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "sendAudioPathEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallback(I)V

    .line 538
    return-void
.end method

.method private sendEstimateNflEventCallback(I)V
    .registers 8
    .parameter "nfl"

    .prologue
    const-string/jumbo v5, "sendEstimateNflEventCallback"

    const-string v4, "FmReceiverService"

    .line 619
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendEstimateNflEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 627
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v0, :cond_2f

    .line 630
    :try_start_16
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onEstimateNflEvent(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24

    .line 627
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 631
    :catch_24
    move-exception v3

    move-object v2, v3

    .line 632
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendEstimateNflEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 635
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2f
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 637
    return-void
.end method

.method private sendEstimateNflEventCallbackFromLocalStore()V
    .registers 3

    .prologue
    .line 608
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "sendEstimateNflEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallback(I)V

    .line 610
    return-void
.end method

.method private sendLiveAudioQualityEventCallback(I)V
    .registers 8
    .parameter "rssi"

    .prologue
    const-string/jumbo v4, "sendLiveAudioQualityEventCallback"

    const-string v5, "FmReceiverService"

    .line 655
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendLiveAudioQualityEventCallback"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 664
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v0, :cond_2f

    .line 667
    :try_start_16
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onLiveAudioQualityEvent(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24

    .line 664
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 668
    :catch_24
    move-exception v3

    move-object v2, v3

    .line 669
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendLiveAudioQualityEventCallback"

    invoke-static {v5, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 672
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2f
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 674
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "radio_state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    return-void
.end method

.method private sendLiveAudioQualityEventCallbackFromLocalStore()V
    .registers 3

    .prologue
    .line 643
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "sendLiveAudioQualityEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallback(I)V

    .line 645
    return-void
.end method

.method private sendRdsDataEventCallback(IILjava/lang/String;)V
    .registers 9
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    const-string v4, "FmReceiverService"

    .line 474
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendRdsDataEventCallback"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 484
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v0, :cond_2c

    .line 487
    :try_start_13
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1e} :catch_21

    .line 484
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 488
    :catch_21
    move-exception v3

    move-object v2, v3

    .line 489
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendRdsModeEventCallback"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 492
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2c
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 494
    return-void
.end method

.method private sendRdsDataEventCallbackFromLocalStore()V
    .registers 4

    .prologue
    .line 461
    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "TEST RDS MESSAGE"

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallback(IILjava/lang/String;)V

    .line 462
    return-void
.end method

.method private sendRdsModeEventCallback(II)V
    .registers 9
    .parameter "rdsMode"
    .parameter "alternateFreqMode"

    .prologue
    const-string/jumbo v5, "sendRdsModeEventCallback"

    const-string v4, "FmReceiverService"

    .line 433
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendRdsModeEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 445
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v0, :cond_2f

    .line 448
    :try_start_16
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsModeEvent(II)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24

    .line 445
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 449
    :catch_24
    move-exception v3

    move-object v2, v3

    .line 450
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendRdsModeEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 453
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2f
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 455
    return-void
.end method

.method private sendRdsModeEventCallbackFromLocalStore()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 413
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "sendRdsModeEventCallbackFromLocalStore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v1, 0x0

    .line 415
    .local v1, rds:I
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    if-eqz v2, :cond_1c

    move v0, v4

    .line 417
    .local v0, af:I
    :goto_f
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    if-eqz v2, :cond_18

    .line 418
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    if-nez v2, :cond_1f

    move v1, v4

    .line 420
    :cond_18
    :goto_18
    invoke-direct {p0, v1, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallback(II)V

    .line 421
    return-void

    .line 415
    .end local v0           #af:I
    :cond_1c
    const/4 v2, 0x0

    move v0, v2

    goto :goto_f

    .line 418
    .restart local v0       #af:I
    :cond_1f
    const/4 v2, 0x2

    move v1, v2

    goto :goto_18
.end method

.method private sendSeekCompleteEventCallback(IIZ)V
    .registers 10
    .parameter "freq"
    .parameter "rssi"
    .parameter "seekSuccess"

    .prologue
    const-string/jumbo v5, "sendSeekCompleteEventCallback"

    const-string v4, "FmReceiverService"

    .line 385
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendSeekCompleteEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 397
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v0, :cond_2f

    .line 400
    :try_start_16
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onSeekCompleteEvent(IIZ)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24

    .line 397
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 401
    :catch_24
    move-exception v3

    move-object v2, v3

    .line 402
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendSeekCompleteEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 405
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2f
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 407
    return-void
.end method

.method private sendSeekCompleteEventCallbackFromLocalStore()V
    .registers 4

    .prologue
    .line 367
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "sendSeekCompleteEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallback(IIZ)V

    .line 370
    return-void
.end method

.method private sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 21
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"

    .prologue
    .line 285
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "sendStatusEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v9

    .line 301
    .local v9, callbacks:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_f
    if-ge v10, v9, :cond_37

    .line 304
    :try_start_11
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_29} :catch_2c

    .line 301
    :goto_29
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 307
    :catch_2c
    move-exception v0

    move-object v11, v0

    .line 308
    .local v11, t:Ljava/lang/Throwable;
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "sendStatusEventCallback"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 311
    .end local v11           #t:Ljava/lang/Throwable;
    :cond_37
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 313
    return-void
.end method

.method private sendVolumeEventCallback(II)V
    .registers 9
    .parameter "status"
    .parameter "volume"

    .prologue
    const-string/jumbo v5, "sendVolumeEventCallback"

    const-string v4, "FmReceiverService"

    .line 690
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendVolumeEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 701
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v0, :cond_2f

    .line 704
    :try_start_16
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onVolumeEvent(II)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24

    .line 701
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 705
    :catch_24
    move-exception v3

    move-object v2, v3

    .line 706
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendVolumeEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 709
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2f
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 711
    return-void
.end method

.method private sendWorldRegionEventCallback(I)V
    .registers 8
    .parameter "worldRegion"

    .prologue
    const-string/jumbo v5, "sendWorldRegionEventCallback"

    const-string v4, "FmReceiverService"

    .line 584
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendWorldRegionEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 592
    .local v0, callbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v0, :cond_2f

    .line 595
    :try_start_16
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onWorldRegionEvent(I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_24

    .line 592
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 596
    :catch_24
    move-exception v3

    move-object v2, v3

    .line 597
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "FmReceiverService"

    const-string/jumbo v3, "sendWorldRegionEventCallback"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 600
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_2f
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 602
    return-void
.end method

.method private sendWorldRegionEventCallbackFromLocalStore()V
    .registers 3

    .prologue
    .line 573
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "sendWorldRegionEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallback(I)V

    .line 575
    return-void
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setFMVolumeNative(I)Z
.end method

.method private native setRdsModeNative(ZZI)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setScanStepNative(I)Z
.end method

.method private native tuneNative(I)Z
.end method


# virtual methods
.method public checkForPendingResponses()V
    .registers 3

    .prologue
    .line 717
    const-string v0, "FmReceiverService"

    const-string v1, "checkForPendingResponses"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallback(I)V

    .line 719
    return-void
.end method

.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .registers 9
    .parameter "nflLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    .line 1493
    monitor-enter p0

    :try_start_5
    const-string v3, "FmReceiverService"

    const-string v4, "estimateNoiseFloorLevel()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_65

    .line 1495
    const/4 v2, 0x0

    .line 1498
    .local v2, returnStatus:I
    if-eq p1, v6, :cond_16

    if-eq p1, v5, :cond_16

    if-eqz p1, :cond_16

    .line 1500
    const/4 v2, 0x4

    .line 1527
    :cond_14
    :goto_14
    monitor-exit p0

    return v2

    .line 1501
    :cond_16
    :try_start_16
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v3, :cond_3a

    .line 1502
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/4 v2, 0x3

    goto :goto_14

    .line 1505
    :cond_3a
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1507
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1508
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1509
    const/16 v3, 0x63

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1510
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1511
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_55
    .catchall {:try_start_16 .. :try_end_55} :catchall_65

    .line 1515
    :try_start_55
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->estimateNoiseFloorNative(I)Z
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_65
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_6a

    move-result v3

    if-eqz v3, :cond_68

    .line 1516
    const/4 v2, 0x0

    .line 1523
    :goto_5c
    if-eqz v2, :cond_14

    .line 1524
    :try_start_5e
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_65

    goto :goto_14

    .line 1493
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_65
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1518
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_68
    const/4 v2, 0x2

    goto :goto_5c

    .line 1519
    :catch_6a
    move-exception v0

    .line 1520
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1521
    :try_start_6c
    const-string v3, "FmReceiverService"

    const-string v4, "estimateNoiseFloorNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_65

    goto :goto_5c
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    .line 186
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 187
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 232
    const-string v0, "FmReceiverService"

    const-string v1, "getName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v0, "bluetooth_fm_receiver_service"

    return-object v0
.end method

.method public getRadioIsOn()Z
    .registers 2

    .prologue
    .line 94
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    return v0
.end method

.method public declared-synchronized getStatus()I
    .registers 5

    .prologue
    const-string v1, "FmReceiverService"

    .line 906
    monitor-enter p0

    :try_start_3
    const-string v1, "FmReceiverService"

    const-string v2, "getStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v0, 0x0

    .line 910
    .local v0, returnStatus:I
    const/4 v1, 0x2

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v1, v2, :cond_31

    .line 911
    const-string v1, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_35

    .line 912
    const/4 v0, 0x3

    .line 918
    :goto_2f
    monitor-exit p0

    return v0

    .line 915
    :cond_31
    :try_start_31
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_2f

    .line 906
    .end local v0           #returnStatus:I
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized muteAudio(Z)I
    .registers 8
    .parameter "mute"

    .prologue
    const-string v3, "FmReceiverService"

    .line 931
    monitor-enter p0

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "muteAudio()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v2, 0x0

    .line 935
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_32

    .line 936
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_5d

    .line 937
    const/4 v2, 0x3

    .line 961
    :cond_30
    :goto_30
    monitor-exit p0

    return v2

    .line 939
    :cond_32
    const/4 v3, 0x4

    :try_start_33
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 941
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 942
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 943
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 944
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 945
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_5d

    .line 949
    :try_start_4d
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->muteNative(Z)Z
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_62

    move-result v3

    if-eqz v3, :cond_60

    .line 950
    const/4 v2, 0x0

    .line 957
    :goto_54
    if-eqz v2, :cond_30

    .line 958
    :try_start_56
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5d

    goto :goto_30

    .line 931
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_5d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 952
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_60
    const/4 v2, 0x2

    goto :goto_54

    .line 953
    :catch_62
    move-exception v0

    .line 954
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 955
    :try_start_64
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "muteAudio failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_5d

    goto :goto_54
.end method

.method public onRadioAfJumpEvent(III)V
    .registers 8
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    .line 1701
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRadioAfJumpEvent(status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1705
    if-nez p1, :cond_4d

    .line 1706
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 1707
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 1708
    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 1710
    :cond_4d
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore()V

    .line 1712
    return-void
.end method

.method public onRadioAudioDataEvent(III)V
    .registers 6
    .parameter "status"
    .parameter "rssi"
    .parameter "mode"

    .prologue
    .line 1747
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioAudioDataEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1751
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1754
    if-nez p1, :cond_17

    .line 1755
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 1756
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 1758
    :cond_17
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallbackFromLocalStore()V

    .line 1759
    return-void
.end method

.method public onRadioAudioModeEvent(II)V
    .registers 5
    .parameter "status"
    .parameter "mode"

    .prologue
    .line 1715
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioAudioModeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1721
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1724
    if-nez p1, :cond_15

    .line 1725
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 1727
    :cond_15
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallbackFromLocalStore()V

    .line 1728
    return-void
.end method

.method public onRadioAudioPathEvent(II)V
    .registers 5
    .parameter "status"
    .parameter "path"

    .prologue
    .line 1731
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioAudioPathEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1737
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1740
    if-nez p1, :cond_15

    .line 1741
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    .line 1743
    :cond_15
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallbackFromLocalStore()V

    .line 1744
    return-void
.end method

.method public onRadioDeemphEvent(II)V
    .registers 5
    .parameter "status"
    .parameter "time"

    .prologue
    .line 1840
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioDeemphEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1846
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1847
    return-void
.end method

.method public onRadioMuteEvent(IZ)V
    .registers 5
    .parameter "status"
    .parameter "muted"

    .prologue
    .line 1633
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioMuteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    if-nez p1, :cond_c

    .line 1637
    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    .line 1641
    :cond_c
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1644
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1647
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    .line 1648
    return-void
.end method

.method public onRadioNflEstimationEvent(I)V
    .registers 4
    .parameter "level"

    .prologue
    .line 1876
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioNflEstimationEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1882
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1885
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    .line 1886
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallbackFromLocalStore()V

    .line 1887
    return-void
.end method

.method public onRadioOffEvent(I)V
    .registers 5
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 1607
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioOffEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->shutdownFmPower()V

    .line 1611
    if-nez p1, :cond_10

    .line 1612
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 1616
    :cond_10
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1621
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_20

    .line 1622
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1629
    :goto_1c
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    .line 1630
    return-void

    .line 1624
    :cond_20
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_1c
.end method

.method public onRadioOnEvent(I)V
    .registers 5
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    .line 1584
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioOnEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    if-nez p1, :cond_d

    .line 1587
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 1591
    :cond_d
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1594
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-ne v2, v0, :cond_1d

    .line 1595
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-eqz v0, :cond_21

    .line 1596
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1603
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    .line 1604
    return-void

    .line 1598
    :cond_21
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_1d
.end method

.method public onRadioRdsModeEvent(IZZI)V
    .registers 8
    .parameter "status"
    .parameter "rdsOn"
    .parameter "afOn"
    .parameter "rdsType"

    .prologue
    const-string v2, "FmReceiverService"

    .line 1762
    const-string v0, "FmReceiverService"

    const-string/jumbo v0, "onRadioRdsModeEvent()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    if-nez p1, :cond_53

    .line 1766
    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    .line 1767
    sput-boolean p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    .line 1768
    sput p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 1769
    const-string v0, "FmReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRadioRdsModeEvent( rdsOn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", afOn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_53
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1778
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1780
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    .line 1781
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 1783
    return-void
.end method

.method public onRadioRdsTypeEvent(II)V
    .registers 7
    .parameter "status"
    .parameter "rdsType"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1787
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioRdsTypeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    if-nez p1, :cond_e

    .line 1791
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 1794
    :cond_e
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    if-ne v2, v0, :cond_20

    .line 1796
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1799
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1801
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    .line 1802
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 1807
    :goto_1f
    return-void

    .line 1805
    :cond_20
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    goto :goto_1f
.end method

.method public onRadioRdsUpdateEvent(IIILjava/lang/String;)V
    .registers 9
    .parameter "status"
    .parameter "data"
    .parameter "index"
    .parameter "text"

    .prologue
    const-string v3, ","

    .line 1810
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRadioRdsUpdateEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    if-nez p1, :cond_53

    .line 1815
    packed-switch p2, :pswitch_data_60

    .line 1835
    :goto_50
    :pswitch_50
    invoke-direct {p0, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallback(IILjava/lang/String;)V

    .line 1837
    :cond_53
    return-void

    .line 1817
    :pswitch_54
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    goto :goto_50

    .line 1820
    :pswitch_57
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    goto :goto_50

    .line 1823
    :pswitch_5a
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    goto :goto_50

    .line 1826
    :pswitch_5d
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    goto :goto_50

    .line 1815
    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_54
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_5d
        :pswitch_57
        :pswitch_5a
    .end packed-switch
.end method

.method public onRadioRegionEvent(II)V
    .registers 5
    .parameter "status"
    .parameter "region"

    .prologue
    .line 1860
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioRegionEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1866
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1869
    if-nez p1, :cond_18

    .line 1870
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    .line 1871
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallbackFromLocalStore()V

    .line 1873
    :cond_18
    return-void
.end method

.method public onRadioScanStepEvent(I)V
    .registers 4
    .parameter "stepSize"

    .prologue
    .line 1850
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioScanStepEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1856
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1857
    return-void
.end method

.method public onRadioSearchCompleteEvent(III)V
    .registers 6
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    .line 1683
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioSearchCompleteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1689
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1692
    if-nez p1, :cond_1a

    .line 1693
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 1694
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 1695
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 1697
    :cond_1a
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore()V

    .line 1698
    return-void
.end method

.method public onRadioSearchEvent(II)V
    .registers 6
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    .line 1668
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioSearchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1673
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1676
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 1677
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 1678
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 1679
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore()V

    .line 1680
    return-void
.end method

.method public onRadioTuneEvent(III)V
    .registers 6
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    .line 1651
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioTuneEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1657
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1660
    if-nez p1, :cond_17

    .line 1661
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 1662
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 1664
    :cond_17
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore()V

    .line 1665
    return-void
.end method

.method public onRadioVolumeEvent(II)V
    .registers 5
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 1890
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "onRadioVolumeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1896
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1898
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendVolumeEventCallback(II)V

    .line 1899
    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .registers 3
    .parameter "started"

    .prologue
    .line 1982
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_10

    .line 1983
    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 1984
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_12

    .line 1985
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_18

    .line 1997
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 1987
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_18

    goto :goto_10

    .line 1982
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    if-eqz p1, :cond_7

    .line 99
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 101
    :cond_7
    return-void
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .registers 13
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    .line 1044
    monitor-enter p0

    :try_start_7
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "seekRdsStation():1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_76

    .line 1046
    const/4 v2, 0x0

    .line 1049
    .local v2, returnStatus:I
    if-ltz p2, :cond_14

    if-le p2, v7, :cond_17

    .line 1051
    :cond_14
    const/4 v2, 0x4

    .line 1088
    :cond_15
    :goto_15
    monitor-exit p0

    return v2

    .line 1052
    :cond_17
    if-ltz p4, :cond_1b

    if-le p4, v7, :cond_1d

    .line 1054
    :cond_1b
    const/4 v2, 0x4

    goto :goto_15

    .line 1055
    :cond_1d
    if-eqz p3, :cond_25

    if-eq p3, v5, :cond_25

    if-eq p3, v6, :cond_25

    .line 1058
    const/4 v2, 0x4

    goto :goto_15

    .line 1059
    :cond_25
    :try_start_25
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v3, :cond_49

    .line 1060
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v2, 0x3

    goto :goto_15

    .line 1063
    :cond_49
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1065
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1066
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1067
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1068
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1069
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_64
    .catchall {:try_start_25 .. :try_end_64} :catchall_76

    .line 1073
    and-int/lit16 p1, p1, 0x82

    .line 1076
    :try_start_66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_76
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_7b

    move-result v3

    if-eqz v3, :cond_79

    .line 1077
    const/4 v2, 0x0

    .line 1084
    :goto_6d
    if-eqz v2, :cond_15

    .line 1085
    :try_start_6f
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_76

    goto :goto_15

    .line 1044
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_76
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1079
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_79
    const/4 v2, 0x2

    goto :goto_6d

    .line 1080
    :catch_7b
    move-exception v0

    .line 1081
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1082
    :try_start_7d
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_7d .. :try_end_85} :catchall_76

    goto :goto_6d
.end method

.method public declared-synchronized seekStation(II)I
    .registers 9
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    const-string v3, "FmReceiverService"

    .line 982
    monitor-enter p0

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "seekStation():1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_69

    .line 984
    const/4 v2, 0x0

    .line 987
    .local v2, returnStatus:I
    if-ltz p2, :cond_12

    const/16 v3, 0xff

    if-le p2, v3, :cond_15

    .line 989
    :cond_12
    const/4 v2, 0x4

    .line 1019
    :cond_13
    :goto_13
    monitor-exit p0

    return v2

    .line 990
    :cond_15
    const/4 v3, 0x2

    :try_start_16
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3a

    .line 991
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v2, 0x3

    goto :goto_13

    .line 994
    :cond_3a
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 996
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 997
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 998
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 999
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1000
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_55
    .catchall {:try_start_16 .. :try_end_55} :catchall_69

    .line 1004
    and-int/lit16 p1, p1, 0x82

    .line 1007
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_59
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_69
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_6e

    move-result v3

    if-eqz v3, :cond_6c

    .line 1008
    const/4 v2, 0x0

    .line 1015
    :goto_60
    if-eqz v2, :cond_13

    .line 1016
    :try_start_62
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_69

    goto :goto_13

    .line 982
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_69
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1010
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_6c
    const/4 v2, 0x2

    goto :goto_60

    .line 1011
    :catch_6e
    move-exception v0

    .line 1012
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1013
    :try_start_70
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_69

    goto :goto_60
.end method

.method public declared-synchronized seekStationAbort()I
    .registers 7

    .prologue
    const-string v3, "FmReceiverService"

    .line 1102
    monitor-enter p0

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "seekStationAbort()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v2, 0x0

    .line 1106
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_32

    .line 1107
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_5d

    .line 1108
    const/4 v2, 0x3

    .line 1132
    :cond_30
    :goto_30
    monitor-exit p0

    return v2

    .line 1110
    :cond_32
    const/4 v3, 0x4

    :try_start_33
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1112
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1113
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1114
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1115
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1116
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_5d

    .line 1120
    :try_start_4d
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchAbortNative()Z
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_62

    move-result v3

    if-eqz v3, :cond_60

    .line 1121
    const/4 v2, 0x0

    .line 1128
    :goto_54
    if-eqz v2, :cond_30

    .line 1129
    :try_start_56
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5d

    goto :goto_30

    .line 1102
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_5d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1123
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_60
    const/4 v2, 0x2

    goto :goto_54

    .line 1124
    :catch_62
    move-exception v0

    .line 1125
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1126
    :try_start_64
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "searchAbortNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_64 .. :try_end_6c} :catchall_5d

    goto :goto_54
.end method

.method public sendStatusEventCallbackFromLocalStore()V
    .registers 10

    .prologue
    .line 355
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "sendStatusEventCallbackFromLocalStore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 361
    return-void
.end method

.method public declared-synchronized setAudioMode(I)I
    .registers 8
    .parameter "audioMode"

    .prologue
    const-string v3, "FmReceiverService"

    .line 1223
    monitor-enter p0

    const/4 v2, 0x0

    .line 1225
    .local v2, returnStatus:I
    :try_start_4
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setAudioMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_32

    .line 1228
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_5f

    .line 1229
    const/4 v2, 0x3

    .line 1257
    :cond_30
    :goto_30
    monitor-exit p0

    return v2

    .line 1231
    :cond_32
    const/4 v3, 0x4

    :try_start_33
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1233
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1234
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1235
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1236
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1237
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_5f

    .line 1241
    and-int/lit8 p1, p1, 0x3

    .line 1244
    :try_start_4f
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioModeNative(I)Z
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_5f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_64

    move-result v3

    if-eqz v3, :cond_62

    .line 1245
    const/4 v2, 0x0

    .line 1252
    :goto_56
    if-eqz v2, :cond_30

    .line 1253
    :try_start_58
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_5f

    goto :goto_30

    .line 1223
    .end local v1           #msg:Landroid/os/Message;
    :catchall_5f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1247
    .restart local v1       #msg:Landroid/os/Message;
    :cond_62
    const/4 v2, 0x2

    goto :goto_56

    .line 1248
    :catch_64
    move-exception v0

    .line 1249
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1250
    :try_start_66
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setAudioModeNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_5f

    goto :goto_56
.end method

.method public declared-synchronized setAudioPath(I)I
    .registers 8
    .parameter "audioPath"

    .prologue
    const-string v3, "FmReceiverService"

    .line 1278
    monitor-enter p0

    const/4 v2, 0x0

    .line 1280
    .local v2, returnStatus:I
    :try_start_4
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAudioPath("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_55

    .line 1283
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/4 v2, 0x3

    .line 1308
    :goto_4b
    if-eqz v2, :cond_53

    .line 1309
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_53
    .catchall {:try_start_4 .. :try_end_53} :catchall_87

    .line 1311
    :cond_53
    monitor-exit p0

    return v2

    .line 1286
    :cond_55
    const/4 v3, 0x4

    :try_start_56
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1288
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1289
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1290
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1291
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1292
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_70
    .catchall {:try_start_56 .. :try_end_70} :catchall_87

    .line 1296
    and-int/lit8 p1, p1, 0x7

    .line 1299
    :try_start_72
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPathNative(I)Z
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_87
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_7c

    move-result v3

    if-eqz v3, :cond_7a

    .line 1300
    const/4 v2, 0x0

    goto :goto_4b

    .line 1302
    :cond_7a
    const/4 v2, 0x2

    goto :goto_4b

    .line 1303
    :catch_7c
    move-exception v0

    .line 1304
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1305
    :try_start_7e
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setAudioPathNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_87

    goto :goto_4b

    .line 1278
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_87
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setFMVolume(I)I
    .registers 8
    .parameter "volume"

    .prologue
    const-string v3, "FmReceiverService"

    .line 1378
    monitor-enter p0

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setFMVolume()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    const/4 v2, 0x0

    .line 1383
    .local v2, returnStatus:I
    if-ltz p1, :cond_12

    const/16 v3, 0x100

    if-le p1, v3, :cond_2e

    .line 1384
    :cond_12
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "volume is illegal ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_97

    .line 1385
    const/4 v2, 0x4

    .line 1412
    :cond_2c
    :goto_2c
    monitor-exit p0

    return v2

    .line 1386
    :cond_2e
    const/4 v3, 0x2

    :try_start_2f
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_53

    .line 1387
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const/4 v2, 0x3

    goto :goto_2c

    .line 1390
    :cond_53
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1392
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1393
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1394
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1395
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1396
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1398
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setFMVolume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_2f .. :try_end_87} :catchall_97

    .line 1400
    :try_start_87
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolumeNative(I)Z
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_97
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_9c

    move-result v3

    if-eqz v3, :cond_9a

    .line 1401
    const/4 v2, 0x0

    .line 1408
    :goto_8e
    if-eqz v2, :cond_2c

    .line 1409
    :try_start_90
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_97

    goto :goto_2c

    .line 1378
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_97
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1403
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_9a
    const/4 v2, 0x2

    goto :goto_8e

    .line 1404
    :catch_9c
    move-exception v0

    .line 1405
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1406
    :try_start_9e
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setFMVolumeNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_97

    goto :goto_8e
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .registers 8
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const-string v2, "STATE = "

    const-string v2, "FmReceiverService"

    .line 1546
    monitor-enter p0

    const/4 v1, 0x0

    .line 1548
    .local v1, returnStatus:I
    :try_start_7
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "setLiveAudioPolling()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    if-eqz p1, :cond_3b

    const/16 v2, 0xa

    if-lt p2, v2, :cond_1a

    const v2, 0x186a0

    if-le p2, v2, :cond_3b

    .line 1553
    :cond_1a
    const/4 v1, 0x4

    .line 1574
    :goto_1b
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_73

    .line 1575
    monitor-exit p0

    return v1

    .line 1554
    :cond_3b
    :try_start_3b
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v2, :cond_5f

    .line 1555
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    const/4 v1, 0x3

    goto :goto_1b

    .line 1558
    :cond_5f
    const/4 v2, 0x2

    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_62
    .catchall {:try_start_3b .. :try_end_62} :catchall_73

    .line 1561
    :try_start_62
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getAudioQualityNative(Z)Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureSignalNotificationNative(I)Z
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6b} :catch_78

    move-result v2

    if-eqz v2, :cond_76

    .line 1563
    const/4 v1, 0x0

    .line 1571
    :goto_6f
    const/4 v2, 0x2

    :try_start_70
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_73

    goto :goto_1b

    .line 1546
    :catchall_73
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1565
    :cond_76
    const/4 v1, 0x2

    goto :goto_6f

    .line 1566
    :catch_78
    move-exception v2

    move-object v0, v2

    .line 1567
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x2

    .line 1568
    :try_start_7b
    const-string v2, "FmReceiverService"

    const-string/jumbo v3, "setLiveAudioPolling failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_73

    goto :goto_6f
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .registers 16
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, "FmReceiverService"

    .line 1157
    monitor-enter p0

    const/4 v5, 0x0

    .line 1159
    .local v5, returnStatus:I
    :try_start_6
    const-string v6, "FmReceiverService"

    const-string/jumbo v7, "setRdsMode()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_78

    .line 1162
    if-ltz p4, :cond_14

    const/16 v6, 0xff

    if-le p4, v6, :cond_17

    .line 1164
    :cond_14
    const/4 v5, 0x4

    .line 1204
    :cond_15
    :goto_15
    monitor-exit p0

    return v5

    .line 1165
    :cond_17
    const/4 v6, 0x2

    :try_start_18
    sget v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v7, :cond_3c

    .line 1166
    const-string v6, "FmReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v5, 0x3

    goto :goto_15

    .line 1169
    :cond_3c
    const/4 v6, 0x4

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1170
    const/4 v6, 0x0

    sput v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 1172
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1173
    .local v2, msg:Landroid/os/Message;
    const/4 v6, 0x1

    iput v6, v2, Landroid/os/Message;->what:I

    .line 1174
    const/16 v6, 0x64

    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 1175
    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1176
    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5a
    .catchall {:try_start_18 .. :try_end_5a} :catchall_78

    .line 1180
    and-int/lit8 p1, p1, 0x3

    .line 1181
    and-int/lit8 p3, p3, 0x1

    .line 1182
    and-int/lit8 p2, p2, 0x7c

    .line 1183
    if-eqz p1, :cond_7b

    move v4, v9

    .line 1184
    .local v4, rdsOnNative:Z
    :goto_63
    if-eqz p3, :cond_7d

    move v0, v9

    .line 1187
    .local v0, afOnNative:Z
    :goto_66
    and-int/lit8 v3, p1, 0x1

    .line 1191
    .local v3, rdsModeNative:I
    :try_start_68
    invoke-direct {p0, v4, v0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRdsModeNative(ZZI)Z
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_78
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_81

    move-result v6

    if-eqz v6, :cond_7f

    .line 1192
    const/4 v5, 0x0

    .line 1200
    :goto_6f
    if-eqz v5, :cond_15

    .line 1201
    :try_start_71
    iget-object v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_78

    goto :goto_15

    .line 1157
    .end local v0           #afOnNative:Z
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #rdsModeNative:I
    .end local v4           #rdsOnNative:Z
    :catchall_78
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v2       #msg:Landroid/os/Message;
    :cond_7b
    move v4, v10

    .line 1183
    goto :goto_63

    .restart local v4       #rdsOnNative:Z
    :cond_7d
    move v0, v10

    .line 1184
    goto :goto_66

    .line 1194
    .restart local v0       #afOnNative:Z
    .restart local v3       #rdsModeNative:I
    :cond_7f
    const/4 v5, 0x2

    goto :goto_6f

    .line 1196
    :catch_81
    move-exception v1

    .line 1197
    .local v1, e:Ljava/lang/Exception;
    :try_start_82
    const-string v6, "FmReceiverService"

    const-string/jumbo v7, "setRdsNative failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_78

    .line 1198
    const/4 v5, 0x2

    goto :goto_6f
.end method

.method public declared-synchronized setStepSize(I)I
    .registers 8
    .parameter "stepSize"

    .prologue
    const-string v3, "FmReceiverService"

    .line 1330
    monitor-enter p0

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setStepSize()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_65

    .line 1332
    const/4 v2, 0x0

    .line 1335
    .local v2, returnStatus:I
    const/16 v3, 0x10

    if-eq p1, v3, :cond_15

    if-eqz p1, :cond_15

    .line 1336
    const/4 v2, 0x4

    .line 1363
    :cond_13
    :goto_13
    monitor-exit p0

    return v2

    .line 1337
    :cond_15
    const/4 v3, 0x2

    :try_start_16
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3a

    .line 1338
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    const/4 v2, 0x3

    goto :goto_13

    .line 1341
    :cond_3a
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1343
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1344
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1345
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1346
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1347
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_55
    .catchall {:try_start_16 .. :try_end_55} :catchall_65

    .line 1351
    :try_start_55
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setScanStepNative(I)Z
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_65
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_6a

    move-result v3

    if-eqz v3, :cond_68

    .line 1352
    const/4 v2, 0x0

    .line 1359
    :goto_5c
    if-eqz v2, :cond_13

    .line 1360
    :try_start_5e
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_65

    goto :goto_13

    .line 1330
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_65
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1354
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_68
    const/4 v2, 0x2

    goto :goto_5c

    .line 1355
    :catch_6a
    move-exception v0

    .line 1356
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1357
    :try_start_6c
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setScanStepNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_65

    goto :goto_5c
.end method

.method public declared-synchronized setWorldRegion(II)I
    .registers 10
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    .line 1435
    monitor-enter p0

    :try_start_5
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setWorldRegion()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_74

    .line 1437
    const/4 v2, 0x0

    .line 1440
    .local v2, returnStatus:I
    if-eqz p1, :cond_17

    if-eq p1, v5, :cond_17

    if-eq p1, v6, :cond_17

    .line 1443
    const/4 v2, 0x4

    .line 1473
    :cond_15
    :goto_15
    monitor-exit p0

    return v2

    .line 1444
    :cond_17
    if-eqz p2, :cond_1f

    const/16 v3, 0x40

    if-eq p2, v3, :cond_1f

    .line 1446
    const/4 v2, 0x4

    goto :goto_15

    .line 1447
    :cond_1f
    :try_start_1f
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v6, v3, :cond_43

    .line 1448
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const/4 v2, 0x3

    goto :goto_15

    .line 1451
    :cond_43
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1453
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1454
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1455
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1456
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1457
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5e
    .catchall {:try_start_1f .. :try_end_5e} :catchall_74

    .line 1461
    :try_start_5e
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRegionNative(I)Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureDeemphasisNative(I)Z
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_67} :catch_79

    move-result v3

    if-eqz v3, :cond_77

    .line 1462
    const/4 v2, 0x0

    .line 1469
    :goto_6b
    if-eqz v2, :cond_15

    .line 1470
    :try_start_6d
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_73
    .catchall {:try_start_6d .. :try_end_73} :catchall_74

    goto :goto_15

    .line 1435
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_74
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1464
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_77
    const/4 v2, 0x2

    goto :goto_6b

    .line 1465
    :catch_79
    move-exception v3

    move-object v0, v3

    .line 1466
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1467
    :try_start_7c
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "setRdsNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_74

    goto :goto_6b
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    const-string v0, "FmReceiverService"

    .line 190
    monitor-enter p0

    :try_start_3
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_18

    .line 192
    const-string v0, "FmReceiverService"

    const-string v1, "Service already started...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_20

    .line 202
    :goto_16
    monitor-exit p0

    return-void

    .line 195
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->startFM_Loop()V

    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_20

    goto :goto_16

    .line 190
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startFM_Loop()V
    .registers 3

    .prologue
    .line 216
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "startFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initLoopNative()V

    .line 218
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initNativeDataNative()V

    .line 219
    return-void
.end method

.method public declared-synchronized stop()V
    .registers 3

    .prologue
    const-string v0, "FmReceiverService"

    .line 205
    monitor-enter p0

    :try_start_3
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-nez v0, :cond_18

    .line 207
    const-string v0, "FmReceiverService"

    const-string v1, "Service already stopped...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_20

    .line 213
    :goto_16
    monitor-exit p0

    return-void

    .line 210
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_20

    goto :goto_16

    .line 205
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopFM_Loop()V
    .registers 3

    .prologue
    .line 224
    const-string v0, "FmReceiverService"

    const-string/jumbo v1, "stopFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanupLoopNative()V

    .line 227
    return-void
.end method

.method public declared-synchronized tuneRadio(I)I
    .registers 8
    .parameter "freq"

    .prologue
    const/4 v5, 0x1

    const-string v3, "FmReceiverService"

    .line 859
    monitor-enter p0

    :try_start_4
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "tuneRadio()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_67

    .line 861
    const/4 v2, 0x0

    .line 864
    .local v2, returnStatus:I
    if-lt p1, v5, :cond_14

    const v3, 0x1869f

    if-le p1, v3, :cond_17

    .line 866
    :cond_14
    const/4 v2, 0x4

    .line 894
    :cond_15
    :goto_15
    monitor-exit p0

    return v2

    .line 868
    :cond_17
    const/4 v3, 0x2

    :try_start_18
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3c

    .line 869
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/4 v2, 0x3

    goto :goto_15

    .line 872
    :cond_3c
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 874
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 875
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 876
    const/16 v3, 0x64

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 877
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 878
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_57
    .catchall {:try_start_18 .. :try_end_57} :catchall_67

    .line 882
    :try_start_57
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->tuneNative(I)Z
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_67
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_6c

    move-result v3

    if-eqz v3, :cond_6a

    .line 883
    const/4 v2, 0x0

    .line 890
    :goto_5e
    if-eqz v2, :cond_15

    .line 891
    :try_start_60
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_67

    goto :goto_15

    .line 859
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_67
    move-exception v3

    monitor-exit p0

    throw v3

    .line 885
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #returnStatus:I
    :cond_6a
    const/4 v2, 0x2

    goto :goto_5e

    .line 886
    :catch_6c
    move-exception v0

    .line 887
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 888
    :try_start_6e
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "tuneNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_67

    goto :goto_5e
.end method

.method public declared-synchronized turnOffRadio()I
    .registers 7

    .prologue
    const-string v3, "FmReceiverService"

    .line 807
    monitor-enter p0

    :try_start_3
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "turnOffRadio()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v2, 0x0

    .line 811
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_17

    .line 813
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 815
    :cond_17
    const/4 v3, 0x3

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 817
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 818
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 819
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 820
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 821
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_53

    .line 825
    const/4 v3, 0x0

    :try_start_32
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_48

    move-result v3

    if-eqz v3, :cond_46

    .line 826
    const/4 v2, 0x0

    .line 834
    :goto_39
    if-eqz v2, :cond_41

    .line 835
    :try_start_3b
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 842
    :cond_41
    const/4 v3, 0x0

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_53

    .line 844
    monitor-exit p0

    return v2

    .line 828
    :cond_46
    const/4 v2, 0x2

    goto :goto_39

    .line 829
    :catch_48
    move-exception v0

    .line 830
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 831
    :try_start_4a
    const-string v3, "FmReceiverService"

    const-string/jumbo v4, "turnOnRadioNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_53

    goto :goto_39

    .line 807
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #returnStatus:I
    :catchall_53
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized turnOnRadio(I)I
    .registers 10
    .parameter "functionalityMask"

    .prologue
    const/4 v7, 0x1

    const-string v5, "FmReceiverService"

    .line 743
    monitor-enter p0

    :try_start_4
    const-string v5, "FmReceiverService"

    const-string/jumbo v6, "turnOnRadio........()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initFmPower()V

    .line 745
    const/4 v4, 0x0

    .line 746
    .local v4, returnStatus:I
    and-int/lit8 v3, p1, 0x3

    .line 747
    .local v3, requestedRegion:I
    and-int/lit8 v2, p1, 0x70

    .line 750
    .local v2, requestedRdsFeatures:I
    if-eq v3, v7, :cond_25

    const/4 v5, 0x2

    if-eq v3, v5, :cond_25

    if-eqz v3, :cond_25

    .line 753
    const-string v5, "FmReceiverService"

    const-string v6, "Illegal parameter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_8f

    .line 754
    const/4 v4, 0x4

    .line 792
    :cond_23
    :goto_23
    monitor-exit p0

    return v4

    .line 755
    :cond_25
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_36

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_36

    .line 757
    :try_start_2d
    const-string v5, "FmReceiverService"

    const-string v6, "Illegal parameter (2)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v4, 0x4

    goto :goto_23

    .line 759
    :cond_36
    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eqz v5, :cond_5a

    .line 760
    const-string v5, "FmReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v4, 0x3

    goto :goto_23

    .line 763
    :cond_5a
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFuncMask:I

    .line 764
    const/4 v5, 0x1

    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 766
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 767
    .local v1, msg:Landroid/os/Message;
    const/4 v5, 0x1

    iput v5, v1, Landroid/os/Message;->what:I

    .line 768
    const/4 v5, 0x4

    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 769
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 770
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_76
    .catchall {:try_start_2d .. :try_end_76} :catchall_8f

    .line 774
    and-int/lit8 p1, p1, 0x73

    .line 777
    :try_start_78
    const-string v5, "FmReceiverService"

    const-string v6, "Calling enableNative()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->enableNative(I)Z
    :try_end_82
    .catchall {:try_start_78 .. :try_end_82} :catchall_8f
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_82} :catch_94

    move-result v5

    if-eqz v5, :cond_92

    .line 780
    const/4 v4, 0x0

    .line 788
    :goto_86
    if-eqz v4, :cond_23

    .line 789
    :try_start_88
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_8e
    .catchall {:try_start_88 .. :try_end_8e} :catchall_8f

    goto :goto_23

    .line 743
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #requestedRdsFeatures:I
    .end local v3           #requestedRegion:I
    .end local v4           #returnStatus:I
    :catchall_8f
    move-exception v5

    monitor-exit p0

    throw v5

    .line 782
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #requestedRdsFeatures:I
    .restart local v3       #requestedRegion:I
    .restart local v4       #returnStatus:I
    :cond_92
    const/4 v4, 0x2

    goto :goto_86

    .line 784
    :catch_94
    move-exception v5

    move-object v0, v5

    .line 785
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x2

    .line 786
    :try_start_97
    const-string v5, "FmReceiverService"

    const-string/jumbo v6, "turnOnRadioNative failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_8f

    goto :goto_86
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    if-eqz p1, :cond_8

    .line 105
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 107
    :cond_8
    monitor-exit p0

    return-void

    .line 104
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

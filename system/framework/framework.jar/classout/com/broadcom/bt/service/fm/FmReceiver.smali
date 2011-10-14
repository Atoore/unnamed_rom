.class public final Lcom/broadcom/bt/service/fm/FmReceiver;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmReceiver$1;,
        Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;,
        Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_AUDIO_MODE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_MODE"

.field public static final ACTION_ON_AUDIO_PATH:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_PATH"

.field public static final ACTION_ON_AUDIO_QUAL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_AUDIO_QUAL"

.field public static final ACTION_ON_EST_NFL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_EST_NFL"

.field public static final ACTION_ON_RDS_DATA:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_RDS_DATA"

.field public static final ACTION_ON_RDS_MODE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_RDS_MODE"

.field public static final ACTION_ON_SEEK_CMPL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_SEEK_CMPL"

.field public static final ACTION_ON_STATUS:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_STATUS"

.field public static final ACTION_ON_VOL:Ljava/lang/String; = "ON_VOL"

.field public static final ACTION_ON_WRLD_RGN:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_WRLD_RGN"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.fm.action."

#the value of this static final field might be set in the static constructor
.field private static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final AF_MODE_DEFAULT:I = 0x0

.field public static final AF_MODE_OFF:I = 0x0

.field public static final AF_MODE_ON:I = 0x1

.field public static final AUDIO_MODE_AUTO:I = 0x0

.field public static final AUDIO_MODE_BLEND:I = 0x3

.field public static final AUDIO_MODE_MONO:I = 0x2

.field public static final AUDIO_MODE_STEREO:I = 0x1

.field public static final AUDIO_MODE_SWITCH:I = 0x3

.field public static final AUDIO_PATH_DIGITAL:I = 0x3

.field public static final AUDIO_PATH_NONE:I = 0x0

.field public static final AUDIO_PATH_RECORDING:I = 0x4

.field public static final AUDIO_PATH_SPEAKER:I = 0x1

.field public static final AUDIO_PATH_WIRE_HEADSET:I = 0x2

.field public static final AUDIO_QUALITY_BLEND:I = 0x4

.field public static final AUDIO_QUALITY_MONO:I = 0x2

.field public static final AUDIO_QUALITY_STEREO:I = 0x1

.field public static final DEEMPHASIS_50U:I = 0x0

.field public static final DEEMPHASIS_75U:I = 0x40

.field public static final DEEMPHASIS_TIME_DEFAULT:I = 0x40

.field public static final EXTRA_ALT_FREQ_MODE:Ljava/lang/String; = "ALT_FREQ_MODE"

.field public static final EXTRA_AUDIO_MODE:Ljava/lang/String; = "AUDIO_MODE"

.field public static final EXTRA_AUDIO_PATH:Ljava/lang/String; = "AUDIO_PATH"

.field public static final EXTRA_FREQ:Ljava/lang/String; = "FREQ"

.field public static final EXTRA_MUTED:Ljava/lang/String; = "MUTED"

.field public static final EXTRA_NFL:Ljava/lang/String; = "NFL"

.field public static final EXTRA_RADIO_ON:Ljava/lang/String; = "RADIO_ON"

.field public static final EXTRA_RDS_DATA_TYPE:Ljava/lang/String; = "RDS_DATA_TYPE"

.field public static final EXTRA_RDS_IDX:Ljava/lang/String; = "RDS_IDX"

.field public static final EXTRA_RDS_MODE:Ljava/lang/String; = "RDS_MODE"

.field public static final EXTRA_RDS_PRGM_SVC:Ljava/lang/String; = "RDS_PRGM_SVC"

.field public static final EXTRA_RDS_PRGM_TYPE:Ljava/lang/String; = "RDS_PRGM_TYPE"

.field public static final EXTRA_RDS_PRGM_TYPE_NAME:Ljava/lang/String; = "RDS_PRGM_TYPE_NAME"

.field public static final EXTRA_RDS_TXT:Ljava/lang/String; = "RDS_TXT"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "RSSI"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_SUCCESS:Ljava/lang/String; = "RDS_SUCCESS"

.field public static final EXTRA_VOL:Ljava/lang/String; = "VOL"

.field public static final EXTRA_WRLD_RGN:Ljava/lang/String; = "WRLD_RGN"

.field public static final FM_RECEIVER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_RECEIVER"

.field public static final FM_VOLUME_MAX:I = 0x100

.field public static final FREQ_STEP_100KHZ:I = 0x0

.field public static final FREQ_STEP_50KHZ:I = 0x10

.field public static final FREQ_STEP_DEFAULT:I = 0x0

.field public static final FUNCTIONALITY_DEFAULT:I = 0x0

.field public static final FUNC_AF:I = 0x40

.field public static final FUNC_RBDS:I = 0x20

.field public static final FUNC_RDS:I = 0x10

.field public static final FUNC_REGION_DEFAULT:I = 0x0

.field public static final FUNC_REGION_EUR:I = 0x1

.field public static final FUNC_REGION_JP:I = 0x2

.field public static final FUNC_REGION_NA:I = 0x0

.field public static final LIVE_AUDIO_QUALITY_DEFAULT:Z = false

.field public static final MIN_SIGNAL_STRENGTH_DEFAULT:I = 0x69

.field public static final NFL_DEFAULT:I = 0x1

.field public static final NFL_FINE:I = 0x2

.field public static final NFL_LOW:I = 0x0

.field public static final NFL_MED:I = 0x1

.field public static final RDS_COND_NONE:I = 0x0

.field public static final RDS_COND_PTY:I = 0x1

.field public static final RDS_COND_TP:I = 0x2

.field public static final RDS_FEATURE_PS:I = 0x4

.field public static final RDS_FEATURE_PTY:I = 0x8

.field public static final RDS_FEATURE_PTYN:I = 0x20

.field public static final RDS_FEATURE_RT:I = 0x40

.field public static final RDS_FEATURE_TP:I = 0x10

.field public static final RDS_MODE_DEFAULT_ON:I = 0x1

.field public static final RDS_MODE_OFF:I = 0x0

.field public static final RDS_MODE_RBDS_ON:I = 0x3

.field public static final RDS_MODE_RDS_ON:I = 0x2

.field public static final SCAN_METHOD_DEFAULT:I = 0x1

.field public static final SCAN_METHOD_FULL:I = 0x2

.field public static final SCAN_METHOD_PRESET:I = 0x1

.field public static final SCAN_MODE_DOWN:I = 0x0

.field public static final SCAN_MODE_FULL:I = 0x82

.field public static final SCAN_MODE_NORMAL:I = 0x0

.field public static final SCAN_MODE_UP:I = 0x81

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_fm_receiver_service"

.field public static final SIGNAL_POLL_INTERVAL_DEFAULT:I = 0x64

.field public static final STATUS_FAIL:I = 0x1

.field public static final STATUS_ILLEGAL_COMMAND:I = 0x3

.field public static final STATUS_ILLEGAL_PARAMETERS:I = 0x4

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_SERVER_FAIL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FmReceiver"

.field private static mScanMethod:I


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

.field private mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const-string v0, "com.broadcom.bt.app.fm.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiver;->ACTION_PREFIX_LENGTH:I

    .line 580
    const/4 v0, 0x1

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiver;->mScanMethod:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 603
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 71
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiver;->ACTION_PREFIX_LENGTH:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiver;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 691
    if-nez p0, :cond_7

    .line 692
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 694
    .restart local p0
    :cond_7
    const-string v0, "com.broadcom.bt.app.fm.action.ON_AUDIO_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    const-string v0, "com.broadcom.bt.app.fm.action.ON_AUDIO_PATH"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    const-string v0, "com.broadcom.bt.app.fm.action.ON_AUDIO_QUAL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    const-string v0, "com.broadcom.bt.app.fm.action.ON_EST_NFL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string v0, "com.broadcom.bt.app.fm.action.ON_RDS_DATA"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    const-string v0, "com.broadcom.bt.app.fm.action.ON_RDS_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    const-string v0, "com.broadcom.bt.app.fm.action.ON_SEEK_CMPL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    const-string v0, "com.broadcom.bt.app.fm.action.ON_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    const-string v0, "ON_VOL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    const-string v0, "com.broadcom.bt.app.fm.action.ON_WRLD_RGN"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .registers 5
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 591
    const-string v1, "bluetooth_fm_receiver_service"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 592
    const-string v1, "FmReceiver"

    const-string v2, "Unable to get FMReceiver proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v1, 0x0

    .line 597
    :goto_10
    return v1

    .line 596
    :cond_11
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-direct {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;-><init>()V

    .line 597
    .local v0, p:Lcom/broadcom/bt/service/fm/FmReceiver;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.FmService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method


# virtual methods
.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .registers 6
    .parameter "nflLevel"

    .prologue
    .line 1249
    monitor-enter p0

    const/4 v1, 0x2

    .line 1252
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->estimateNoiseFloorLevel(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1257
    :goto_8
    monitor-exit p0

    return v1

    .line 1253
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1254
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "estimateNoiseFloorLevel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 1249
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 1289
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 1290
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 727
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    if-eqz v1, :cond_8

    .line 728
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 737
    :cond_8
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_29

    if-eqz v1, :cond_1a

    .line 739
    :try_start_10
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_29
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_17} :catch_1f

    .line 743
    :goto_17
    const/4 v1, 0x0

    :try_start_18
    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    .line 746
    :cond_1a
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_29

    .line 747
    monitor-exit p0

    return-void

    .line 740
    :catch_1f
    move-exception v1

    move-object v0, v1

    .line 741
    .local v0, t:Ljava/lang/Throwable;
    :try_start_21
    const-string v1, "FmReceiver"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_29

    goto :goto_17

    .line 727
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getRadioIsOn()Z
    .registers 5

    .prologue
    .line 908
    const/4 v1, 0x0

    .line 910
    .local v1, returnStatus:Z
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->getRadioIsOn()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 914
    :goto_7
    return v1

    .line 911
    :catch_8
    move-exception v2

    move-object v0, v2

    .line 912
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FmReceiver"

    const-string v3, "getRadioIsOn() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public declared-synchronized getStatus()I
    .registers 5

    .prologue
    .line 889
    monitor-enter p0

    const/4 v1, 0x2

    .line 892
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->getStatus()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 897
    :goto_8
    monitor-exit p0

    return v1

    .line 893
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 894
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string v3, "getStatus() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_8

    .line 889
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected init(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "service"

    .prologue
    .line 612
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_8

    .line 614
    const/4 v1, 0x1

    .line 618
    :goto_7
    return v1

    .line 615
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 616
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "FmReceiver"

    const-string v2, "Unable to initialize BluetoothFM proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public declared-synchronized muteAudio(Z)I
    .registers 6
    .parameter "mute"

    .prologue
    .line 929
    monitor-enter p0

    const/4 v1, 0x2

    .line 932
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->muteAudio(Z)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 937
    :goto_8
    monitor-exit p0

    return v1

    .line 933
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 934
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "muteAudio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 929
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V
    .registers 5
    .parameter "handler"

    .prologue
    .line 633
    monitor-enter p0

    :try_start_1
    const-string v0, "FmReceiver"

    const-string/jumbo v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 636
    monitor-exit p0

    return-void

    .line 633
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .registers 8
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 654
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    .line 673
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    if-nez v1, :cond_16

    .line 674
    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;-><init>(Lcom/broadcom/bt/service/fm/FmReceiver;Lcom/broadcom/bt/service/fm/FmReceiver$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_22

    .line 676
    :try_start_f
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_22
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    .line 682
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 677
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 678
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1a
    const-string v1, "FmReceiver"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_16

    .line 654
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;ZI)V
    .registers 7
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 646
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 648
    monitor-exit p0

    return-void

    .line 646
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seekRdsStation(III)I
    .registers 5
    .parameter "scanMode"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 1043
    const/16 v0, 0x69

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekRdsStation(IIII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .registers 9
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 1010
    monitor-enter p0

    const/4 v1, 0x2

    .line 1013
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekRdsStation(IIII)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1019
    :goto_8
    monitor-exit p0

    return v1

    .line 1015
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1016
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "seekRdsStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1010
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public seekStation(I)I
    .registers 3
    .parameter "scanMode"

    .prologue
    .line 984
    const/16 v0, 0x69

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStation(II)I

    move-result v0

    return v0
.end method

.method public declared-synchronized seekStation(II)I
    .registers 7
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    .line 957
    monitor-enter p0

    const/4 v1, 0x2

    .line 960
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekStation(II)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 965
    :goto_8
    monitor-exit p0

    return v1

    .line 961
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 962
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "seekStation() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 957
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized seekStationAbort()I
    .registers 5

    .prologue
    .line 1058
    monitor-enter p0

    const/4 v1, 0x2

    .line 1061
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->seekStationAbort()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1066
    :goto_8
    monitor-exit p0

    return v1

    .line 1062
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1063
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "seekStationAbort() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1058
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .registers 6
    .parameter "audioMode"

    .prologue
    .line 1119
    monitor-enter p0

    const/4 v1, 0x2

    .line 1122
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setAudioMode(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1127
    :goto_8
    monitor-exit p0

    return v1

    .line 1123
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1124
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setAudioMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1119
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioPath(I)I
    .registers 6
    .parameter "audioPath"

    .prologue
    .line 1147
    monitor-enter p0

    const/4 v1, 0x2

    .line 1150
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setAudioPath(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1155
    :goto_8
    monitor-exit p0

    return v1

    .line 1151
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1152
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setAudioPath() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1147
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setFMVolume(I)I
    .registers 6
    .parameter "volume"

    .prologue
    .line 1194
    monitor-enter p0

    const/4 v1, 0x2

    .line 1197
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setFMVolume(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1202
    :goto_8
    monitor-exit p0

    return v1

    .line 1198
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1199
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setFMVolume() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1194
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .registers 7
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"

    .prologue
    .line 1276
    monitor-enter p0

    const/4 v1, 0x2

    .line 1279
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setLiveAudioPolling(ZI)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1285
    :goto_8
    monitor-exit p0

    return v1

    .line 1281
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1282
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setLiveAudioPolling() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1276
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .registers 9
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    .line 1092
    monitor-enter p0

    const/4 v1, 0x2

    .line 1095
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setRdsMode(IIII)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1101
    :goto_8
    monitor-exit p0

    return v1

    .line 1097
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1098
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setRdsMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1092
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setScanMethod(I)V
    .registers 5
    .parameter "method"

    .prologue
    const-string v2, "FmReceiver"

    .line 764
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_24

    .line 768
    :cond_8
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiver;->mScanMethod:I

    .line 770
    const-string v0, "FmReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScanMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :goto_23
    return-void

    .line 778
    :cond_24
    const-string v0, "FmReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScanMethod: Out of range method = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public declared-synchronized setStepSize(I)I
    .registers 6
    .parameter "stepSize"

    .prologue
    .line 1171
    monitor-enter p0

    const/4 v1, 0x2

    .line 1174
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setStepSize(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1179
    :goto_8
    monitor-exit p0

    return v1

    .line 1175
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1176
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setStepSize() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1171
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setWorldRegion(II)I
    .registers 7
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    .line 1223
    monitor-enter p0

    const/4 v1, 0x2

    .line 1226
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->setWorldRegion(II)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 1231
    :goto_8
    monitor-exit p0

    return v1

    .line 1227
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1228
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "setWorldRegion() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 1223
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized tuneRadio(I)I
    .registers 6
    .parameter "freq"

    .prologue
    .line 869
    monitor-enter p0

    const/4 v1, 0x2

    .line 872
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->tuneRadio(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 877
    :goto_8
    monitor-exit p0

    return v1

    .line 873
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 874
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "tuneRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 869
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized turnOffRadio()I
    .registers 6

    .prologue
    .line 845
    monitor-enter p0

    const/4 v1, 0x2

    .line 848
    .local v1, returnCode:I
    :try_start_2
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v3}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->turnOffRadio()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_17
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_b

    move-result v1

    move v2, v1

    .line 854
    .end local v1           #returnCode:I
    .local v2, returnCode:I
    :goto_9
    monitor-exit p0

    return v2

    .line 849
    .end local v2           #returnCode:I
    .restart local v1       #returnCode:I
    :catch_b
    move-exception v3

    move-object v0, v3

    .line 850
    .local v0, e:Landroid/os/RemoteException;
    :try_start_d
    const-string v3, "FmReceiver"

    const-string/jumbo v4, "turnOffRadio() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_17

    move v2, v1

    .line 851
    .end local v1           #returnCode:I
    .restart local v2       #returnCode:I
    goto :goto_9

    .line 845
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #returnCode:I
    .restart local v1       #returnCode:I
    :catchall_17
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public turnOnRadio()I
    .registers 2

    .prologue
    .line 830
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized turnOnRadio(I)I
    .registers 6
    .parameter "functionalityMask"

    .prologue
    .line 805
    monitor-enter p0

    const/4 v1, 0x2

    .line 808
    .local v1, returnCode:I
    :try_start_2
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->turnOnRadio(I)I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_a

    move-result v1

    .line 813
    :goto_8
    monitor-exit p0

    return v1

    .line 809
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 810
    .local v0, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "FmReceiver"

    const-string/jumbo v3, "turnOnRadio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_8

    .line 805
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unregisterEventHandler()V
    .registers 4

    .prologue
    const-string v1, "FmReceiver"

    .line 708
    monitor-enter p0

    :try_start_3
    const-string v1, "FmReceiver"

    const-string/jumbo v2, "unregisterEventHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_21

    .line 719
    :try_start_e
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mService:Lcom/broadcom/bt/service/fm/IFmReceiverService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiver;->mCallback:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_21
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_15} :catch_17

    .line 724
    :goto_15
    monitor-exit p0

    return-void

    .line 720
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 721
    .local v0, t:Ljava/lang/Throwable;
    :try_start_19
    const-string v1, "FmReceiver"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_21

    goto :goto_15

    .line 708
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

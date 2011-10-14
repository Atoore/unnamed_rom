.class public Lcom/android/server/TvoutStatusObserver;
.super Landroid/os/Binder;
.source "TvoutStatusObserver.java"


# static fields
.field private static final HDMI_BIT_MASK:I = 0x1

.field private static final HDMI_STATE_PATH:Ljava/lang/String; = "/sys/class/sec_hdmi/detect_cable/connected"

.field private static final MSG_HDMI_PLUG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TvoutStatusObserver"

.field private static final TVOUT_LOG:Z = true

.field private static mState_Value:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput v0, Lcom/android/server/TvoutStatusObserver;->mState_Value:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 79
    new-instance v1, Lcom/android/server/TvoutStatusObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/TvoutStatusObserver$1;-><init>(Lcom/android/server/TvoutStatusObserver;)V

    iput-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mUEventObserver:Landroid/os/UEventObserver;

    .line 286
    new-instance v1, Lcom/android/server/TvoutStatusObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/TvoutStatusObserver$2;-><init>(Lcom/android/server/TvoutStatusObserver;)V

    iput-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/android/server/TvoutStatusObserver;->mContext:Landroid/content/Context;

    .line 69
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 71
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "TvoutStatusObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 72
    iget-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 74
    invoke-direct {p0}, Lcom/android/server/TvoutStatusObserver;->init()V

    .line 75
    iget-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v2, "SUBSYSTEM=video4linux"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private EnableOrDisableHDMITV(I)V
    .registers 7
    .parameter "hdmi_status"

    .prologue
    const-string v4, "TvoutStatusObserver"

    .line 261
    const-string v3, "TvoutStatusObserver"

    const-string v3, "EnableOrDisableHDMITV() - EnableOrDisableHDMITV  !!! E"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string/jumbo v3, "tvoutservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ITvOutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvOutService;

    move-result-object v1

    .line 268
    .local v1, tvoutService:Landroid/os/ITvOutService;
    const/4 v2, 0x0

    .line 269
    .local v2, tvouthdmisuspendInit:Z
    if-nez v1, :cond_1f

    .line 271
    const-string v3, "TvoutStatusObserver"

    const-string v3, "EnableOrDisableHDMITV() - TvOutService Not running"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_1e
    return-void

    .line 277
    :cond_1f
    :try_start_1f
    invoke-interface {v1, p1}, Landroid/os/ITvOutService;->TvoutHDMIUpdateCableStatus(I)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_1e

    .line 278
    :catch_23
    move-exception v0

    .line 279
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TvoutStatusObserver"

    const-string v3, "EnableOrDisableHDMITV() - Tv OUT  fail!!! "

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method static synthetic access$000(Lcom/android/server/TvoutStatusObserver;Landroid/os/UEventObserver$UEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/TvoutStatusObserver;->update(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/TvoutStatusObserver;IILjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TvoutStatusObserver;->sendIntents(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/TvoutStatusObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private final declared-synchronized init()V
    .registers 14

    .prologue
    const/4 v9, 0x1

    const-string v7, " HDMI init is failed by file close"

    const-string v7, "TvoutStatusObserver"

    .line 95
    monitor-enter p0

    :try_start_6
    const-string v7, "TvoutStatusObserver"

    const-string v8, "HDMI status observer init "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v2, 0x0

    .line 98
    .local v2, files:Ljava/io/FileReader;
    const/16 v7, 0x400

    new-array v0, v7, [C
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_7d

    .line 99
    .local v0, buffer:[C
    const/4 v5, 0x0

    .line 100
    .local v5, hdmi_state:I
    const/4 v4, 0x0

    .line 103
    .local v4, hdmi_check_value:I
    :try_start_14
    new-instance v3, Ljava/io/FileReader;

    const-string v7, "/sys/class/sec_hdmi/detect_cable/connected"

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_98
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1b} :catch_65
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_80

    .line 104
    .end local v2           #files:Ljava/io/FileReader;
    .local v3, files:Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    :try_start_1e
    invoke-virtual {v3, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 105
    .local v6, len:I
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_b1
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_33} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_33} :catch_b4

    move-result v5

    .line 112
    if-eqz v3, :cond_39

    .line 114
    :try_start_36
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_7d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_a8

    :cond_39
    :goto_39
    move-object v2, v3

    .line 121
    .end local v3           #files:Ljava/io/FileReader;
    .end local v6           #len:I
    .restart local v2       #files:Ljava/io/FileReader;
    :cond_3a
    :goto_3a
    and-int/lit8 v4, v5, 0x1

    .line 124
    if-ne v4, v9, :cond_63

    .line 125
    :try_start_3e
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI initial setting "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v7, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 127
    iget-object v7, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    iget-object v7, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string/jumbo v12, "online"

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0xc8

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_63
    .catchall {:try_start_3e .. :try_end_63} :catchall_7d

    .line 130
    :cond_63
    monitor-exit p0

    return-void

    .line 107
    :catch_65
    move-exception v7

    move-object v1, v7

    .line 108
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_67
    :try_start_67
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI driver is not support the init state value"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_98

    .line 112
    if-eqz v2, :cond_3a

    .line 114
    :try_start_70
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_7d
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_3a

    .line 115
    :catch_74
    move-exception v1

    .line 116
    .local v1, e:Ljava/io/IOException;
    :try_start_75
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI init is failed by file close"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_7d

    goto :goto_3a

    .line 95
    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #files:Ljava/io/FileReader;
    .end local v4           #hdmi_check_value:I
    .end local v5           #hdmi_state:I
    :catchall_7d
    move-exception v7

    monitor-exit p0

    throw v7

    .line 109
    .restart local v0       #buffer:[C
    .restart local v2       #files:Ljava/io/FileReader;
    .restart local v4       #hdmi_check_value:I
    .restart local v5       #hdmi_state:I
    :catch_80
    move-exception v7

    move-object v1, v7

    .line 110
    .local v1, e:Ljava/lang/Exception;
    :goto_82
    :try_start_82
    const-string v7, "TvoutStatusObserver"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_98

    .line 112
    if-eqz v2, :cond_3a

    .line 114
    :try_start_8b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_7d
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_3a

    .line 115
    :catch_8f
    move-exception v1

    .line 116
    .local v1, e:Ljava/io/IOException;
    :try_start_90
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI init is failed by file close"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_7d

    goto :goto_3a

    .line 112
    .end local v1           #e:Ljava/io/IOException;
    :catchall_98
    move-exception v7

    :goto_99
    if-eqz v2, :cond_9e

    .line 114
    :try_start_9b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_7d
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    .line 112
    :cond_9e
    :goto_9e
    :try_start_9e
    throw v7

    .line 115
    :catch_9f
    move-exception v1

    .line 116
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "TvoutStatusObserver"

    const-string v9, " HDMI init is failed by file close"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 115
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #files:Ljava/io/FileReader;
    .restart local v3       #files:Ljava/io/FileReader;
    .restart local v6       #len:I
    :catch_a8
    move-exception v1

    .line 116
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI init is failed by file close"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_9e .. :try_end_b0} :catchall_7d

    goto :goto_39

    .line 112
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #len:I
    :catchall_b1
    move-exception v7

    move-object v2, v3

    .end local v3           #files:Ljava/io/FileReader;
    .restart local v2       #files:Ljava/io/FileReader;
    goto :goto_99

    .line 109
    .end local v2           #files:Ljava/io/FileReader;
    .restart local v3       #files:Ljava/io/FileReader;
    :catch_b4
    move-exception v7

    move-object v1, v7

    move-object v2, v3

    .end local v3           #files:Ljava/io/FileReader;
    .restart local v2       #files:Ljava/io/FileReader;
    goto :goto_82

    .line 107
    .end local v2           #files:Ljava/io/FileReader;
    .restart local v3       #files:Ljava/io/FileReader;
    :catch_b8
    move-exception v7

    move-object v1, v7

    move-object v2, v3

    .end local v3           #files:Ljava/io/FileReader;
    .restart local v2       #files:Ljava/io/FileReader;
    goto :goto_67
.end method

.method private final sendIntentHdmi(ILjava/lang/String;)V
    .registers 7
    .parameter "hdmi_status"
    .parameter "hdmiName"

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-direct {p0, p1}, Lcom/android/server/TvoutStatusObserver;->EnableOrDisableHDMITV(I)V

    .line 253
    const-string v1, "TvoutStatusObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent.ACTION_HDMI_PLUG: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private final sendIntentTvout(ILjava/lang/String;)V
    .registers 7
    .parameter "tvout_status"
    .parameter "tvoutName"

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v1, "TvoutStatusObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent.ACTION_TVOUT_PLUG: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private final sendIntents(IILjava/lang/String;)V
    .registers 6
    .parameter "status"
    .parameter "mode_check"
    .parameter "statusName"

    .prologue
    const-string v1, "TvoutStatusObserver"

    .line 215
    if-nez p2, :cond_f

    .line 216
    const-string v0, "TvoutStatusObserver"

    const-string v0, " send intent of HDMI "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, p1, p3}, Lcom/android/server/TvoutStatusObserver;->sendIntentHdmi(ILjava/lang/String;)V

    .line 225
    :goto_e
    return-void

    .line 220
    :cond_f
    const-string v0, "TvoutStatusObserver"

    const-string v0, " send intent of TVOUT "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private declared-synchronized update(Landroid/os/UEventObserver$UEvent;)V
    .registers 13
    .parameter "event"

    .prologue
    const-string v7, "HDMI_STATE"

    const-string v7, "TvoutStatusObserver"

    .line 137
    monitor-enter p0

    const/4 v6, 0x0

    .line 138
    .local v6, state_value:I
    const/4 v1, 0x0

    .line 139
    .local v1, delay:I
    :try_start_7
    const-string v5, "Default"

    .line 140
    .local v5, state_name:Ljava/lang/String;
    const-string/jumbo v0, "off"

    .line 142
    .local v0, action:Ljava/lang/String;
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI UEVENT COME!!! "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v4, 0x0

    .line 149
    .local v4, mode_check:I
    const-string v7, "HDMI_STATE"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_25

    .line 150
    const-string v7, "TvoutStatusObserver"

    const-string v8, "This is not HDMI_STATE event"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_8c

    .line 211
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 156
    :cond_25
    if-nez v4, :cond_23

    .line 157
    :try_start_27
    const-string v7, "MAJOR"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 158
    .local v2, maj:I
    const-string v7, "MINOR"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 160
    .local v3, min:I
    const-string v7, "ACTION"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    const/16 v7, 0x51

    if-ne v2, v7, :cond_23

    const/16 v7, 0xe

    if-ne v3, v7, :cond_23

    .line 164
    const-string v7, "HDMI_STATE"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 167
    const-string v7, "change"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 171
    const-string/jumbo v7, "online"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 172
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI : it is online "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v6, 0x1

    .line 180
    :goto_68
    sput v6, Lcom/android/server/TvoutStatusObserver;->mState_Value:I

    .line 193
    const/16 v1, 0xc8

    .line 195
    iget-object v7, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 196
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI : LCD Wake Lock  "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v7, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    iget-object v7, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    int-to-long v9, v1

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_8b
    .catchall {:try_start_27 .. :try_end_8b} :catchall_8c

    goto :goto_23

    .line 137
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #maj:I
    .end local v3           #min:I
    .end local v4           #mode_check:I
    .end local v5           #state_name:Ljava/lang/String;
    :catchall_8c
    move-exception v7

    monitor-exit p0

    throw v7

    .line 176
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #maj:I
    .restart local v3       #min:I
    .restart local v4       #mode_check:I
    .restart local v5       #state_name:Ljava/lang/String;
    :cond_8f
    :try_start_8f
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI : it is offline "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v6, 0x0

    goto :goto_68

    .line 205
    :cond_98
    const-string v7, "TvoutStatusObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " HDMI: No handler implemented for action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_8f .. :try_end_b0} :catchall_8c

    goto/16 :goto_23
.end method

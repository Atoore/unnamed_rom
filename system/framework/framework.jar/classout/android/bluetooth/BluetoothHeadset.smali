.class public final Landroid/bluetooth/BluetoothHeadset;
.super Ljava/lang/Object;
.source "BluetoothHeadset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHeadset$ServiceListener;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.action.STATE_CHANGED"

.field public static final ACTION_VENDOR_SPECIFIC_HEADSET_EVENT:Ljava/lang/String; = "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

.field public static final ACTION_VIRTUAL_CALL_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.headset.action.VIRTUAL_CALL_STATE_CHANGED"

.field public static final AUDIO_STATE_CONNECTED:I = 0x1

.field public static final AUDIO_STATE_DISCONNECTED:I = 0x0

.field private static final DBG:Z = false

.field public static final EXTRA_AUDIO_STATE:Ljava/lang/String; = "android.bluetooth.headset.extra.AUDIO_STATE"

.field public static final EXTRA_DISCONNECT_INITIATOR:Ljava/lang/String; = "android.bluetooth.headset.extra.DISCONNECT_INITIATOR"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.headset.extra.PREVIOUS_STATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.headset.extra.STATE"

.field public static final EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_ARGS:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

.field public static final EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

.field public static final EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_COMPANY_ID:Ljava/lang/String; = "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_COMPANY_ID"

.field public static final EXTRA_VIRTUAL_CALL_STATE:Ljava/lang/String; = "android.bluetooth.headset.extra.VIRTUAL_CALL_STATE"

.field public static final LOCAL_DISCONNECT:I = 0x1

.field public static final PRIORITY_AUTO_CONNECT:I = 0x3e8

.field public static final PRIORITY_OFF:I = 0x0

.field public static final PRIORITY_ON:I = 0x64

.field public static final PRIORITY_UNDEFINED:I = -0x1

.field public static final REMOTE_DISCONNECT:I = 0x0

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothHeadset"

.field public static final VIRTUAL_CALL_STATE_CONNECTED:I = 0x1

.field public static final VIRTUAL_CALL_STATE_DISCONNECTED:I = 0x0

.field public static final VIRTUAL_CALL_STATE_TRANSFERRED:I = 0x2


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothHeadset;

.field private final mServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V
    .registers 6
    .parameter "context"
    .parameter "l"

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    new-instance v0, Landroid/bluetooth/BluetoothHeadset$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothHeadset$1;-><init>(Landroid/bluetooth/BluetoothHeadset;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    .line 220
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset;->mContext:Landroid/content/Context;

    .line 221
    iput-object p2, p0, Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 223
    const-string v0, "BluetoothHeadset"

    const-string v1, "Could not bind to Bluetooth Headset Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_29
    return-void
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset$ServiceListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    return-object v0
.end method

.method public static isBluetoothVoiceDialingEnabled(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 616
    const-string v0, "BluetoothHeadset"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method


# virtual methods
.method public acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 493
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 495
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 501
    :goto_c
    return v1

    .line 496
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 498
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public cancelConnectThread()Z
    .registers 4

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 476
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 478
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->cancelConnectThread()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 484
    :goto_c
    return v1

    .line 479
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 481
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 243
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_f

    .line 244
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 247
    :cond_f
    monitor-exit p0

    return-void

    .line 243
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 300
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1d

    .line 302
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->connectHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_10

    move-result v1

    if-eqz v1, :cond_1b

    .line 303
    const/4 v1, 0x1

    .line 310
    :goto_f
    return v1

    .line 305
    :catch_10
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    goto :goto_f

    .line 307
    :cond_1d
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public connectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 528
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 530
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->connectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 536
    :goto_c
    return v1

    .line 531
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 533
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public createIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 510
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 512
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->createIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 518
    :goto_c
    return v1

    .line 513
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 515
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 338
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 340
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->disconnectHeadset(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 341
    const/4 v1, 0x1

    .line 347
    :goto_c
    return v1

    .line 342
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 344
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 546
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 548
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->disconnectHeadsetInternal(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 554
    :goto_c
    return v1

    .line 549
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 551
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 231
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 233
    return-void

    .line 231
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBatteryUsageHint()I
    .registers 4

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 450
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 452
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->getBatteryUsageHint()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 458
    :goto_c
    return v1

    .line 453
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, -0x1

    goto :goto_c

    .line 455
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;
    .registers 4

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 275
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 277
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    .line 283
    :goto_c
    return-object v1

    .line 278
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 280
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 425
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 427
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 433
    :goto_c
    return v1

    .line 428
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, -0x1

    goto :goto_c

    .line 430
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 256
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 258
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 264
    :goto_c
    return v1

    .line 259
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, -0x1

    goto :goto_c

    .line 261
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 320
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 322
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 328
    :goto_c
    return v1

    .line 323
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 325
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .parameter "device"
    .parameter "priority"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 407
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 409
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 415
    :goto_c
    return v1

    .line 410
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 412
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public startVirtualVoiceCall()Z
    .registers 4

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 567
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 569
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->startVirtualVoiceCall()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 575
    :goto_c
    return v1

    .line 570
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 572
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public startVoiceRecognition()Z
    .registers 4

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 358
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 360
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->startVoiceRecognition()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 366
    :goto_c
    return v1

    .line 361
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 363
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public stopVirtualVoiceCall()Z
    .registers 4

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 586
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 588
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->stopVirtualVoiceCall()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 594
    :goto_c
    return v1

    .line 589
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 591
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public stopVoiceRecognition()Z
    .registers 4

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 376
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 378
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->stopVoiceRecognition()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 384
    :goto_c
    return v1

    .line 379
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 381
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

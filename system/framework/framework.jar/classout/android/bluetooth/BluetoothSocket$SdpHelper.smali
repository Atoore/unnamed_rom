.class Landroid/bluetooth/BluetoothSocket$SdpHelper;
.super Landroid/bluetooth/IBluetoothCallback$Stub;
.source "BluetoothSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdpHelper"
.end annotation


# instance fields
.field private canceled:Z

.field private channel:I

.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private final service:Landroid/bluetooth/IBluetooth;

.field private final uuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V
    .registers 4
    .parameter "device"
    .parameter "uuid"

    .prologue
    .line 377
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothCallback$Stub;-><init>()V

    .line 378
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->getService()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->service:Landroid/bluetooth/IBluetooth;

    .line 379
    iput-object p1, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->device:Landroid/bluetooth/BluetoothDevice;

    .line 380
    iput-object p2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->uuid:Landroid/os/ParcelUuid;

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->canceled:Z

    .line 382
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 412
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->canceled:Z

    if-nez v0, :cond_e

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->canceled:Z

    .line 414
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->channel:I

    .line 415
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 417
    :cond_e
    monitor-exit p0

    return-void

    .line 412
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doSdp()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "Service discovery canceled"

    .line 388
    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->canceled:Z

    if-eqz v2, :cond_12

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Service discovery canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 389
    :cond_12
    const/4 v2, -0x1

    :try_start_13
    iput v2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->channel:I
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_f

    .line 391
    const/4 v1, 0x0

    .line 393
    .local v1, inProgress:Z
    :try_start_16
    iget-object v2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->service:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->uuid:Landroid/os/ParcelUuid;

    invoke-interface {v2, v3, v4, p0}, Landroid/bluetooth/IBluetooth;->fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_2e

    move-result v1

    .line 396
    :goto_24
    if-nez v1, :cond_38

    :try_start_26
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to start Service Discovery"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    :catch_2e
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothSocket"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_f

    goto :goto_24

    .line 401
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_38
    const-wide/16 v2, 0x2ee0

    :try_start_3a
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_f
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_5a

    .line 405
    :goto_3d
    :try_start_3d
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->canceled:Z

    if-eqz v2, :cond_49

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Service discovery canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 406
    :cond_49
    iget v2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->channel:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_56

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Service discovery failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    :cond_56
    iget v2, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->channel:I
    :try_end_58
    .catchall {:try_start_3d .. :try_end_58} :catchall_f

    monitor-exit p0

    return v2

    .line 403
    :catch_5a
    move-exception v2

    goto :goto_3d
.end method

.method public declared-synchronized onRfcommChannelFound(I)V
    .registers 3
    .parameter "channel"

    .prologue
    .line 419
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->canceled:Z

    if-nez v0, :cond_a

    .line 420
    iput p1, p0, Landroid/bluetooth/BluetoothSocket$SdpHelper;->channel:I

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 423
    :cond_a
    monitor-exit p0

    return-void

    .line 419
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

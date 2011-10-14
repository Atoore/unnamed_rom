.class public Landroid/mtp/MtpClient;
.super Ljava/lang/Object;
.source "MtpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpClient$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpClient"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/mtp/MtpDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/mtp/MtpClient$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbManager:Landroid/hardware/usb/UsbManager;

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/mtp/MtpClient;->mListeners:Ljava/util/ArrayList;

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/mtp/MtpClient;->mDeviceList:Ljava/util/ArrayList;

    .line 48
    new-instance v4, Landroid/mtp/MtpClient$1;

    invoke-direct {v4, p0}, Landroid/mtp/MtpClient$1;-><init>(Landroid/mtp/MtpClient;)V

    iput-object v4, p0, Landroid/mtp/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    iput-object p1, p0, Landroid/mtp/MtpClient;->mContext:Landroid/content/Context;

    .line 127
    const-string/jumbo v4, "usb"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    iput-object v4, p0, Landroid/mtp/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v4, p0, Landroid/mtp/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    iget-object v4, p0, Landroid/mtp/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 135
    .local v3, usbDevice:Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/mtp/MtpClient;->getDeviceLocked(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v2

    .line 136
    .local v2, mtpDevice:Landroid/mtp/MtpDevice;
    if-nez v2, :cond_61

    .line 137
    invoke-direct {p0, v3}, Landroid/mtp/MtpClient;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    move-result-object v2

    .line 139
    :cond_61
    if-eqz v2, :cond_47

    .line 140
    iget-object v4, p0, Landroid/mtp/MtpClient;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 143
    .end local v2           #mtpDevice:Landroid/mtp/MtpDevice;
    .end local v3           #usbDevice:Landroid/hardware/usb/UsbDevice;
    :cond_69
    return-void
.end method

.method static synthetic access$000(Landroid/mtp/MtpClient;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/mtp/MtpClient;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/mtp/MtpClient;Ljava/lang/String;)Landroid/mtp/MtpDevice;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/mtp/MtpClient;->getDeviceLocked(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/mtp/MtpClient;Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/mtp/MtpClient;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/mtp/MtpClient;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/mtp/MtpClient;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getDeviceLocked(Ljava/lang/String;)Landroid/mtp/MtpDevice;
    .registers 5
    .parameter "deviceName"

    .prologue
    .line 230
    iget-object v2, p0, Landroid/mtp/MtpClient;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDevice;

    .line 231
    .local v0, device:Landroid/mtp/MtpDevice;
    invoke-virtual {v0}, Landroid/mtp/MtpDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v0

    .line 235
    .end local v0           #device:Landroid/mtp/MtpDevice;
    :goto_1d
    return-object v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public static isCamera(Landroid/hardware/usb/UsbDevice;)Z
    .registers 7
    .parameter "device"

    .prologue
    const/4 v5, 0x1

    .line 108
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    .line 109
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v0, :cond_24

    .line 110
    invoke-virtual {p0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 111
    .local v2, intf:Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_21

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v3

    if-ne v3, v5, :cond_21

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v3

    if-ne v3, v5, :cond_21

    move v3, v5

    .line 117
    .end local v2           #intf:Landroid/hardware/usb/UsbInterface;
    :goto_20
    return v3

    .line 109
    .restart local v2       #intf:Landroid/hardware/usb/UsbInterface;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 117
    .end local v2           #intf:Landroid/hardware/usb/UsbInterface;
    :cond_24
    const/4 v3, 0x0

    goto :goto_20
.end method

.method private openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;
    .registers 4
    .parameter "usbDevice"

    .prologue
    .line 153
    invoke-static {p1}, Landroid/mtp/MtpClient;->isCamera(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 154
    new-instance v0, Landroid/mtp/MtpDevice;

    invoke-direct {v0, p1}, Landroid/mtp/MtpDevice;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 155
    .local v0, mtpDevice:Landroid/mtp/MtpDevice;
    iget-object v1, p0, Landroid/mtp/MtpClient;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1}, Landroid/mtp/MtpDevice;->open(Landroid/hardware/usb/UsbManager;)Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v1, v0

    .line 159
    .end local v0           #mtpDevice:Landroid/mtp/MtpDevice;
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method


# virtual methods
.method public addListener(Landroid/mtp/MtpClient$Listener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 185
    iget-object v0, p0, Landroid/mtp/MtpClient;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v1, p0, Landroid/mtp/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 187
    iget-object v1, p0, Landroid/mtp/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_10
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public close()V
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Landroid/mtp/MtpClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpClient;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    return-void
.end method

.method public deleteObject(Ljava/lang/String;I)Z
    .registers 5
    .parameter "deviceName"
    .parameter "objectHandle"

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Landroid/mtp/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 305
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_8

    .line 306
    const/4 v1, 0x0

    .line 308
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0, p2}, Landroid/mtp/MtpDevice;->deleteObject(I)Z

    move-result v1

    goto :goto_7
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 172
    :try_start_0
    invoke-virtual {p0}, Landroid/mtp/MtpClient;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 174
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 176
    return-void

    .line 174
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDevice(I)Landroid/mtp/MtpDevice;
    .registers 4
    .parameter "id"

    .prologue
    .line 224
    iget-object v0, p0, Landroid/mtp/MtpClient;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 225
    :try_start_3
    invoke-static {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/mtp/MtpClient;->getDeviceLocked(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 226
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;
    .registers 4
    .parameter "deviceName"

    .prologue
    .line 211
    iget-object v0, p0, Landroid/mtp/MtpClient;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 212
    :try_start_3
    invoke-direct {p0, p1}, Landroid/mtp/MtpClient;->getDeviceLocked(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 213
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public getDeviceList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Landroid/mtp/MtpClient;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 245
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/mtp/MtpClient;->mDeviceList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 246
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public getObject(Ljava/lang/String;II)[B
    .registers 6
    .parameter "deviceName"
    .parameter "objectHandle"
    .parameter "objectSize"

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Landroid/mtp/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 362
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_8

    .line 363
    const/4 v1, 0x0

    .line 365
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0, p2, p3}, Landroid/mtp/MtpDevice;->getObject(II)[B

    move-result-object v1

    goto :goto_7
.end method

.method public getObjectInfo(Ljava/lang/String;I)Landroid/mtp/MtpObjectInfo;
    .registers 5
    .parameter "deviceName"
    .parameter "objectHandle"

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Landroid/mtp/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 290
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_8

    .line 291
    const/4 v1, 0x0

    .line 293
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0, p2}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v1

    goto :goto_7
.end method

.method public getObjectList(Ljava/lang/String;II)Ljava/util/List;
    .registers 12
    .parameter "deviceName"
    .parameter "storageId"
    .parameter "objectHandle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpObjectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 325
    invoke-virtual {p0, p1}, Landroid/mtp/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 326
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_9

    move-object v6, v7

    .line 348
    :goto_8
    return-object v6

    .line 329
    :cond_9
    if-nez p3, :cond_c

    .line 331
    const/4 p3, -0x1

    .line 333
    :cond_c
    const/4 v6, 0x0

    invoke-virtual {v0, p2, v6, p3}, Landroid/mtp/MtpDevice;->getObjectHandles(III)[I

    move-result-object v1

    .line 334
    .local v1, handles:[I
    if-nez v1, :cond_15

    move-object v6, v7

    .line 335
    goto :goto_8

    .line 338
    :cond_15
    array-length v4, v1

    .line 339
    .local v4, length:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 340
    .local v5, objectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/mtp/MtpObjectInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    if-ge v2, v4, :cond_34

    .line 341
    aget v6, v1, v2

    invoke-virtual {v0, v6}, Landroid/mtp/MtpDevice;->getObjectInfo(I)Landroid/mtp/MtpObjectInfo;

    move-result-object v3

    .line 342
    .local v3, info:Landroid/mtp/MtpObjectInfo;
    if-nez v3, :cond_30

    .line 343
    const-string v6, "MtpClient"

    const-string v7, "getObjectInfo failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 345
    :cond_30
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .end local v3           #info:Landroid/mtp/MtpObjectInfo;
    :cond_34
    move-object v6, v5

    .line 348
    goto :goto_8
.end method

.method public getStorageList(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .parameter "deviceName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/mtp/MtpStorageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 257
    invoke-virtual {p0, p1}, Landroid/mtp/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 258
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_8

    .line 276
    :cond_7
    :goto_7
    return-object v6

    .line 261
    :cond_8
    invoke-virtual {v0}, Landroid/mtp/MtpDevice;->getStorageIds()[I

    move-result-object v4

    .line 262
    .local v4, storageIds:[I
    if-eqz v4, :cond_7

    .line 266
    array-length v3, v4

    .line 267
    .local v3, length:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    .local v5, storageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/mtp/MtpStorageInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v3, :cond_2d

    .line 269
    aget v6, v4, v1

    invoke-virtual {v0, v6}, Landroid/mtp/MtpDevice;->getStorageInfo(I)Landroid/mtp/MtpStorageInfo;

    move-result-object v2

    .line 270
    .local v2, info:Landroid/mtp/MtpStorageInfo;
    if-nez v2, :cond_29

    .line 271
    const-string v6, "MtpClient"

    const-string v7, "getStorageInfo failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 273
    :cond_29
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .end local v2           #info:Landroid/mtp/MtpStorageInfo;
    :cond_2d
    move-object v6, v5

    .line 276
    goto :goto_7
.end method

.method public getThumbnail(Ljava/lang/String;I)[B
    .registers 5
    .parameter "deviceName"
    .parameter "objectHandle"

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Landroid/mtp/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 377
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_8

    .line 378
    const/4 v1, 0x0

    .line 380
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0, p2}, Landroid/mtp/MtpDevice;->getThumbnail(I)[B

    move-result-object v1

    goto :goto_7
.end method

.method public importFile(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 6
    .parameter "deviceName"
    .parameter "objectHandle"
    .parameter "destPath"

    .prologue
    .line 394
    invoke-virtual {p0, p1}, Landroid/mtp/MtpClient;->getDevice(Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v0

    .line 395
    .local v0, device:Landroid/mtp/MtpDevice;
    if-nez v0, :cond_8

    .line 396
    const/4 v1, 0x0

    .line 398
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0, p2, p3}, Landroid/mtp/MtpDevice;->importFile(ILjava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method public removeListener(Landroid/mtp/MtpClient$Listener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 198
    iget-object v0, p0, Landroid/mtp/MtpClient;->mDeviceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-object v1, p0, Landroid/mtp/MtpClient;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

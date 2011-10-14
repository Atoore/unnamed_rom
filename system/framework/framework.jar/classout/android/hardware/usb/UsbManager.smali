.class public Landroid/hardware/usb/UsbManager;
.super Ljava/lang/Object;
.source "UsbManager.java"


# static fields
.field public static final ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

.field public static final ACTION_USB_ACCESSORY_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

.field public static final ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_ATTACHED"

.field public static final ACTION_USB_DEVICE_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_DETACHED"

.field public static final ACTION_USB_DEVICE_DETACH_REQUESTED:Ljava/lang/String; = "android.hardware.action.USB_DEVICE_DETACH_REQUESTED"

.field public static final ACTION_USB_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"

.field public static final EXTRA_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "device"

.field public static final EXTRA_DEVICE_NAME:Ljava/lang/String; = "device_name"

.field public static final EXTRA_PERMISSION_GRANTED:Ljava/lang/String; = "permission"

.field private static final TAG:Ljava/lang/String; = "UsbManager"

.field public static final USB_CONFIGURATION:Ljava/lang/String; = "configuration"

.field public static final USB_CONNECTED:Ljava/lang/String; = "connected"

.field public static final USB_FUNCTION_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final USB_FUNCTION_ADB:Ljava/lang/String; = "adb"

.field public static final USB_FUNCTION_DISABLED:Ljava/lang/String; = "disabled"

.field public static final USB_FUNCTION_ENABLED:Ljava/lang/String; = "enabled"

.field public static final USB_FUNCTION_MASS_STORAGE:Ljava/lang/String; = "mass_storage"

.field public static final USB_FUNCTION_MTP:Ljava/lang/String; = "mtp"

.field public static final USB_FUNCTION_RNDIS:Ljava/lang/String; = "rndis"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V
    .registers 3
    .parameter "context"
    .parameter "service"

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    .line 237
    iput-object p2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    .line 238
    return-void
.end method

.method private static getFunctionEnableFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .parameter "function"

    .prologue
    .line 412
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/class/usb_composite/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isFunctionEnabled(Ljava/lang/String;)Z
    .registers 7
    .parameter "function"

    .prologue
    const/4 v5, 0x0

    .line 438
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {p0}, Landroid/hardware/usb/UsbManager;->getFunctionEnableFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 439
    .local v2, stream:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_19

    const/4 v3, 0x1

    move v1, v3

    .line 440
    .local v1, enabled:Z
    :goto_14
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_1b

    move v3, v1

    .line 443
    .end local v1           #enabled:Z
    .end local v2           #stream:Ljava/io/FileInputStream;
    :goto_18
    return v3

    .restart local v2       #stream:Ljava/io/FileInputStream;
    :cond_19
    move v1, v5

    .line 439
    goto :goto_14

    .line 442
    .end local v2           #stream:Ljava/io/FileInputStream;
    :catch_1b
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/IOException;
    move v3, v5

    .line 443
    goto :goto_18
.end method

.method public static isFunctionSupported(Ljava/lang/String;)Z
    .registers 2
    .parameter "function"

    .prologue
    .line 425
    invoke-static {p0}, Landroid/hardware/usb/UsbManager;->getFunctionEnableFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static setFunctionEnabled(Ljava/lang/String;Z)Z
    .registers 5
    .parameter "function"
    .parameter "enable"

    .prologue
    .line 454
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {p0}, Landroid/hardware/usb/UsbManager;->getFunctionEnableFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 455
    .local v1, stream:Ljava/io/FileOutputStream;
    if-eqz p1, :cond_15

    const/16 v2, 0x31

    :goto_d
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 456
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_18

    .line 457
    const/4 v2, 0x1

    .line 459
    .end local v1           #stream:Ljava/io/FileOutputStream;
    :goto_14
    return v2

    .line 455
    .restart local v1       #stream:Ljava/io/FileOutputStream;
    :cond_15
    const/16 v2, 0x30

    goto :goto_d

    .line 458
    .end local v1           #stream:Ljava/io/FileOutputStream;
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 459
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_14
.end method


# virtual methods
.method public getAccessoryList()[Landroid/hardware/usb/UsbAccessory;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 296
    :try_start_1
    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    .line 297
    .local v0, accessory:Landroid/hardware/usb/UsbAccessory;
    if-nez v0, :cond_b

    move-object v2, v4

    .line 304
    .end local v0           #accessory:Landroid/hardware/usb/UsbAccessory;
    :goto_a
    return-object v2

    .line 300
    .restart local v0       #accessory:Landroid/hardware/usb/UsbAccessory;
    :cond_b
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/hardware/usb/UsbAccessory;

    const/4 v3, 0x0

    aput-object v0, v2, v3
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_12

    goto :goto_a

    .line 302
    .end local v0           #accessory:Landroid/hardware/usb/UsbAccessory;
    :catch_12
    move-exception v2

    move-object v1, v2

    .line 303
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "UsbManager"

    const-string v3, "RemoteException in getAccessoryList"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 304
    goto :goto_a
.end method

.method public getDeviceList()Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, bundle:Landroid/os/Bundle;
    :try_start_5
    iget-object v5, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v5, v0}, Landroid/hardware/usb/IUsbManager;->getDeviceList(Landroid/os/Bundle;)V

    .line 252
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v4, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 254
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v4, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2c} :catch_2d

    goto :goto_17

    .line 257
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    :catch_2d
    move-exception v5

    move-object v1, v5

    .line 258
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "UsbManager"

    const-string v6, "RemoteException in getDeviceList"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    const/4 v5, 0x0

    .end local v1           #e:Landroid/os/RemoteException;
    :goto_37
    return-object v5

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/hardware/usb/UsbDevice;>;"
    :cond_38
    move-object v5, v4

    .line 256
    goto :goto_37
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 5
    .parameter "accessory"

    .prologue
    .line 352
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 355
    :goto_6
    return v1

    .line 353
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 354
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in hasPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 337
    :goto_6
    return v1

    .line 335
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 336
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in hasPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .parameter "accessory"

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v1, p1}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 319
    :goto_6
    return-object v1

    .line 317
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 318
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in openAccessory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    .registers 9
    .parameter "device"

    .prologue
    .line 272
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, deviceName:Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v5, v1}, Landroid/hardware/usb/IUsbManager;->openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 274
    .local v3, pfd:Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_25

    .line 275
    new-instance v0, Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {v0, p1}, Landroid/hardware/usb/UsbDeviceConnection;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 276
    .local v0, connection:Landroid/hardware/usb/UsbDeviceConnection;
    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbDeviceConnection;->open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v4

    .line 277
    .local v4, result:Z
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1c

    .line 278
    if-eqz v4, :cond_25

    move-object v5, v0

    .line 285
    .end local v0           #connection:Landroid/hardware/usb/UsbDeviceConnection;
    .end local v1           #deviceName:Ljava/lang/String;
    .end local v3           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v4           #result:Z
    :goto_1b
    return-object v5

    .line 282
    :catch_1c
    move-exception v5

    move-object v2, v5

    .line 283
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "UsbManager"

    const-string v6, "exception in UsbManager.openDevice"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v2           #e:Ljava/lang/Exception;
    :cond_25
    const/4 v5, 0x0

    goto :goto_1b
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V
    .registers 6
    .parameter "accessory"
    .parameter "pi"

    .prologue
    .line 405
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/hardware/usb/IUsbManager;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 409
    :goto_b
    return-void

    .line 406
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 407
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in requestPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    .registers 6
    .parameter "device"
    .parameter "pi"

    .prologue
    .line 379
    :try_start_0
    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/hardware/usb/IUsbManager;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 383
    :goto_b
    return-void

    .line 380
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 381
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "UsbManager"

    const-string v2, "RemoteException in requestPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

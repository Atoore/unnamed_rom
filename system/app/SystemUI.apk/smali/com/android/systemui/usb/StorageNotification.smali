.class public Lcom/android/systemui/usb/StorageNotification;
.super Landroid/os/storage/StorageEventListener;
.source "StorageNotification.java"


# static fields
.field private static mMountService:Landroid/os/storage/IMountService;

.field private static mUsbStorageService:Landroid/os/storage/IUsbStorageService;


# instance fields
.field private final MAX_BUFFER_SIZE:I

.field private final askOnStatusPath:Ljava/lang/String;

.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;

.field private final usbMenuSelPath:Ljava/lang/String;

.field private final usbStatePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    sput-object v0, Lcom/android/systemui/usb/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    .line 88
    sput-object v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageService:Landroid/os/storage/IUsbStorageService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const-string v8, "StorageNotification"

    .line 124
    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    .line 90
    const-string v4, "/sys/devices/virtual/switch/usb_mass_storage/state"

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->usbStatePath:Ljava/lang/String;

    .line 92
    const-string v4, "/sys/class/sec/switch/UsbMenuSel"

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->usbMenuSelPath:Ljava/lang/String;

    .line 93
    const-string v4, "/sys/class/sec/switch/AskOnStatus"

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->askOnStatusPath:Ljava/lang/String;

    .line 94
    const/16 v4, 0x64

    iput v4, p0, Lcom/android/systemui/usb/StorageNotification;->MAX_BUFFER_SIZE:I

    .line 125
    const-string v4, "StorageNotification"

    const-string v4, "StorageNotification :: "

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    .line 128
    const-string v4, "storage"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 129
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    .line 130
    .local v0, connected:Z
    const-string v4, "StorageNotification"

    const-string v4, "Startup with UMS connection %s (media state %s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 135
    .local v1, mountService:Landroid/os/storage/IMountService;
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification;->getUsbStorageService()Landroid/os/storage/IUsbStorageService;

    move-result-object v3

    .line 137
    .local v3, usbStorageService:Landroid/os/storage/IUsbStorageService;
    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "SystemUI StorageNotification"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, thr:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 139
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChanged(Z)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onUsbHostStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/systemui/usb/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 100
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 101
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 102
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/usb/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    .line 107
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/usb/StorageNotification;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 104
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "StorageNotification"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getStateFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "path"

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x0

    const-string v10, "StorageNotification"

    const-string v10, "IOException : "

    .line 151
    const/4 v3, 0x0

    .line 152
    .local v3, in:Ljava/io/InputStream;
    new-array v0, v9, [B

    .line 153
    .local v0, buffer:[B
    const/4 v6, 0x0

    .line 154
    .local v6, value:Ljava/lang/String;
    const/4 v5, 0x0

    .line 156
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v9, :cond_0

    .line 157
    aput-byte v8, v0, v2

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 162
    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 163
    if-eqz v5, :cond_1

    .line 164
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    sub-int v9, v5, v9

    invoke-direct {v7, v0, v8, v9}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .end local v6           #value:Ljava/lang/String;
    .local v7, value:Ljava/lang/String;
    move-object v6, v7

    .line 174
    .end local v7           #value:Ljava/lang/String;
    .restart local v6       #value:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 181
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :goto_1
    return-object v6

    .line 175
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 178
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_1

    .line 166
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 167
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 168
    const-string v8, "StorageNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 175
    :catch_2
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 169
    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    move-object v1, v8

    .line 170
    .local v1, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 171
    const-string v8, "StorageNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 174
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 175
    :catch_4
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 173
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 174
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 177
    :goto_5
    throw v8

    .line 175
    :catch_5
    move-exception v1

    .line 176
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 173
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_4

    .line 169
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_6
    move-exception v8

    move-object v1, v8

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_3

    .line 166
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_7
    move-exception v8

    move-object v1, v8

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_2
.end method

.method private declared-synchronized getUsbStorageService()Landroid/os/storage/IUsbStorageService;
    .locals 3

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageService:Landroid/os/storage/IUsbStorageService;

    if-nez v1, :cond_0

    .line 113
    const-string v1, "usbstorage"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 114
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 115
    invoke-static {v0}, Landroid/os/storage/IUsbStorageService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IUsbStorageService;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageService:Landroid/os/storage/IUsbStorageService;

    .line 120
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageService:Landroid/os/storage/IUsbStorageService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 117
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "StorageNotification"

    const-string v2, "Can\'t get usb storage service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hideNotification(I)V
    .locals 6
    .parameter "id"

    .prologue
    const-string v5, "StorageNotification"

    .line 805
    const-string v3, "StorageNotification"

    const-string v3, "hideNotification"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 810
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 811
    const-string v3, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notificationManager is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_0
    return-void

    .line 815
    :cond_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 816
    .local v1, notification:Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 817
    const/4 v3, 0x0

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 818
    iget v3, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 821
    :try_start_0
    invoke-virtual {v2, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 825
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final isActivityPlayStorageSounds()Z
    .locals 6

    .prologue
    const-string v5, "StorageNotification"

    .line 187
    const/4 v0, 0x0

    .line 190
    .local v0, bRet:Z
    :try_start_0
    sget-object v2, Lcom/android/systemui/usb/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/usb/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPlayNotificationSounds()Z

    move-result v0

    .line 191
    :cond_0
    const-string v2, "StorageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isActivityPlayStorageSounds :: bRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return v0

    .line 192
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 193
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActivityPlayStorageSounds :: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    const-string v0, "StorageNotification"

    const-string v1, "onStorageStateChangedAsync :: Media {%s} state changed from {%s} -> {%s}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v0, "shared"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 266
    const v1, 0x10403d7

    const v2, 0x10403d8

    const v3, 0x108008a

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v0, "pending"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    const-string v0, "StorageNotification"

    const-string v1, "Wait for Mount..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_2
    const-string v0, "checking"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    const v1, 0x10403f3

    const v2, 0x10403f4

    const v3, 0x10800ab

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 295
    :goto_1
    const v0, 0x10800ab

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->hideNotification(I)V

    goto :goto_0

    .line 288
    :cond_3
    const v1, 0x10403f2

    const v2, 0x10403f4

    const v3, 0x10800ab

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto :goto_1

    .line 300
    :cond_4
    const-string v0, "mounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 305
    const-string v0, "checking"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 306
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 307
    const v1, 0x10403f3

    const v2, 0x10403f4

    const v3, 0x10800ab

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 321
    :cond_5
    :goto_2
    const v0, 0x10800ab

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->hideNotification(I)V

    .line 323
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 313
    :cond_6
    const v1, 0x10403f2

    const v2, 0x10403f4

    const v3, 0x10800ab

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto :goto_2

    .line 326
    :cond_7
    const-string v0, "unmounted"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 332
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 333
    const-string v0, "shared"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "unmountable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "pending"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 340
    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 341
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 347
    :cond_9
    const/4 v0, 0x0

    .line 349
    :try_start_0
    sget-object v1, Lcom/android/systemui/usb/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getShowSafeUnmountNotification(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    move v8, v0

    .line 354
    :goto_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 355
    const/4 v0, 0x1

    if-ne v8, v0, :cond_a

    .line 356
    const v1, 0x1040402

    const v2, 0x1040404

    const v3, 0x108007a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 365
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    .line 381
    :goto_5
    const/4 v0, 0x1

    if-ne v8, v0, :cond_0

    .line 382
    :try_start_1
    sget-object v0, Lcom/android/systemui/usb/StorageNotification;->mMountService:Landroid/os/storage/IMountService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/storage/IMountService;->setShowSafeUnmountNotification(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 384
    :catch_0
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 350
    :catch_1
    move-exception v1

    .line 351
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v8, v0

    goto :goto_3

    .line 362
    :cond_a
    const-string v0, "StorageNotification"

    const-string v1, "Maybe next state will be MEDIA_BAD_REMOVAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const v0, 0x108007a

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotificationDummy(IZ)V

    goto :goto_4

    .line 367
    :cond_b
    const/4 v0, 0x1

    if-ne v8, v0, :cond_c

    .line 368
    const v1, 0x1040401

    const v2, 0x1040403

    const v3, 0x108007a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 377
    :goto_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    goto :goto_5

    .line 374
    :cond_c
    const-string v0, "StorageNotification"

    const-string v1, "Maybe next state will be MEDIA_BAD_REMOVAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto :goto_6

    .line 393
    :cond_d
    const-string v0, "StorageNotification"

    const-string v1, "Be receviced the msg \'MEDIA_UNMOUNTED\', but we still have connected ums"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 399
    :cond_e
    const-string v0, "nofs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 404
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 405
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 406
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 407
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 408
    const v1, 0x10403f6

    const v2, 0x10403f8

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 412
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 414
    :cond_f
    const v1, 0x10403f5

    const v2, 0x10403f7

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 422
    :cond_10
    const-string v0, "unmountable"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 427
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 428
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 429
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 430
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 431
    const v1, 0x10403fa

    const v2, 0x10403fc

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 435
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 437
    :cond_11
    const v1, 0x10403f9

    const v2, 0x10403fb

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 445
    :cond_12
    const-string v0, "removed"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 450
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 451
    const v1, 0x1040406

    const v2, 0x1040408

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 458
    const v0, 0x108007b

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->hideNotification(I)V

    .line 460
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 461
    :cond_13
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const v1, 0x1040405

    const v2, 0x1040407

    const v3, 0x108007b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 468
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 472
    :cond_14
    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 477
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 478
    const v1, 0x10403fe

    const v2, 0x1040400

    const v3, 0x108008a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 483
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 485
    :cond_15
    const v1, 0x10403fd

    const v2, 0x10403ff

    const v3, 0x108008a

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    goto/16 :goto_0

    .line 495
    :cond_16
    const-string v0, "StorageNotification"

    const-string v1, "Ignoring unknown state {%s}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onUsbHostStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 842
    const-string v4, "StorageNotification"

    const-string v5, "onUsbHostStateChangedAsync :: Media {%s} state changed from {%s} -> {%s}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const-string v4, "shared"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 847
    const-string v4, "StorageNotification"

    const-string v5, "### CHECK POINT"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    const-string v4, "pending"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 851
    const-string v4, "StorageNotification"

    const-string v5, "### CHECK POINT"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 854
    :cond_2
    const-string v4, "checking"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 855
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 856
    new-instance v20, Landroid/content/Intent;

    const-string v4, "android.hardware.action.USB_DEVICE_DETACH_REQUESTED"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 857
    .local v20, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v20

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 859
    .local v10, pi:Landroid/app/PendingIntent;
    const v5, 0x104040b

    const v6, 0x104040c

    const v7, 0x10802f7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto :goto_0

    .line 865
    .end local v10           #pi:Landroid/app/PendingIntent;
    .end local v20           #intent:Landroid/content/Intent;
    :cond_3
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown path ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). when "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 869
    :cond_4
    const-string v4, "mounted"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 870
    const-string v4, "checking"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 871
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 872
    new-instance v20, Landroid/content/Intent;

    const-string v4, "android.hardware.action.USB_DEVICE_DETACH_REQUESTED"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    .restart local v20       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v20

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 875
    .restart local v10       #pi:Landroid/app/PendingIntent;
    const v5, 0x104040b

    const v6, 0x104040c

    const v7, 0x10802f7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto/16 :goto_0

    .line 881
    .end local v10           #pi:Landroid/app/PendingIntent;
    .end local v20           #intent:Landroid/content/Intent;
    :cond_5
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown path ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). when "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 886
    :cond_6
    const-string v4, "unmounted"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 888
    const-string v4, "shared"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "unmountable"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "pending"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 892
    :cond_7
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto/16 :goto_0

    .line 895
    :cond_8
    const/16 v21, 0x0

    .line 897
    .local v21, safeUnmount:Z
    :try_start_0
    sget-object v4, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageService:Landroid/os/storage/IUsbStorageService;

    invoke-interface {v4}, Landroid/os/storage/IUsbStorageService;->getShowSafeUnmountNotification()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v21

    .line 902
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 903
    const/4 v4, 0x1

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_9

    .line 904
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbOtgRemoveNotification(Z)V

    .line 914
    :goto_2
    const/4 v4, 0x1

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_0

    .line 915
    :try_start_1
    sget-object v4, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageService:Landroid/os/storage/IUsbStorageService;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/os/storage/IUsbStorageService;->setShowSafeUnmountNotification(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 917
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 898
    :catch_1
    move-exception v4

    move-object/from16 v19, v4

    .line 899
    .local v19, e:Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 906
    .end local v19           #e:Ljava/lang/Exception;
    :cond_9
    const-string v4, "StorageNotification"

    const-string v5, "Maybe next state will be MEDIA_BAD_REMOVAL"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto :goto_2

    .line 910
    :cond_a
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown path ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). when "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 922
    .end local v21           #safeUnmount:Z
    :cond_b
    const-string v4, "nofs"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 930
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 931
    const v12, 0x10403f5

    const v13, 0x10403f7

    const v14, 0x108007b

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto/16 :goto_0

    .line 939
    :cond_c
    const-string v4, "unmountable"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 947
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 948
    const v12, 0x10403f9

    const v13, 0x10403fb

    const v14, 0x108007b

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto/16 :goto_0

    .line 956
    :cond_d
    const-string v4, "removed"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 957
    const-string v4, "StorageNotification"

    const-string v5, "### CHECK POINT"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v4, "unmountable"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "nofs"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 960
    :cond_e
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto/16 :goto_0

    .line 965
    :cond_f
    const-string v4, "bad_removal"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 966
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 967
    const v12, 0x104040d

    const v13, 0x104040e

    const v14, 0x108008a

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto/16 :goto_0

    .line 972
    :cond_10
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown path ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). when "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 977
    :cond_11
    const-string v4, "StorageNotification"

    const-string v5, "Ignoring unknown state {%s}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 7
    .parameter "connected"

    .prologue
    const-string v6, "StorageNotification"

    .line 219
    const-string v2, "StorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUsbMassStorageConnectionChangedAsync :: connected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    .line 225
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, inter_st:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, exter_st:Ljava/lang/String;
    const-string v2, "StorageNotification"

    const-string v2, "UMS connection changed to %s (media state internal = %s, external = %s )"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-eqz p1, :cond_1

    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "checking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    :cond_0
    const/4 p1, 0x0

    .line 237
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbModeNotification(Z)V

    .line 238
    return-void
.end method

.method private declared-synchronized setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V
    .locals 14
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "visible"
    .parameter "dismissable"
    .parameter "pi"
    .parameter "sound"

    .prologue
    .line 732
    monitor-enter p0

    :try_start_0
    const-string v11, "StorageNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setMediaStorageNotification :: titleId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", messageId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", icon = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", visible = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dismissable = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", sound = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    if-nez p4, :cond_1

    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_1

    .line 802
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 739
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 742
    .local v8, notificationManager:Landroid/app/NotificationManager;
    if-eqz v8, :cond_0

    .line 746
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v11, :cond_2

    if-eqz p4, :cond_2

    .line 751
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v7, v11, Landroid/app/Notification;->icon:I

    .line 752
    .local v7, notificationId:I
    invoke-virtual {v8, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 755
    .end local v7           #notificationId:I
    :cond_2
    if-eqz p4, :cond_5

    .line 756
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .line 757
    .local v9, r:Landroid/content/res/Resources;
    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 758
    .local v10, title:Ljava/lang/CharSequence;
    move-object v0, v9

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 760
    .local v6, message:Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v11, :cond_3

    .line 761
    new-instance v11, Landroid/app/Notification;

    invoke-direct {v11}, Landroid/app/Notification;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 762
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v12, 0x0

    iput-wide v12, v11, Landroid/app/Notification;->when:J

    .line 765
    :cond_3
    const/16 p7, 0x0

    .line 767
    invoke-static {}, Lcom/android/systemui/usb/StorageNotification;->isActivityPlayStorageSounds()Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz p7, :cond_6

    .line 768
    const-string v11, "StorageNotification"

    const-string v12, "setMediaStorageNotification :: Play Inserted Sound"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-string v12, "system/media/audio/ui/Insert.ogg"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    iput-object v12, v11, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 780
    :goto_1
    if-eqz p5, :cond_7

    .line 781
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v12, 0x10

    iput v12, v11, Landroid/app/Notification;->flags:I

    .line 786
    :goto_2
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v10, v11, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 787
    if-nez p6, :cond_4

    .line 788
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 789
    .local v5, intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v5, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 792
    .end local v5           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    move/from16 v0, p3

    move-object v1, v11

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 793
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v12, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v0, v11

    move-object v1, v12

    move-object v2, v10

    move-object v3, v6

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 796
    .end local v6           #message:Ljava/lang/CharSequence;
    .end local v9           #r:Landroid/content/res/Resources;
    .end local v10           #title:Ljava/lang/CharSequence;
    :cond_5
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v7, v11, Landroid/app/Notification;->icon:I

    .line 797
    .restart local v7       #notificationId:I
    if-eqz p4, :cond_8

    .line 798
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    invoke-virtual {v8, v7, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 732
    .end local v7           #notificationId:I
    .end local v8           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 772
    .restart local v6       #message:Ljava/lang/CharSequence;
    .restart local v8       #notificationManager:Landroid/app/NotificationManager;
    .restart local v9       #r:Landroid/content/res/Resources;
    .restart local v10       #title:Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    const-string v11, "StorageNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setMediaStorageNotification :: Don\'t play Inserted Sound. sound is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v12, v11, Landroid/app/Notification;->defaults:I

    and-int/lit8 v12, v12, -0x2

    iput v12, v11, Landroid/app/Notification;->defaults:I

    .line 774
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v12, 0x0

    iput-object v12, v11, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_1

    .line 783
    :cond_7
    iget-object v11, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v12, 0x2

    iput v12, v11, Landroid/app/Notification;->flags:I

    goto :goto_2

    .line 800
    .end local v6           #message:Ljava/lang/CharSequence;
    .end local v9           #r:Landroid/content/res/Resources;
    .end local v10           #title:Ljava/lang/CharSequence;
    .restart local v7       #notificationId:I
    :cond_8
    invoke-virtual {v8, v7}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized setMediaStorageNotificationDummy(IZ)V
    .locals 6
    .parameter "icon"
    .parameter "sound"

    .prologue
    const-string v3, "StorageNotification"

    .line 697
    monitor-enter p0

    :try_start_0
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMediaStorageNotificationDummy :: icon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sound = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 700
    .local v2, notificationManager:Landroid/app/NotificationManager;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 701
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v3, :cond_0

    .line 702
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 703
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 706
    :cond_0
    if-eqz v2, :cond_1

    .line 707
    move v1, p1

    .line 709
    .local v1, notificationId:I
    const/4 p2, 0x0

    .line 710
    invoke-static {}, Lcom/android/systemui/usb/StorageNotification;->isActivityPlayStorageSounds()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 711
    const-string v3, "StorageNotification"

    const-string v4, "setMediaStorageNotification :: Play Inserted Sound"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-string v4, "system/media/audio/ui/Insert.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 719
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    invoke-virtual {v2, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 726
    .end local v1           #notificationId:I
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 715
    .restart local v1       #notificationId:I
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    :cond_2
    :try_start_2
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMediaStorageNotification :: Don\'t play Inserted Sound. sound is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/app/Notification;->defaults:I

    .line 717
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 722
    .end local v1           #notificationId:I
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 724
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 697
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 16
    .parameter "titleId"
    .parameter "messageId"
    .parameter "icon"
    .parameter "sound"
    .parameter "visible"
    .parameter "pi"

    .prologue
    .line 612
    monitor-enter p0

    :try_start_0
    const-string v12, "StorageNotification"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setUsbStorageNotification :: titleId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", messageId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", icon = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", sound = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", visible = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    if-nez p5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_1

    .line 684
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 619
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v12, v0

    const-string v13, "notification"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 622
    .local v9, notificationManager:Landroid/app/NotificationManager;
    if-eqz v9, :cond_0

    .line 626
    if-eqz p5, :cond_4

    .line 627
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 628
    .local v10, r:Landroid/content/res/Resources;
    move-object v0, v10

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 630
    .local v11, title:Ljava/lang/CharSequence;
    if-nez p2, :cond_5

    .line 631
    const/4 v7, 0x0

    .line 636
    .local v7, message:Ljava/lang/CharSequence;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    if-nez v12, :cond_2

    .line 637
    new-instance v12, Landroid/app/Notification;

    invoke-direct {v12}, Landroid/app/Notification;-><init>()V

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    move/from16 v0, p3

    move-object v1, v12

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    const-wide/16 v13, 0x0

    iput-wide v13, v12, Landroid/app/Notification;->when:J

    .line 642
    :cond_2
    if-eqz p4, :cond_6

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iget v13, v12, Landroid/app/Notification;->defaults:I

    or-int/lit8 v13, v13, 0x1

    iput v13, v12, Landroid/app/Notification;->defaults:I

    .line 648
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    const/4 v13, 0x2

    iput v13, v12, Landroid/app/Notification;->flags:I

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iput-object v11, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 651
    if-nez p6, :cond_3

    .line 652
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 653
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v6, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p6

    .line 656
    .end local v6           #intent:Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v13, v0

    move-object v0, v12

    move-object v1, v13

    move-object v2, v11

    move-object v3, v7

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 657
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "adb_enabled"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v12, v13, :cond_7

    const/4 v12, 0x1

    move v5, v12

    .line 662
    .local v5, adbOn:Z
    :goto_3
    if-nez v5, :cond_8

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    move-object/from16 v0, p6

    move-object v1, v12

    iput-object v0, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 678
    .end local v5           #adbOn:Z
    .end local v7           #message:Ljava/lang/CharSequence;
    .end local v10           #r:Landroid/content/res/Resources;
    .end local v11           #title:Ljava/lang/CharSequence;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iget v8, v12, Landroid/app/Notification;->icon:I

    .line 679
    .local v8, notificationId:I
    if-eqz p5, :cond_9

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    invoke-virtual {v9, v8, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 612
    .end local v8           #notificationId:I
    .end local v9           #notificationManager:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 633
    .restart local v9       #notificationManager:Landroid/app/NotificationManager;
    .restart local v10       #r:Landroid/content/res/Resources;
    .restart local v11       #title:Ljava/lang/CharSequence;
    :cond_5
    :try_start_2
    move-object v0, v10

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .restart local v7       #message:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 645
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    iget v13, v12, Landroid/app/Notification;->defaults:I

    and-int/lit8 v13, v13, -0x2

    iput v13, v12, Landroid/app/Notification;->defaults:I

    goto :goto_2

    .line 657
    :cond_7
    const/4 v12, 0x0

    move v5, v12

    goto :goto_3

    .line 674
    .restart local v5       #adbOn:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object v12, v0

    const/4 v13, 0x0

    iput-object v13, v12, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    goto :goto_4

    .line 682
    .end local v5           #adbOn:Z
    .end local v7           #message:Ljava/lang/CharSequence;
    .end local v10           #r:Landroid/content/res/Resources;
    .end local v11           #title:Ljava/lang/CharSequence;
    .restart local v8       #notificationId:I
    :cond_9
    invoke-virtual {v9, v8}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized updateUsbModeNotification(Z)V
    .locals 9
    .parameter "connected"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, "Blocking"

    const-string v4, ", askOnMenu is "

    const-string v4, "StorageNotification"

    .line 548
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_setting_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 552
    .local v3, usbSettingMode:I
    iget-object v4, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v7, v4, :cond_1

    move v0, v7

    .line 556
    .local v0, adbCheck:Z
    :goto_0
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUsbModeNotification :: connected is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", usbSettingMode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", and adbCheck is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    if-nez v3, :cond_3

    .line 560
    if-ne v0, v7, :cond_2

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .end local v0           #adbCheck:Z
    :cond_1
    move v0, v8

    .line 552
    goto :goto_0

    .line 563
    .restart local v0       #adbCheck:Z
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbNotification(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 548
    .end local v0           #adbCheck:Z
    .end local v3           #usbSettingMode:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 565
    .restart local v0       #adbCheck:Z
    .restart local v3       #usbSettingMode:I
    :cond_3
    if-ne v3, v7, :cond_5

    .line 566
    if-ne v0, v7, :cond_4

    .line 567
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_1

    .line 569
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbNotification(Z)V

    goto :goto_1

    .line 571
    :cond_5
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 572
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_1

    .line 573
    :cond_6
    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    .line 574
    const-string v4, "/sys/class/sec/switch/UsbMenuSel"

    invoke-direct {p0, v4}, Lcom/android/systemui/usb/StorageNotification;->getStateFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, usbMenu:Ljava/lang/String;
    const-string v4, "/sys/class/sec/switch/AskOnStatus"

    invoke-direct {p0, v4}, Lcom/android/systemui/usb/StorageNotification;->getStateFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, askOnMenu:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 579
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "usbMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", and askOnMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v4, "[UsbMenuSel] ACM_MTP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Blocking"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 582
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "choice SUMSUNG KIES :: usbMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", askOnMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    if-ne v0, v7, :cond_7

    .line 584
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 586
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbNotification(Z)V

    goto/16 :goto_1

    .line 588
    :cond_8
    const-string v4, "[UsbMenuSel] MTP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "Blocking"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 589
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "choice MEDIA PLAYER :: usbMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", askOnMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    if-ne v0, v7, :cond_9

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 593
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbNotification(Z)V

    goto/16 :goto_1

    .line 595
    :cond_a
    const-string v4, "[UsbMenuSel] UMS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "Blocking"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 596
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "choice USB MASS STORAGE :: usbMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", askOnMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 599
    :cond_b
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Other state :: usbMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", askOnMenu is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_1

    .line 603
    .end local v1           #askOnMenu:Ljava/lang/String;
    .end local v2           #usbMenu:Ljava/lang/String;
    :cond_c
    const-string v4, "StorageNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown state :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method

.method public onUsbStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification$3;-><init>(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 503
    const-string v0, "StorageNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUsbMassStorageNotification :: available = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    if-eqz p1, :cond_0

    .line 506
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 507
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 508
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 510
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 511
    const v1, 0x10403d5

    const v2, 0x10403d6

    const v3, 0x10802f7

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 519
    :goto_0
    return-void

    .line 517
    :cond_0
    const/4 v9, 0x0

    move-object v3, p0

    move v5, v4

    move v6, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method updateUsbNotification(Z)V
    .locals 8
    .parameter "available"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v2, "StorageNotification"

    .line 525
    const-string v0, "StorageNotification"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUsbNotification :: available = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_setting_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 532
    .local v7, default_usb_setting_mode:I
    const-string v0, "StorageNotification"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default_usb_setting_mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-eqz p1, :cond_1

    .line 535
    const/4 v0, 0x3

    if-ne v7, v0, :cond_0

    .line 536
    const v1, 0x10403d5

    const v2, 0x10403de

    const v3, 0x10802f7

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 545
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move v1, v4

    move v2, v4

    move v3, v4

    move v5, v4

    .line 543
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method updateUsbOtgRemoveNotification(Z)V
    .locals 8
    .parameter "removed"

    .prologue
    .line 996
    const-string v0, "StorageNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUsbOtgRemoveNotification :: removed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    if-eqz p1, :cond_0

    .line 999
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v1, 0x104040f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1000
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    .line 1009
    :goto_0
    return-void

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v1, 0x1040410

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1003
    const v1, 0x10403d5

    const v2, 0x10403d6

    const v3, 0x10802f7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIZZLandroid/app/PendingIntent;Z)V

    goto :goto_0
.end method

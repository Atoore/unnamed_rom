.class public Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;
.super Ljava/lang/Object;
.source "AreaMailNotificationControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;
    }
.end annotation


# static fields
.field private static final HANDLER_EVENT_ONCOMPLETE:I = 0x1

.field private static final LED_COLOR:I = -0x10000

.field private static final LED_OFF_MS:I = 0x64

.field private static final LED_ON_MS:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "areamail.service"

.field private static final NOTFICATION_ID:I = 0x2710

.field private static final NOTIFICATION_STREAM_TYPE:I = 0x4

.field private static final RES_BUZZER:I = 0x10c0000

.field private static final RES_CBS:I = 0x10c0001

.field public static final RING_TYPE_BUZZER:I = 0x0

.field public static final RING_TYPE_CBS:I = 0x1

.field public static final RING_TYPE_SILENT:I = 0x2

.field private static final VIBRATE_PATTERN:[J


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mListener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNotification:Landroid/app/Notification;

.field private mNotifyHandler:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->VIBRATE_PATTERN:[J

    return-void

    nop

    :array_a
    .array-data 0x8
        0x20t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mContext:Landroid/content/Context;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mCount:I

    .line 131
    iput-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mListener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    .line 136
    iput-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 141
    iput-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mTimer:Ljava/util/Timer;

    .line 146
    iput-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mNotification:Landroid/app/Notification;

    .line 151
    iput-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mNotifyHandler:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;

    .line 159
    if-nez p1, :cond_1d

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1d
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mContext:Landroid/content/Context;

    .line 163
    new-instance v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;

    invoke-direct {v0, p0, v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;-><init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$1;)V

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mNotifyHandler:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;

    .line 164
    return-void
.end method

.method static synthetic access$100(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->endNotification()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->notifyOnComplete(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mCount:I

    return v0
.end method

.method static synthetic access$310(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mListener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mListener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    return-object p1
.end method

.method private endNotification()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 404
    const/4 v2, 0x1

    .line 407
    .local v2, ret:Z
    iget-object v4, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mTimer:Ljava/util/Timer;

    if-eqz v4, :cond_d

    .line 408
    iget-object v4, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 409
    iput-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mTimer:Ljava/util/Timer;

    .line 413
    :cond_d
    iget-object v4, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mNotification:Landroid/app/Notification;

    if-eqz v4, :cond_31

    .line 415
    iget-object v4, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 416
    .local v3, vibrator:Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    .line 419
    iget-object v4, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 421
    .local v1, notificationManager:Landroid/app/NotificationManager;
    const/16 v4, 0x2710

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 423
    iput-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mNotification:Landroid/app/Notification;

    .line 427
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    .end local v3           #vibrator:Landroid/os/Vibrator;
    :cond_31
    iget-object v4, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_4b

    .line 428
    iget-object v4, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    .line 429
    iput-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 430
    iget-object v4, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 432
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 435
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_4b
    return v2
.end method

.method private notifyOnComplete(Z)V
    .registers 7
    .parameter "result"

    .prologue
    .line 444
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mListener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    if-nez v1, :cond_5

    .line 455
    :goto_4
    return-void

    .line 447
    :cond_5
    const/4 v0, 0x0

    .line 449
    .local v0, resultInt:I
    if-eqz p1, :cond_9

    .line 450
    const/4 v0, 0x1

    .line 454
    :cond_9
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mNotifyHandler:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;

    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mNotifyHandler:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method private prepareNotification(IZ)Z
    .registers 14
    .parameter "type"
    .parameter "looping"

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->endNotification()Z

    move-result v0

    if-nez v0, :cond_f

    .line 288
    const-string v0, "areamail.service"

    const-string v1, "AreaMailNotificationControl.prepareNotification:endNotification() error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    .line 372
    :goto_e
    return v0

    .line 293
    :cond_f
    const/4 v0, 0x2

    if-eq p1, v0, :cond_7b

    .line 295
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 298
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$2;

    invoke-direct {v1, p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$2;-><init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 311
    if-nez p2, :cond_2f

    .line 312
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$3;

    invoke-direct {v1, p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$3;-><init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 331
    :cond_2f
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 334
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 337
    const/high16 v10, 0x10c

    .line 338
    .local v10, res_id:I
    const/4 v0, 0x1

    if-ne p1, v0, :cond_42

    .line 339
    const v10, 0x10c0001

    .line 341
    :cond_42
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 344
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_4c
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 345
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_62
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_62} :catch_9f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_62} :catch_ab

    .line 358
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    .line 359
    .local v7, audioManager:Landroid/media/AudioManager;
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v9

    .line 360
    .local v9, maxVolume:I
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v9, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 362
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 366
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v7           #audioManager:Landroid/media/AudioManager;
    .end local v9           #maxVolume:I
    .end local v10           #res_id:I
    :cond_7b
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mNotification:Landroid/app/Notification;

    .line 367
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mNotification:Landroid/app/Notification;

    const/high16 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 368
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mNotification:Landroid/app/Notification;

    const/16 v1, 0x64

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 369
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mNotification:Landroid/app/Notification;

    const/16 v1, 0x64

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 370
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 372
    const/4 v0, 0x1

    goto/16 :goto_e

    .line 346
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    .restart local v10       #res_id:I
    :catch_9f
    move-exception v0

    move-object v8, v0

    .line 348
    .local v8, e:Ljava/lang/IllegalStateException;
    const-string v0, "areamail.service"

    const-string v1, "AreaMailNotificationControl.prepareNotification:IllegalStateException!"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    const/4 v0, 0x0

    goto/16 :goto_e

    .line 350
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :catch_ab
    move-exception v0

    move-object v8, v0

    .line 352
    .local v8, e:Ljava/io/IOException;
    const-string v0, "areamail.service"

    const-string v1, "AreaMailNotificationControl.prepareNotification:printStackTrace!"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    const/4 v0, 0x0

    goto/16 :goto_e
.end method

.method private startNotification()Z
    .registers 5

    .prologue
    .line 382
    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_9

    .line 383
    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 387
    :cond_9
    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 388
    .local v1, vibrator:Landroid/os/Vibrator;
    sget-object v2, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->VIBRATE_PATTERN:[J

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 391
    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 393
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const/16 v2, 0x2710

    iget-object v3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 395
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public final registerListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 174
    if-nez p1, :cond_a

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_a
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mListener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    .line 180
    return-void
.end method

.method public final startNotificationByCount(II)V
    .registers 6
    .parameter "type"
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 247
    if-ltz p1, :cond_8

    const/4 v1, 0x1

    if-gt p1, v1, :cond_8

    if-gez p2, :cond_10

    .line 248
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The parameter is illegal"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_10
    const/4 v0, 0x0

    .line 254
    .local v0, ret:Z
    invoke-direct {p0, p1, v2}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->prepareNotification(IZ)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 255
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->startNotification()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 256
    iput p2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mCount:I

    .line 257
    const/4 v0, 0x1

    .line 262
    :cond_20
    if-nez v0, :cond_28

    .line 263
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->endNotification()Z

    .line 264
    invoke-direct {p0, v2}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->notifyOnComplete(Z)V

    .line 266
    :cond_28
    return-void
.end method

.method public final startNotificationByTime(II)V
    .registers 8
    .parameter "type"
    .parameter "time"

    .prologue
    .line 209
    if-ltz p1, :cond_7

    const/4 v1, 0x2

    if-gt p1, v1, :cond_7

    if-gez p2, :cond_f

    .line 210
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The parameter is illegal"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_f
    const/4 v0, 0x0

    .line 216
    .local v0, ret:Z
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->prepareNotification(IZ)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 217
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->startNotification()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 219
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mTimer:Ljava/util/Timer;

    .line 220
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$1;

    invoke-direct {v2, p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$1;-><init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)V

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 228
    const/4 v0, 0x1

    .line 233
    :cond_30
    if-nez v0, :cond_39

    .line 234
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->endNotification()Z

    .line 235
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->notifyOnComplete(Z)V

    .line 237
    :cond_39
    return-void
.end method

.method public final stopNotification()V
    .registers 1

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->endNotification()Z

    .line 273
    return-void
.end method

.method public final unregisterListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 190
    if-nez p1, :cond_a

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_a
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mListener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    if-ne p1, v0, :cond_11

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mListener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    .line 197
    :cond_11
    return-void
.end method

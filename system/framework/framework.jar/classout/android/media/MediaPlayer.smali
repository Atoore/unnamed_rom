.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnPlayReadyErrorListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$EventHandler;
    }
.end annotation


# static fields
.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field public static final MEDIA_ErrDrmDevCertRevoked:I = -0x3b

.field public static final MEDIA_ErrDrmLicenseExpired:I = 0x12d

.field public static final MEDIA_ErrDrmLicenseNotFound:I = 0x12c

.field public static final MEDIA_ErrDrmLicenseNotValidYet:I = 0x12e

.field public static final MEDIA_ErrDrmRightsAcquisitionFailed:I = -0x31

.field public static final MEDIA_ErrDrmServerDeviceLimitReached:I = -0x40

.field public static final MEDIA_ErrDrmServerDomainRequired:I = -0x3c

.field public static final MEDIA_ErrDrmServerInternalError:I = -0x3a

.field public static final MEDIA_ErrDrmServerNotAMember:I = -0x3d

.field public static final MEDIA_ErrDrmServerProtocolVersionMismatch:I = -0x3f

.field public static final MEDIA_ErrDrmServerUnknownAccountId:I = -0x3e

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"


# instance fields
.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mListenerContext:I

.field private mNativeContext:I

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 521
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 522
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    .line 523
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object v1, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 550
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_1c

    .line 551
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 561
    :goto_13
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 562
    return-void

    .line 552
    :cond_1c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 553
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_13

    .line 555
    :cond_2a
    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_13
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setFilePD(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native _setVideoSurface()V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/media/MediaPlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    iget v0, p0, Landroid/media/MediaPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 485
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method private checkDivxRightStatus(Ljava/lang/String;)I
    .registers 12
    .parameter "filePath"

    .prologue
    const/4 v9, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x1

    .line 2053
    const/4 v1, 0x0

    .line 2054
    .local v1, divxManager:Landroid/divxdrm/mobile/DivxDrmManager;
    invoke-static {}, Landroid/divxdrm/mobile/DivxDrmManager;->getInstance()Landroid/divxdrm/mobile/DivxDrmManager;

    move-result-object v1

    .line 2055
    const/4 v3, -0x1

    .line 2059
    .local v3, rightStatus:I
    const/4 v4, 0x1

    :try_start_a
    invoke-virtual {v1, p1, v4}, Landroid/divxdrm/mobile/DivxDrmManager;->drmDivXGetRightStatus(Ljava/lang/String;I)I
    :try_end_d
    .catch Landroid/divxdrm/mobile/DivxDrmException; {:try_start_a .. :try_end_d} :catch_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_18

    move-result v3

    .line 2072
    if-ne v3, v8, :cond_1e

    move v4, v8

    .line 2101
    :goto_11
    return v4

    .line 2061
    :catch_12
    move-exception v2

    .line 2063
    .local v2, e:Landroid/divxdrm/mobile/DivxDrmException;
    invoke-virtual {v2}, Landroid/divxdrm/mobile/DivxDrmException;->printStackTrace()V

    move v4, v5

    .line 2064
    goto :goto_11

    .line 2066
    .end local v2           #e:Landroid/divxdrm/mobile/DivxDrmException;
    :catch_18
    move-exception v2

    .line 2068
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move v4, v5

    .line 2069
    goto :goto_11

    .line 2074
    .end local v2           #e:Ljava/io/IOException;
    :cond_1e
    const/4 v4, 0x2

    if-ne v3, v4, :cond_23

    move v4, v8

    .line 2075
    goto :goto_11

    .line 2076
    :cond_23
    const/4 v4, 0x3

    if-ne v3, v4, :cond_28

    move v4, v8

    .line 2077
    goto :goto_11

    .line 2078
    :cond_28
    if-nez v3, :cond_4f

    .line 2080
    const/4 v0, 0x0

    .line 2084
    .local v0, bestRight:Landroid/divxdrm/mobile/DrmDivxBestRight;
    const/4 v4, 0x1

    :try_start_2c
    invoke-virtual {v1, p1, v4}, Landroid/divxdrm/mobile/DivxDrmManager;->drmDivXGetBestRight(Ljava/lang/String;I)Landroid/divxdrm/mobile/DrmDivxBestRight;
    :try_end_2f
    .catch Landroid/divxdrm/mobile/DivxDrmException; {:try_start_2c .. :try_end_2f} :catch_43
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_48

    move-result-object v0

    .line 2095
    :goto_30
    const/4 v4, 0x4

    invoke-virtual {v0}, Landroid/divxdrm/mobile/DrmDivxBestRight;->getDrmMode()I

    move-result v5

    if-ne v4, v5, :cond_4d

    invoke-virtual {v0}, Landroid/divxdrm/mobile/DrmDivxBestRight;->getOrgCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4d

    move v4, v8

    .line 2096
    goto :goto_11

    .line 2086
    :catch_43
    move-exception v2

    .line 2088
    .local v2, e:Landroid/divxdrm/mobile/DivxDrmException;
    invoke-virtual {v2}, Landroid/divxdrm/mobile/DivxDrmException;->printStackTrace()V

    goto :goto_30

    .line 2090
    .end local v2           #e:Landroid/divxdrm/mobile/DivxDrmException;
    :catch_48
    move-exception v2

    .line 2092
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    .end local v2           #e:Ljava/io/IOException;
    :cond_4d
    move v4, v9

    .line 2098
    goto :goto_11

    .end local v0           #bestRight:Landroid/divxdrm/mobile/DrmDivxBestRight;
    :cond_4f
    move v4, v9

    .line 2101
    goto :goto_11
.end method

.method private checkIsDivx(Ljava/lang/String;)Z
    .registers 6
    .parameter "filePath"

    .prologue
    .line 2022
    const/4 v1, 0x0

    .line 2023
    .local v1, divxManager:Landroid/divxdrm/mobile/DivxDrmManager;
    invoke-static {}, Landroid/divxdrm/mobile/DivxDrmManager;->getInstance()Landroid/divxdrm/mobile/DivxDrmManager;

    move-result-object v1

    .line 2026
    const/4 v0, 0x0

    .line 2031
    .local v0, bDvix:Z
    :try_start_6
    invoke-virtual {v1, p1}, Landroid/divxdrm/mobile/DivxDrmManager;->isDivXFile(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/divxdrm/mobile/DivxDrmException; {:try_start_6 .. :try_end_9} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_12

    move-result v0

    .line 2033
    move v3, v0

    .line 2048
    .local v3, mIsDivx:Z
    :goto_b
    return v3

    .line 2037
    .end local v3           #mIsDivx:Z
    :catch_c
    move-exception v2

    .line 2039
    .local v2, e:Landroid/divxdrm/mobile/DivxDrmException;
    invoke-virtual {v2}, Landroid/divxdrm/mobile/DivxDrmException;->printStackTrace()V

    .line 2040
    const/4 v3, 0x0

    .line 2046
    .restart local v3       #mIsDivx:Z
    goto :goto_b

    .line 2042
    .end local v2           #e:Landroid/divxdrm/mobile/DivxDrmException;
    .end local v3           #mIsDivx:Z
    :catch_12
    move-exception v2

    .line 2044
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2045
    const/4 v3, 0x0

    .restart local v3       #mIsDivx:Z
    goto :goto_b
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .registers 13
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v10, 0x0

    const-string v9, "create failed:"

    const-string v8, "MediaPlayer"

    .line 691
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 692
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_11

    move-object v1, v10

    .line 709
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_10
    return-object v1

    .line 694
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_11
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 695
    .local v0, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 696
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 697
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2b} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_2b} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_2b} :catch_42

    move-object v1, v0

    .line 698
    goto :goto_10

    .line 699
    .end local v0           #mp:Landroid/media/MediaPlayer;
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_2d
    move-exception v1

    move-object v7, v1

    .line 700
    .local v7, ex:Ljava/io/IOException;
    const-string v1, "MediaPlayer"

    const-string v1, "create failed:"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7           #ex:Ljava/io/IOException;
    :goto_36
    move-object v1, v10

    .line 709
    goto :goto_10

    .line 702
    :catch_38
    move-exception v1

    move-object v7, v1

    .line 703
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    const-string v1, "create failed:"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 705
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_42
    move-exception v1

    move-object v7, v1

    .line 706
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    const-string v1, "create failed:"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .registers 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .registers 8
    .parameter "context"
    .parameter "uri"
    .parameter "holder"

    .prologue
    const-string v4, "create failed:"

    const-string v3, "MediaPlayer"

    .line 656
    :try_start_4
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 657
    .local v1, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 658
    if-eqz p2, :cond_11

    .line 659
    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 661
    :cond_11
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_14} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_14} :catch_21
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_14} :catch_2b

    move-object v2, v1

    .line 674
    .end local v1           #mp:Landroid/media/MediaPlayer;
    :goto_15
    return-object v2

    .line 663
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 664
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 674
    .end local v0           #ex:Ljava/io/IOException;
    :goto_1f
    const/4 v2, 0x0

    goto :goto_15

    .line 666
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 667
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 669
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2b
    move-exception v2

    move-object v0, v2

    .line 670
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v2, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method private getAudioFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .registers 13
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const-string v5, "_data"

    const-string v2, "MediaPlayer"

    .line 801
    const/4 v8, 0x0

    .line 802
    .local v8, str:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 803
    .local v7, fileUri:Ljava/lang/String;
    const/4 v6, 0x0

    .line 804
    .local v6, cursor:Landroid/database/Cursor;
    const-string v0, "MediaPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside  getAudioFilePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v5, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 808
    if-eqz v6, :cond_63

    :try_start_38
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_63

    .line 809
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 810
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 812
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The actual path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_38 .. :try_end_63} :catchall_69

    .line 816
    :cond_63
    if-eqz v6, :cond_68

    .line 817
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 821
    :cond_68
    return-object v8

    .line 816
    :catchall_69
    move-exception v0

    if-eqz v6, :cond_6f

    .line 817
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 816
    :cond_6f
    throw v0
.end method

.method private getRingTonePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .registers 16
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 827
    if-nez p1, :cond_c

    .line 828
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "uri is null : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v0, 0x0

    .line 896
    :goto_b
    return-object v0

    .line 831
    :cond_c
    const/4 v10, 0x0

    .line 832
    .local v10, isRingtone:Z
    const/4 v1, 0x0

    .line 833
    .local v1, tempUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 834
    .local v9, fileUri:Ljava/lang/String;
    const/4 v7, 0x0

    .line 835
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 836
    .local v11, str:Ljava/lang/String;
    const/4 v10, 0x1

    .line 837
    const-string v0, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings Ringtone is going to play : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const-string/jumbo v0, "video_call_ringtone"

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 839
    const-string v0, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "it is a video Ringtone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "video_call_ringtone"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 841
    .local v6, actual_uri:Ljava/lang/String;
    const-string v0, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Actual URI for the  video Ringtone is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    if-eqz v6, :cond_77

    .line 843
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 853
    .end local v6           #actual_uri:Ljava/lang/String;
    :cond_77
    :goto_77
    const-string v0, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temp URI for media play is  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    if-eqz v1, :cond_171

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://media/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 855
    const-string v0, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "it is a valid Media DB URI   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 860
    if-eqz v7, :cond_149

    :try_start_ca
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_149

    .line 861
    .end local v1           #tempUri:Landroid/net/Uri;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 862
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 864
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The actual path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catchall {:try_start_ca .. :try_end_f6} :catchall_160
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_f6} :catch_151

    .line 873
    :goto_f6
    if-eqz v7, :cond_fb

    .line 874
    :goto_f8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 885
    :cond_fb
    if-eqz v11, :cond_167

    const-string v0, ".dcf"

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 886
    const-string v0, "MediaPlayer"

    const-string v1, "It is a DRM RingTone: Return the actual path"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    .line 887
    goto/16 :goto_b

    .line 846
    .restart local v1       #tempUri:Landroid/net/Uri;
    :cond_10f
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #tempUri:Landroid/net/Uri;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it is a Non video Ringtone URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v12

    .line 848
    .local v12, type:I
    const-string v0, "MediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it is a Ringtone type is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-static {p2, v12}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #tempUri:Landroid/net/Uri;
    goto/16 :goto_77

    .line 867
    .end local v1           #tempUri:Landroid/net/Uri;
    .end local v12           #type:I
    :cond_149
    :try_start_149
    const-string v0, "MediaPlayer"

    const-string v1, "Cursor is NULL:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catchall {:try_start_149 .. :try_end_150} :catchall_160
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_150} :catch_151

    goto :goto_f6

    .line 869
    :catch_151
    move-exception v0

    move-object v8, v0

    .line 870
    .local v8, e:Ljava/lang/Exception;
    :try_start_153
    const-string v0, "MediaPlayer"

    const-string v1, "Exception occured "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15d
    .catchall {:try_start_153 .. :try_end_15d} :catchall_160

    .line 873
    if-eqz v7, :cond_fb

    goto :goto_f8

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_160
    move-exception v0

    if-eqz v7, :cond_166

    .line 874
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 873
    :cond_166
    throw v0

    .line 889
    :cond_167
    const-string v0, "MediaPlayer"

    const-string v1, "It is a Not a DRM RingTone: return NULl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v0, 0x0

    goto/16 :goto_b

    .line 895
    .restart local v1       #tempUri:Landroid/net/Uri;
    :cond_171
    const-string v0, "MediaPlayer"

    const-string v1, "Ringtone URI is null or not from Media DB  : "

    .end local v1           #tempUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v0, 0x0

    goto/16 :goto_b
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private native native_suspend_resume(Z)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 11
    .parameter "mediaplayer_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1609
    const/16 v3, -0x31

    if-eq p3, v3, :cond_10

    const/16 v3, -0x3c

    if-eq p3, v3, :cond_10

    const/16 v3, -0x3d

    if-eq p3, v3, :cond_10

    const/16 v3, -0x40

    if-ne p3, v3, :cond_2f

    .line 1611
    :cond_10
    if-eqz p4, :cond_2f

    .line 1612
    const-string v4, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "postEventFromNative Error String is"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_2f
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaPlayer;

    .line 1617
    .local v2, mp:Landroid/media/MediaPlayer;
    if-nez v2, :cond_3a

    .line 1625
    :cond_39
    :goto_39
    return-void

    .line 1621
    :cond_3a
    iget-object v3, v2, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v3, :cond_39

    .line 1622
    iget-object v3, v2, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1623
    .local v1, m:Landroid/os/Message;
    iget-object v3, v2, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_39
.end method

.method private stayAwake(Z)V
    .registers 3
    .parameter "awake"

    .prologue
    .line 1091
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_13

    .line 1092
    if-eqz p1, :cond_19

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1093
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1098
    :cond_13
    :goto_13
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1099
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1100
    return-void

    .line 1094
    :cond_19
    if-nez p1, :cond_13

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1095
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_13
.end method

.method private updateSurfaceScreenOn()V
    .registers 3

    .prologue
    .line 1103
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_12

    .line 1104
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_f
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1106
    :cond_12
    return-void

    .line 1104
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method


# virtual methods
.method public native LMSClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native LMSOpen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native LMSPlay()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native LMSStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native attachAuxEffect(I)V
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 1481
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public native getAudioSessionId()I
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public native getFrameAt(I)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .registers 7
    .parameter "update_only"
    .parameter "apply_filter"

    .prologue
    const/4 v3, 0x0

    .line 1181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1182
    .local v1, reply:Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    .line 1184
    .local v0, data:Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1185
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v2, v3

    .line 1195
    :goto_14
    return-object v2

    .line 1191
    :cond_15
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1192
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v2, v3

    .line 1193
    goto :goto_14

    :cond_20
    move-object v2, v0

    .line 1195
    goto :goto_14
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
    .registers 5
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 603
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 604
    .local v0, retcode:I
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 605
    return v0
.end method

.method public native isAnyDrmVideoPlaying()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public isDrmDivx(Ljava/lang/String;)Z
    .registers 5
    .parameter "filePath"

    .prologue
    const/4 v2, 0x1

    .line 2011
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->checkIsDivx(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_12

    .line 2013
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->checkDivxRightStatus(Ljava/lang/String;)I

    move-result v0

    .line 2014
    .local v0, ret:I
    if-eqz v0, :cond_12

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    move v1, v2

    .line 2017
    .end local v0           #ret:I
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public native isUlpAudio()Z
.end method

.method public newRequest()Landroid/os/Parcel;
    .registers 3

    .prologue
    .line 581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 582
    .local v0, parcel:Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 583
    return-object v0
.end method

.method public pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1032
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1033
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    .line 1034
    return-void
.end method

.method public native prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native reInitKDRM()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1253
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1254
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1255
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1256
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1257
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1258
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1259
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1260
    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1261
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 1262
    return-void
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .registers 8
    .parameter "keyCode"
    .parameter "componentName"
    .parameter "request"

    .prologue
    .line 1996
    const-string/jumbo v0, "window"

    .line 1997
    .local v0, WINDOW_SERVICE:Ljava/lang/String;
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 2000
    .local v2, windowmanager:Landroid/view/IWindowManager;
    :try_start_e
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_13

    move-result v3

    .line 2005
    :goto_12
    return v3

    .line 2001
    :catch_13
    move-exception v1

    .line 2002
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2005
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 1272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1273
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 1275
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1276
    return-void
.end method

.method public resume()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1311
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_suspend_resume(Z)I

    move-result v0

    if-gez v0, :cond_a

    move v0, v1

    .line 1319
    :goto_9
    return v0

    .line 1315
    :cond_a
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1316
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    :cond_13
    move v0, v2

    .line 1319
    goto :goto_9
.end method

.method public native seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native seekTo(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setAudioStreamType(I)V
.end method

.method public native setAuxEffectSendLevel(F)V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 721
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 722
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 15
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "MediaPlayer"

    .line 736
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    .line 737
    .local v9, scheme:Ljava/lang/String;
    if-eqz v9, :cond_10

    const-string v0, "file"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 738
    :cond_10
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 792
    :cond_17
    :goto_17
    return-void

    .line 742
    :cond_18
    const-string v0, "MediaPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uri is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v7, 0x0

    .line 744
    .local v7, path:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 745
    invoke-direct {p0, p2, p1}, Landroid/media/MediaPlayer;->getAudioFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 750
    :cond_46
    :goto_46
    if-eqz v7, :cond_8e

    .line 752
    const-string v0, "MediaPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "path is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v0, "MediaPlayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file path found for DRM file:path is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_17

    .line 747
    :cond_7d
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://settings/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 748
    invoke-direct {p0, p2, p1}, Landroid/media/MediaPlayer;->getRingTonePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    goto :goto_46

    .line 762
    :cond_8e
    const-string v0, "MediaPlayer"

    const-string/jumbo v0, "path is null"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v6, 0x0

    .line 769
    .local v6, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 770
    .local v8, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v8, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_a1
    .catchall {:try_start_97 .. :try_end_a1} :catchall_e6
    .catch Ljava/lang/SecurityException; {:try_start_97 .. :try_end_a1} :catch_d0
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_a1} :catch_ed

    move-result-object v6

    .line 771
    if-nez v6, :cond_ab

    .line 786
    if-eqz v6, :cond_17

    .line 787
    :goto_a6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto/16 :goto_17

    .line 777
    :cond_ab
    :try_start_ab
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_bf

    .line 778
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 786
    :goto_bc
    if-eqz v6, :cond_17

    goto :goto_a6

    .line 780
    :cond_bf
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_cf
    .catchall {:try_start_ab .. :try_end_cf} :catchall_e6
    .catch Ljava/lang/SecurityException; {:try_start_ab .. :try_end_cf} :catch_d0
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_cf} :catch_ed

    goto :goto_bc

    .line 783
    .end local v8           #resolver:Landroid/content/ContentResolver;
    :catch_d0
    move-exception v0

    .line 786
    if-eqz v6, :cond_d6

    .line 787
    :goto_d3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 790
    :cond_d6
    const-string v0, "MediaPlayer"

    const-string v0, "Couldn\'t open file on client side, trying server side"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_17

    .line 786
    :catchall_e6
    move-exception v0

    if-eqz v6, :cond_ec

    .line 787
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 786
    :cond_ec
    throw v0

    .line 784
    :catch_ed
    move-exception v0

    .line 786
    if-eqz v6, :cond_d6

    goto :goto_d3
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 958
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 959
    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setDisableKDRM()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setDiscount()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "sh"

    .prologue
    .line 616
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 617
    if-eqz p1, :cond_11

    .line 618
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 622
    :goto_a
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_setVideoSurface()V

    .line 623
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 624
    return-void

    .line 620
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    goto :goto_a
.end method

.method public native setEnableKDRM()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setFilePD(Ljava/lang/String;)V
    .registers 11
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 912
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 914
    .local v7, f:Ljava/io/File;
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 915
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_24

    .line 921
    :cond_e
    :goto_e
    const/high16 v0, 0x3000

    invoke-static {v7, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 923
    .local v8, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_14
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaPlayer;->_setFilePD(Ljava/io/FileDescriptor;JJ)V
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_2a

    .line 925
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 927
    return-void

    .line 917
    .end local v8           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_24
    move-exception v0

    move-object v6, v0

    .line 919
    .local v6, e2:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 925
    .end local v6           #e2:Ljava/io/IOException;
    .restart local v8       #pfd:Landroid/os/ParcelFileDescriptor;
    :catchall_2a
    move-exception v0

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V

    throw v0
.end method

.method public native setLooping(Z)V
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1223
    .local p1, allow:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, block:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1229
    .local v2, request:Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    add-int v0, v4, v5

    .line 1231
    .local v0, capacity:I
    invoke-virtual {v2}, Landroid/os/Parcel;->dataCapacity()I

    move-result v4

    if-ge v4, v0, :cond_22

    .line 1232
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 1235
    :cond_22
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1237
    .local v3, t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 1239
    .end local v3           #t:Ljava/lang/Integer;
    :cond_41
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1241
    .restart local v3       #t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4c

    .line 1243
    .end local v3           #t:Ljava/lang/Integer;
    :cond_60
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v4

    return v4
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1705
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1706
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1676
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1677
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1888
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1889
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1970
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1971
    return-void
.end method

.method public setOnPlayReadyErrorListener(Landroid/media/MediaPlayer$OnPlayReadyErrorListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1876
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    .line 1877
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1649
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1650
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1732
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1733
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1761
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1762
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .registers 3
    .parameter "screenOn"

    .prologue
    .line 1084
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_9

    .line 1085
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1086
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1088
    :cond_9
    return-void
.end method

.method public setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I
    .registers 4
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 796
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    return v0
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1056
    const/4 v1, 0x0

    .line 1057
    .local v1, washeld:Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_16

    .line 1058
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1059
    const/4 v1, 0x1

    .line 1060
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1062
    :cond_13
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1065
    :cond_16
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1066
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-class v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1067
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1068
    if-eqz v1, :cond_3b

    .line 1069
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1071
    :cond_3b
    return-void
.end method

.method public start()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1006
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1007
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    .line 1008
    return-void
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1019
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1020
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    .line 1021
    return-void
.end method

.method public suspend()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1291
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_suspend_resume(Z)I

    move-result v0

    if-gez v0, :cond_a

    move v0, v1

    .line 1300
    :goto_9
    return v0

    .line 1295
    :cond_a
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1298
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    move v0, v2

    .line 1300
    goto :goto_9
.end method

.method public ulpBypass(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1990
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->ulpBypass(Z)V

    return-void

    :cond_7
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public native ulpBypass(Z)V
.end method

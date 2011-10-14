.class public Lcom/android/mms/ui/SlideshowPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "SlideshowPresenter.java"


# instance fields
.field private mFullScreenText:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mHasAttachment:Z

.field private mHasAudio:Z

.field private mHasText:Z

.field protected mHeightTransformRatio:F

.field protected mIsPreview:Z

.field protected mLocation:I

.field private mMovie:Landroid/graphics/Movie;

.field protected final mSlideNumber:I

.field private mTopText:Z

.field private final mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field protected mWidthTransformRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/android/mms/ui/SlideshowPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowPresenter$1;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 100
    instance-of v0, p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_0

    .line 101
    check-cast p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .end local p2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    invoke-interface {p2, v0}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V

    .line 103
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getTransformRatio(II)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowPresenter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurrentSlideIndex(I)I

    move-result v0

    return v0
.end method

.method private doAudioAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V
    .locals 2
    .parameter "view"
    .parameter "audio"

    .prologue
    .line 280
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 282
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_1

    .line 283
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startAudio()V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 285
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseAudio()V

    goto :goto_0

    .line 286
    :cond_2
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 287
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopAudio()V

    goto :goto_0

    .line 288
    :cond_3
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSeekTo()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->seekAudio(I)V

    goto :goto_0
.end method

.method private doImageAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .locals 2
    .parameter "view"
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 445
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_1

    .line 446
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startMovie()V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 448
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseMovie()V

    goto :goto_0

    .line 449
    :cond_2
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_0

    .line 450
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->stopMovie(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private doVideoAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V
    .locals 4
    .parameter "view"
    .parameter "video"

    .prologue
    .line 509
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 511
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v2, :cond_1

    .line 512
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startVideo()V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v2, :cond_2

    .line 514
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseVideo()V

    goto :goto_0

    .line 515
    :cond_2
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v2, :cond_4

    .line 518
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 519
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 520
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020109

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 523
    :cond_3
    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->stopVideo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 524
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v2, :cond_0

    .line 525
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSeekTo()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/mms/ui/SlideViewInterface;->seekVideo(I)V

    goto :goto_0
.end method

.method private getCurrentSlideIndex(I)I
    .locals 2
    .parameter "currentSlideTime"

    .prologue
    .line 635
    const/4 v0, 0x0

    .line 637
    .local v0, index:I
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_1

    .line 638
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    if-ge v0, v1, :cond_1

    .line 639
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v1

    sub-int/2addr p1, v1

    .line 640
    const/16 v1, -0x384

    if-ge p1, v1, :cond_0

    .line 641
    add-int/lit8 v1, v0, 0x1

    .line 644
    :goto_1
    return v1

    .line 638
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    goto :goto_1
.end method

.method private getTransformRatio(II)F
    .locals 2
    .parameter "viewsize"
    .parameter "layoutsize"

    .prologue
    .line 139
    if-lez p1, :cond_0

    .line 140
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 142
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private hasTopText()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 246
    iget-object p0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    .end local p0
    check-cast p0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAGIF(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .locals 12
    .parameter "view"
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    const-string v11, "IOException caught while closing stream"

    const-string v10, "Mms/SlideshowPresenter"

    .line 396
    const/4 v3, 0x0

    .line 397
    .local v3, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 399
    .local v4, is2:Ljava/io/ByteArrayInputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 400
    if-eqz v3, :cond_0

    .line 401
    const/4 v6, 0x0

    .line 402
    .local v6, streamSize:I
    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 404
    .local v1, canMark:Z
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v6

    .line 408
    :goto_0
    if-eqz v1, :cond_2

    .line 409
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->mark(I)V

    .line 417
    :goto_1
    invoke-static {v3}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    .line 419
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v7}, Landroid/graphics/Movie;->duration()I

    move-result v7

    if-lez v7, :cond_3

    .line 420
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v7, v8, v9}, Lcom/android/mms/ui/SlideViewInterface;->setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 431
    .end local v1           #canMark:Z
    .end local v6           #streamSize:I
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 433
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 440
    :cond_1
    :goto_3
    return-void

    .line 411
    .restart local v1       #canMark:Z
    .restart local v6       #streamSize:I
    :cond_2
    :try_start_4
    invoke-virtual {p0, v3, v6}, Lcom/android/mms/ui/SlideshowPresenter;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 412
    .local v0, array:[B
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 413
    .end local v4           #is2:Ljava/io/ByteArrayInputStream;
    .local v5, is2:Ljava/io/ByteArrayInputStream;
    move-object v3, v5

    .line 414
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    .line 415
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/io/InputStream;->mark(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v4, v5

    .end local v5           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is2:Ljava/io/ByteArrayInputStream;
    goto :goto_1

    .line 423
    .end local v0           #array:[B
    :cond_3
    :try_start_6
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v7, v8, v9}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 426
    .end local v1           #canMark:Z
    .end local v6           #streamSize:I
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 428
    .local v2, e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v7, "Mms/SlideshowPresenter"

    const-string v8, "IOException caught while opening or reading stream in presentImage"

    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 431
    if-eqz v3, :cond_1

    .line 433
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 434
    :catch_1
    move-exception v2

    .line 436
    const-string v7, "Mms/SlideshowPresenter"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 434
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 436
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "Mms/SlideshowPresenter"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 431
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_4

    .line 433
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 437
    :cond_4
    :goto_6
    throw v7

    .line 434
    :catch_3
    move-exception v2

    .line 436
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "Mms/SlideshowPresenter"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v10, v11, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 405
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #canMark:Z
    .restart local v6       #streamSize:I
    :catch_4
    move-exception v7

    goto :goto_0

    .line 431
    .end local v4           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v0       #array:[B
    .restart local v5       #is2:Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is2:Ljava/io/ByteArrayInputStream;
    goto :goto_5

    .line 426
    .end local v4           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v5       #is2:Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v7

    move-object v2, v7

    move-object v4, v5

    .end local v5           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is2:Ljava/io/ByteArrayInputStream;
    goto :goto_4
.end method

.method private presentModel(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 6
    .parameter "view"
    .parameter "model"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 225
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 226
    .local v1, media:Lcom/android/mms/model/MediaModel;
    instance-of v2, v1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v2, :cond_4

    .line 229
    iget-object v2, p2, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, v2, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 230
    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    iget v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_3

    .line 231
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mIsPreview:Z

    if-nez v2, :cond_2

    .line 232
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    .line 238
    :cond_1
    :goto_1
    check-cast v1, Lcom/android/mms/model/RegionMediaModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/mms/ui/SlideshowPresenter;->presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V

    goto :goto_0

    .line 234
    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    goto :goto_1

    .line 236
    :cond_3
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    goto :goto_1

    .line 239
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    check-cast v1, Lcom/android/mms/model/AudioModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V

    goto :goto_0

    .line 243
    :cond_5
    return-void
.end method

.method private transformHeight(I)I
    .locals 2
    .parameter "height"

    .prologue
    .line 171
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private transformMediaSize(I)I
    .locals 2
    .parameter "size"

    .prologue
    .line 149
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getCurSlideIndex()I
    .locals 1

    .prologue
    .line 649
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTotSlideNumber()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    return v0
.end method

.method public goBackward()V
    .locals 2

    .prologue
    .line 543
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-lez v0, :cond_0

    .line 544
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 546
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 3

    .prologue
    .line 550
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 551
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 553
    :cond_0
    return-void
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 4
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    .line 559
    .local v1, view:Lcom/android/mms/ui/SlideViewInterface;
    instance-of v2, p1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    instance-of v2, p1, Lcom/android/mms/model/SlideModel;

    if-eqz v2, :cond_3

    .line 562
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/SlideModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 563
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/mms/ui/SlideshowPresenter$2;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 569
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideshowPresenter$3;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 588
    :cond_3
    instance-of v2, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v2, :cond_5

    .line 589
    instance-of v2, p1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v2, :cond_4

    .line 590
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$4;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$4;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 608
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/MediaModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$5;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$5;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 628
    :cond_5
    instance-of v2, p1, Lcom/android/mms/model/RegionModel;

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public present()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 177
    return-void
.end method

.method public present(Z)V
    .locals 0
    .parameter "firstSlide"

    .prologue
    .line 182
    return-void
.end method

.method protected presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    .locals 3
    .parameter "view"
    .parameter "audio"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    if-eqz p3, :cond_0

    .line 273
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 276
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->doAudioAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V

    .line 277
    return-void
.end method

.method protected presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 7
    .parameter "view"
    .parameter "image"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "image/gif"

    .line 346
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v2

    .line 351
    .local v2, imageViewTop:I
    iget-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasText:Z

    if-nez v3, :cond_0

    .line 352
    const/4 v2, 0x0

    .line 354
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, contentType:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 358
    :cond_1
    if-eqz p4, :cond_2

    .line 361
    const-string v3, "image/gif"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->loadAGIF(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 368
    :cond_2
    :goto_0
    const-string v3, "image/gif"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->duration()I

    move-result v3

    if-lez v3, :cond_5

    .line 369
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->doImageAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 371
    instance-of v3, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v3, :cond_3

    .line 372
    check-cast p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .end local p1
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v5

    invoke-interface {p1, v3, v2, v4, v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setMovieRegion(IIII)V

    .line 393
    :cond_3
    :goto_1
    return-void

    .line 364
    .restart local p1
    :cond_4
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v3, v4, v5}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 385
    :cond_5
    instance-of v3, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v3, :cond_6

    .line 386
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move-object v3, v0

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v5

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v6

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setImageRegion(IIII)V

    .line 390
    :cond_6
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/mms/ui/SlideViewInterface;->setImageRegionFit(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    .locals 2
    .parameter "view"
    .parameter "rMedia"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 260
    .local v0, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    check-cast p2, Lcom/android/mms/model/TextModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 262
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0

    .line 264
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0
.end method

.method protected presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 8
    .parameter "view"
    .parameter "model"

    .prologue
    const v7, 0x7f090021

    const/4 v6, 0x0

    const-string v5, "Mms/SlideshowPresenter"

    .line 189
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 191
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 192
    :cond_0
    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mFullScreenText:Z

    .line 197
    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasText:Z

    .line 198
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAudio:Z

    .line 200
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowPresenter;->hasTopText()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    .line 203
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->presentModel(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    :goto_1
    iget v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 218
    .local v3, totalSlide:I
    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v2

    .line 219
    .local v2, player:Lcom/android/mms/dom/smil/SmilPlayer;
    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->getCurrentSlideIndex(I)I

    move-result v0

    .line 220
    .local v0, currentSlide:I
    invoke-interface {p1, v0, v3}, Lcom/android/mms/ui/SlideViewInterface;->setPageNumber(II)V

    .line 222
    return-void

    .line 194
    .end local v0           #currentSlide:I
    .end local v2           #player:Lcom/android/mms/dom/smil/SmilPlayer;
    .end local v3           #totalSlide:I
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mFullScreenText:Z

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Landroid/drm/mobile2/OMADRMException;
    const-string v4, "Mms/SlideshowPresenter"

    invoke-virtual {v1}, Landroid/drm/mobile2/OMADRMException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 208
    .end local v1           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_1
    move-exception v1

    .line 210
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Mms/SlideshowPresenter"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 8
    .parameter "view"
    .parameter "text"
    .parameter "r"
    .parameter "dataChanged"

    .prologue
    .line 298
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mFullScreenText:Z

    if-eqz v1, :cond_4

    .line 299
    const/4 v3, 0x0

    .line 300
    .local v3, textViewTop:I
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->getHeight()I

    move-result v5

    .line 317
    .local v5, textViewHeight:I
    :goto_0
    if-eqz p4, :cond_1

    .line 319
    const/4 v7, 0x0

    .line 320
    .local v7, showAttachment:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    if-eqz v1, :cond_0

    .line 321
    const/4 v7, 0x1

    .line 323
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v1, v2, v7, v4}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 326
    .end local v7           #showAttachment:Z
    :cond_1
    instance-of v1, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v1, :cond_2

    .line 327
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move-object v1, v0

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v4

    iget-boolean v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAudio:Z

    invoke-interface/range {v1 .. v6}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setTextRegion(IIIIZ)V

    .line 332
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    if-eqz v1, :cond_3

    .line 333
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/mms/model/TextModel;->setVisible(Z)V

    .line 336
    :cond_3
    return-void

    .line 306
    .end local v3           #textViewTop:I
    .end local v5           #textViewHeight:I
    :cond_4
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v3

    .line 307
    .restart local v3       #textViewTop:I
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v5

    .restart local v5       #textViewHeight:I
    goto :goto_0
.end method

.method protected presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 6
    .parameter "view"
    .parameter "video"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v1

    .line 479
    .local v1, videoViewTop:I
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasText:Z

    if-nez v2, :cond_0

    .line 480
    const/4 v1, 0x0

    .line 483
    :cond_0
    if-eqz p4, :cond_1

    .line 484
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v2, v3, v4}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 490
    :cond_1
    instance-of v2, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v2, :cond_2

    .line 491
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move-object v2, v0

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v5

    invoke-interface {v2, v3, v1, v4, v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setVideoRegion(IIII)V

    .line 505
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->doVideoAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V

    .line 506
    return-void
.end method

.method public resetLocation()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 540
    return-void
.end method

.method protected setPreviewState(Z)V
    .locals 0
    .parameter "isPreview"

    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mIsPreview:Z

    .line 667
    return-void
.end method

.method public streamToBytes(Ljava/io/InputStream;I)[B
    .locals 3
    .parameter "is"
    .parameter "streamSize"

    .prologue
    .line 456
    new-array v0, p2, [B

    .line 458
    .local v0, buffer:[B
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v2, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    return-object v0

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

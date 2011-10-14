.class Landroid/webkit/HTML5VideoViewProxy;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;,
        Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
    }
.end annotation


# static fields
.field private static final COOKIE:Ljava/lang/String; = "Cookie"

.field private static final ENDED:I = 0xc9

.field private static final ERROR:I = 0x67

.field private static final LOAD_DEFAULT_POSTER:I = 0x68

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoViewProxy"

.field private static final PAUSE:I = 0x66

.field private static final PAUSED:I = 0xcb

.field private static final PLAY:I = 0x64

.field private static final POSTER_FETCHED:I = 0xca

.field private static final PREPARED:I = 0xc8

.field private static final RESTART:I = 0x69

.field private static final SEEK:I = 0x65

.field private static final TIMEUPDATE:I = 0x12c


# instance fields
.field mNativePointer:I

.field private mPoster:Landroid/graphics/Bitmap;

.field private mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

.field private mSeekPosition:I

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;I)V
    .registers 4
    .parameter "webView"
    .parameter "nativePtr"

    .prologue
    .line 518
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 520
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    .line 522
    iput p2, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 524
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->createWebCoreHandler()V

    .line 525
    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/HTML5VideoViewProxy;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/HTML5VideoViewProxy;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/HTML5VideoViewProxy;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/HTML5VideoViewProxy;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private createWebCoreHandler()V
    .registers 2

    .prologue
    .line 528
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoViewProxy$1;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    .line 557
    return-void
.end method

.method private doSetPoster(Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "poster"

    .prologue
    .line 560
    if-nez p1, :cond_3

    .line 568
    :goto_2
    return-void

    .line 564
    :cond_3
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPoster:Landroid/graphics/Bitmap;

    .line 565
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 566
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 567
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method public static getInstance(Landroid/webkit/WebViewCore;I)Landroid/webkit/HTML5VideoViewProxy;
    .registers 4
    .parameter "webViewCore"
    .parameter "nativePtr"

    .prologue
    .line 650
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/webkit/HTML5VideoViewProxy;-><init>(Landroid/webkit/WebView;I)V

    return-object v0
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private sendTimeupdate()V
    .registers 4

    .prologue
    .line 571
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 572
    .local v0, msg:Landroid/os/Message;
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 573
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 574
    return-void
.end method


# virtual methods
.method public dispatchOnEnded()V
    .registers 4

    .prologue
    .line 305
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 306
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    return-void
.end method

.method public dispatchOnPaused()V
    .registers 4

    .prologue
    .line 310
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 311
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 322
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_72

    .line 380
    :cond_6
    :goto_6
    return-void

    .line 324
    :sswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 325
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 326
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_6

    .line 327
    iget v3, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v2, v3, p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;)V

    goto :goto_6

    .line 332
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    .end local v2           #url:Ljava/lang/String;
    :sswitch_19
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 333
    .local v1, time:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    .line 334
    iget v3, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v3, p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->seek(ILandroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_6

    .line 339
    .end local v1           #time:Ljava/lang/Integer;
    :sswitch_29
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 340
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_6

    .line 341
    const/4 v3, 0x0

    iget v4, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v3, v4, p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebChromeClient;)V

    goto :goto_6

    .line 347
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :sswitch_38
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pause(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_6

    .line 351
    :sswitch_3c
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_42

    .line 352
    sput-boolean v4, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 354
    :cond_42
    :sswitch_42
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 355
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_6

    .line 356
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_6

    .line 361
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :sswitch_4e
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 362
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_6

    .line 363
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 368
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :sswitch_5e
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 369
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->sendTimeupdate()V

    goto :goto_6

    .line 373
    :cond_68
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 374
    .restart local v0       #client:Landroid/webkit/WebChromeClient;
    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->showWaitingStateIfVideoViewPreparing(Landroid/webkit/WebChromeClient;Landroid/webkit/HTML5VideoViewProxy;)V
    invoke-static {v0, p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$500(Landroid/webkit/WebChromeClient;Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_6

    .line 322
    :sswitch_data_72
    .sparse-switch
        0x64 -> :sswitch_7
        0x65 -> :sswitch_19
        0x66 -> :sswitch_38
        0x67 -> :sswitch_42
        0x68 -> :sswitch_4e
        0x69 -> :sswitch_29
        0xc9 -> :sswitch_3c
        0x12c -> :sswitch_5e
    .end sparse-switch
.end method

.method public loadPoster(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 629
    if-nez p1, :cond_c

    .line 630
    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 631
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 641
    .end local v0           #message:Landroid/os/Message;
    :goto_b
    return-void

    .line 635
    :cond_c
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_15

    .line 636
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 639
    :cond_15
    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-direct {v1, p1, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;-><init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .line 640
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->start()V

    goto :goto_b
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "mp"

    .prologue
    .line 295
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 296
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 300
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 8
    .parameter "mp"

    .prologue
    .line 273
    invoke-static {}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onPrepared()V

    .line 274
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v4, 0xc8

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 275
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "dur"

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v3, "width"

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v3, "height"

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 280
    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    invoke-static {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPlaying(Landroid/webkit/HTML5VideoViewProxy;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 283
    const/16 v3, 0x69

    invoke-virtual {p0, v3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 284
    .local v1, message:Landroid/os/Message;
    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 287
    .end local v1           #message:Landroid/os/Message;
    :cond_51
    return-void
.end method

.method public onTimeupdate()V
    .registers 2

    .prologue
    .line 315
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 316
    return-void
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 608
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 609
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 610
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 586
    if-nez p1, :cond_3

    .line 592
    :goto_2
    return-void

    .line 589
    :cond_3
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 590
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 591
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method public seek(I)V
    .registers 4
    .parameter "time"

    .prologue
    .line 599
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 600
    .local v0, message:Landroid/os/Message;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 601
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 602
    return-void
.end method

.method public teardown()V
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v0, :cond_9

    .line 619
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 621
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 622
    return-void
.end method

.class Landroid/webkit/FrameLoader;
.super Ljava/lang/Object;
.source "FrameLoader.java"


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field static final HEADER_STR:Ljava/lang/String; = "text/xml, text/html, application/xhtml+xml, image/png, text/plain, */*;q=0.8"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final URI_PROTOCOL:I = 0x100

.field static final UaProf:Ljava/lang/String; = "http://wap.samsungmobile.com/uaprof/"

.field static final UaProf0:Ljava/lang/String; = null

.field private static isPageCached:Z = false

.field private static final mAboutBlank:Ljava/lang/String; = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"


# instance fields
.field private mCacheMode:I

.field private mContentType:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Landroid/webkit/LoadListener;

.field private final mMethod:Ljava/lang/String;

.field private mNetwork:Landroid/webkit/Network;

.field private mPostData:[B

.field private mReferrer:Ljava/lang/String;

.field private final mSettings:Landroid/webkit/WebSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://device.sprintpcs.com/Samsung/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/FrameLoader;->UaProf0:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;Ljava/lang/String;)V
    .registers 5
    .parameter "listener"
    .parameter "settings"
    .parameter "method"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 76
    iput-object p3, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    .line 78
    iput-object p2, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    .line 79
    return-void
.end method

.method private handleCache()Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 323
    iget v2, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    packed-switch v2, :pswitch_data_82

    .line 377
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3}, Landroid/webkit/LoadListener;->checkCache(Ljava/util/Map;)Z

    move-result v2

    .line 380
    :goto_f
    return v2

    .line 334
    :pswitch_10
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->postIdentifier()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v5}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 336
    .local v1, result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v1, :cond_27

    .line 337
    invoke-direct {p0, v1}, Landroid/webkit/FrameLoader;->startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V

    :goto_25
    move v2, v6

    .line 348
    goto :goto_f

    .line 343
    :cond_27
    const/16 v0, -0xe

    .line 344
    .local v0, err:I
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/net/http/EventHandler;->errorStringResources:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    goto :goto_25

    .line 356
    .end local v0           #err:I
    .end local v1           #result:Landroid/webkit/CacheManager$CacheResult;
    :pswitch_45
    sget-boolean v2, Landroid/webkit/DebugFlags;->FRAME_LOADER:Z

    if-eqz v2, :cond_68

    .line 357
    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FrameLoader: checking cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_68
    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->postIdentifier()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v5}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 364
    .restart local v1       #result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v1, :cond_7f

    .line 365
    invoke-direct {p0, v1}, Landroid/webkit/FrameLoader;->startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V

    move v2, v6

    .line 366
    goto :goto_f

    .line 380
    .end local v1           #result:Landroid/webkit/CacheManager$CacheResult;
    :cond_7f
    :pswitch_7f
    const/4 v2, 0x0

    goto :goto_f

    .line 323
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_45
        :pswitch_7f
        :pswitch_10
    .end packed-switch
.end method

.method static handleLocalFile(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;)Z
    .registers 12
    .parameter "url"
    .parameter "loadListener"
    .parameter "settings"

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x2

    const/16 v6, 0x65

    const/4 v5, 0x1

    const-string v8, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    .line 170
    :try_start_7
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/URLUtil;->decode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_14} :catch_2a

    .line 179
    .end local p0
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 180
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 181
    new-instance v2, Landroid/webkit/FileLoader;

    invoke-direct {v2, v1, p1, v5, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2}, Landroid/webkit/FileLoader;->load()V

    :goto_28
    move v2, v5

    .line 238
    .end local v1           #url:Ljava/lang/String;
    :goto_29
    return v2

    .line 171
    .restart local p0
    :catch_2a
    move-exception v2

    move-object v0, v2

    .line 172
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/16 v2, -0xc

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040007

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v2, v5

    .line 177
    goto :goto_29

    .line 185
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local p0
    .restart local v1       #url:Ljava/lang/String;
    :cond_3e
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    new-instance v3, Landroid/webkit/FileLoader;

    invoke-direct {v3, v1, p1, v5, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2, v6, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    .line 191
    :cond_4f
    invoke-static {v1}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 192
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 193
    new-instance v2, Landroid/webkit/FileLoader;

    invoke-direct {v2, v1, p1, v4, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2}, Landroid/webkit/FileLoader;->load()V

    :goto_63
    move v2, v5

    .line 202
    goto :goto_29

    .line 197
    :cond_65
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    new-instance v3, Landroid/webkit/FileLoader;

    invoke-direct {v3, v1, p1, v4, v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2, v6, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_63

    .line 203
    :cond_76
    invoke-static {v1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 204
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 205
    new-instance v2, Landroid/webkit/FileLoader;

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v3

    invoke-direct {v2, v1, p1, v7, v3}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2}, Landroid/webkit/FileLoader;->load()V

    :goto_8e
    move v2, v5

    .line 214
    goto :goto_29

    .line 209
    :cond_90
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    new-instance v3, Landroid/webkit/FileLoader;

    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v4

    invoke-direct {v3, v1, p1, v7, v4}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;IZ)V

    invoke-virtual {v2, v6, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8e

    .line 215
    :cond_a5
    invoke-virtual {p2}, Landroid/webkit/WebSettings;->getAllowContentAccess()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-static {v1}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 219
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 220
    new-instance v2, Landroid/webkit/ContentLoader;

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/webkit/ContentLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v2}, Landroid/webkit/ContentLoader;->load()V

    :goto_c3
    move v2, v5

    .line 228
    goto/16 :goto_29

    .line 223
    :cond_c6
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    new-instance v3, Landroid/webkit/ContentLoader;

    invoke-virtual {p1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/webkit/ContentLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v2, v6, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c3

    .line 229
    :cond_db
    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 231
    new-instance v2, Landroid/webkit/DataLoader;

    invoke-direct {v2, v1, p1}, Landroid/webkit/DataLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    invoke-virtual {v2}, Landroid/webkit/DataLoader;->load()V

    move v2, v5

    .line 232
    goto/16 :goto_29

    .line 233
    :cond_ec
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 234
    const-string v2, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EB\"><html><head><title>about:blank</title></head><body></body></html>"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/webkit/LoadListener;->data([BI)V

    .line 235
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->endData()V

    move v2, v5

    .line 236
    goto/16 :goto_29

    .line 238
    :cond_107
    const/4 v2, 0x0

    goto/16 :goto_29
.end method

.method private populateHeaders()V
    .registers 8

    .prologue
    .line 456
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    if-eqz v4, :cond_d

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "Referer"

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_d
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "content-type"

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_1a
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v4}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 465
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    monitor-enter v4

    .line 466
    :try_start_25
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v5}, Landroid/webkit/Network;->getProxyUsername()Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, username:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v5}, Landroid/webkit/Network;->getProxyPassword()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, password:Ljava/lang/String;
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_75

    .line 469
    if-eqz v3, :cond_57

    if-eqz v1, :cond_57

    .line 471
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, proxyHeader:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Basic "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v1}, Landroid/net/http/RequestHandle;->computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .end local v1           #password:Ljava/lang/String;
    .end local v2           #proxyHeader:Ljava/lang/String;
    .end local v3           #username:Ljava/lang/String;
    :cond_57
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v5}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, cookie:Ljava/lang/String;
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_74

    .line 482
    iget-object v4, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v5, "Cookie"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_74
    return-void

    .line 468
    .end local v0           #cookie:Ljava/lang/String;
    :catchall_75
    move-exception v5

    :try_start_76
    monitor-exit v4
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v5
.end method

.method private populateStaticHeaders()V
    .registers 11

    .prologue
    const-string v9, "REL"

    const-string v8, "Accept"

    .line 389
    iget-object v6, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v7, "Accept"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 390
    .local v1, accept:Ljava/lang/String;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_20

    .line 391
    :cond_16
    iget-object v6, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v7, "Accept"

    const-string/jumbo v7, "text/xml, text/html, application/xhtml+xml, image/png, text/plain, */*;q=0.8"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_20
    iget-object v6, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v7, "Accept-Charset"

    const-string/jumbo v8, "utf-8, iso-8859-1, utf-16, *;q=0.7"

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v6, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, acceptLanguage:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3d

    .line 397
    iget-object v6, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v7, "Accept-Language"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_3d
    iget-object v6, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string v7, "User-Agent"

    iget-object v8, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v8}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 404
    .local v3, buffer:Ljava/lang/StringBuffer;
    const-string v6, "http://wap.samsungmobile.com/uaprof/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    const-string v6, "REL"

    sget-object v6, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 406
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 407
    .local v4, model:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6e

    .line 408
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    const-string v6, ".xml"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    .end local v4           #model:Ljava/lang/String;
    :cond_6e
    iget-object v6, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string/jumbo v7, "x-wap-profile"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 418
    .local v0, ATTDeviceID:Ljava/lang/StringBuffer;
    const-string v6, "REL"

    sget-object v6, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 420
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 421
    .restart local v4       #model:Ljava/lang/String;
    const-string/jumbo v6, "ro.build.PDA"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 423
    .local v5, pdaversion:Ljava/lang/String;
    if-eqz v4, :cond_ad

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_ad

    .line 425
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    if-eqz v5, :cond_ad

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_ad

    .line 429
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    :cond_ad
    iget-object v6, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    const-string/jumbo v7, "x-att-deviceid"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .end local v4           #model:Ljava/lang/String;
    .end local v5           #pdaversion:Ljava/lang/String;
    :cond_b9
    return-void
.end method

.method private startCacheLoad(Landroid/webkit/CacheManager$CacheResult;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 300
    sget-boolean v1, Landroid/webkit/DebugFlags;->FRAME_LOADER:Z

    if-eqz v1, :cond_23

    .line 301
    const-string/jumbo v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrameLoader: loading from cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_23
    new-instance v0, Landroid/webkit/CacheLoader;

    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-direct {v0, v1, p1}, Landroid/webkit/CacheLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V

    .line 307
    .local v0, cacheLoader:Landroid/webkit/CacheLoader;
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1, v0}, Landroid/webkit/LoadListener;->setCacheLoader(Landroid/webkit/CacheLoader;)V

    .line 308
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 309
    invoke-virtual {v0}, Landroid/webkit/CacheLoader;->load()V

    .line 315
    :goto_3a
    return-void

    .line 312
    :cond_3b
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3a
.end method


# virtual methods
.method public executeLoad()Z
    .registers 8

    .prologue
    const v6, 0x1040007

    const/4 v4, 0x1

    const/16 v3, -0xc

    const/4 v5, 0x0

    .line 126
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 129
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 130
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v5

    .line 160
    :goto_2b
    return v1

    .line 137
    :cond_2c
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->verifyURLEncoding(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 138
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v5

    .line 141
    goto :goto_2b

    .line 143
    :cond_49
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    .line 144
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v1}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 145
    invoke-virtual {p0}, Landroid/webkit/FrameLoader;->handleHTTPLoad()Z

    move-result v1

    goto :goto_2b

    .line 147
    :cond_62
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move v1, v4

    .line 149
    goto :goto_2b

    .line 150
    :cond_71
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v2, p0, Landroid/webkit/FrameLoader;->mSettings:Landroid/webkit/WebSettings;

    invoke-static {v0, v1, v2}, Landroid/webkit/FrameLoader;->handleLocalFile(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;)Z

    move-result v1

    if-eqz v1, :cond_7d

    move v1, v4

    .line 151
    goto :goto_2b

    .line 153
    :cond_7d
    sget-boolean v1, Landroid/webkit/DebugFlags;->FRAME_LOADER:Z

    if-eqz v1, :cond_a0

    .line 154
    const-string/jumbo v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrameLoader.executeLoad: url protocol not supported:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_a0
    iget-object v1, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    const/16 v2, -0xa

    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040008

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v5

    .line 160
    goto/16 :goto_2b
.end method

.method public getLoadListener()Landroid/webkit/LoadListener;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    return-object v0
.end method

.method protected getPageCached()Z
    .registers 2

    .prologue
    .line 113
    sget-boolean v0, Landroid/webkit/FrameLoader;->isPageCached:Z

    return v0
.end method

.method handleHTTPLoad()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 242
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    if-nez v3, :cond_c

    .line 243
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 245
    :cond_c
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->populateStaticHeaders()V

    .line 246
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->populateHeaders()V

    .line 249
    invoke-direct {p0}, Landroid/webkit/FrameLoader;->handleCache()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 259
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    invoke-virtual {v3, v4, v5, v6}, Landroid/webkit/LoadListener;->setRequestData(Ljava/lang/String;Ljava/util/Map;[B)V

    move v3, v8

    .line 292
    :goto_24
    return v3

    .line 269
    :cond_25
    sget-boolean v3, Landroid/webkit/DebugFlags;->FRAME_LOADER:Z

    if-eqz v3, :cond_54

    .line 270
    const-string/jumbo v3, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FrameLoader: http "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " load for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v5}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_54
    const/4 v2, 0x0

    .line 275
    .local v2, ret:Z
    const/16 v0, -0xa

    .line 278
    .local v0, error:I
    :try_start_57
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mNetwork:Landroid/webkit/Network;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mMethod:Ljava/lang/String;

    iget-object v5, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    iget-object v6, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    iget-object v7, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/Network;->requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z
    :try_end_64
    .catch Landroid/net/ParseException; {:try_start_57 .. :try_end_64} :catch_84
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_64} :catch_89

    move-result v2

    .line 287
    :goto_65
    if-nez v2, :cond_8e

    .line 288
    iget-object v3, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    iget-object v4, p0, Landroid/webkit/FrameLoader;->mListener:Landroid/webkit/LoadListener;

    invoke-virtual {v4}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/net/http/EventHandler;->errorStringResources:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 290
    const/4 v3, 0x0

    goto :goto_24

    .line 280
    :catch_84
    move-exception v3

    move-object v1, v3

    .line 281
    .local v1, ex:Landroid/net/ParseException;
    const/16 v0, -0xc

    .line 286
    goto :goto_65

    .line 282
    .end local v1           #ex:Landroid/net/ParseException;
    :catch_89
    move-exception v3

    move-object v1, v3

    .line 285
    .local v1, ex:Ljava/lang/RuntimeException;
    const/16 v0, -0xc

    goto :goto_65

    .end local v1           #ex:Ljava/lang/RuntimeException;
    :cond_8e
    move v3, v8

    .line 292
    goto :goto_24
.end method

.method public setCacheMode(I)V
    .registers 2
    .parameter "cacheMode"

    .prologue
    .line 95
    iput p1, p0, Landroid/webkit/FrameLoader;->mCacheMode:I

    .line 96
    return-void
.end method

.method public setContentTypeForPost(Ljava/lang/String;)V
    .registers 2
    .parameter "postContentType"

    .prologue
    .line 91
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mContentType:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setHeaders(Ljava/util/HashMap;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 99
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mHeaders:Ljava/util/Map;

    .line 100
    return-void
.end method

.method public setPostData([B)V
    .registers 2
    .parameter "postData"

    .prologue
    .line 87
    iput-object p1, p0, Landroid/webkit/FrameLoader;->mPostData:[B

    .line 88
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .registers 3
    .parameter "ref"

    .prologue
    .line 83
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object p1, p0, Landroid/webkit/FrameLoader;->mReferrer:Ljava/lang/String;

    .line 84
    :cond_8
    return-void
.end method

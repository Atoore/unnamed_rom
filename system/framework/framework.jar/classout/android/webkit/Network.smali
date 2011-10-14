.class Landroid/webkit/Network;
.super Ljava/lang/Object;
.source "Network.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "network"

.field private static sNetwork:Landroid/webkit/Network;

.field private static sPlatformNotificationEnableRefCount:I

.field private static sPlatformNotifications:Z


# instance fields
.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

.field private mProxyPassword:Ljava/lang/String;

.field private mProxyUsername:Ljava/lang/String;

.field private mRequestQueue:Landroid/net/http/RequestQueue;

.field private mSslErrorHandler:Landroid/webkit/SslErrorHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_18

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewCoreThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 142
    :cond_18
    new-instance v0, Landroid/webkit/SslErrorHandler;

    invoke-direct {v0}, Landroid/webkit/SslErrorHandler;-><init>()V

    iput-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 143
    new-instance v0, Landroid/webkit/HttpAuthHandler;

    invoke-direct {v0, p0}, Landroid/webkit/HttpAuthHandler;-><init>(Landroid/webkit/Network;)V

    iput-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    .line 145
    new-instance v0, Landroid/net/http/RequestQueue;

    invoke-direct {v0, p1}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 146
    return-void
.end method

.method public static disablePlatformNotifications()V
    .registers 2

    .prologue
    .line 124
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-nez v0, :cond_13

    .line 125
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_14

    .line 126
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->disablePlatformNotifications()V

    .line 131
    :cond_13
    :goto_13
    return-void

    .line 128
    :cond_14
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_13
.end method

.method public static enablePlatformNotifications()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 110
    sget v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    if-ne v0, v1, :cond_14

    .line 111
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-eqz v0, :cond_15

    .line 112
    sget-object v0, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    iget-object v0, v0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->enablePlatformNotifications()V

    .line 117
    :cond_14
    :goto_14
    return-void

    .line 114
    :cond_15
    sput-boolean v1, Landroid/webkit/Network;->sPlatformNotifications:Z

    goto :goto_14
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/Network;
    .registers 4
    .parameter "context"

    .prologue
    .line 86
    const-class v0, Landroid/webkit/Network;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    if-nez v1, :cond_1f

    .line 93
    new-instance v1, Landroid/webkit/Network;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/Network;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;

    .line 94
    sget-boolean v1, Landroid/webkit/Network;->sPlatformNotifications:Z

    if-eqz v1, :cond_1f

    .line 98
    sget v1, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Landroid/webkit/Network;->sPlatformNotificationEnableRefCount:I

    .line 99
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 102
    :cond_1f
    sget-object v1, Landroid/webkit/Network;->sNetwork:Landroid/webkit/Network;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    monitor-exit v0

    return-object v1

    .line 86
    :catchall_23
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z
    .registers 4
    .parameter "loader"
    .parameter "error"

    .prologue
    .line 324
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 325
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/SslErrorHandler;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v0

    .line 327
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public clearUserSslPrefTable()V
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->clear()V

    .line 308
    return-void
.end method

.method public getProxyHostname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProxyPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 259
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxyUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleAuthRequest(Landroid/webkit/LoadListener;)V
    .registers 3
    .parameter "loader"

    .prologue
    .line 337
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_7

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 338
    :cond_7
    if-eqz p1, :cond_e

    .line 339
    iget-object v0, p0, Landroid/webkit/Network;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/HttpAuthHandler;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    .line 341
    :cond_e
    return-void
.end method

.method public handleSslErrorRequest(Landroid/webkit/LoadListener;)V
    .registers 3
    .parameter "loader"

    .prologue
    .line 316
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_7

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 317
    :cond_7
    if-eqz p1, :cond_e

    .line 318
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandler;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    .line 320
    :cond_e
    return-void
.end method

.method public isValidProxySet()Z
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    monitor-enter v0

    .line 222
    :try_start_3
    iget-object v1, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v1}, Landroid/net/http/RequestQueue;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_c
    monitor-exit v0

    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_c

    .line 223
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z
    .registers 14
    .parameter "method"
    .parameter
    .parameter "postData"
    .parameter "loader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Landroid/webkit/LoadListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 162
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v3

    .line 212
    :goto_c
    return v2

    .line 171
    :cond_d
    invoke-static {v1}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {v1}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {v1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {v1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_25
    move v2, v3

    .line 173
    goto :goto_c

    .line 178
    :cond_27
    const/4 v6, 0x0

    .line 179
    .local v6, bodyProvider:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 180
    .local v7, bodyLength:I
    if-eqz p3, :cond_31

    .line 181
    array-length v7, p3

    .line 182
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .end local v6           #bodyProvider:Ljava/io/InputStream;
    invoke-direct {v6, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 185
    .restart local v6       #bodyProvider:Ljava/io/InputStream;
    :cond_31
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 186
    .local v0, q:Landroid/net/http/RequestQueue;
    const/4 v8, 0x0

    .line 187
    .local v8, handle:Landroid/net/http/RequestHandle;
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 188
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    .line 190
    invoke-virtual {p4, v8}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    .line 191
    invoke-virtual {v8}, Landroid/net/http/RequestHandle;->processRequest()V

    .line 192
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->loadSynchronousMessages()V

    .line 212
    :goto_4e
    const/4 v2, 0x1

    goto :goto_c

    .line 194
    :cond_50
    invoke-virtual {p4}, Landroid/webkit/LoadListener;->getWebAddress()Landroid/net/WebAddress;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v8

    .line 201
    invoke-virtual {p4, v8}, Landroid/webkit/LoadListener;->attachRequestHandle(Landroid/net/http/RequestHandle;)V

    goto :goto_4e
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .registers 4
    .parameter "inState"

    .prologue
    .line 296
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_c

    .line 297
    const-string/jumbo v0, "network"

    const-string v1, "Network.restoreState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_c
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandler;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Z
    .registers 4
    .parameter "outState"

    .prologue
    .line 282
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_c

    .line 283
    const-string/jumbo v0, "network"

    const-string v1, "Network.saveState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_c
    iget-object v0, p0, Landroid/webkit/Network;->mSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/SslErrorHandler;->saveState(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setProxyPassword(Ljava/lang/String;)V
    .registers 3
    .parameter "proxyPassword"

    .prologue
    .line 268
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_c

    .line 269
    invoke-virtual {p0}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 272
    :cond_c
    iput-object p1, p0, Landroid/webkit/Network;->mProxyPassword:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 273
    monitor-exit p0

    return-void

    .line 268
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyUsername(Ljava/lang/String;)V
    .registers 3
    .parameter "proxyUsername"

    .prologue
    .line 248
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    if-eqz v0, :cond_c

    .line 249
    invoke-virtual {p0}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 252
    :cond_c
    iput-object p1, p0, Landroid/webkit/Network;->mProxyUsername:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 253
    monitor-exit p0

    return-void

    .line 248
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTiming()V
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->startTiming()V

    .line 346
    return-void
.end method

.method public stopTiming()V
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Landroid/webkit/Network;->mRequestQueue:Landroid/net/http/RequestQueue;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue;->stopTiming()V

    .line 350
    return-void
.end method

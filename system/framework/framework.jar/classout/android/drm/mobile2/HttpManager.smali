.class public Landroid/drm/mobile2/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"

# interfaces
.implements Landroid/drm/mobile2/HttpConstants;


# static fields
.field private static final ACCEPT_ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final DEBUG:Z = false

.field private static final HDR_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HDR_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HDR_KEY_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final HDR_VALUE_ACCEPT:Ljava/lang/String; = "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String; = null

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "DrmLicenseHttpManger"

.field private static final TEMP:Ljava/lang/String; = "\u0000"

.field private static client:Landroid/net/http/AndroidHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    invoke-static {}, Landroid/drm/mobile2/HttpManager;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/drm/mobile2/HttpManager;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    sput-object v0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .registers 5
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 494
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 497
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 502
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .end local v0           #country:Ljava/lang/String;
    :cond_17
    return-void
.end method

.method public static closeHttpConnection()Z
    .registers 2

    .prologue
    .line 418
    sget-object v0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_b

    .line 419
    sget-object v0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 420
    const/4 v0, 0x1

    .line 423
    :goto_a
    return v0

    .line 422
    :cond_b
    const-string v0, "DrmLicenseHttpManger"

    const-string v1, "Android HTTP CLient is already NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static createHttpClient()Landroid/net/http/AndroidHttpClient;
    .registers 7

    .prologue
    .line 456
    invoke-static {}, Landroid/drm/mobile2/HttpConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, userAgent:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 458
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 459
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 464
    invoke-static {v1}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    .line 466
    .local v2, soTimeout:I
    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", UA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-object v0
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 479
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 480
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Landroid/drm/mobile2/HttpManager;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 483
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1f

    .line 485
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_1f
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Landroid/drm/mobile2/HttpManager;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 489
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;)V
    .registers 3
    .parameter "exception"

    .prologue
    .line 448
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 450
    const-string v0, "DrmLicenseHttpManger"

    const-string v1, "In function handlehttpconnection with error code = 24"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method protected static httpConnection(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)I
    .registers 36
    .parameter "context"
    .parameter "session"
    .parameter "url"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .parameter "body"
    .parameter "header"
    .parameter "headerlen"
    .parameter "bodylen"
    .parameter "handle"

    .prologue
    .line 97
    if-nez p2, :cond_a

    .line 98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "URL must not be null."

    .end local p1
    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    .restart local p0
    .restart local p1
    :cond_a
    const/16 v18, 0x0

    .line 101
    .local v18, multiPart:Z
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    .local v19, out:Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x0

    .line 104
    .local v16, inputstream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 105
    .local v5, is:Ljava/io/ByteArrayInputStream;
    const-string v4, "DrmLicenseHttpManger"

    const-string/jumbo v6, "testing the Httpconnetion"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/16 v20, 0x1

    .line 107
    .local v20, result:I
    const/16 v22, 0x0

    .line 109
    .local v22, strheader:Ljava/lang/StringBuilder;
    const-string v4, "DrmLicenseHttpManger"

    const-string v6, "httpConnection: params list"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v4, "DrmLicenseHttpManger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ttoken\t\t= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v4, "DrmLicenseHttpManger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\turl\t\t= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v4, "DrmLicenseHttpManger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tmethod\t\t= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    move/from16 v0, p3

    move v1, v7

    if-ne v0, v1, :cond_1cf

    const-string v7, "POST"

    :goto_72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v4, "DrmLicenseHttpManger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tisProxySet\t= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v4, "DrmLicenseHttpManger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tproxyHost\t= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v4, "DrmLicenseHttpManger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tproxyPort\t= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v4, "DrmLicenseHttpManger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\tbody\t= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v4, "DrmLicenseHttpManger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\theader\t= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v4, 0x2

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_1dd

    if-eqz p7, :cond_1dd

    .line 124
    const/4 v4, 0x0

    const/16 v6, 0x3e

    const-string v7, "</roap:"

    move-object/from16 v0, p7

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p7

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p7

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p7

    .line 125
    const-string v4, "DrmLicenseHttpManger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t junk removed body\t= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_145
    const/4 v7, 0x0

    .line 134
    .local v7, status:Lorg/apache/http/StatusLine;
    :try_start_146
    new-instance v4, Ljava/net/URI;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 135
    .local v4, hostUrl:Ljava/net/URI;
    new-instance v8, Lorg/apache/http/HttpHost;

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v4

    .end local v4           #hostUrl:Ljava/net/URI;
    const-string v9, "http"

    invoke-direct {v8, v6, v4, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    .local v8, target:Lorg/apache/http/HttpHost;
    invoke-static {}, Landroid/drm/mobile2/HttpManager;->createHttpClient()Landroid/net/http/AndroidHttpClient;

    move-result-object v4

    sput-object v4, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .line 140
    const/4 v4, 0x0

    .line 141
    .local v4, req:Lorg/apache/http/HttpRequest;
    const-string v4, "DrmLicenseHttpManger"

    .end local v4           #req:Lorg/apache/http/HttpRequest;
    const-string v6, "extracting the headers"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    packed-switch p3, :pswitch_data_cca

    .line 159
    const-string p0, "DrmLicenseHttpManger"

    .end local p0
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown HTTP method: "

    .end local p2
    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Must be one of POST["

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] or GET["

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x1

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]."

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a8
    .catchall {:try_start_146 .. :try_end_1a8} :catchall_929
    .catch Ljava/net/URISyntaxException; {:try_start_146 .. :try_end_1a8} :catch_c26
    .catch Ljava/lang/IllegalStateException; {:try_start_146 .. :try_end_1a8} :catch_7bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_146 .. :try_end_1a8} :catch_805
    .catch Ljava/net/SocketTimeoutException; {:try_start_146 .. :try_end_1a8} :catch_84e
    .catch Ljava/net/SocketException; {:try_start_146 .. :try_end_1a8} :catch_897
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_1a8} :catch_8e0

    .line 162
    const/16 p1, -0x1

    .line 398
    if-eqz v16, :cond_1ad

    .line 399
    :try_start_1ac
    throw v16

    .line 400
    :cond_1ad
    if-eqz v5, :cond_1b0

    .line 401
    throw v5

    .line 402
    :cond_1b0
    if-eqz v19, :cond_1b5

    .line 403
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b5
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1b5} :catch_387

    .line 407
    :cond_1b5
    :goto_1b5
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p0, :cond_1be

    .line 410
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1be
    move-object/from16 p5, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, v20

    .end local v20           #result:I
    .local p4, result:I
    move-object/from16 p0, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    move-object/from16 p3, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p2, v18

    .end local v18           #multiPart:Z
    .local p2, multiPart:Z
    move/from16 p7, p1

    move-object/from16 p1, v5

    .line 414
    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p7
    .end local p8
    .end local p9
    .end local p10
    .local p1, is:Ljava/io/ByteArrayInputStream;
    :goto_1ce
    return p7

    .line 112
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, url:Ljava/lang/String;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .restart local p7
    .restart local p8
    .restart local p9
    .restart local p10
    :cond_1cf
    const/4 v7, 0x1

    move/from16 v0, p3

    move v1, v7

    if-ne v0, v1, :cond_1d9

    const-string v7, "GET"

    goto/16 :goto_72

    :cond_1d9
    const-string v7, "UNKNOWN"

    goto/16 :goto_72

    .line 129
    :cond_1dd
    const-string v4, "DrmLicenseHttpManger"

    const-string v6, "body is null"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_145

    .line 144
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    :pswitch_1e6
    :try_start_1e6
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 145
    .local v6, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance p2, Lorg/apache/http/entity/BasicHttpEntity;

    .end local p2           #url:Ljava/lang/String;
    invoke-direct/range {p2 .. p2}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 146
    .local p2, entity:Lorg/apache/http/entity/BasicHttpEntity;
    if-eqz p7, :cond_cc7

    .line 147
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_202
    .catchall {:try_start_1e6 .. :try_end_202} :catchall_929
    .catch Ljava/net/URISyntaxException; {:try_start_1e6 .. :try_end_202} :catch_c26
    .catch Ljava/lang/IllegalStateException; {:try_start_1e6 .. :try_end_202} :catch_7bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e6 .. :try_end_202} :catch_805
    .catch Ljava/net/SocketTimeoutException; {:try_start_1e6 .. :try_end_202} :catch_84e
    .catch Ljava/net/SocketException; {:try_start_1e6 .. :try_end_202} :catch_897
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_202} :catch_8e0

    .line 148
    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .local v4, is:Ljava/io/ByteArrayInputStream;
    :try_start_202
    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 149
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    int-to-long v9, v5

    move-object/from16 v0, p2

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 151
    :goto_213
    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_219
    .catchall {:try_start_202 .. :try_end_219} :catchall_95c
    .catch Ljava/net/URISyntaxException; {:try_start_202 .. :try_end_219} :catch_c37
    .catch Ljava/lang/IllegalStateException; {:try_start_202 .. :try_end_219} :catch_bb5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_202 .. :try_end_219} :catch_b44
    .catch Ljava/net/SocketTimeoutException; {:try_start_202 .. :try_end_219} :catch_ad3
    .catch Ljava/net/SocketException; {:try_start_202 .. :try_end_219} :catch_a62
    .catch Ljava/lang/Exception; {:try_start_202 .. :try_end_219} :catch_9f1

    .line 152
    move-object/from16 p2, v6

    .local p2, req:Lorg/apache/http/HttpRequest;
    move-object/from16 v17, v4

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .local v17, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 v4, p2

    .line 166
    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local p2           #req:Lorg/apache/http/HttpRequest;
    .local v4, req:Lorg/apache/http/HttpRequest;
    :goto_21f
    :try_start_21f
    sget-object p2, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p2 .. p2}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    .line 167
    .local p2, params:Lorg/apache/http/params/HttpParams;
    if-eqz p4, :cond_260

    .line 168
    const-string v5, "DrmLicenseHttpManger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "proxy is set:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v5, Lorg/apache/http/HttpHost;

    move-object v0, v5

    move-object/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 172
    :cond_260
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 174
    const-string p2, "DrmLicenseHttpManger"

    .end local p2           #params:Lorg/apache/http/params/HttpParams;
    const-string v5, "GET Params"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string p2, "Accept-Language"

    sget-object v5, Landroid/drm/mobile2/HttpManager;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string p2, "Accept-Encoding"

    const-string v5, "gzip"

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/16 p2, 0x1

    move/from16 v0, p3

    move/from16 v1, p2

    if-ne v0, v1, :cond_395

    .line 191
    const-string p2, "Accept"

    const-string v5, "application/vnd.oma.drm.roap-trigger+xml"

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string p2, "Cookie"

    const-string/jumbo v5, "phone=919900809619"

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_2a5
    const-string p2, "DrmLicenseHttpManger"

    const-string v5, " Before Execute"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object p2, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p2

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 200
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
    :try_end_2bc
    .catchall {:try_start_21f .. :try_end_2bc} :catchall_96e
    .catch Ljava/net/URISyntaxException; {:try_start_21f .. :try_end_2bc} :catch_3a2
    .catch Ljava/lang/IllegalStateException; {:try_start_21f .. :try_end_2bc} :catch_bc6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21f .. :try_end_2bc} :catch_b55
    .catch Ljava/net/SocketTimeoutException; {:try_start_21f .. :try_end_2bc} :catch_ae4
    .catch Ljava/net/SocketException; {:try_start_21f .. :try_end_2bc} :catch_a73
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_2bc} :catch_a02

    move-result-object v21

    .line 202
    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local v21, status:Lorg/apache/http/StatusLine;
    :try_start_2bd
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 203
    .local v9, statusCode:I
    const-string p2, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "status is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/16 p2, 0xc8

    move v0, v9

    move/from16 v1, p2

    if-eq v0, v1, :cond_46b

    .line 205
    const/16 p2, 0x12d

    move v0, v9

    move/from16 v1, p2

    if-eq v0, v1, :cond_2f2

    const/16 p2, 0x12e

    move v0, v9

    move/from16 v1, p2

    if-ne v0, v1, :cond_3ee

    .line 206
    :cond_2f2
    const-string p2, "Location"

    .line 207
    .local p2, locationHeader:Ljava/lang/String;
    const/4 v6, 0x0

    .line 208
    .local v6, locationHeaderValue:Ljava/lang/String;
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result p2

    .end local p2           #locationHeader:Ljava/lang/String;
    if-eqz p2, :cond_30d

    .line 209
    const-string p2, "Location"

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p2

    .line 210
    .local p2, locHeader:Lorg/apache/http/Header;
    if-eqz p2, :cond_30d

    .line 211
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 214
    .end local p2           #locHeader:Lorg/apache/http/Header;
    :cond_30d
    const-string p2, "DrmLicenseHttpManger"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locHeader value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string p2, "DrmLicenseHttpManger"

    const-string v4, "We got 302 making another connection"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    .line 217
    invoke-static/range {v4 .. v15}, Landroid/drm/mobile2/HttpManager;->httpConnection(Landroid/content/Context;ILjava/lang/String;IZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)I
    :try_end_34b
    .catchall {:try_start_2bd .. :try_end_34b} :catchall_980
    .catch Ljava/net/URISyntaxException; {:try_start_2bd .. :try_end_34b} :catch_c48
    .catch Ljava/lang/IllegalStateException; {:try_start_2bd .. :try_end_34b} :catch_bd7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2bd .. :try_end_34b} :catch_b66
    .catch Ljava/net/SocketTimeoutException; {:try_start_2bd .. :try_end_34b} :catch_af5
    .catch Ljava/net/SocketException; {:try_start_2bd .. :try_end_34b} :catch_a84
    .catch Ljava/lang/Exception; {:try_start_2bd .. :try_end_34b} :catch_a13

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local v9           #statusCode:I
    move-result p1

    .line 398
    .end local v20           #result:I
    .local p1, result:I
    if-eqz v16, :cond_34f

    .line 399
    :try_start_34e
    throw v16

    .line 400
    :cond_34f
    if-eqz v17, :cond_354

    .line 401
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayInputStream;->close()V

    .line 402
    :cond_354
    if-eqz v19, :cond_359

    .line 403
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_359
    .catch Ljava/io/IOException; {:try_start_34e .. :try_end_359} :catch_3e0

    .line 407
    .end local p0           #context:Landroid/content/Context;
    :cond_359
    :goto_359
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p0, :cond_362

    .line 410
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_362
    move-object/from16 p5, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, p1

    .end local p1           #result:I
    .local p4, result:I
    move-object/from16 p0, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    move-object/from16 p3, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p2, v18

    .end local v18           #multiPart:Z
    .local p2, multiPart:Z
    move/from16 p7, p1

    move-object/from16 p1, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1ce

    .line 155
    .end local v6           #locationHeaderValue:Ljava/lang/String;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, url:Ljava/lang/String;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    :pswitch_374
    :try_start_374
    const-string v4, "DrmLicenseHttpManger"

    const-string v6, "GET MEthod"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_383
    .catchall {:try_start_374 .. :try_end_383} :catchall_929
    .catch Ljava/net/URISyntaxException; {:try_start_374 .. :try_end_383} :catch_c26
    .catch Ljava/lang/IllegalStateException; {:try_start_374 .. :try_end_383} :catch_7bc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_374 .. :try_end_383} :catch_805
    .catch Ljava/net/SocketTimeoutException; {:try_start_374 .. :try_end_383} :catch_84e
    .catch Ljava/net/SocketException; {:try_start_374 .. :try_end_383} :catch_897
    .catch Ljava/lang/Exception; {:try_start_374 .. :try_end_383} :catch_8e0

    .local v4, req:Lorg/apache/http/HttpRequest;
    move-object/from16 v17, v5

    .line 157
    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_21f

    .line 404
    .end local v4           #req:Lorg/apache/http/HttpRequest;
    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #session:I
    .end local p2           #url:Ljava/lang/String;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    :catch_387
    move-exception p0

    .line 405
    .local p0, ex:Ljava/io/IOException;
    const-string p0, "HttpManager"

    .end local p0           #ex:Ljava/io/IOException;
    const-string p2, "*************Exception caught"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b5

    .line 194
    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .restart local v4       #req:Lorg/apache/http/HttpRequest;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #session:I
    :cond_395
    :try_start_395
    const-string p2, "Content-Type"

    const-string v5, "application/vnd.oma.drm.roap-pdu+xml"

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a0
    .catchall {:try_start_395 .. :try_end_3a0} :catchall_96e
    .catch Ljava/net/URISyntaxException; {:try_start_395 .. :try_end_3a0} :catch_3a2
    .catch Ljava/lang/IllegalStateException; {:try_start_395 .. :try_end_3a0} :catch_bc6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_395 .. :try_end_3a0} :catch_b55
    .catch Ljava/net/SocketTimeoutException; {:try_start_395 .. :try_end_3a0} :catch_ae4
    .catch Ljava/net/SocketException; {:try_start_395 .. :try_end_3a0} :catch_a73
    .catch Ljava/lang/Exception; {:try_start_395 .. :try_end_3a0} :catch_a02

    goto/16 :goto_2a5

    .line 376
    .end local v4           #req:Lorg/apache/http/HttpRequest;
    :catch_3a2
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .line 377
    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local v18           #multiPart:Z
    .end local p8
    .end local p9
    .end local p10
    .local p0, e:Ljava/net/URISyntaxException;
    .local p3, multiPart:Z
    :goto_3b1
    const/16 p5, 0x18

    .line 378
    :try_start_3b3
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_3b6
    .catchall {:try_start_3b3 .. :try_end_3b6} :catchall_9dc

    .line 398
    if-eqz p1, :cond_3bb

    .line 399
    :try_start_3b8
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 400
    :cond_3bb
    if-eqz p2, :cond_3c0

    .line 401
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 402
    :cond_3c0
    if-eqz p4, :cond_3c5

    .line 403
    invoke-virtual/range {p4 .. p4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3c5
    .catch Ljava/io/IOException; {:try_start_3b8 .. :try_end_3c5} :catch_7ae

    .line 407
    .end local p0           #e:Ljava/net/URISyntaxException;
    :cond_3c5
    :goto_3c5
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p0, :cond_c8f

    .line 410
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 p0, p1

    .end local p1           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    move-object/from16 p1, p2

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move/from16 p2, p3

    .end local p3           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p3, p4

    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p5

    .end local p5           #result:I
    .local p4, result:I
    move-object/from16 p5, p6

    .end local p6           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, p7

    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    :goto_3dc
    move/from16 p7, p4

    .line 414
    goto/16 :goto_1ce

    .line 404
    .end local p2           #multiPart:Z
    .restart local v6       #locationHeaderValue:Ljava/lang/String;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, result:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p8
    .restart local p9
    .restart local p10
    :catch_3e0
    move-exception p0

    .line 405
    .local p0, ex:Ljava/io/IOException;
    const-string p0, "HttpManager"

    .end local p0           #ex:Ljava/io/IOException;
    const-string p2, "*************Exception caught"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_359

    .line 222
    .end local v6           #locationHeaderValue:Ljava/lang/String;
    .local v4, response:Lorg/apache/http/HttpResponse;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v20       #result:I
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    :cond_3ee
    :try_start_3ee
    const-string p0, "DrmLicenseHttpManger"

    .end local p0           #context:Landroid/content/Context;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #session:I
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "We got other status codes other than 301/302 so we return error_code as status code ="

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_409
    .catchall {:try_start_3ee .. :try_end_409} :catchall_980
    .catch Ljava/net/URISyntaxException; {:try_start_3ee .. :try_end_409} :catch_c48
    .catch Ljava/lang/IllegalStateException; {:try_start_3ee .. :try_end_409} :catch_bd7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3ee .. :try_end_409} :catch_b66
    .catch Ljava/net/SocketTimeoutException; {:try_start_3ee .. :try_end_409} :catch_af5
    .catch Ljava/net/SocketException; {:try_start_3ee .. :try_end_409} :catch_a84
    .catch Ljava/lang/Exception; {:try_start_3ee .. :try_end_409} :catch_a13

    .line 223
    move/from16 p1, v9

    .line 226
    .end local v20           #result:I
    .local p1, result:I
    if-eqz v16, :cond_40e

    .line 227
    :try_start_40d
    throw v16

    .line 228
    :cond_40e
    if-eqz v17, :cond_413

    .line 229
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayInputStream;->close()V

    .line 230
    :cond_413
    if-eqz v19, :cond_418

    .line 231
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_418
    .catchall {:try_start_40d .. :try_end_418} :catchall_992
    .catch Ljava/io/IOException; {:try_start_40d .. :try_end_418} :catch_440
    .catch Ljava/net/URISyntaxException; {:try_start_40d .. :try_end_418} :catch_44d
    .catch Ljava/lang/IllegalStateException; {:try_start_40d .. :try_end_418} :catch_be8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40d .. :try_end_418} :catch_b77
    .catch Ljava/net/SocketTimeoutException; {:try_start_40d .. :try_end_418} :catch_b06
    .catch Ljava/net/SocketException; {:try_start_40d .. :try_end_418} :catch_a95
    .catch Ljava/lang/Exception; {:try_start_40d .. :try_end_418} :catch_a24

    .line 398
    :cond_418
    :goto_418
    if-eqz v16, :cond_41b

    .line 399
    :try_start_41a
    throw v16

    .line 400
    :cond_41b
    if-eqz v17, :cond_420

    .line 401
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayInputStream;->close()V

    .line 402
    :cond_420
    if-eqz v19, :cond_425

    .line 403
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_425
    .catch Ljava/io/IOException; {:try_start_41a .. :try_end_425} :catch_45e

    .line 407
    :cond_425
    :goto_425
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p0, :cond_42e

    .line 410
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_42e
    move-object/from16 p5, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, p1

    .end local p1           #result:I
    .local p4, result:I
    move-object/from16 p0, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    move-object/from16 p3, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p2, v18

    .end local v18           #multiPart:Z
    .restart local p2       #multiPart:Z
    move/from16 p7, p1

    move-object/from16 p1, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1ce

    .line 233
    .end local p0           #inputstream:Ljava/io/InputStream;
    .end local p2           #multiPart:Z
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p1, result:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    :catch_440
    move-exception p0

    .line 235
    .local p0, ex:Ljava/io/IOException;
    :try_start_441
    const-string p0, "HttpManager"

    .end local p0           #ex:Ljava/io/IOException;
    const-string p2, "*************Exception caught"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44c
    .catchall {:try_start_441 .. :try_end_44c} :catchall_992
    .catch Ljava/net/URISyntaxException; {:try_start_441 .. :try_end_44c} :catch_44d
    .catch Ljava/lang/IllegalStateException; {:try_start_441 .. :try_end_44c} :catch_be8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_441 .. :try_end_44c} :catch_b77
    .catch Ljava/net/SocketTimeoutException; {:try_start_441 .. :try_end_44c} :catch_b06
    .catch Ljava/net/SocketException; {:try_start_441 .. :try_end_44c} :catch_a95
    .catch Ljava/lang/Exception; {:try_start_441 .. :try_end_44c} :catch_a24

    goto :goto_418

    .line 376
    :catch_44d
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, p1

    .end local p1           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    goto/16 :goto_3b1

    .line 404
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p1, result:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    :catch_45e
    move-exception p0

    .line 405
    .restart local p0       #ex:Ljava/io/IOException;
    const-string p0, "HttpManager"

    .end local p0           #ex:Ljava/io/IOException;
    const-string p2, "*************Exception caught"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_425

    .line 241
    .restart local v20       #result:I
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    :cond_46b
    :try_start_46b
    const-string p0, "DrmLicenseHttpManger"

    .end local p0           #context:Landroid/content/Context;
    const-string p2, "After Execute"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    .line 243
    .local p0, a:[Lorg/apache/http/Header;
    new-instance p10, Ljava/lang/StringBuilder;

    .end local p10
    invoke-direct/range {p10 .. p10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_47f
    .catchall {:try_start_46b .. :try_end_47f} :catchall_980
    .catch Ljava/net/URISyntaxException; {:try_start_46b .. :try_end_47f} :catch_c48
    .catch Ljava/lang/IllegalStateException; {:try_start_46b .. :try_end_47f} :catch_bd7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46b .. :try_end_47f} :catch_b66
    .catch Ljava/net/SocketTimeoutException; {:try_start_46b .. :try_end_47f} :catch_af5
    .catch Ljava/net/SocketException; {:try_start_46b .. :try_end_47f} :catch_a84
    .catch Ljava/lang/Exception; {:try_start_46b .. :try_end_47f} :catch_a13

    .line 244
    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p10, strheader:Ljava/lang/StringBuilder;
    const/16 p2, 0x0

    .local p2, i:I
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .end local p4           #isProxySet:Z
    .end local p5           #proxyHost:Ljava/lang/String;
    .end local p6           #proxyPort:I
    .local p3, multiPart:Z
    :goto_483
    :try_start_483
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 p4, v0

    move/from16 v0, p2

    move/from16 v1, p4

    if-ge v0, v1, :cond_50a

    .line 245
    aget-object p4, p0, p2

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object p4

    const-string p5, "Content-Type"

    invoke-virtual/range {p4 .. p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4bb

    .line 246
    const-string p4, "DrmLicenseHttpManger"

    const-string p5, "Header is Content-Type"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    aget-object p4, p0, p2

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo p5, "multipart/related"

    invoke-virtual/range {p4 .. p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4bb

    .line 248
    const/16 p3, 0x1

    .line 249
    const-string p4, "DrmLicenseHttpManger"

    const-string p5, "MultiPart True"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_4bb
    aget-object p4, p0, p2

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object p4

    move-object/from16 v0, p10

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, ":"

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    aget-object p5, p0, p2

    invoke-interface/range {p5 .. p5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p5

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "\r\n"

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string p4, "DrmLicenseHttpManger"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct/range {p5 .. p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "headers are:"

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    aget-object p6, p0, p2

    invoke-interface/range {p6 .. p6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    aget-object p6, p0, p2

    invoke-interface/range {p6 .. p6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p6

    invoke-virtual/range {p5 .. p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_483

    .line 262
    :cond_50a
    const-string p0, "DrmLicenseHttpManger"

    .end local p0           #a:[Lorg/apache/http/Header;
    const-string p2, "######sending headers 1st..######"

    .end local p2           #i:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    .line 264
    .local p0, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_51c
    .catchall {:try_start_483 .. :try_end_51c} :catchall_9a4
    .catch Ljava/net/URISyntaxException; {:try_start_483 .. :try_end_51c} :catch_c59
    .catch Ljava/lang/IllegalStateException; {:try_start_483 .. :try_end_51c} :catch_bf9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_483 .. :try_end_51c} :catch_b88
    .catch Ljava/net/SocketTimeoutException; {:try_start_483 .. :try_end_51c} :catch_b17
    .catch Ljava/net/SocketException; {:try_start_483 .. :try_end_51c} :catch_aa6
    .catch Ljava/lang/Exception; {:try_start_483 .. :try_end_51c} :catch_a35

    move-result-object p2

    .line 265
    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p2, inputstream:Ljava/io/InputStream;
    if-eqz p3, :cond_54f

    .line 266
    :try_start_51f
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result p4

    if-nez p4, :cond_53b

    .line 269
    const-string p4, "DrmLicenseHttpManger"

    const-string p5, "Data is not Chunked.So make it look like chunk"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string p4, "Transfer-Encoding:chunked"

    move-object/from16 v0, p10

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "\r\n"

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_53b
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p10 .. p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .end local v8           #target:Lorg/apache/http/HttpHost;
    move-result-object v11

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V

    .line 274
    const-string p4, "DrmLicenseHttpManger"

    const-string p5, "######headers sent 1st..######"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_54f
    sget p4, Landroid/drm/mobile2/HttpConfig;->MAX_DATA_LEN:I

    move/from16 v0, p4

    new-array v0, v0, [B

    move-object/from16 p9, v0
    :try_end_557
    .catchall {:try_start_51f .. :try_end_557} :catchall_9b6
    .catch Ljava/net/URISyntaxException; {:try_start_51f .. :try_end_557} :catch_c68
    .catch Ljava/lang/IllegalStateException; {:try_start_51f .. :try_end_557} :catch_c08
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51f .. :try_end_557} :catch_b97
    .catch Ljava/net/SocketTimeoutException; {:try_start_51f .. :try_end_557} :catch_b26
    .catch Ljava/net/SocketException; {:try_start_51f .. :try_end_557} :catch_ab5
    .catch Ljava/lang/Exception; {:try_start_51f .. :try_end_557} :catch_a44

    .line 279
    .local p9, res:[B
    const/16 p5, 0x0

    .line 280
    .local p5, n1_dbg:I
    const/16 p7, 0x0

    .line 281
    .local p7, offset_dbg:I
    const/16 p4, 0x1

    .line 282
    .local p4, progress_dbg:I
    if-eqz p0, :cond_cbf

    .line 284
    :try_start_55f
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->isChunked()Z
    :try_end_562
    .catchall {:try_start_55f .. :try_end_562} :catchall_6dc

    move-result p4

    .end local p4           #progress_dbg:I
    if-eqz p4, :cond_63c

    move/from16 p4, p5

    .end local p5           #n1_dbg:I
    .local p4, n1_dbg:I
    move/from16 p5, p7

    .line 290
    .end local p7           #offset_dbg:I
    .end local p8
    .local p5, offset_dbg:I
    :goto_569
    :try_start_569
    move-object/from16 v0, p2

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p4

    .line 292
    const/16 p6, -0x1

    move/from16 v0, p4

    move/from16 v1, p6

    if-eq v0, v1, :cond_5df

    .line 293
    add-int p5, p5, p4

    .line 294
    const/16 p6, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p9

    move/from16 v2, p6

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 295
    const-string p6, "DrmLicenseHttpManger"

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct/range {p7 .. p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "Offset is:"

    invoke-virtual/range {p7 .. p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual/range {p7 .. p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static/range {p6 .. p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p6

    move-object/from16 v0, p6

    array-length v0, v0

    move v8, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V

    .line 300
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_5bb
    .catchall {:try_start_569 .. :try_end_5bb} :catchall_5bc

    goto :goto_569

    .line 370
    :catchall_5bc
    move-exception p1

    move-object/from16 p6, p1

    move/from16 p1, p4

    .end local p4           #n1_dbg:I
    .local p1, n1_dbg:I
    move/from16 p4, p5

    .end local p5           #offset_dbg:I
    .local p4, offset_dbg:I
    move-object/from16 p5, v19

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .end local p9           #res:[B
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    :goto_5c5
    if-eqz p0, :cond_5cf

    .line 371
    :try_start_5c7
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 372
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_5cf
    throw p6
    :try_end_5d0
    .catchall {:try_start_5c7 .. :try_end_5d0} :catchall_9c9
    .catch Ljava/net/URISyntaxException; {:try_start_5c7 .. :try_end_5d0} :catch_5d0
    .catch Ljava/lang/IllegalStateException; {:try_start_5c7 .. :try_end_5d0} :catch_c17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c7 .. :try_end_5d0} :catch_ba6
    .catch Ljava/net/SocketTimeoutException; {:try_start_5c7 .. :try_end_5d0} :catch_b35
    .catch Ljava/net/SocketException; {:try_start_5c7 .. :try_end_5d0} :catch_ac4
    .catch Ljava/lang/Exception; {:try_start_5c7 .. :try_end_5d0} :catch_a53

    .line 376
    :catch_5d0
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, p5

    .end local p5           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_3b1

    .line 303
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local p0       #entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p4, n1_dbg:I
    .local p5, offset_dbg:I
    .restart local p9       #res:[B
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :cond_5df
    :try_start_5df
    const-string p6, "DrmLicenseHttpManger"

    const-string p7, "Last chunked data:"

    invoke-static/range {p6 .. p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string p6, "DrmLicenseHttpManger"

    const-string p7, " sending last chunk data"

    invoke-static/range {p6 .. p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V
    :try_end_5f7
    .catchall {:try_start_5df .. :try_end_5f7} :catchall_5bc

    .line 311
    const/16 p1, 0x0

    .line 313
    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_5f9
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_5fc
    .catchall {:try_start_5f9 .. :try_end_5fc} :catchall_c77

    move/from16 v23, p5

    .end local p5           #offset_dbg:I
    .local v23, offset_dbg:I
    move-object/from16 p5, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p4

    .end local p4           #n1_dbg:I
    .local p1, n1_dbg:I
    move/from16 p4, v23

    .line 370
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v23           #offset_dbg:I
    .end local p9           #res:[B
    .local p4, offset_dbg:I
    :goto_604
    if-eqz p0, :cond_caf

    .line 371
    :try_start_606
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 372
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_60e
    .catchall {:try_start_606 .. :try_end_60e} :catchall_9c9
    .catch Ljava/net/URISyntaxException; {:try_start_606 .. :try_end_60e} :catch_5d0
    .catch Ljava/lang/IllegalStateException; {:try_start_606 .. :try_end_60e} :catch_c17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_606 .. :try_end_60e} :catch_ba6
    .catch Ljava/net/SocketTimeoutException; {:try_start_606 .. :try_end_60e} :catch_b35
    .catch Ljava/net/SocketException; {:try_start_606 .. :try_end_60e} :catch_ac4
    .catch Ljava/lang/Exception; {:try_start_606 .. :try_end_60e} :catch_a53

    move/from16 p0, p1

    .end local p1           #n1_dbg:I
    .local p0, n1_dbg:I
    move/from16 p1, p4

    .end local p4           #offset_dbg:I
    .local p1, offset_dbg:I
    move-object/from16 p4, p5

    .line 398
    .end local p5           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    :goto_614
    if-eqz p2, :cond_619

    .line 399
    :try_start_616
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 400
    :cond_619
    if-eqz v17, :cond_61e

    .line 401
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayInputStream;->close()V

    .line 402
    :cond_61e
    if-eqz p4, :cond_623

    .line 403
    invoke-virtual/range {p4 .. p4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_623
    .catch Ljava/io/IOException; {:try_start_616 .. :try_end_623} :catch_7a4

    .line 407
    .end local p0           #n1_dbg:I
    .end local p1           #offset_dbg:I
    :cond_623
    :goto_623
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p0, :cond_c9f

    .line 410
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 p5, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p0, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    move/from16 p2, p3

    .end local p3           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p3, p4

    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, v20

    .end local v20           #result:I
    .local p4, result:I
    goto/16 :goto_3dc

    .line 319
    .end local p4           #result:I
    .end local p6           #strheader:Ljava/lang/StringBuilder;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p3, multiPart:Z
    .local p5, n1_dbg:I
    .local p7, offset_dbg:I
    .restart local p8
    .restart local p9       #res:[B
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :cond_63c
    :try_start_63c
    const-string p4, "DrmLicenseHttpManger"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct/range {p6 .. p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "content length:"

    .end local p8
    move-object/from16 v0, p6

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p6

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p4, v4, v6

    if-lez p4, :cond_cb7

    .line 323
    const-string p4, "DrmLicenseHttpManger"

    const-string p6, "content length is present"

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/16 p4, 0x0

    .line 325
    .local p4, n1:I
    const/16 p6, 0x0

    .line 326
    .local p6, offset:I
    const/16 p8, 0x1

    .line 328
    .local p8, progress:I
    :cond_67e
    :goto_67e
    move-object/from16 v0, p2

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p4

    .line 329
    const/4 v4, -0x1

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_6ef

    .line 330
    add-int p6, p6, p4

    .line 331
    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p9

    move v2, v4

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 332
    if-eqz p3, :cond_6e7

    .line 333
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v4, v4

    div-int/lit8 v4, v4, 0xa

    mul-int v4, v4, p8

    move/from16 v0, p6

    move v1, v4

    if-lt v0, v1, :cond_67e

    .line 334
    add-int/lit8 p8, p8, 0x1

    .line 335
    const-string v4, "DrmLicenseHttpManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sending part "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v8, v4

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V

    .line 339
    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_67e

    .line 370
    .end local p4           #n1:I
    .end local p6           #offset:I
    .end local p8           #progress:I
    .end local p9           #res:[B
    :catchall_6dc
    move-exception p1

    move-object/from16 p6, p1

    move/from16 p4, p7

    .end local p7           #offset_dbg:I
    .local p4, offset_dbg:I
    move/from16 p1, p5

    .end local p5           #n1_dbg:I
    .local p1, n1_dbg:I
    move-object/from16 p5, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5c5

    .line 343
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .local p1, session:I
    .local p4, n1:I
    .local p5, n1_dbg:I
    .restart local p6       #offset:I
    .restart local p7       #offset_dbg:I
    .restart local p8       #progress:I
    .restart local p9       #res:[B
    :cond_6e7
    const-string v4, "DrmLicenseHttpManger"

    const-string v5, "Not MultiPartData"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67e

    .line 346
    :cond_6ef
    const-string p6, "DrmLicenseHttpManger"

    .end local p6           #offset:I
    new-instance p8, Ljava/lang/StringBuilder;

    .end local p8           #progress:I
    invoke-direct/range {p8 .. p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "data read finished:(int)entity.getContentLength()"

    .end local p9           #res:[B
    invoke-virtual/range {p8 .. p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    move-wide v0, v4

    long-to-int v0, v0

    move/from16 p9, v0

    invoke-virtual/range {p8 .. p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p8

    invoke-virtual/range {p8 .. p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    move-object/from16 v0, p6

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string p6, "DrmLicenseHttpManger"

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct/range {p8 .. p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "data read finished:(int)entity.getContentLength()"

    invoke-virtual/range {p8 .. p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    move-object/from16 v0, p8

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4           #n1:I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    move-object/from16 v0, p6

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string p4, "DrmLicenseHttpManger"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct/range {p6 .. p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "data read finished:(int)entity.getContentLength()"

    move-object/from16 v0, p6

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p8

    move-object/from16 v0, p6

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p6, "NO NEED TO SEND DATA NOW DATA HAS BEEN SENT ALREADY"

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    if-nez p3, :cond_78e

    .line 352
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide p8

    move-wide/from16 v0, p8

    long-to-int v0, v0

    move v8, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual/range {p10 .. p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V
    :try_end_77f
    .catchall {:try_start_63c .. :try_end_77f} :catchall_6dc

    .line 360
    :goto_77f
    const/16 p1, 0x0

    .line 362
    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_781
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_784
    .catchall {:try_start_781 .. :try_end_784} :catchall_c82

    move/from16 p4, p7

    .end local p7           #offset_dbg:I
    .local p4, offset_dbg:I
    move/from16 v23, p5

    .end local p5           #n1_dbg:I
    .local v23, n1_dbg:I
    move-object/from16 p5, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v23

    .line 363
    .end local v23           #n1_dbg:I
    .local p1, n1_dbg:I
    goto/16 :goto_604

    .line 356
    .end local p4           #offset_dbg:I
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .local p1, session:I
    .local p5, n1_dbg:I
    .restart local p7       #offset_dbg:I
    :cond_78e
    :try_start_78e
    const-string p4, "DrmLicenseHttpManger"

    const-string p6, " MultiPartData already sent to the engine so sending last \r\n to engine"

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p11

    move/from16 v12, p1

    invoke-static/range {v7 .. v12}, Landroid/drm/mobile2/HttpManager;->sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V
    :try_end_7a3
    .catchall {:try_start_78e .. :try_end_7a3} :catchall_6dc

    goto :goto_77f

    .line 404
    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .end local p5           #n1_dbg:I
    .end local p7           #offset_dbg:I
    .local p0, n1_dbg:I
    .local p1, offset_dbg:I
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    :catch_7a4
    move-exception p0

    .line 405
    .local p0, ex:Ljava/io/IOException;
    const-string p0, "HttpManager"

    .end local p0           #ex:Ljava/io/IOException;
    const-string p1, "*************Exception caught"

    .end local p1           #offset_dbg:I
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_623

    .line 404
    .end local v9           #statusCode:I
    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .end local v20           #result:I
    .end local v21           #status:Lorg/apache/http/StatusLine;
    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p0, e:Ljava/net/URISyntaxException;
    .local p1, inputstream:Ljava/io/InputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    .local p5, result:I
    .local p6, status:Lorg/apache/http/StatusLine;
    .local p7, strheader:Ljava/lang/StringBuilder;
    :catch_7ae
    move-exception p0

    .line 405
    .local p0, ex:Ljava/io/IOException;
    const-string p0, "HttpManager"

    .end local p0           #ex:Ljava/io/IOException;
    const-string p8, "*************Exception caught"

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c5

    .line 379
    .end local p1           #inputstream:Ljava/io/InputStream;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .local p8, header:Ljava/lang/String;
    .local p9, headerlen:I
    .local p10, bodylen:I
    :catch_7bc
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v5

    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p1       #inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .line 380
    .end local v18           #multiPart:Z
    .end local p8           #header:Ljava/lang/String;
    .end local p9           #headerlen:I
    .end local p10           #bodylen:I
    .local p0, e:Ljava/lang/IllegalStateException;
    .local p3, multiPart:Z
    :goto_7cb
    const/16 p5, 0x19

    .line 381
    :try_start_7cd
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_7d0
    .catchall {:try_start_7cd .. :try_end_7d0} :catchall_9dc

    .line 398
    if-eqz p1, :cond_7d5

    .line 399
    :try_start_7d2
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 400
    :cond_7d5
    if-eqz p2, :cond_7da

    .line 401
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 402
    :cond_7da
    if-eqz p4, :cond_7df

    .line 403
    invoke-virtual/range {p4 .. p4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7df
    .catch Ljava/io/IOException; {:try_start_7d2 .. :try_end_7df} :catch_7f8

    .line 407
    .end local p0           #e:Ljava/lang/IllegalStateException;
    :cond_7df
    :goto_7df
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p0, :cond_c8f

    .line 410
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 p0, p1

    .end local p1           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    move-object/from16 p1, p2

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move/from16 p2, p3

    .end local p3           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p3, p4

    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p5

    .end local p5           #result:I
    .local p4, result:I
    move-object/from16 p5, p6

    .end local p6           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, p7

    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    goto/16 :goto_3dc

    .line 404
    .local p0, e:Ljava/lang/IllegalStateException;
    .local p1, inputstream:Ljava/io/InputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    .local p3, multiPart:Z
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    .local p5, result:I
    .local p6, status:Lorg/apache/http/StatusLine;
    .restart local p7       #strheader:Ljava/lang/StringBuilder;
    :catch_7f8
    move-exception p0

    .line 405
    .local p0, ex:Ljava/io/IOException;
    const-string p0, "HttpManager"

    .end local p0           #ex:Ljava/io/IOException;
    const-string p8, "*************Exception caught"

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7df

    .line 382
    .end local p1           #inputstream:Ljava/io/InputStream;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9       #headerlen:I
    .restart local p10       #bodylen:I
    :catch_805
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v5

    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p1       #inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .line 383
    .end local v18           #multiPart:Z
    .end local p8           #header:Ljava/lang/String;
    .end local p9           #headerlen:I
    .end local p10           #bodylen:I
    .local p0, e:Ljava/lang/IllegalArgumentException;
    .local p3, multiPart:Z
    :goto_814
    const/16 p5, 0x1a

    .line 384
    :try_start_816
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_819
    .catchall {:try_start_816 .. :try_end_819} :catchall_9dc

    .line 398
    if-eqz p1, :cond_81e

    .line 399
    :try_start_81b
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 400
    :cond_81e
    if-eqz p2, :cond_823

    .line 401
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 402
    :cond_823
    if-eqz p4, :cond_828

    .line 403
    invoke-virtual/range {p4 .. p4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_828
    .catch Ljava/io/IOException; {:try_start_81b .. :try_end_828} :catch_841

    .line 407
    .end local p0           #e:Ljava/lang/IllegalArgumentException;
    :cond_828
    :goto_828
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p0, :cond_c8f

    .line 410
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 p0, p1

    .end local p1           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    move-object/from16 p1, p2

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move/from16 p2, p3

    .end local p3           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p3, p4

    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p5

    .end local p5           #result:I
    .local p4, result:I
    move-object/from16 p5, p6

    .end local p6           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, p7

    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    goto/16 :goto_3dc

    .line 404
    .local p0, e:Ljava/lang/IllegalArgumentException;
    .local p1, inputstream:Ljava/io/InputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    .local p3, multiPart:Z
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    .local p5, result:I
    .local p6, status:Lorg/apache/http/StatusLine;
    .restart local p7       #strheader:Ljava/lang/StringBuilder;
    :catch_841
    move-exception p0

    .line 405
    .local p0, ex:Ljava/io/IOException;
    const-string p0, "HttpManager"

    .end local p0           #ex:Ljava/io/IOException;
    const-string p8, "*************Exception caught"

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_828

    .line 386
    .end local p1           #inputstream:Ljava/io/InputStream;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9       #headerlen:I
    .restart local p10       #bodylen:I
    :catch_84e
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v5

    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p1       #inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .line 387
    .end local v18           #multiPart:Z
    .end local p8           #header:Ljava/lang/String;
    .end local p9           #headerlen:I
    .end local p10           #bodylen:I
    .local p0, e:Ljava/net/SocketTimeoutException;
    .local p3, multiPart:Z
    :goto_85d
    const/16 p5, 0x1b

    .line 388
    :try_start_85f
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_862
    .catchall {:try_start_85f .. :try_end_862} :catchall_9dc

    .line 398
    if-eqz p1, :cond_867

    .line 399
    :try_start_864
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 400
    :cond_867
    if-eqz p2, :cond_86c

    .line 401
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 402
    :cond_86c
    if-eqz p4, :cond_871

    .line 403
    invoke-virtual/range {p4 .. p4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_871
    .catch Ljava/io/IOException; {:try_start_864 .. :try_end_871} :catch_88a

    .line 407
    .end local p0           #e:Ljava/net/SocketTimeoutException;
    :cond_871
    :goto_871
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p0, :cond_c8f

    .line 410
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 p0, p1

    .end local p1           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    move-object/from16 p1, p2

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move/from16 p2, p3

    .end local p3           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p3, p4

    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p5

    .end local p5           #result:I
    .local p4, result:I
    move-object/from16 p5, p6

    .end local p6           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, p7

    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    goto/16 :goto_3dc

    .line 404
    .local p0, e:Ljava/net/SocketTimeoutException;
    .local p1, inputstream:Ljava/io/InputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    .local p3, multiPart:Z
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    .local p5, result:I
    .local p6, status:Lorg/apache/http/StatusLine;
    .restart local p7       #strheader:Ljava/lang/StringBuilder;
    :catch_88a
    move-exception p0

    .line 405
    .local p0, ex:Ljava/io/IOException;
    const-string p0, "HttpManager"

    .end local p0           #ex:Ljava/io/IOException;
    const-string p8, "*************Exception caught"

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_871

    .line 389
    .end local p1           #inputstream:Ljava/io/InputStream;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9       #headerlen:I
    .restart local p10       #bodylen:I
    :catch_897
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v5

    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p1       #inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .line 390
    .end local v18           #multiPart:Z
    .end local p8           #header:Ljava/lang/String;
    .end local p9           #headerlen:I
    .end local p10           #bodylen:I
    .local p0, e:Ljava/net/SocketException;
    .local p3, multiPart:Z
    :goto_8a6
    const/16 p5, 0x1c

    .line 391
    :try_start_8a8
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_8ab
    .catchall {:try_start_8a8 .. :try_end_8ab} :catchall_9dc

    .line 398
    if-eqz p1, :cond_8b0

    .line 399
    :try_start_8ad
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 400
    :cond_8b0
    if-eqz p2, :cond_8b5

    .line 401
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 402
    :cond_8b5
    if-eqz p4, :cond_8ba

    .line 403
    invoke-virtual/range {p4 .. p4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8ba
    .catch Ljava/io/IOException; {:try_start_8ad .. :try_end_8ba} :catch_8d3

    .line 407
    .end local p0           #e:Ljava/net/SocketException;
    :cond_8ba
    :goto_8ba
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p0, :cond_c8f

    .line 410
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 p0, p1

    .end local p1           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    move-object/from16 p1, p2

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move/from16 p2, p3

    .end local p3           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p3, p4

    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p5

    .end local p5           #result:I
    .local p4, result:I
    move-object/from16 p5, p6

    .end local p6           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, p7

    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    goto/16 :goto_3dc

    .line 404
    .local p0, e:Ljava/net/SocketException;
    .local p1, inputstream:Ljava/io/InputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    .local p3, multiPart:Z
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    .local p5, result:I
    .local p6, status:Lorg/apache/http/StatusLine;
    .restart local p7       #strheader:Ljava/lang/StringBuilder;
    :catch_8d3
    move-exception p0

    .line 405
    .local p0, ex:Ljava/io/IOException;
    const-string p0, "HttpManager"

    .end local p0           #ex:Ljava/io/IOException;
    const-string p8, "*************Exception caught"

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8ba

    .line 392
    .end local p1           #inputstream:Ljava/io/InputStream;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9       #headerlen:I
    .restart local p10       #bodylen:I
    :catch_8e0
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v5

    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p1       #inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .line 393
    .end local v18           #multiPart:Z
    .end local p8           #header:Ljava/lang/String;
    .end local p9           #headerlen:I
    .end local p10           #bodylen:I
    .local p0, e:Ljava/lang/Exception;
    .local p3, multiPart:Z
    :goto_8ef
    const/16 p5, 0x1d

    .line 394
    :try_start_8f1
    invoke-static/range {p0 .. p0}, Landroid/drm/mobile2/HttpManager;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_8f4
    .catchall {:try_start_8f1 .. :try_end_8f4} :catchall_9dc

    .line 398
    if-eqz p1, :cond_8f9

    .line 399
    :try_start_8f6
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 400
    :cond_8f9
    if-eqz p2, :cond_8fe

    .line 401
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 402
    :cond_8fe
    if-eqz p4, :cond_903

    .line 403
    invoke-virtual/range {p4 .. p4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_903
    .catch Ljava/io/IOException; {:try_start_8f6 .. :try_end_903} :catch_91c

    .line 407
    .end local p0           #e:Ljava/lang/Exception;
    :cond_903
    :goto_903
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p0, :cond_c8f

    .line 410
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object/from16 p0, p1

    .end local p1           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    move-object/from16 p1, p2

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move/from16 p2, p3

    .end local p3           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p3, p4

    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p5

    .end local p5           #result:I
    .local p4, result:I
    move-object/from16 p5, p6

    .end local p6           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, p7

    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    goto/16 :goto_3dc

    .line 404
    .local p0, e:Ljava/lang/Exception;
    .local p1, inputstream:Ljava/io/InputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    .local p3, multiPart:Z
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    .local p5, result:I
    .local p6, status:Lorg/apache/http/StatusLine;
    .restart local p7       #strheader:Ljava/lang/StringBuilder;
    :catch_91c
    move-exception p0

    .line 405
    .local p0, ex:Ljava/io/IOException;
    const-string p0, "HttpManager"

    .end local p0           #ex:Ljava/io/IOException;
    const-string p8, "*************Exception caught"

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_903

    .line 397
    .end local p1           #inputstream:Ljava/io/InputStream;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9       #headerlen:I
    .restart local p10       #bodylen:I
    :catchall_929
    move-exception p0

    move-object/from16 p7, p0

    move-object/from16 p5, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, v20

    .end local v20           #result:I
    .local p4, result:I
    move-object/from16 p1, v5

    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p3, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p2, v18

    .end local v18           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p0, v16

    .line 398
    .end local v16           #inputstream:Ljava/io/InputStream;
    .end local p7           #body:Ljava/lang/String;
    .end local p8           #header:Ljava/lang/String;
    .end local p9           #headerlen:I
    .end local p10           #bodylen:I
    .local p0, inputstream:Ljava/io/InputStream;
    :goto_93a
    if-eqz p0, :cond_93f

    .line 399
    :try_start_93c
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V

    .line 400
    :cond_93f
    if-eqz p1, :cond_944

    .line 401
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 402
    :cond_944
    if-eqz p3, :cond_949

    .line 403
    invoke-virtual/range {p3 .. p3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_949
    .catch Ljava/io/IOException; {:try_start_93c .. :try_end_949} :catch_953

    .line 407
    .end local p0           #inputstream:Ljava/io/InputStream;
    .end local p1           #is:Ljava/io/ByteArrayInputStream;
    :cond_949
    :goto_949
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    if-eqz p0, :cond_952

    .line 410
    sget-object p0, Landroid/drm/mobile2/HttpManager;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual/range {p0 .. p0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_952
    throw p7

    .line 404
    .restart local p0       #inputstream:Ljava/io/InputStream;
    .restart local p1       #is:Ljava/io/ByteArrayInputStream;
    :catch_953
    move-exception p0

    .line 405
    .local p0, ex:Ljava/io/IOException;
    const-string p0, "HttpManager"

    .end local p0           #ex:Ljava/io/IOException;
    const-string p1, "*************Exception caught"

    .end local p1           #is:Ljava/io/ByteArrayInputStream;
    invoke-static/range {p0 .. p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_949

    .line 397
    .local v4, is:Ljava/io/ByteArrayInputStream;
    .local v6, post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, entity:Lorg/apache/http/entity/BasicHttpEntity;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .restart local p7       #body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9       #headerlen:I
    .restart local p10       #bodylen:I
    :catchall_95c
    move-exception p0

    move-object/from16 p7, p0

    move-object/from16 p5, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, v20

    .end local v20           #result:I
    .local p4, result:I
    move-object/from16 p1, v4

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p3, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p2, v18

    .end local v18           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p0, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    goto :goto_93a

    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local p2           #multiPart:Z
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    :catchall_96e
    move-exception p0

    move-object/from16 p7, p0

    move-object/from16 p5, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, v20

    .end local v20           #result:I
    .local p4, result:I
    move-object/from16 p1, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p3, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p2, v18

    .end local v18           #multiPart:Z
    .restart local p2       #multiPart:Z
    move-object/from16 p0, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    goto :goto_93a

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p0           #inputstream:Ljava/io/InputStream;
    .end local p1           #is:Ljava/io/ByteArrayInputStream;
    .end local p2           #multiPart:Z
    .end local p10           #bodylen:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    :catchall_980
    move-exception p0

    move-object/from16 p7, p0

    move-object/from16 p5, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, v20

    .end local v20           #result:I
    .local p4, result:I
    move-object/from16 p1, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p1       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p3, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p2, v18

    .end local v18           #multiPart:Z
    .restart local p2       #multiPart:Z
    move-object/from16 p0, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p0       #inputstream:Ljava/io/InputStream;
    goto :goto_93a

    .end local p0           #inputstream:Ljava/io/InputStream;
    .end local p2           #multiPart:Z
    .local v4, response:Lorg/apache/http/HttpResponse;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p1, result:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .restart local p10       #bodylen:I
    :catchall_992
    move-exception p0

    move-object/from16 p7, p0

    move-object/from16 p5, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    move/from16 p4, p1

    .end local p1           #result:I
    .local p4, result:I
    move-object/from16 p3, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p2, v18

    .end local v18           #multiPart:Z
    .restart local p2       #multiPart:Z
    move-object/from16 p1, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p0, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p0       #inputstream:Ljava/io/InputStream;
    goto :goto_93a

    .end local p0           #inputstream:Ljava/io/InputStream;
    .end local p2           #multiPart:Z
    .end local p4           #result:I
    .end local p5           #status:Lorg/apache/http/StatusLine;
    .end local p6           #strheader:Ljava/lang/StringBuilder;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p3, multiPart:Z
    .local p10, strheader:Ljava/lang/StringBuilder;
    :catchall_9a4
    move-exception p0

    move-object/from16 p7, p0

    move-object/from16 p5, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p5       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .restart local p6       #strheader:Ljava/lang/StringBuilder;
    move/from16 p4, v20

    .end local v20           #result:I
    .restart local p4       #result:I
    move-object/from16 p1, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move/from16 p2, p3

    .end local p3           #multiPart:Z
    .restart local p2       #multiPart:Z
    move-object/from16 p3, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p0, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p0       #inputstream:Ljava/io/InputStream;
    goto :goto_93a

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p4           #result:I
    .end local p5           #status:Lorg/apache/http/StatusLine;
    .end local p6           #strheader:Ljava/lang/StringBuilder;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p3, multiPart:Z
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catchall_9b6
    move-exception p0

    move-object/from16 p7, p0

    move-object/from16 p5, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p5       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .restart local p6       #strheader:Ljava/lang/StringBuilder;
    move/from16 p4, v20

    .end local v20           #result:I
    .restart local p4       #result:I
    move-object/from16 p1, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p0, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    move/from16 p2, p3

    .end local p3           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p3, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_93a

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p0           #inputstream:Ljava/io/InputStream;
    .end local p6           #strheader:Ljava/lang/StringBuilder;
    .end local p7           #body:Ljava/lang/String;
    .end local p8           #header:Ljava/lang/String;
    .end local p9           #headerlen:I
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, n1_dbg:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p3, multiPart:Z
    .local p4, offset_dbg:I
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catchall_9c9
    move-exception p0

    move-object/from16 p7, p0

    move-object/from16 p6, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .restart local p6       #strheader:Ljava/lang/StringBuilder;
    move/from16 p4, v20

    .end local v20           #result:I
    .local p4, result:I
    move-object/from16 p1, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p0, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .restart local p0       #inputstream:Ljava/io/InputStream;
    move/from16 p2, p3

    .end local p3           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p3, p5

    .end local p5           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p5, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    goto/16 :goto_93a

    .end local v9           #statusCode:I
    .end local p0           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    .local p3, multiPart:Z
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    .local p5, result:I
    .local p6, status:Lorg/apache/http/StatusLine;
    .local p7, strheader:Ljava/lang/StringBuilder;
    :catchall_9dc
    move-exception p0

    move-object/from16 v23, p0

    move-object/from16 p0, p1

    .end local p1           #inputstream:Ljava/io/InputStream;
    .restart local p0       #inputstream:Ljava/io/InputStream;
    move-object/from16 p1, p2

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move/from16 p2, p3

    .end local p3           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p3, p4

    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p5

    .end local p5           #result:I
    .local p4, result:I
    move-object/from16 p5, p6

    .end local p6           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, p7

    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    move-object/from16 p7, v23

    goto/16 :goto_93a

    .line 392
    .local v4, is:Ljava/io/ByteArrayInputStream;
    .restart local v6       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, entity:Lorg/apache/http/entity/BasicHttpEntity;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9       #headerlen:I
    .local p10, bodylen:I
    :catch_9f1
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v4

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_8ef

    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p1, session:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    :catch_a02
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_8ef

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #inputstream:Ljava/io/InputStream;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .end local p10           #bodylen:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    :catch_a13
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p1       #inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_8ef

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .local v4, response:Lorg/apache/http/HttpResponse;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p1, result:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p10       #bodylen:I
    :catch_a24
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, p1

    .end local p1           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    goto/16 :goto_8ef

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .end local p5           #result:I
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p7, body:Ljava/lang/String;
    .local p10, strheader:Ljava/lang/StringBuilder;
    :catch_a35
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .restart local p5       #result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p4       #out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_8ef

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .end local p5           #result:I
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p7, body:Ljava/lang/String;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catch_a44
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .restart local p5       #result:I
    move-object/from16 p1, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p4       #out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_8ef

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .end local p8           #header:Ljava/lang/String;
    .end local p9           #headerlen:I
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, n1_dbg:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p4, offset_dbg:I
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catch_a53
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .restart local p7       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, p5

    .end local p5           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_8ef

    .line 389
    .end local v9           #statusCode:I
    .local v4, is:Ljava/io/ByteArrayInputStream;
    .restart local v6       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, entity:Lorg/apache/http/entity/BasicHttpEntity;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9       #headerlen:I
    .local p10, bodylen:I
    :catch_a62
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v4

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_8a6

    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p1, session:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    :catch_a73
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_8a6

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #inputstream:Ljava/io/InputStream;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .end local p10           #bodylen:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    :catch_a84
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p1       #inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_8a6

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .local v4, response:Lorg/apache/http/HttpResponse;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p1, result:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p10       #bodylen:I
    :catch_a95
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, p1

    .end local p1           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    goto/16 :goto_8a6

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .end local p5           #result:I
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p7, body:Ljava/lang/String;
    .local p10, strheader:Ljava/lang/StringBuilder;
    :catch_aa6
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .restart local p5       #result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p4       #out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_8a6

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .end local p5           #result:I
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p7, body:Ljava/lang/String;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catch_ab5
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .restart local p5       #result:I
    move-object/from16 p1, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p4       #out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_8a6

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .end local p8           #header:Ljava/lang/String;
    .end local p9           #headerlen:I
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, n1_dbg:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p4, offset_dbg:I
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catch_ac4
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .restart local p7       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, p5

    .end local p5           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_8a6

    .line 386
    .end local v9           #statusCode:I
    .local v4, is:Ljava/io/ByteArrayInputStream;
    .restart local v6       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, entity:Lorg/apache/http/entity/BasicHttpEntity;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9       #headerlen:I
    .local p10, bodylen:I
    :catch_ad3
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v4

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_85d

    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p1, session:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    :catch_ae4
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_85d

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #inputstream:Ljava/io/InputStream;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .end local p10           #bodylen:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    :catch_af5
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p1       #inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_85d

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .local v4, response:Lorg/apache/http/HttpResponse;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p1, result:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p10       #bodylen:I
    :catch_b06
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, p1

    .end local p1           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    goto/16 :goto_85d

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .end local p5           #result:I
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p7, body:Ljava/lang/String;
    .local p10, strheader:Ljava/lang/StringBuilder;
    :catch_b17
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .restart local p5       #result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p4       #out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_85d

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .end local p5           #result:I
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p7, body:Ljava/lang/String;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catch_b26
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .restart local p5       #result:I
    move-object/from16 p1, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p4       #out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_85d

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .end local p8           #header:Ljava/lang/String;
    .end local p9           #headerlen:I
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, n1_dbg:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p4, offset_dbg:I
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catch_b35
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .restart local p7       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, p5

    .end local p5           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_85d

    .line 382
    .end local v9           #statusCode:I
    .local v4, is:Ljava/io/ByteArrayInputStream;
    .restart local v6       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, entity:Lorg/apache/http/entity/BasicHttpEntity;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9       #headerlen:I
    .local p10, bodylen:I
    :catch_b44
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v4

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_814

    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p1, session:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    :catch_b55
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_814

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #inputstream:Ljava/io/InputStream;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .end local p10           #bodylen:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    :catch_b66
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p1       #inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_814

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .local v4, response:Lorg/apache/http/HttpResponse;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p1, result:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p10       #bodylen:I
    :catch_b77
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, p1

    .end local p1           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    goto/16 :goto_814

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .end local p5           #result:I
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p7, body:Ljava/lang/String;
    .local p10, strheader:Ljava/lang/StringBuilder;
    :catch_b88
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .restart local p5       #result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p4       #out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_814

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .end local p5           #result:I
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p7, body:Ljava/lang/String;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catch_b97
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .restart local p5       #result:I
    move-object/from16 p1, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p4       #out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_814

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .end local p8           #header:Ljava/lang/String;
    .end local p9           #headerlen:I
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, n1_dbg:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p4, offset_dbg:I
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catch_ba6
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .restart local p7       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, p5

    .end local p5           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_814

    .line 379
    .end local v9           #statusCode:I
    .local v4, is:Ljava/io/ByteArrayInputStream;
    .restart local v6       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, entity:Lorg/apache/http/entity/BasicHttpEntity;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9       #headerlen:I
    .local p10, bodylen:I
    :catch_bb5
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v4

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_7cb

    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p1, session:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    :catch_bc6
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_7cb

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #inputstream:Ljava/io/InputStream;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .end local p10           #bodylen:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    :catch_bd7
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p1       #inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_7cb

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .local v4, response:Lorg/apache/http/HttpResponse;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p1, result:I
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p10       #bodylen:I
    :catch_be8
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, p1

    .end local p1           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    goto/16 :goto_7cb

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .end local p5           #result:I
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p7, body:Ljava/lang/String;
    .local p10, strheader:Ljava/lang/StringBuilder;
    :catch_bf9
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .restart local p5       #result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p4       #out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_7cb

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .end local p5           #result:I
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p7, body:Ljava/lang/String;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catch_c08
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .restart local p5       #result:I
    move-object/from16 p1, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p4       #out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_7cb

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .end local p8           #header:Ljava/lang/String;
    .end local p9           #headerlen:I
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, n1_dbg:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p4, offset_dbg:I
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catch_c17
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .restart local p7       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, p5

    .end local p5           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_7cb

    .line 376
    .end local v9           #statusCode:I
    .end local p1           #inputstream:Ljava/io/InputStream;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .restart local p8       #header:Ljava/lang/String;
    .restart local p9       #headerlen:I
    .local p10, bodylen:I
    :catch_c26
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v5

    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p1       #inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_3b1

    .local v4, is:Ljava/io/ByteArrayInputStream;
    .restart local v6       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, entity:Lorg/apache/http/entity/BasicHttpEntity;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    :catch_c37
    move-exception p0

    move-object/from16 p6, v7

    .end local v7           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v4

    .end local v4           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_3b1

    .end local v6           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #inputstream:Ljava/io/InputStream;
    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .end local p10           #bodylen:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    :catch_c48
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .local p6, status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, v22

    .end local v22           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .local p5, result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .restart local p1       #inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p3, v18

    .end local v18           #multiPart:Z
    .local p3, multiPart:Z
    goto/16 :goto_3b1

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .end local p5           #result:I
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .local v4, response:Lorg/apache/http/HttpResponse;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v9       #statusCode:I
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, session:I
    .local p7, body:Ljava/lang/String;
    .local p10, strheader:Ljava/lang/StringBuilder;
    :catch_c59
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .restart local p5       #result:I
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p2       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p1, v16

    .end local v16           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p4       #out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3b1

    .end local v8           #target:Lorg/apache/http/HttpHost;
    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .end local p5           #result:I
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p7, body:Ljava/lang/String;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catch_c68
    move-exception p0

    move-object/from16 p6, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p7, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p7, strheader:Ljava/lang/StringBuilder;
    move/from16 p5, v20

    .end local v20           #result:I
    .restart local p5       #result:I
    move-object/from16 p1, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .local p1, inputstream:Ljava/io/InputStream;
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .restart local p4       #out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 p2, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_3b1

    .line 370
    .end local p6           #status:Lorg/apache/http/StatusLine;
    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .end local p8           #header:Ljava/lang/String;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    .local p2, inputstream:Ljava/io/InputStream;
    .local p4, n1_dbg:I
    .local p5, offset_dbg:I
    .local p9, res:[B
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :catchall_c77
    move-exception p6

    move/from16 v23, p5

    .end local p5           #offset_dbg:I
    .local v23, offset_dbg:I
    move-object/from16 p5, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, p4

    .end local p4           #n1_dbg:I
    .local p1, n1_dbg:I
    move/from16 p4, v23

    .end local v23           #offset_dbg:I
    .local p4, offset_dbg:I
    goto/16 :goto_5c5

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local p4           #offset_dbg:I
    .end local p9           #res:[B
    .local p1, out:Ljava/io/ByteArrayOutputStream;
    .local p5, n1_dbg:I
    .local p7, offset_dbg:I
    :catchall_c82
    move-exception p4

    move-object/from16 p6, p4

    move/from16 p4, p7

    .end local p7           #offset_dbg:I
    .restart local p4       #offset_dbg:I
    move/from16 v23, p5

    .end local p5           #n1_dbg:I
    .local v23, n1_dbg:I
    move-object/from16 p5, p1

    .end local p1           #out:Ljava/io/ByteArrayOutputStream;
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p1, v23

    .end local v23           #n1_dbg:I
    .local p1, n1_dbg:I
    goto/16 :goto_5c5

    .end local v9           #statusCode:I
    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .end local v20           #result:I
    .end local v21           #status:Lorg/apache/http/StatusLine;
    .end local p0           #entity:Lorg/apache/http/HttpEntity;
    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .local p1, inputstream:Ljava/io/InputStream;
    .local p2, is:Ljava/io/ByteArrayInputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    .local p5, result:I
    .restart local p6       #status:Lorg/apache/http/StatusLine;
    .local p7, strheader:Ljava/lang/StringBuilder;
    :cond_c8f
    move-object/from16 p0, p1

    .end local p1           #inputstream:Ljava/io/InputStream;
    .local p0, inputstream:Ljava/io/InputStream;
    move-object/from16 p1, p2

    .end local p2           #is:Ljava/io/ByteArrayInputStream;
    .local p1, is:Ljava/io/ByteArrayInputStream;
    move/from16 p2, p3

    .end local p3           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p3, p4

    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, p5

    .end local p5           #result:I
    .local p4, result:I
    move-object/from16 p5, p6

    .end local p6           #status:Lorg/apache/http/StatusLine;
    .local p5, status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, p7

    .end local p7           #strheader:Ljava/lang/StringBuilder;
    .local p6, strheader:Ljava/lang/StringBuilder;
    goto/16 :goto_3dc

    .end local p0           #inputstream:Ljava/io/InputStream;
    .end local p1           #is:Ljava/io/ByteArrayInputStream;
    .end local p5           #status:Lorg/apache/http/StatusLine;
    .end local p6           #strheader:Ljava/lang/StringBuilder;
    .restart local v9       #statusCode:I
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p2, inputstream:Ljava/io/InputStream;
    .local p3, multiPart:Z
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :cond_c9f
    move-object/from16 p5, v21

    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local p5       #status:Lorg/apache/http/StatusLine;
    move-object/from16 p6, p10

    .end local p10           #strheader:Ljava/lang/StringBuilder;
    .restart local p6       #strheader:Ljava/lang/StringBuilder;
    move-object/from16 p1, v17

    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .restart local p1       #is:Ljava/io/ByteArrayInputStream;
    move-object/from16 p0, p2

    .end local p2           #inputstream:Ljava/io/InputStream;
    .restart local p0       #inputstream:Ljava/io/InputStream;
    move/from16 p2, p3

    .end local p3           #multiPart:Z
    .local p2, multiPart:Z
    move-object/from16 p3, p4

    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .local p3, out:Ljava/io/ByteArrayOutputStream;
    move/from16 p4, v20

    .end local v20           #result:I
    .local p4, result:I
    goto/16 :goto_3dc

    .end local p6           #strheader:Ljava/lang/StringBuilder;
    .restart local v17       #is:Ljava/io/ByteArrayInputStream;
    .restart local v20       #result:I
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, n1_dbg:I
    .local p2, inputstream:Ljava/io/InputStream;
    .local p3, multiPart:Z
    .local p4, offset_dbg:I
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    .restart local p10       #strheader:Ljava/lang/StringBuilder;
    :cond_caf
    move/from16 p0, p1

    .end local p1           #n1_dbg:I
    .local p0, n1_dbg:I
    move/from16 p1, p4

    .end local p4           #offset_dbg:I
    .local p1, offset_dbg:I
    move-object/from16 p4, p5

    .end local p5           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_614

    .end local p4           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .local p0, entity:Lorg/apache/http/HttpEntity;
    .local p1, session:I
    .local p5, n1_dbg:I
    .local p7, offset_dbg:I
    .restart local p9       #res:[B
    :cond_cb7
    move/from16 p4, p7

    .end local p7           #offset_dbg:I
    .local p4, offset_dbg:I
    move/from16 p1, p5

    .end local p5           #n1_dbg:I
    .local p1, n1_dbg:I
    move-object/from16 p5, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p5, out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_604

    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .local p1, session:I
    .local p4, progress_dbg:I
    .local p5, n1_dbg:I
    .restart local p7       #offset_dbg:I
    .restart local p8       #header:Ljava/lang/String;
    :cond_cbf
    move/from16 p1, p7

    .end local p7           #offset_dbg:I
    .local p1, offset_dbg:I
    move/from16 p0, p5

    .end local p5           #n1_dbg:I
    .local p0, n1_dbg:I
    move-object/from16 p4, v19

    .end local v19           #out:Ljava/io/ByteArrayOutputStream;
    .local p4, out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_614

    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #statusCode:I
    .end local v17           #is:Ljava/io/ByteArrayInputStream;
    .end local v21           #status:Lorg/apache/http/StatusLine;
    .restart local v5       #is:Ljava/io/ByteArrayInputStream;
    .restart local v6       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v7       #status:Lorg/apache/http/StatusLine;
    .restart local v8       #target:Lorg/apache/http/HttpHost;
    .restart local v16       #inputstream:Ljava/io/InputStream;
    .restart local v18       #multiPart:Z
    .restart local v19       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v22       #strheader:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, session:I
    .local p2, entity:Lorg/apache/http/entity/BasicHttpEntity;
    .local p3, method:I
    .local p4, isProxySet:Z
    .local p5, proxyHost:Ljava/lang/String;
    .local p6, proxyPort:I
    .local p7, body:Ljava/lang/String;
    .local p9, headerlen:I
    .local p10, bodylen:I
    :cond_cc7
    move-object v4, v5

    .end local v5           #is:Ljava/io/ByteArrayInputStream;
    .local v4, is:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_213

    .line 142
    :pswitch_data_cca
    .packed-switch 0x1
        :pswitch_374
        :pswitch_1e6
    .end packed-switch
.end method

.method private static sendData(Landroid/os/Handler;II[BLjava/lang/String;I)V
    .registers 10
    .parameter "h"
    .parameter "length"
    .parameter "status"
    .parameter "data"
    .parameter "header"
    .parameter "session"

    .prologue
    .line 427
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 428
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/drm/mobile2/DrmHttpEvent;

    invoke-direct {v0}, Landroid/drm/mobile2/DrmHttpEvent;-><init>()V

    .line 429
    .local v0, event:Landroid/drm/mobile2/DrmHttpEvent;
    invoke-virtual {v0, p3}, Landroid/drm/mobile2/DrmHttpEvent;->setBody([B)V

    .line 430
    invoke-virtual {v0, p1}, Landroid/drm/mobile2/DrmHttpEvent;->setBodylen(I)V

    .line 431
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/drm/mobile2/DrmHttpEvent;->setEvent(I)V

    .line 432
    invoke-virtual {v0, p4}, Landroid/drm/mobile2/DrmHttpEvent;->setHeader(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, p5}, Landroid/drm/mobile2/DrmHttpEvent;->setSession(I)V

    .line 434
    if-nez p4, :cond_31

    .line 435
    const-string v2, "DrmLicenseHttpManger"

    const-string/jumbo v3, "sending null hedear"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/drm/mobile2/DrmHttpEvent;->setHeaderlen(I)V

    .line 439
    :goto_28
    invoke-virtual {v0, p2}, Landroid/drm/mobile2/DrmHttpEvent;->setStatus(I)V

    .line 440
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 441
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 443
    return-void

    .line 438
    :cond_31
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/drm/mobile2/DrmHttpEvent;->setHeaderlen(I)V

    goto :goto_28
.end method

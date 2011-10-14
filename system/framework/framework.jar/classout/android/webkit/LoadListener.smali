.class Landroid/webkit/LoadListener;
.super Landroid/os/Handler;
.source "LoadListener.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# static fields
.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HASH_MIME_APPLICATION_VND_OMA_DD_XML:I = 0x12fac3b8

.field private static final HASH_MIME_APPLICATION_VND_OMA_DRM_DCF:I = 0x67c1d54c

.field private static final HASH_MIME_APPLICATION_VND_OMA_DRM_RO_XML:I = 0x6e088824

.field private static final HASH_MIME_APPLICATION_VND_OMA_ROAPPDU_XML:I = -0x64a50f9

.field private static final HASH_MIME_APPLICATION_VND_OMA_ROAPTRIGGER_XML:I = 0x3e4a533e

.field private static final HTTP_AUTH:I = 0x191

.field private static final HTTP_FOUND:I = 0x12e

.field private static final HTTP_MOVED_PERMANENTLY:I = 0x12d

.field private static final HTTP_NOT_FOUND:I = 0x194

.field private static final HTTP_NOT_MODIFIED:I = 0x130

.field private static final HTTP_OK:I = 0xc8

.field private static final HTTP_PARTIAL_CONTENT:I = 0xce

.field private static final HTTP_PROXY_AUTH:I = 0x197

.field private static final HTTP_SEE_OTHER:I = 0x12f

.field private static final HTTP_TEMPORARY_REDIRECT:I = 0x133

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MSG_CONTENT_DATA:I = 0x6e

.field private static final MSG_CONTENT_ERROR:I = 0x82

.field private static final MSG_CONTENT_FINISHED:I = 0x78

.field private static final MSG_CONTENT_HEADERS:I = 0x64

.field private static final MSG_LOCATION_CHANGED:I = 0x8c

.field private static final MSG_LOCATION_CHANGED_REQUEST:I = 0x96

.field private static final MSG_SSL_CERTIFICATE:I = 0xaa

.field private static final MSG_SSL_ERROR:I = 0xb4

.field private static final MSG_STATUS:I = 0xa0

.field private static final XML_MIME_TYPE:Ljava/lang/String; = "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

.field public static errorCode:I

.field public static errorCode404:Z

.field public static mdataSize:I

.field private static sCertificateTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNativeLoaderCount:I


# instance fields
.field bLoggingEnableCIQ:Z

.field private clientErrorMsg:[Ljava/lang/String;

.field private downloadStream:Ljava/io/FileOutputStream;

.field private isDownloadabelfile:Z

.field private mAuthFailed:Z

.field private mAuthHeader:Landroid/net/http/HttpAuthHeader;

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mCacheLoader:Landroid/webkit/CacheLoader;

.field private mCacheRedirectCount:I

.field private mCancelled:Z

.field public mContentLength:J

.field private mContext:Landroid/content/Context;

.field private final mDataBuilder:Landroid/webkit/ByteArrayBuilder;

.field private mEncoding:Ljava/lang/String;

.field private mErrorDescription:Ljava/lang/String;

.field private mErrorID:I

.field private mFromCache:Z

.field private mHeaders:Landroid/net/http/Headers;

.field private mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

.field private mIsMainPageLoader:Z

.field private final mIsMainResourceLoader:Z

.field private mMessageQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mNativeLoader:I

.field private mOriginalUrl:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private mPermanent:Z

.field private mPostData:[B

.field private mPostIdentifier:J

.field private mRedirectConfirmation:Z

.field private mRequestHandle:Landroid/net/http/RequestHandle;

.field private mRequestHeaders:Ljava/util/Map;
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

.field private mShouldDoFeedSniff:Z

.field private mSslError:Landroid/net/http/SslError;

.field private mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

.field private mStatusCode:I

.field private mStatusText:Ljava/lang/String;

.field private mSynchronous:Z

.field private mTransferEncoding:Ljava/lang/String;

.field private mUri:Landroid/net/WebAddress;

.field private mUrl:Ljava/lang/String;

.field private final mUserGesture:Z

.field private final mUsername:Ljava/lang/String;

.field private m_feedTypeSniffed:Z

.field private serverErrorMsg:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-string v3, "CERT"

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    .line 100
    sget-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-x509-ca-cert"

    const-string v2, "CERT"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-x509-user-cert"

    const-string v2, "CERT"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    const-string v1, "application/x-pkcs12"

    const-string v2, "PKCS12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/4 v0, 0x0

    sput v0, Landroid/webkit/LoadListener;->mdataSize:I

    .line 1836
    const-string v0, "^((?:[xX]-)?[a-zA-Z\\*]+/[\\w\\+\\*-]+[\\.[\\w\\+-]+]*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 196
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 107
    new-instance v0, Landroid/webkit/ByteArrayBuilder;

    invoke-direct {v0}, Landroid/webkit/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/LoadListener;->mErrorID:I

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->isDownloadabelfile:Z

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    .line 241
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Bad Request"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Unauthorized"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Rayment Required"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Forbidden"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Not Found"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Method Not Allowed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Not Acceptable"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Proxy Authentication Required"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Request Timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Conflict"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Gone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Length Required"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Precondition Failed"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Request entity too large"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Request-URI too long"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Unsupported media type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Request Range Not Satisfied"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Expectation Failed"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/webkit/LoadListener;->clientErrorMsg:[Ljava/lang/String;

    .line 261
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Internal Server Error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Not Implemented"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Bad Gateway"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Service Unavailable"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Gateway Timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HTTP Version Not Supported"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/webkit/LoadListener;->serverErrorMsg:[Ljava/lang/String;

    .line 197
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_c9

    .line 198
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener constructor url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_c9
    iput-object p1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 202
    invoke-virtual {p0, p3}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    .line 203
    iput p4, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    .line 204
    iput-boolean p5, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    .line 205
    if-eqz p5, :cond_dd

    .line 206
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    .line 208
    :cond_dd
    iput-boolean p6, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    .line 209
    iput-boolean p7, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    .line 210
    iput-boolean p8, p0, Landroid/webkit/LoadListener;->mUserGesture:Z

    .line 211
    iput-wide p9, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    .line 212
    iput-object p11, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    .line 213
    iput-object p12, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    .line 229
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/LoadListener;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/LoadListener;->nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearNativeLoader()V
    .registers 3

    .prologue
    .line 236
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    .line 238
    return-void
.end method

.method private commitHeaders()V
    .registers 4

    .prologue
    .line 1399
    iget-boolean v1, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v1, :cond_f

    sget-object v1, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1416
    :cond_e
    :goto_e
    return-void

    .line 1409
    :cond_f
    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v1, :cond_e

    .line 1413
    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v0

    .line 1415
    .local v0, nativeResponse:I
    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->nativeReceivedResponse(I)V

    goto :goto_e
.end method

.method private commitHeadersCheckRedirect()V
    .registers 3

    .prologue
    .line 1381
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 1395
    :cond_4
    :goto_4
    return-void

    .line 1389
    :cond_5
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12d

    if-lt v0, v1, :cond_11

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12f

    if-le v0, v1, :cond_4

    :cond_11
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x133

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-nez v0, :cond_4

    .line 1394
    :cond_21
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    goto :goto_4
.end method

.method private commitLoad()V
    .registers 13

    .prologue
    const-string/jumbo v11, "webkit"

    .line 1449
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v7, :cond_8

    .line 1523
    :cond_7
    :goto_7
    return-void

    .line 1451
    :cond_8
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->isDownloadabelfile:Z

    if-eqz v7, :cond_42

    .line 1454
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v3

    .line 1456
    .local v3, data:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v3, :cond_7

    iget v7, v3, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v7, :cond_7

    .line 1457
    iget-object v7, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    if-eqz v7, :cond_2e

    .line 1459
    :try_start_1c
    iget-object v7, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    iget-object v8, v3, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v9, 0x0

    iget v10, v3, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1460
    const-string/jumbo v7, "webkit"

    const-string v8, "***xml downloadable File Writing Sucess *****"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2e} :catch_34

    .line 1466
    :cond_2e
    :goto_2e
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7, v3}, Landroid/webkit/ByteArrayBuilder;->releaseChunk(Landroid/webkit/ByteArrayBuilder$Chunk;)V

    goto :goto_7

    .line 1461
    :catch_34
    move-exception v7

    move-object v4, v7

    .line 1462
    .local v4, e:Ljava/io/IOException;
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    .line 1463
    const-string/jumbo v7, "webkit"

    const-string v7, "**** xml download File Writing Failure *****"

    invoke-static {v11, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 1474
    .end local v3           #data:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v4           #e:Ljava/io/IOException;
    :cond_42
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v7, :cond_88

    .line 1475
    sget-object v7, Landroid/webkit/LoadListener;->sCertificateTypeMap:Ljava/util/HashMap;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1476
    .local v6, type:Ljava/lang/String;
    if-eqz v6, :cond_88

    .line 1479
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v7

    .line 1483
    :try_start_55
    iget-object v8, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v8}, Landroid/webkit/ByteArrayBuilder;->getByteSize()I

    move-result v8

    new-array v1, v8, [B

    .line 1484
    .local v1, cert:[B
    const/4 v5, 0x0

    .line 1486
    .local v5, offset:I
    :goto_5e
    iget-object v8, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v8}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 1487
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-nez v0, :cond_75

    .line 1495
    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v1}, Landroid/webkit/CertTool;->addCertificate(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 1496
    iget-object v8, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v8}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 1497
    monitor-exit v7

    goto :goto_7

    .line 1498
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v5           #offset:I
    :catchall_72
    move-exception v8

    monitor-exit v7
    :try_end_74
    .catchall {:try_start_55 .. :try_end_74} :catchall_72

    throw v8

    .line 1489
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .restart local v1       #cert:[B
    .restart local v5       #offset:I
    :cond_75
    :try_start_75
    iget v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v8, :cond_84

    .line 1490
    iget-object v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v9, 0x0

    iget v10, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {v8, v9, v1, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1491
    iget v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v5, v8

    .line 1493
    :cond_84
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V
    :try_end_87
    .catchall {:try_start_75 .. :try_end_87} :catchall_72

    goto :goto_5e

    .line 1505
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v5           #offset:I
    .end local v6           #type:Ljava/lang/String;
    :cond_88
    new-instance v2, Landroid/webkit/PerfChecker;

    invoke-direct {v2}, Landroid/webkit/PerfChecker;-><init>()V

    .line 1508
    .local v2, checker:Landroid/webkit/PerfChecker;
    :goto_8d
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 1509
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_7

    .line 1511
    iget v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v7, :cond_bd

    .line 1512
    iget-object v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    .line 1513
    new-instance v3, Landroid/webkit/WebViewWorker$CacheData;

    invoke-direct {v3}, Landroid/webkit/WebViewWorker$CacheData;-><init>()V

    .line 1514
    .local v3, data:Landroid/webkit/WebViewWorker$CacheData;
    iput-object p0, v3, Landroid/webkit/WebViewWorker$CacheData;->mListener:Landroid/webkit/LoadListener;

    .line 1515
    iput-object v0, v3, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    .line 1516
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x69

    invoke-virtual {v7, v8, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1521
    .end local v3           #data:Landroid/webkit/WebViewWorker$CacheData;
    :goto_b6
    const-string/jumbo v7, "res nativeAddData"

    invoke-virtual {v2, v7}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    goto :goto_8d

    .line 1519
    :cond_bd
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto :goto_b6
.end method

.method private createNativeResponse()I
    .registers 10

    .prologue
    .line 1428
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v0, :cond_2d

    const/16 v0, 0xc8

    move v2, v0

    .line 1431
    .local v2, statusCode:I
    :goto_d
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->originalUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    iget-object v7, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/webkit/LoadListener;->nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result v8

    .line 1434
    .local v8, nativeResponse:I
    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    if-eqz v0, :cond_2c

    .line 1435
    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    new-instance v1, Landroid/webkit/LoadListener$1;

    invoke-direct {v1, p0, v8}, Landroid/webkit/LoadListener$1;-><init>(Landroid/webkit/LoadListener;I)V

    invoke-virtual {v0, v1}, Landroid/net/http/Headers;->getHeaders(Landroid/net/http/Headers$HeaderCallback;)V

    .line 1441
    :cond_2c
    return v8

    .line 1428
    .end local v2           #statusCode:I
    .end local v8           #nativeResponse:I
    :cond_2d
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    move v2, v0

    goto :goto_d
.end method

.method private doRedirect()V
    .registers 15

    .prologue
    const v13, 0x1040007

    const/16 v12, -0xc

    const-string/jumbo v11, "webkit"

    .line 1711
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v7, :cond_d

    .line 1830
    :cond_c
    :goto_c
    return-void

    .line 1717
    :cond_d
    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_22

    .line 1718
    const/16 v7, -0x9

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x104013a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_c

    .line 1723
    :cond_22
    iget-object v7, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v7}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 1724
    .local v5, redirectTo:Ljava/lang/String;
    if-eqz v5, :cond_168

    .line 1725
    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v3

    .line 1726
    .local v3, nativeResponse:I
    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v7, v5, v3}, Landroid/webkit/LoadListener;->nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1730
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v7, :cond_c

    .line 1733
    if-nez v5, :cond_5d

    .line 1734
    const-string/jumbo v7, "webkit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Redirection failed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v8}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    goto :goto_c

    .line 1738
    :cond_5d
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_96

    .line 1739
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x1040364

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1742
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    .line 1743
    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    .line 1744
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    goto/16 :goto_c

    .line 1750
    .end local v6           #text:Ljava/lang/String;
    :cond_96
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v7

    if-nez v7, :cond_113

    .line 1751
    new-instance v0, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v0}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .line 1752
    .local v0, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    .line 1753
    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    .line 1754
    iget-wide v7, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    .line 1755
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6a

    invoke-virtual {v7, v8, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1763
    .end local v0           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_b8
    iput-object v5, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    .line 1765
    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    .line 1768
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    if-nez v7, :cond_c8

    .line 1769
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    .line 1771
    :cond_c8
    const/4 v2, 0x0

    .line 1772
    .local v2, fromCache:Z
    iget-object v7, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v7, :cond_d4

    .line 1775
    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    .line 1776
    const/4 v2, 0x1

    .line 1778
    :cond_d4
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {p0, v7}, Landroid/webkit/LoadListener;->checkCache(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_157

    .line 1781
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v7, :cond_138

    .line 1783
    :try_start_e0
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iget v9, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    iget-object v10, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/http/RequestHandle;->setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z
    :try_end_eb
    .catch Ljava/lang/RuntimeException; {:try_start_e0 .. :try_end_eb} :catch_121

    .line 1807
    :cond_eb
    if-eqz v2, :cond_f4

    .line 1811
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget v8, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    invoke-virtual {v7, v8}, Landroid/net/http/RequestHandle;->setRedirectCount(I)V

    .line 1826
    .end local v2           #fromCache:Z
    .end local v3           #nativeResponse:I
    :cond_f4
    :goto_f4
    sget-boolean v7, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v7, :cond_c

    .line 1827
    const-string/jumbo v7, "webkit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LoadListener.onRedirect(): redirect to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 1758
    .restart local v3       #nativeResponse:I
    :cond_113
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6b

    invoke-virtual {v7, v8, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_b8

    .line 1785
    .restart local v2       #fromCache:Z
    :catch_121
    move-exception v7

    move-object v1, v7

    .line 1786
    .local v1, e:Ljava/lang/RuntimeException;
    const-string/jumbo v7, "webkit"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v12, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_c

    .line 1797
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_138
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v4

    .line 1798
    .local v4, network:Landroid/webkit/Network;
    iget-object v7, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    iget-object v9, p0, Landroid/webkit/LoadListener;->mPostData:[B

    invoke-virtual {v4, v7, v8, v9, p0}, Landroid/webkit/Network;->requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z

    move-result v7

    if-nez v7, :cond_eb

    .line 1802
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v12, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_c

    .line 1813
    .end local v4           #network:Landroid/webkit/Network;
    :cond_157
    if-nez v2, :cond_f4

    .line 1817
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v7, :cond_f4

    .line 1818
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v7}, Landroid/net/http/RequestHandle;->getRedirectCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    goto :goto_f4

    .line 1821
    .end local v2           #fromCache:Z
    .end local v3           #nativeResponse:I
    :cond_168
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    .line 1822
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 1823
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_f4
.end method

.method private getErrorDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1598
    iget-object v0, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    return-object v0
.end method

.method private getErrorID()I
    .registers 2

    .prologue
    .line 1590
    iget v0, p0, Landroid/webkit/LoadListener;->mErrorID:I

    return v0
.end method

.method public static getLoadListener(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;
    .registers 25
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 183
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    .line 184
    new-instance v0, Landroid/webkit/LoadListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/webkit/LoadListener;-><init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNativeLoaderCount()I
    .registers 1

    .prologue
    .line 190
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    return v0
.end method

.method private guessMimeType()V
    .registers 5

    .prologue
    .line 2010
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    .line 2011
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 2012
    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v3, 0x1040007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2013
    .local v1, text:Ljava/lang/String;
    const/16 v2, -0xc

    invoke-direct {p0, v2, v1}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    .line 2024
    .end local v1           #text:Ljava/lang/String;
    :cond_21
    :goto_21
    return-void

    .line 2018
    :cond_22
    const-string/jumbo v2, "text/html"

    iput-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 2019
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2020
    .local v0, newMimeType:Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 2021
    iput-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_21
.end method

.method private guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "url"

    .prologue
    .line 2031
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_1d

    .line 2032
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guessMimeTypeFromExtension: url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    :cond_1d
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCertificate(Landroid/net/http/SslCertificate;)V
    .registers 3
    .parameter "certificate"

    .prologue
    .line 802
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    if-eqz v0, :cond_d

    .line 804
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1}, Landroid/webkit/BrowserFrame;->certificate(Landroid/net/http/SslCertificate;)V

    .line 806
    :cond_d
    return-void
.end method

.method private handleEndData()V
    .registers 9

    .prologue
    const/16 v7, 0x96

    const/16 v6, 0x8c

    const/4 v5, 0x1

    const-string v4, "GATE"

    const-string v3, "<GATE-M>DEV_ACTION_COMPLETED</GATE-M>"

    .line 895
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v2, :cond_e

    .line 1042
    :cond_d
    :goto_d
    return-void

    .line 897
    :cond_e
    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    sparse-switch v2, :sswitch_data_176

    .line 1040
    :cond_13
    :goto_13
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    .line 1041
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_d

    .line 900
    :sswitch_1a
    iput-boolean v5, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    .line 908
    :sswitch_1c
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 909
    const-string v2, "GATE"

    const-string v2, "<GATE-M>DEV_ACTION_COMPLETED</GATE-M>"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_29
    iget v2, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v3, 0x133

    if-ne v2, v3, :cond_a1

    .line 913
    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v2, :cond_65

    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v2}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 916
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    if-ne v5, v2, :cond_5d

    .line 919
    :goto_45
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v2}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 920
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_13

    .line 922
    iget v2, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v2, :cond_59

    .line 923
    iget-object v2, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v3, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-direct {p0, v2, v3}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    goto :goto_45

    .line 925
    :cond_59
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto :goto_45

    .line 931
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_5d
    invoke-virtual {p0, v7}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_d

    .line 933
    :cond_65
    iget-object v2, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    if-eqz v2, :cond_98

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 935
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    if-ne v5, v2, :cond_8f

    .line 938
    :goto_77
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v2}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 939
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_13

    .line 941
    iget v2, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v2, :cond_8b

    .line 942
    iget-object v2, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v3, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-direct {p0, v2, v3}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    goto :goto_77

    .line 944
    :cond_8b
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto :goto_77

    .line 950
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_8f
    invoke-virtual {p0, v7}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto/16 :goto_d

    .line 953
    :cond_98
    invoke-virtual {p0, v6}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto/16 :goto_d

    .line 956
    :cond_a1
    invoke-virtual {p0, v6}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto/16 :goto_d

    .line 968
    :sswitch_aa
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 969
    const-string v2, "GATE"

    const-string v2, "<GATE-M>DEV_ACTION_COMPLETED</GATE-M>"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_b7
    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v2

    if-nez v2, :cond_cf

    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v2}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v2

    if-nez v2, :cond_13

    .line 977
    :cond_cf
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-nez v2, :cond_10a

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_10a

    iget-object v2, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_10a

    .line 978
    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v2}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v2

    if-eqz v2, :cond_104

    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/Network;->getProxyHostname()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 981
    .local v1, host:Ljava/lang/String;
    :goto_ee
    iget-object v2, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v2}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3, v4}, Landroid/webkit/HttpAuthHandler;->onReceivedCredentials(Landroid/webkit/LoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 978
    .end local v1           #host:Ljava/lang/String;
    :cond_104
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    iget-object v2, v2, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object v1, v2

    goto :goto_ee

    .line 985
    :cond_10a
    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/webkit/Network;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    goto/16 :goto_d

    .line 998
    :sswitch_115
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_122

    .line 999
    const-string v2, "GATE"

    const-string v2, "<GATE-M>DEV_ACTION_COMPLETED</GATE-M>"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_122
    iget-object v2, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v2, :cond_13

    .line 1003
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v2

    if-eqz v2, :cond_156

    .line 1004
    iget-object v2, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v2}, Landroid/webkit/CacheLoader;->load()V

    .line 1011
    :goto_131
    iput-boolean v5, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 1012
    sget-boolean v2, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v2, :cond_d

    .line 1013
    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadListener cache load url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1007
    :cond_156
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x65

    iget-object v4, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_131

    .line 1033
    :sswitch_166
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1034
    const-string v2, "GATE"

    const-string v2, "<GATE-M>DEV_ACTION_COMPLETED</GATE-M>"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 897
    nop

    :sswitch_data_176
    .sparse-switch
        0x12d -> :sswitch_1a
        0x12e -> :sswitch_1c
        0x12f -> :sswitch_1c
        0x130 -> :sswitch_115
        0x133 -> :sswitch_1c
        0x191 -> :sswitch_aa
        0x194 -> :sswitch_166
        0x197 -> :sswitch_aa
    .end sparse-switch
.end method

.method private handleError(ILjava/lang/String;)V
    .registers 3
    .parameter "id"
    .parameter "description"

    .prologue
    .line 826
    iput p1, p0, Landroid/webkit/LoadListener;->mErrorID:I

    .line 827
    iput-object p2, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    .line 828
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    .line 829
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->notifyError()V

    .line 830
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    .line 831
    return-void
.end method

.method private handleHeaders(Landroid/net/http/Headers;)V
    .registers 23
    .parameter "headers"

    .prologue
    .line 517
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mCancelled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 731
    :goto_8
    return-void

    .line 522
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0xce

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2b

    .line 524
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v17

    const/16 v18, 0x6b

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8

    .line 530
    :cond_2b
    const/4 v7, 0x0

    .line 531
    .local v7, contentType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    move/from16 v17, v0

    if-nez v17, :cond_336

    .line 533
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v5

    .line 536
    .local v5, contentLength:J
    const-wide/16 v17, -0x1

    cmp-long v17, v5, v17

    if-eqz v17, :cond_28e

    .line 537
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/LoadListener;->mContentLength:J

    .line 543
    :goto_49
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 545
    if-eqz v7, :cond_331

    .line 546
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/LoadListener;->parseContentTypeHeader(Ljava/lang/String;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "text/plain"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_72

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/octet-stream"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_298

    .line 555
    :cond_72
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, contentDisposition:Ljava/lang/String;
    const/16 v16, 0x0

    .line 557
    .local v16, url:Ljava/lang/String;
    if-eqz v4, :cond_7e

    .line 558
    invoke-static {v4}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 560
    :cond_7e
    if-nez v16, :cond_86

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 563
    :cond_86
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/webkit/LoadListener;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 564
    .local v15, newMimeType:Ljava/lang/String;
    if-eqz v15, :cond_95

    .line 565
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 605
    .end local v4           #contentDisposition:Ljava/lang/String;
    .end local v5           #contentLength:J
    .end local v15           #newMimeType:Ljava/lang/String;
    .end local v16           #url:Ljava/lang/String;
    :cond_95
    :goto_95
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_133

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_133

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mUserGesture:Z

    move/from16 v17, v0

    if-eqz v17, :cond_133

    const-string v17, "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_133

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/xhtml+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_133

    .line 608
    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v10, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/high16 v18, 0x1

    move-object/from16 v0, v17

    move-object v1, v10

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 612
    .local v11, info:Landroid/content/pm/ResolveInfo;
    if-eqz v11, :cond_133

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_133

    .line 617
    :try_start_11b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/BrowserFrame;->stopLoading()V
    :try_end_130
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11b .. :try_end_130} :catch_132

    goto/16 :goto_8

    .line 620
    :catch_132
    move-exception v17

    .line 627
    .end local v10           #i:Landroid/content/Intent;
    .end local v11           #info:Landroid/content/pm/ResolveInfo;
    :cond_133
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x191

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x197

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_342

    :cond_14f
    const/16 v17, 0x1

    move/from16 v13, v17

    .line 630
    .local v13, mustAuthenticate:Z
    :goto_153
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x197

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_348

    const/16 v17, 0x1

    move/from16 v12, v17

    .line 633
    .local v12, isProxyAuthRequest:Z
    :goto_165
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->mAuthFailed:Z

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d4

    .line 639
    if-eqz v13, :cond_34e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v17

    move v0, v12

    move/from16 v1, v17

    if-ne v0, v1, :cond_34e

    const/16 v17, 0x1

    :goto_188
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->mAuthFailed:Z

    .line 644
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    move/from16 v17, v0

    if-nez v17, :cond_1d4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v17

    if-eqz v17, :cond_1d4

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v14

    .line 647
    .local v14, network:Landroid/webkit/Network;
    invoke-virtual {v14}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v17

    if-eqz v17, :cond_1d4

    .line 650
    monitor-enter v14

    .line 653
    :try_start_1b3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->getUsername()Ljava/lang/String;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/Network;->setProxyUsername(Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->getPassword()Ljava/lang/String;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/Network;->setProxyPassword(Ljava/lang/String;)V

    .line 655
    monitor-exit v14
    :try_end_1d4
    .catchall {:try_start_1b3 .. :try_end_1d4} :catchall_352

    .line 662
    .end local v14           #network:Landroid/webkit/Network;
    :cond_1d4
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 663
    if-eqz v13, :cond_1fe

    .line 664
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x191

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_355

    .line 665
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getWwwAuthenticate()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 679
    :cond_1fe
    :goto_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/vnd.oma.dd+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_232

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/vnd.oma.drm.roap-trigger+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_232

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "multipart/related"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_37a

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/webkit/LoadListener;->isDownLoadableMultipartContent(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_37a

    .line 683
    :cond_232
    const-string/jumbo v17, "webkit"

    const-string v18, "****DD or Roap or  OMA multipart related  Mime Type *****"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string/jumbo v17, "webkit"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mime Type :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    move-object/from16 v17, v0

    if-nez v17, :cond_37a

    .line 689
    :try_start_262
    new-instance v17, Ljava/io/FileOutputStream;

    const-string v18, "/sdcard/tempfile1.xml"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    .line 690
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->isDownloadabelfile:Z

    .line 691
    const-string/jumbo v17, "webkit"

    const-string v18, "****DD xml File Creation Sucess *****"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27f
    .catch Ljava/io/FileNotFoundException; {:try_start_262 .. :try_end_27f} :catch_281

    goto/16 :goto_8

    .line 692
    :catch_281
    move-exception v17

    move-object/from16 v9, v17

    .line 693
    .local v9, e:Ljava/io/FileNotFoundException;
    const-string/jumbo v17, "webkit"

    const-string v18, "FILE OUTPUT STREAM FAIL FOR CREATE TEMP FILE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 539
    .end local v9           #e:Ljava/io/FileNotFoundException;
    .end local v12           #isProxyAuthRequest:Z
    .end local v13           #mustAuthenticate:Z
    .restart local v5       #contentLength:J
    :cond_28e
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/LoadListener;->mContentLength:J

    goto/16 :goto_49

    .line 573
    :cond_298
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/vnd.wap.xhtml+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b0

    .line 574
    const-string v17, "application/xhtml+xml"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto/16 :goto_95

    .line 577
    :cond_2b0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/atom+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2da

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/rdf+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2da

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/rss+xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2e4

    .line 580
    :cond_2da
    const-string v17, "application/vnd.webkit.maybe.feed"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto/16 :goto_95

    .line 582
    :cond_2e4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mSynchronous:Z

    move/from16 v17, v0

    if-nez v17, :cond_95

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_95

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_95

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    move/from16 v17, v0

    if-eqz v17, :cond_95

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "text/xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_327

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "application/xml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_95

    .line 586
    :cond_327
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    goto/16 :goto_8

    .line 597
    :cond_331
    invoke-direct/range {p0 .. p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto/16 :goto_95

    .line 601
    .end local v5           #contentLength:J
    :cond_336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_95

    .line 627
    :cond_342
    const/16 v17, 0x0

    move/from16 v13, v17

    goto/16 :goto_153

    .line 630
    .restart local v13       #mustAuthenticate:Z
    :cond_348
    const/16 v17, 0x0

    move/from16 v12, v17

    goto/16 :goto_165

    .line 639
    .restart local v12       #isProxyAuthRequest:Z
    :cond_34e
    const/16 v17, 0x0

    goto/16 :goto_188

    .line 655
    .restart local v14       #network:Landroid/webkit/Network;
    :catchall_352
    move-exception v17

    :try_start_353
    monitor-exit v14
    :try_end_354
    .catchall {:try_start_353 .. :try_end_354} :catchall_352

    throw v17

    .line 668
    .end local v14           #network:Landroid/webkit/Network;
    :cond_355
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Headers;->getProxyAuthenticate()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1fe

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/HttpAuthHeader;->setProxy()V

    goto/16 :goto_1fe

    .line 703
    :cond_37a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3b2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x12e

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3b2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x12d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3b2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    const/16 v18, 0x133

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_45c

    :cond_3b2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mNativeLoader:I

    move/from16 v17, v0

    if-eqz v17, :cond_45c

    .line 711
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/LoadListener;->mFromCache:Z

    move/from16 v17, v0

    if-nez v17, :cond_435

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_435

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v17

    const-string v18, "POST"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_435

    .line 714
    :cond_3e8
    new-instance v8, Landroid/webkit/WebViewWorker$CacheCreateData;

    invoke-direct {v8}, Landroid/webkit/WebViewWorker$CacheCreateData;-><init>()V

    .line 715
    .local v8, data:Landroid/webkit/WebViewWorker$CacheCreateData;
    move-object/from16 v0, p0

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mListener:Landroid/webkit/LoadListener;

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mUrl:Ljava/lang/String;

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mMimeType:Ljava/lang/String;

    .line 718
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/LoadListener;->mStatusCode:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v8

    iput v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mStatusCode:I

    .line 719
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object v2, v8

    iput-wide v0, v2, Landroid/webkit/WebViewWorker$CacheCreateData;->mPostId:J

    .line 720
    move-object/from16 v0, p1

    move-object v1, v8

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheCreateData;->mHeaders:Landroid/net/http/Headers;

    .line 721
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v17

    const/16 v18, 0x67

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 724
    .end local v8           #data:Landroid/webkit/WebViewWorker$CacheCreateData;
    :cond_435
    new-instance v3, Landroid/webkit/WebViewWorker$CacheEncoding;

    invoke-direct {v3}, Landroid/webkit/WebViewWorker$CacheEncoding;-><init>()V

    .line 725
    .local v3, ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v3

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheEncoding;->mEncoding:Ljava/lang/String;

    .line 726
    move-object/from16 v0, p0

    move-object v1, v3

    iput-object v0, v1, Landroid/webkit/WebViewWorker$CacheEncoding;->mListener:Landroid/webkit/LoadListener;

    .line 727
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v17

    const/16 v18, 0x68

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    .line 730
    .end local v3           #ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    :cond_45c
    invoke-direct/range {p0 .. p0}, Landroid/webkit/LoadListener;->commitHeadersCheckRedirect()V

    goto/16 :goto_8
.end method

.method private handleSslError(Landroid/net/http/SslError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 1138
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_13

    .line 1139
    iput-object p1, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    .line 1140
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/Network;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    .line 1144
    :cond_f
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    .line 1145
    return-void

    .line 1141
    :cond_13
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_f

    .line 1142
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    goto :goto_f
.end method

.method private handleStatus(IIILjava/lang/String;)V
    .registers 6
    .parameter "major"
    .parameter "minor"
    .parameter "code"
    .parameter "reason"

    .prologue
    .line 774
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 779
    :goto_4
    return-void

    .line 776
    :cond_5
    iput p3, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    .line 777
    iput-object p4, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    .line 778
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    goto :goto_4
.end method

.method private ignoreCallbacks()Z
    .registers 3

    .prologue
    .line 1978
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_1a

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1c

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1c

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x131

    if-eq v0, v1, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private native nativeAddData([BI)V
.end method

.method private native nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
.end method

.method private native nativeError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeFinished()V
.end method

.method private native nativeReceivedResponse(I)V
.end method

.method private native nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;
    .registers 22
    .parameter "header"

    .prologue
    .line 1900
    if-eqz p1, :cond_df

    .line 1901
    const/16 v16, 0x100

    .line 1902
    .local v16, posMax:I
    const/4 v14, 0x0

    .line 1903
    .local v14, posLen:I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v13, v0

    .line 1905
    .local v13, pos:[I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 1906
    .local v12, headerLen:I
    if-lez v12, :cond_65

    .line 1908
    const/16 v17, 0x0

    .line 1909
    .local v17, quoted:Z
    const/4 v5, 0x0

    .local v5, i:I
    move v15, v14

    .end local v14           #posLen:I
    .local v15, posLen:I
    :goto_14
    if-ge v5, v12, :cond_64

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_64

    .line 1910
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_34

    .line 1911
    if-nez v17, :cond_30

    const/4 v3, 0x1

    move/from16 v17, v3

    :goto_2b
    move v14, v15

    .line 1909
    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    move v15, v14

    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    goto :goto_14

    .line 1911
    :cond_30
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_2b

    .line 1913
    :cond_34
    if-nez v17, :cond_e1

    .line 1914
    const/4 v4, 0x1

    const-string v6, "Basic"

    const/4 v7, 0x0

    const-string v3, "Basic"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1917
    add-int/lit8 v14, v15, 0x1

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    aput v5, v13, v15

    goto :goto_2c

    .line 1921
    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    :cond_4d
    const/4 v4, 0x1

    const-string v6, "Digest"

    const/4 v7, 0x0

    const-string v3, "Digest"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 1924
    add-int/lit8 v14, v15, 0x1

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    aput v5, v13, v15

    goto :goto_2c

    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    :cond_64
    move v14, v15

    .line 1932
    .end local v5           #i:I
    .end local v15           #posLen:I
    .end local v17           #quoted:Z
    .restart local v14       #posLen:I
    :cond_65
    if-lez v14, :cond_df

    .line 1934
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_68
    if-ge v5, v14, :cond_a3

    .line 1935
    const/4 v7, 0x1

    aget v8, v13, v5

    const-string v9, "Digest"

    const/4 v10, 0x0

    const-string v3, "Digest"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 1938
    aget v3, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v14, :cond_9e

    add-int/lit8 v4, v5, 0x1

    aget v4, v13, v4

    :goto_88
    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1941
    .local v19, sub:Ljava/lang/String;
    new-instance v18, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v18 .. v19}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .line 1942
    .local v18, rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v3

    if-eqz v3, :cond_a0

    move-object/from16 v3, v18

    .line 1967
    .end local v5           #i:I
    .end local v12           #headerLen:I
    .end local v13           #pos:[I
    .end local v14           #posLen:I
    .end local v16           #posMax:I
    .end local v18           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v19           #sub:Ljava/lang/String;
    :goto_9d
    return-object v3

    .restart local v5       #i:I
    .restart local v12       #headerLen:I
    .restart local v13       #pos:[I
    .restart local v14       #posLen:I
    .restart local v16       #posMax:I
    :cond_9e
    move v4, v12

    .line 1938
    goto :goto_88

    .line 1934
    :cond_a0
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 1950
    :cond_a3
    const/4 v5, 0x0

    :goto_a4
    if-ge v5, v14, :cond_df

    .line 1951
    const/4 v7, 0x1

    aget v8, v13, v5

    const-string v9, "Basic"

    const/4 v10, 0x0

    const-string v3, "Basic"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 1954
    aget v3, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v14, :cond_da

    add-int/lit8 v4, v5, 0x1

    aget v4, v13, v4

    :goto_c4
    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1957
    .restart local v19       #sub:Ljava/lang/String;
    new-instance v18, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v18 .. v19}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .line 1958
    .restart local v18       #rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v3

    if-eqz v3, :cond_dc

    move-object/from16 v3, v18

    .line 1960
    goto :goto_9d

    .end local v18           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v19           #sub:Ljava/lang/String;
    :cond_da
    move v4, v12

    .line 1954
    goto :goto_c4

    .line 1950
    :cond_dc
    add-int/lit8 v5, v5, 0x1

    goto :goto_a4

    .line 1967
    .end local v5           #i:I
    .end local v12           #headerLen:I
    .end local v13           #pos:[I
    .end local v14           #posLen:I
    .end local v16           #posMax:I
    :cond_df
    const/4 v3, 0x0

    goto :goto_9d

    .restart local v5       #i:I
    .restart local v12       #headerLen:I
    .restart local v13       #pos:[I
    .restart local v15       #posLen:I
    .restart local v16       #posMax:I
    .restart local v17       #quoted:Z
    :cond_e1
    move v14, v15

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    goto/16 :goto_2c
.end method

.method private sendMessageInternal(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 2098
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    if-eqz v0, :cond_a

    .line 2099
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2103
    :goto_9
    return-void

    .line 2101
    :cond_a
    invoke-virtual {p0, p1}, Landroid/webkit/LoadListener;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method static willLoadFromCache(Ljava/lang/String;J)Z
    .registers 7
    .parameter "url"
    .parameter "identifier"

    .prologue
    .line 1341
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    if-eqz v1, :cond_32

    const/4 v1, 0x1

    move v0, v1

    .line 1343
    .local v0, inCache:Z
    :goto_9
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_31

    .line 1344
    const-string/jumbo v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "willLoadFromCache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_31
    return v0

    .line 1341
    .end local v0           #inCache:Z
    :cond_32
    const/4 v1, 0x0

    move v0, v1

    goto :goto_9
.end method


# virtual methods
.method attachRequestHandle(Landroid/net/http/RequestHandle;)V
    .registers 5
    .parameter "requestHandle"

    .prologue
    .line 1295
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_1d

    .line 1296
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.attachRequestHandle(): requestHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_1d
    iput-object p1, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1300
    return-void
.end method

.method authCredentialsInvalid()Z
    .registers 2

    .prologue
    .line 1165
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isDigest()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getStale()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public cancel()V
    .registers 3

    .prologue
    const-string/jumbo v1, "webkit"

    .line 1642
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_13

    .line 1643
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-nez v0, :cond_33

    .line 1644
    const-string/jumbo v0, "webkit"

    const-string v0, "LoadListener.cancel(): no requestHandle"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_1f

    .line 1650
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->cancel()V

    .line 1651
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1654
    :cond_1f
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1656
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    .line 1695
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1696
    return-void

    .line 1646
    :cond_33
    const-string/jumbo v0, "webkit"

    const-string v0, "LoadListener.cancel()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public cancelled()Z
    .registers 2

    .prologue
    .line 488
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    return v0
.end method

.method public certificate(Landroid/net/http/SslCertificate;)V
    .registers 5
    .parameter "certificate"

    .prologue
    .line 793
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_1d

    .line 794
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_1d
    const/16 v0, 0xaa

    invoke-virtual {p0, v0, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 797
    return-void
.end method

.method checkCache(Ljava/util/Map;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1059
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    invoke-static {v1, v2, v3, p1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    .line 1064
    .local v0, result:Landroid/webkit/CacheManager$CacheResult;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 1066
    iput-boolean v4, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 1068
    if-eqz v0, :cond_6a

    .line 1073
    new-instance v1, Landroid/webkit/CacheLoader;

    invoke-direct {v1, p0, v0}, Landroid/webkit/CacheLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V

    iput-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 1077
    const-string v1, "if-none-match"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string v1, "if-modified-since"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1081
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_4b

    .line 1082
    const-string/jumbo v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrameLoader: HTTP URL in cache and usable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_4b
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1086
    iget-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1}, Landroid/webkit/CacheLoader;->load()V

    .line 1093
    :goto_56
    iput-boolean v5, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    move v1, v5

    .line 1097
    :goto_59
    return v1

    .line 1089
    :cond_5a
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x65

    iget-object v3, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_56

    :cond_6a
    move v1, v4

    .line 1097
    goto :goto_59
.end method

.method contentLength()J
    .registers 3

    .prologue
    .line 1376
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mContentLength:J

    return-wide v0
.end method

.method public data([BI)V
    .registers 7
    .parameter "data"
    .parameter "length"

    .prologue
    .line 844
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_21

    .line 845
    const-string/jumbo v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadListener.data(): url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_21
    const/4 v0, 0x0

    .line 870
    .local v0, sendMessage:Z
    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v1

    .line 871
    :try_start_25
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v2}, Landroid/webkit/ByteArrayBuilder;->isEmpty()Z

    move-result v0

    .line 872
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Landroid/webkit/ByteArrayBuilder;->append([BII)V

    .line 873
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_3e

    .line 874
    if-eqz v0, :cond_3d

    .line 876
    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 878
    :cond_3d
    return-void

    .line 873
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v2
.end method

.method detachRequestHandle()V
    .registers 4

    .prologue
    .line 1303
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_1f

    .line 1304
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.detachRequestHandle(): requestHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1308
    return-void
.end method

.method downloadFile()V
    .registers 8

    .prologue
    .line 1318
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1322
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v3}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 1331
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 1332
    return-void
.end method

.method public endData()V
    .registers 4

    .prologue
    .line 887
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_21

    .line 888
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.endData(): url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_21
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 891
    return-void
.end method

.method public error(ILjava/lang/String;)V
    .registers 6
    .parameter "id"
    .parameter "description"

    .prologue
    .line 817
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_35

    .line 818
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.error url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_35
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/webkit/LoadListener;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 822
    return-void
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFrame()Landroid/webkit/BrowserFrame;
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method getWebAddress()Landroid/net/WebAddress;
    .registers 2

    .prologue
    .line 1265
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    return-object v0
.end method

.method handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1196
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_33

    .line 1197
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.handleAuthResponse: url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_33
    if-eqz p1, :cond_3b

    if-eqz p2, :cond_3b

    .line 1202
    invoke-virtual {p0, p1, p2}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :goto_3a
    return-void

    .line 1205
    :cond_3b
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 1206
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_3a
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    const/16 v11, 0x78

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, "<GATE-M>DEV_ACTION_ERROR</GATE-M>"

    const-string v10, "GATE"

    .line 275
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_198

    .line 467
    :cond_d
    :goto_d
    return-void

    .line 284
    :sswitch_e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/http/Headers;

    .line 285
    .local v2, hdr:Landroid/net/http/Headers;
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    if-eqz v7, :cond_86

    const-wide/16 v7, 0x0

    invoke-virtual {v2}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_86

    .line 287
    iget v7, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v8, 0x190

    if-lt v7, v8, :cond_86

    iget v7, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v8, 0x258

    if-ge v7, v8, :cond_86

    iget v7, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v8, 0x191

    if-eq v7, v8, :cond_86

    iget v7, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v8, 0x197

    if-eq v7, v8, :cond_86

    .line 291
    iget-object v7, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    if-eqz v7, :cond_44

    iget-object v7, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_59

    .line 292
    :cond_44
    iget v7, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    rem-int/lit8 v3, v7, 0x64

    .line 293
    .local v3, index:I
    iget v7, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v8, 0x1f4

    if-ge v7, v8, :cond_7a

    .line 294
    iget-object v7, p0, Landroid/webkit/LoadListener;->clientErrorMsg:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_59

    .line 295
    iget-object v7, p0, Landroid/webkit/LoadListener;->clientErrorMsg:[Ljava/lang/String;

    aget-object v7, v7, v3

    iput-object v7, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    .line 302
    .end local v3           #index:I
    :cond_59
    :goto_59
    iget v7, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_d

    .line 297
    .restart local v3       #index:I
    :cond_7a
    iget-object v7, p0, Landroid/webkit/LoadListener;->serverErrorMsg:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_59

    .line 298
    iget-object v7, p0, Landroid/webkit/LoadListener;->serverErrorMsg:[Ljava/lang/String;

    aget-object v7, v7, v3

    iput-object v7, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    goto :goto_59

    .line 308
    .end local v3           #index:I
    :cond_86
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/http/Headers;

    invoke-direct {p0, v7}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    goto :goto_d

    .line 318
    .end local v2           #hdr:Landroid/net/http/Headers;
    :sswitch_8e
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    if-eqz v7, :cond_be

    .line 319
    iput-boolean v9, p0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    .line 320
    iput-boolean v8, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    .line 322
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7}, Landroid/webkit/ByteArrayBuilder;->getFirstChunkEx()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 324
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_ae

    iget v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v7, :cond_ae

    .line 325
    iget-object v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v8, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {v7, v8}, Landroid/webkit/WebFeedSniffer;->mimeType([BI)Ljava/lang/String;

    move-result-object v6

    .line 326
    .local v6, type:Ljava/lang/String;
    if-eqz v6, :cond_ae

    .line 327
    iput-object v6, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 331
    .end local v6           #type:Ljava/lang/String;
    :cond_ae
    iget-object v7, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-direct {p0, v7}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    .line 334
    const/16 v7, 0x6e

    invoke-virtual {p0, v7}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/webkit/LoadListener;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_d

    .line 338
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_be
    iget v7, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v7, :cond_d

    invoke-direct {p0}, Landroid/webkit/LoadListener;->ignoreCallbacks()Z

    move-result v7

    if-nez v7, :cond_d

    .line 339
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    goto/16 :goto_d

    .line 352
    :sswitch_cd
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    if-eqz v7, :cond_f0

    .line 353
    iput-boolean v9, p0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    .line 354
    iput-boolean v8, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    .line 356
    iget-object v7, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-direct {p0, v7}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    .line 358
    invoke-virtual {p0, v11}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 370
    :goto_e1
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 371
    const-string v7, "GATE"

    const-string v7, "<GATE-M>DEV_ACTION_COMPLETED</GATE-M>"

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 362
    :cond_f0
    invoke-direct {p0}, Landroid/webkit/LoadListener;->handleEndData()V

    goto :goto_e1

    .line 384
    :sswitch_f4
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    if-eqz v7, :cond_119

    .line 385
    iput-boolean v9, p0, Landroid/webkit/LoadListener;->m_feedTypeSniffed:Z

    .line 386
    iput-boolean v8, p0, Landroid/webkit/LoadListener;->mShouldDoFeedSniff:Z

    .line 388
    iget-object v7, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-direct {p0, v7}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    .line 390
    const/16 v7, 0x82

    invoke-virtual {p0, v7}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 401
    :goto_10a
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 402
    const-string v7, "GATE"

    const-string v7, "<GATE-M>DEV_ACTION_ERROR</GATE-M>"

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 394
    :cond_119
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_10a

    .line 413
    :sswitch_123
    iput-boolean v8, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    .line 414
    invoke-direct {p0}, Landroid/webkit/LoadListener;->doRedirect()V

    goto/16 :goto_d

    .line 425
    :sswitch_12a
    iput-boolean v9, p0, Landroid/webkit/LoadListener;->mRedirectConfirmation:Z

    .line 426
    const/16 v7, 0x8c

    invoke-virtual {p0, v7}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 427
    .local v1, contMsg:Landroid/os/Message;
    invoke-virtual {p0, v11}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 428
    .local v5, stopMsg:Landroid/os/Message;
    iget-object v7, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v7}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v7

    invoke-virtual {v7, v5, v1}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_d

    .line 437
    .end local v1           #contMsg:Landroid/os/Message;
    .end local v5           #stopMsg:Landroid/os/Message;
    :sswitch_141
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    .line 438
    .local v4, status:Ljava/util/HashMap;
    const-string/jumbo v7, "major"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string/jumbo v7, "minor"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v7, "code"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string/jumbo v7, "reason"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10, v7}, Landroid/webkit/LoadListener;->handleStatus(IIILjava/lang/String;)V

    goto/16 :goto_d

    .line 449
    .end local v4           #status:Ljava/util/HashMap;
    :sswitch_179
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/http/SslCertificate;

    invoke-direct {p0, v7}, Landroid/webkit/LoadListener;->handleCertificate(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_d

    .line 460
    :sswitch_182
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v7

    if-eqz v7, :cond_18f

    .line 461
    const-string v7, "GATE"

    const-string v7, "<GATE-M>DEV_ACTION_ERROR</GATE-M>"

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_18f
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/http/SslError;

    invoke-direct {p0, v7}, Landroid/webkit/LoadListener;->handleSslError(Landroid/net/http/SslError;)V

    goto/16 :goto_d

    .line 275
    :sswitch_data_198
    .sparse-switch
        0x64 -> :sswitch_e
        0x6e -> :sswitch_8e
        0x78 -> :sswitch_cd
        0x82 -> :sswitch_f4
        0x8c -> :sswitch_123
        0x96 -> :sswitch_12a
        0xa0 -> :sswitch_141
        0xaa -> :sswitch_179
        0xb4 -> :sswitch_182
    .end sparse-switch
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .registers 7
    .parameter "error"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1107
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_3f

    .line 1108
    const-string/jumbo v0, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadListener.handleSslErrorRequest(): url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " primary error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_3f
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/webkit/Network;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v0

    if-eqz v0, :cond_4d

    move v0, v3

    .line 1133
    :goto_4c
    return v0

    .line 1120
    :cond_4d
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1121
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, v4}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    move v0, v3

    .line 1122
    goto :goto_4c

    .line 1124
    :cond_5a
    const/16 v0, 0xb4

    invoke-virtual {p0, v0, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 1130
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_6b

    .line 1131
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iput-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    .line 1133
    :cond_6b
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_71

    move v0, v3

    goto :goto_4c

    :cond_71
    move v0, v4

    goto :goto_4c
.end method

.method handleSslErrorResponse(Z)V
    .registers 3
    .parameter "proceed"

    .prologue
    .line 1181
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_9

    .line 1182
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    .line 1184
    :cond_9
    if-nez p1, :cond_11

    .line 1186
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 1187
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    .line 1189
    :cond_11
    return-void
.end method

.method public headers(Landroid/net/http/Headers;)V
    .registers 7
    .parameter "headers"

    .prologue
    .line 498
    sget-boolean v2, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "webkit"

    const-string v3, "LoadListener.headers"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_c
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v2, :cond_11

    .line 506
    :goto_10
    return-void

    .line 501
    :cond_11
    invoke-virtual {p1}, Landroid/net/http/Headers;->getSetCookie()Ljava/util/ArrayList;

    move-result-object v0

    .line 502
    .local v0, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 503
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/webkit/CookieManager;->setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 505
    :cond_2e
    const/16 v2, 0x64

    invoke-virtual {p0, v2, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_10
.end method

.method host()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1272
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    if-eqz v0, :cond_9

    .line 1273
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    .line 1276
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method isDownLoadableMultipartContent(Ljava/lang/String;)Z
    .registers 14
    .parameter "contentType"

    .prologue
    const/16 v11, 0xa

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v7, 0x20

    const-string/jumbo v8, "webkit"

    .line 2040
    const-string/jumbo v5, "type="

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2041
    .local v0, bPos:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_d3

    .line 2042
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2043
    .local v4, subType:Ljava/lang/String;
    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2044
    .local v2, bValpos:I
    add-int/lit8 v2, v2, 0x1

    .line 2046
    :goto_23
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_31

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_34

    .line 2047
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 2048
    :cond_34
    move v1, v2

    .line 2052
    .local v1, bValEndPos:I
    :cond_35
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_7c

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_7c

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v11, :cond_7c

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_7c

    .line 2053
    sget-boolean v5, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v5, :cond_73

    .line 2054
    const-string/jumbo v5, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subType String Char At Start Position  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    :cond_73
    add-int/lit8 v1, v1, 0x1

    .line 2058
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v10

    if-ne v1, v5, :cond_35

    .line 2061
    :cond_7c
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-eq v5, v6, :cond_98

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_98

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v11, :cond_98

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_9a

    .line 2065
    :cond_98
    add-int/lit8 v1, v1, -0x1

    .line 2066
    :cond_9a
    :goto_9a
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_a5

    .line 2067
    add-int/lit8 v1, v1, -0x1

    goto :goto_9a

    .line 2068
    :cond_a5
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2069
    .local v3, bValue:Ljava/lang/String;
    sget-boolean v5, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v5, :cond_c8

    .line 2070
    const-string/jumbo v5, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final subType String = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :cond_c8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_f2

    move v5, v9

    .line 2089
    .end local v1           #bValEndPos:I
    .end local v2           #bValpos:I
    .end local v3           #bValue:Ljava/lang/String;
    .end local v4           #subType:Ljava/lang/String;
    :goto_d0
    return v5

    .restart local v1       #bValEndPos:I
    .restart local v2       #bValpos:I
    .restart local v3       #bValue:Ljava/lang/String;
    .restart local v4       #subType:Ljava/lang/String;
    :sswitch_d1
    move v5, v10

    .line 2079
    goto :goto_d0

    .line 2085
    .end local v1           #bValEndPos:I
    .end local v2           #bValpos:I
    .end local v3           #bValue:Ljava/lang/String;
    .end local v4           #subType:Ljava/lang/String;
    :cond_d3
    sget-boolean v5, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v5, :cond_f0

    .line 2086
    const-string/jumbo v5, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No subType String in Content-Type Header"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f0
    move v5, v9

    .line 2089
    goto :goto_d0

    .line 2072
    :sswitch_data_f2
    .sparse-switch
        -0x64a50f9 -> :sswitch_d1
        0x12fac3b8 -> :sswitch_d1
        0x3e4a533e -> :sswitch_d1
        0x67c1d54c -> :sswitch_d1
        0x6e088824 -> :sswitch_d1
    .end sparse-switch
.end method

.method isSynchronous()Z
    .registers 2

    .prologue
    .line 481
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    return v0
.end method

.method loadSynchronousMessages()V
    .registers 3

    .prologue
    .line 2109
    sget-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    if-nez v0, :cond_e

    .line 2110
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2118
    :cond_e
    :goto_e
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 2119
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->handleMessage(Landroid/os/Message;)V

    goto :goto_e

    .line 2121
    :cond_23
    return-void
.end method

.method makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1211
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-nez v0, :cond_9

    .line 1237
    :cond_8
    :goto_8
    return-void

    .line 1215
    :cond_9
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p1}, Landroid/net/http/HttpAuthHeader;->setUsername(Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p2}, Landroid/net/http/HttpAuthHeader;->setPassword(Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getScheme()I

    move-result v9

    .line 1219
    .local v9, scheme:I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_28

    .line 1221
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .line 1223
    .local v1, isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/http/RequestHandle;->setupBasicAuthResponse(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1224
    .end local v1           #isProxy:Z
    :cond_28
    const/4 v0, 0x2

    if-ne v9, v0, :cond_8

    .line 1226
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .line 1228
    .restart local v1       #isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v4

    .line 1229
    .local v4, realm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    .line 1230
    .local v5, nonce:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getQop()Ljava/lang/String;

    move-result-object v6

    .line 1231
    .local v6, qop:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 1232
    .local v7, algorithm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getOpaque()Ljava/lang/String;

    move-result-object v8

    .line 1234
    .local v8, opaque:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v8}, Landroid/net/http/RequestHandle;->setupDigestAuthResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method mimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1361
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method notifyError()V
    .registers 4

    .prologue
    .line 1605
    iget v1, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v1, :cond_1a

    .line 1606
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    .line 1607
    .local v0, description:Ljava/lang/String;
    if-nez v0, :cond_c

    const-string v0, ""

    .line 1619
    :cond_c
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Landroid/webkit/LoadListener;->nativeError(ILjava/lang/String;Ljava/lang/String;)V

    .line 1620
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1622
    .end local v0           #description:Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method originalUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1283
    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1284
    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    .line 1286
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_6
.end method

.method parseContentTypeHeader(Ljava/lang/String;)V
    .registers 11
    .parameter "contentType"

    .prologue
    const/16 v8, 0x3b

    const/4 v7, 0x1

    .line 1840
    sget-boolean v4, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v4, :cond_20

    .line 1841
    const-string/jumbo v4, "webkit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoadListener.parseContentTypeHeader: contentType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    :cond_20
    if-eqz p1, :cond_89

    .line 1846
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1847
    .local v1, i:I
    if-ltz v1, :cond_9b

    .line 1848
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1850
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1851
    .local v2, j:I
    if-lez v2, :cond_92

    .line 1852
    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1853
    if-ge v1, v2, :cond_41

    .line 1854
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1856
    :cond_41
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 1861
    :goto_49
    iget-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 1863
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    if-ge v1, v4, :cond_6c

    .line 1867
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    .line 1875
    .end local v2           #j:I
    :cond_6c
    :goto_6c
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1878
    :try_start_74
    sget-object v4, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v5, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1879
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 1880
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;
    :try_end_89
    .catch Ljava/lang/IllegalStateException; {:try_start_74 .. :try_end_89} :catch_a2

    .line 1889
    .end local v1           #i:I
    .end local v3           #m:Ljava/util/regex/Matcher;
    :cond_89
    :goto_89
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1890
    return-void

    .line 1858
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_92
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    goto :goto_49

    .line 1871
    .end local v2           #j:I
    :cond_9b
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_6c

    .line 1882
    .restart local v3       #m:Ljava/util/regex/Matcher;
    :cond_9e
    :try_start_9e
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V
    :try_end_a1
    .catch Ljava/lang/IllegalStateException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_89

    .line 1884
    .end local v3           #m:Ljava/util/regex/Matcher;
    :catch_a2
    move-exception v4

    move-object v0, v4

    .line 1885
    .local v0, ex:Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto :goto_89
.end method

.method pauseLoad(Z)V
    .registers 3
    .parameter "pause"

    .prologue
    .line 1629
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_9

    .line 1630
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->pauseRequest(Z)V

    .line 1632
    :cond_9
    return-void
.end method

.method postIdentifier()J
    .registers 3

    .prologue
    .line 1291
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    return-wide v0
.end method

.method proxyAuthenticate()Z
    .registers 2

    .prologue
    .line 737
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_b

    .line 738
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v0

    .line 741
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method realm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1151
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_6

    .line 1152
    const/4 v0, 0x0

    .line 1154
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method resetCancel()V
    .registers 2

    .prologue
    .line 1357
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    .line 1358
    return-void
.end method

.method setCacheLoader(Landroid/webkit/CacheLoader;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 1047
    iput-object p1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 1049
    return-void
.end method

.method setRequestData(Ljava/lang/String;Ljava/util/Map;[B)V
    .registers 4
    .parameter "method"
    .parameter
    .parameter "postData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 1249
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    .line 1250
    iput-object p2, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    .line 1251
    iput-object p3, p0, Landroid/webkit/LoadListener;->mPostData:[B

    .line 1252
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 1987
    if-eqz p1, :cond_1a

    .line 1988
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    .line 1989
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1990
    invoke-static {p1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    .line 1992
    :try_start_11
    new-instance v1, Landroid/net/WebAddress;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;
    :try_end_1a
    .catch Landroid/net/ParseException; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 2000
    :cond_1a
    :goto_1a
    return-void

    .line 1993
    :catch_1b
    move-exception v1

    move-object v0, v1

    .line 1994
    .local v0, e:Landroid/net/ParseException;
    invoke-virtual {v0}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_1a

    .line 1997
    .end local v0           #e:Landroid/net/ParseException;
    :cond_21
    iput-object p1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_1a
.end method

.method sslError()Landroid/net/http/SslError;
    .registers 2

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    return-object v0
.end method

.method public status(IIILjava/lang/String;)V
    .registers 10
    .parameter "majorVersion"
    .parameter "minorVersion"
    .parameter "code"
    .parameter "reasonPhrase"

    .prologue
    const-string v4, ""

    .line 752
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_49

    .line 753
    const-string/jumbo v1, "webkit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadListener: from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " major: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 760
    .local v0, status:Ljava/util/HashMap;
    const-string/jumbo v1, "major"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string/jumbo v1, "minor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string v1, "code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v1}, Landroid/webkit/ByteArrayBuilder;->clear()V

    .line 766
    const-string v1, ""

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 767
    const-string v1, ""

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 768
    const-string v1, ""

    iput-object v4, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    .line 769
    const/16 v1, 0xa0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 770
    return-void
.end method

.method tearDown()V
    .registers 11

    .prologue
    .line 1540
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v0

    if-nez v0, :cond_55

    .line 1541
    new-instance v8, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v8}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .line 1542
    .local v8, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v8, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    .line 1543
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v0, v8, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    .line 1544
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v0, v8, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    .line 1545
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, v8}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1552
    .end local v8           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_22
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->isDownloadabelfile:Z

    if-eqz v0, :cond_7e

    .line 1555
    :try_start_26
    iget-object v0, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_32

    .line 1556
    iget-object v0, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1557
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->downloadStream:Ljava/io/FileOutputStream;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_32} :catch_63

    .line 1567
    :cond_32
    :goto_32
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v3}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 1573
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 1583
    :cond_54
    :goto_54
    return-void

    .line 1548
    :cond_55
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_22

    .line 1559
    :catch_63
    move-exception v0

    move-object v9, v0

    .line 1560
    .local v9, ex:Ljava/io/IOException;
    const-string v0, "dd or drm file"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " exception when closing the file during download : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 1577
    .end local v9           #ex:Ljava/io/IOException;
    :cond_7e
    iget v0, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v0, :cond_54

    .line 1578
    new-instance v7, Landroid/webkit/PerfChecker;

    invoke-direct {v7}, Landroid/webkit/PerfChecker;-><init>()V

    .line 1579
    .local v7, checker:Landroid/webkit/PerfChecker;
    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    .line 1580
    const-string/jumbo v0, "res nativeFinished"

    invoke-virtual {v7, v0}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    .line 1581
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    goto :goto_54
.end method

.method transferEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1258
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    return-object v0
.end method

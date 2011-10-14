.class public Landroid/net/http/AndroidHttpClientConnection;
.super Ljava/lang/Object;
.source "AndroidHttpClientConnection.java"

# interfaces
.implements Lorg/apache/http/HttpInetConnection;
.implements Lorg/apache/http/HttpConnection;


# instance fields
.field private final entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

.field private inbuffer:Lorg/apache/http/io/SessionInputBuffer;

.field private maxHeaderCount:I

.field private maxLineLength:I

.field private metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

.field private volatile open:Z

.field private outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

.field private requestWriter:Lorg/apache/http/io/HttpMessageWriter;

.field private socket:Ljava/net/Socket;

.field private socketoutbuffer:Lorg/apache/http/impl/io/SocketOutputBuffer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 72
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 74
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socketoutbuffer:Lorg/apache/http/impl/io/SocketOutputBuffer;

    .line 81
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    .line 82
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    .line 84
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    .line 87
    new-instance v0, Lorg/apache/http/impl/entity/EntitySerializer;

    new-instance v1, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v1}, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/impl/entity/EntitySerializer;-><init>(Lorg/apache/http/entity/ContentLengthStrategy;)V

    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

    .line 89
    return-void
.end method

.method private assertNotOpen()V
    .registers 3

    .prologue
    .line 158
    iget-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    if-eqz v0, :cond_c

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_c
    return-void
.end method

.method private assertOpen()V
    .registers 3

    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    if-nez v0, :cond_c

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_c
    return-void
.end method

.method private determineLength(Landroid/net/http/Headers;)J
    .registers 10
    .parameter "headers"

    .prologue
    const-wide/16 v6, -0x1

    .line 429
    invoke-virtual {p1}, Landroid/net/http/Headers;->getTransferEncoding()J

    move-result-wide v2

    .line 432
    .local v2, transferEncoding:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_e

    move-wide v4, v2

    .line 439
    :goto_d
    return-wide v4

    .line 435
    :cond_e
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v0

    .line 436
    .local v0, contentlen:J
    cmp-long v4, v0, v6

    if-lez v4, :cond_18

    move-wide v4, v0

    .line 437
    goto :goto_d

    :cond_18
    move-wide v4, v6

    .line 439
    goto :goto_d
.end method


# virtual methods
.method public bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    .registers 9
    .parameter "socket"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 100
    if-nez p1, :cond_c

    .line 101
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Socket may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_c
    if-nez p2, :cond_16

    .line 104
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HTTP parameters may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_16
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertNotOpen()V

    .line 107
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 108
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 110
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    .line 111
    .local v1, linger:I
    if-ltz v1, :cond_33

    .line 112
    if-lez v1, :cond_77

    move v2, v5

    :goto_30
    invoke-virtual {p1, v2, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 114
    :cond_33
    iput-object p1, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    .line 116
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getSocketBufferSize(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 117
    .local v0, buffersize:I
    new-instance v2, Lorg/apache/http/impl/io/SocketInputBuffer;

    invoke-direct {v2, p1, v0, p2}, Lorg/apache/http/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 118
    new-instance v2, Lorg/apache/http/impl/io/SocketOutputBuffer;

    invoke-direct {v2, p1, v0, p2}, Lorg/apache/http/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 124
    const-string v2, "http.connection.max-header-count"

    invoke-interface {p2, v2, v3}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/net/http/AndroidHttpClientConnection;->maxHeaderCount:I

    .line 126
    const-string v2, "http.connection.max-line-length"

    invoke-interface {p2, v2, v3}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/net/http/AndroidHttpClientConnection;->maxLineLength:I

    .line 129
    new-instance v2, Lorg/apache/http/impl/io/HttpRequestWriter;

    iget-object v3, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p2}, Lorg/apache/http/impl/io/HttpRequestWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Landroid/net/http/AndroidHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    .line 131
    new-instance v2, Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    iget-object v3, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v3}, Lorg/apache/http/io/SessionInputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    move-result-object v3

    iget-object v4, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v4}, Lorg/apache/http/io/SessionOutputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;-><init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V

    iput-object v2, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    .line 135
    iput-boolean v5, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    .line 136
    return-void

    .line 112
    .end local v0           #buffersize:I
    :cond_77
    const/4 v2, 0x0

    goto :goto_30
.end method

.method public bufferLength()I
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socketoutbuffer:Lorg/apache/http/impl/io/SocketOutputBuffer;

    invoke-virtual {v0}, Lorg/apache/http/impl/io/SocketOutputBuffer;->getBufferLength()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    if-nez v0, :cond_5

    .line 258
    :goto_4
    return-void

    .line 243
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    .line 244
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClientConnection;->doFlush()V

    .line 247
    :try_start_b
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_1f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_10} :catch_1b

    .line 251
    :goto_10
    :try_start_10
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_1d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_10 .. :try_end_15} :catch_1b

    .line 257
    :goto_15
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_4

    .line 254
    :catch_1b
    move-exception v0

    goto :goto_15

    .line 252
    :catch_1d
    move-exception v0

    goto :goto_15

    .line 248
    :catch_1f
    move-exception v0

    goto :goto_10
.end method

.method protected doFlush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 299
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 303
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClientConnection;->doFlush()V

    .line 304
    return-void
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 176
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 178
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 184
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    .line 186
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 192
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 194
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getRemotePort()I
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 200
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    .line 202
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getSocketTimeout()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 220
    iget-object v1, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_10

    .line 222
    :try_start_5
    iget-object v1, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 227
    :goto_b
    return v1

    .line 223
    :catch_c
    move-exception v1

    move-object v0, v1

    .local v0, ignore:Ljava/net/SocketException;
    move v1, v2

    .line 224
    goto :goto_b

    .end local v0           #ignore:Ljava/net/SocketException;
    :cond_10
    move v1, v2

    .line 227
    goto :goto_b
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 171
    iget-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isStale()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 460
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 462
    :try_start_4
    iget-object v1, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_c

    .line 463
    const/4 v1, 0x0

    .line 465
    :goto_b
    return v1

    .line 464
    :catch_c
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/io/IOException;
    move v1, v3

    .line 465
    goto :goto_b
.end method

.method public parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;
    .registers 16
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 318
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v10, 0x40

    invoke-direct {v1, v10}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 320
    .local v1, current:Lorg/apache/http/util/CharArrayBuffer;
    iget-object v10, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v10, v1}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1b

    .line 321
    new-instance v10, Lorg/apache/http/NoHttpResponseException;

    const-string v11, "The target server failed to respond"

    invoke-direct {v10, v11}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 325
    :cond_1b
    sget-object v10, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    new-instance v11, Lorg/apache/http/message/ParserCursor;

    const/4 v12, 0x0

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    invoke-virtual {v10, v1, v11}, Lorg/apache/http/message/BasicLineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 329
    .local v9, statusline:Lorg/apache/http/StatusLine;
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 332
    .local v8, statusCode:I
    const/4 v6, 0x0

    .line 333
    .local v6, previous:Lorg/apache/http/util/CharArrayBuffer;
    const/4 v3, 0x0

    .line 335
    .local v3, headerNumber:I
    :cond_31
    if-nez v1, :cond_59

    .line 336
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    .end local v1           #current:Lorg/apache/http/util/CharArrayBuffer;
    const/16 v10, 0x40

    invoke-direct {v1, v10}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 341
    .restart local v1       #current:Lorg/apache/http/util/CharArrayBuffer;
    :goto_3a
    iget-object v10, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v10, v1}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v4

    .line 342
    .local v4, l:I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_4a

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_5d

    .line 382
    :cond_4a
    if-eqz v6, :cond_4f

    .line 383
    invoke-virtual {p1, v6}, Landroid/net/http/Headers;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 386
    :cond_4f
    const/16 v10, 0xc8

    if-lt v8, v10, :cond_58

    .line 387
    iget-object v10, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v10}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    .line 389
    :cond_58
    return-object v9

    .line 339
    .end local v4           #l:I
    :cond_59
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    goto :goto_3a

    .line 349
    .restart local v4       #l:I
    :cond_5d
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    .line 350
    .local v2, first:C
    const/16 v10, 0x20

    if-eq v2, v10, :cond_6a

    const/16 v10, 0x9

    if-ne v2, v10, :cond_bb

    :cond_6a
    if-eqz v6, :cond_bb

    .line 353
    const/4 v7, 0x0

    .line 354
    .local v7, start:I
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    .line 355
    .local v5, length:I
    :goto_71
    if-ge v7, v5, :cond_7f

    .line 356
    invoke-virtual {v1, v7}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v0

    .line 357
    .local v0, ch:C
    const/16 v10, 0x20

    if-eq v0, v10, :cond_9b

    const/16 v10, 0x9

    if-eq v0, v10, :cond_9b

    .line 362
    .end local v0           #ch:C
    :cond_7f
    iget v10, p0, Landroid/net/http/AndroidHttpClientConnection;->maxLineLength:I

    if-lez v10, :cond_9e

    invoke-virtual {v6}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v11

    add-int/2addr v10, v11

    sub-int/2addr v10, v7

    iget v11, p0, Landroid/net/http/AndroidHttpClientConnection;->maxLineLength:I

    if-le v10, v11, :cond_9e

    .line 365
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Maximum line length limit exceeded"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 360
    .restart local v0       #ch:C
    :cond_9b
    add-int/lit8 v7, v7, 0x1

    .line 361
    goto :goto_71

    .line 367
    .end local v0           #ch:C
    :cond_9e
    const/16 v10, 0x20

    invoke-virtual {v6, v10}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 368
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v6, v1, v7, v10}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    .line 377
    .end local v5           #length:I
    .end local v7           #start:I
    :goto_ab
    iget v10, p0, Landroid/net/http/AndroidHttpClientConnection;->maxHeaderCount:I

    if-lez v10, :cond_31

    iget v10, p0, Landroid/net/http/AndroidHttpClientConnection;->maxHeaderCount:I

    if-lt v3, v10, :cond_31

    .line 378
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Maximum header count exceeded"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 370
    :cond_bb
    if-eqz v6, :cond_c0

    .line 371
    invoke-virtual {p1, v6}, Landroid/net/http/Headers;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 373
    :cond_c0
    add-int/lit8 v3, v3, 0x1

    .line 374
    move-object v6, v1

    .line 375
    const/4 v1, 0x0

    goto :goto_ab
.end method

.method public receiveResponseEntity(Landroid/net/http/Headers;)Lorg/apache/http/HttpEntity;
    .registers 12
    .parameter "headers"

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    .line 398
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 399
    new-instance v2, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 401
    .local v2, entity:Lorg/apache/http/entity/BasicHttpEntity;
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClientConnection;->determineLength(Landroid/net/http/Headers;)J

    move-result-wide v3

    .line 402
    .local v3, len:J
    const-wide/16 v5, -0x2

    cmp-long v5, v3, v5

    if-nez v5, :cond_39

    .line 403
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 404
    invoke-virtual {v2, v7, v8}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 405
    new-instance v5, Lorg/apache/http/impl/io/ChunkedInputStream;

    iget-object v6, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-direct {v5, v6}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v2, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 416
    :goto_26
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, contentTypeHeader:Ljava/lang/String;
    if-eqz v1, :cond_2f

    .line 418
    invoke-virtual {v2, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 420
    :cond_2f
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, contentEncodingHeader:Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 422
    invoke-virtual {v2, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 425
    :cond_38
    return-object v2

    .line 406
    .end local v0           #contentEncodingHeader:Ljava/lang/String;
    .end local v1           #contentTypeHeader:Ljava/lang/String;
    :cond_39
    cmp-long v5, v3, v7

    if-nez v5, :cond_4e

    .line 407
    invoke-virtual {v2, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 408
    invoke-virtual {v2, v7, v8}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 409
    new-instance v5, Lorg/apache/http/impl/io/IdentityInputStream;

    iget-object v6, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-direct {v5, v6}, Lorg/apache/http/impl/io/IdentityInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v2, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_26

    .line 411
    :cond_4e
    invoke-virtual {v2, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 412
    invoke-virtual {v2, v3, v4}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 413
    new-instance v5, Lorg/apache/http/impl/io/ContentLengthInputStream;

    iget-object v6, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-direct {v5, v6, v3, v4}, Lorg/apache/http/impl/io/ContentLengthInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;J)V

    invoke-virtual {v2, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_26
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .registers 5
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    if-nez p1, :cond_a

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_a
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 288
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_14

    .line 295
    :goto_13
    return-void

    .line 291
    :cond_14
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

    iget-object v1, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/http/impl/entity/EntitySerializer;->serialize(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/HttpMessage;Lorg/apache/http/HttpEntity;)V

    goto :goto_13
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .registers 4
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    if-nez p1, :cond_a

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_a
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 272
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lorg/apache/http/io/HttpMessageWriter;->write(Lorg/apache/http/HttpMessage;)V

    .line 273
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    .line 274
    return-void
.end method

.method public setSocketTimeout(I)V
    .registers 3
    .parameter "timeout"

    .prologue
    .line 207
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 208
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_c

    .line 210
    :try_start_7
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_c
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_c} :catch_d

    .line 217
    :cond_c
    :goto_c
    return-void

    .line 211
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public shutdown()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    .line 233
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    .line 234
    .local v0, tmpsocket:Ljava/net/Socket;
    if-eqz v0, :cond_a

    .line 235
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 237
    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, buffer:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 143
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClientConnection;->getRemotePort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    :goto_23
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 145
    :cond_2d
    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23
.end method

.class Lcom/android/internal/telephony/gsm/stk/tcpRxThread;
.super Ljava/lang/Object;
.source "StkBIPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

.field volatile stopRequestTCP:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->stopRequestTCP:Z

    .line 420
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    .line 421
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 358
    :cond_1
    :goto_1
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->stopRequestTCP:Z

    if-nez v5, :cond_f3

    .line 360
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 361
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->stopRequestTCP:Z

    .line 364
    :cond_e
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-nez v5, :cond_e1

    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/StkService;->isBIPCmdBeingProcessed()Z

    move-result v5

    if-nez v5, :cond_e1

    .line 367
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget v4, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    .line 369
    .local v4, size:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Maximum Packet Size negotiated by UICC "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    new-array v0, v4, [B

    .line 373
    .local v0, dataReceived:[B
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    .line 374
    .local v3, oneByte:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Length of data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    const/4 v5, -0x1

    if-eq v3, v5, :cond_9b

    .line 376
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 378
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->mStkBIPManager:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->sendDataAvailableEvent(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    .line 379
    const-string v5, "Read Data!!"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_71} :catch_72
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_71} :catch_b8

    goto :goto_1

    .line 398
    .end local v0           #dataReceived:[B
    .end local v3           #oneByte:I
    .end local v4           #size:I
    :catch_72
    move-exception v5

    move-object v1, v5

    .line 400
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 402
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 403
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->stopRequestTCP:Z

    goto/16 :goto_1

    .line 382
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #dataReceived:[B
    .restart local v3       #oneByte:I
    .restart local v4       #size:I
    :cond_9b
    :try_start_9b
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    .line 383
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    const/4 v6, 0x5

    iput-byte v6, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    .line 384
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->mStkBIPManager:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    .line 385
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->stopRequestTCP:Z

    .line 386
    const-string v5, "Connection terminated by BIP Server"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_b6} :catch_72
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_b6} :catch_b8

    goto/16 :goto_1

    .line 406
    .end local v0           #dataReceived:[B
    .end local v3           #oneByte:I
    .end local v4           #size:I
    :catch_b8
    move-exception v5

    move-object v2, v5

    .line 408
    .local v2, ee:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 410
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 411
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->stopRequestTCP:Z

    goto/16 :goto_1

    .line 391
    .end local v2           #ee:Ljava/lang/Exception;
    :cond_e1
    const-wide/16 v5, 0x64

    :try_start_e3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e6
    .catch Ljava/lang/InterruptedException; {:try_start_e3 .. :try_end_e6} :catch_e8
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_72
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_b8

    goto/16 :goto_1

    .line 392
    :catch_e8
    move-exception v1

    .line 393
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_e9
    const-string v5, "Interrupt Received!"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;->stopRequestTCP:Z
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_f1} :catch_72
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_f1} :catch_b8

    goto/16 :goto_1

    .line 417
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_f3
    return-void
.end method

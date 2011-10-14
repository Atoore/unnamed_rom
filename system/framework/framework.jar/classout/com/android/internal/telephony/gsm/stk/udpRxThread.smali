.class Lcom/android/internal/telephony/gsm/stk/udpRxThread;
.super Ljava/lang/Object;
.source "StkBIPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

.field volatile stopRequestUDP:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->stopRequestUDP:Z

    .line 487
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    .line 489
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 431
    :cond_1
    :goto_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->stopRequestUDP:Z

    if-nez v6, :cond_ff

    .line 433
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 434
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->stopRequestUDP:Z

    .line 437
    :cond_e
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-nez v6, :cond_c4

    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/StkService;->isBIPCmdBeingProcessed()Z

    move-result v6

    if-nez v6, :cond_c4

    .line 440
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v2, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v2, Ljava/net/DatagramSocket;

    .line 441
    .local v2, ds:Ljava/net/DatagramSocket;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget v5, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    .line 443
    .local v5, size:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Maximum UDP Buffer Size that can be received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    new-array v0, v5, [B

    .line 446
    .local v0, dataReceived:[B
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, v0, v5}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 447
    .local v1, dp:Ljava/net/DatagramPacket;
    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 448
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Length of UDP data received from network "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 450
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size of rxBuf : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->mStkBIPManager:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->conn:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->sendDataAvailableEvent(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_99} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_99} :catch_d6

    goto/16 :goto_1

    .line 465
    .end local v0           #dataReceived:[B
    .end local v1           #dp:Ljava/net/DatagramPacket;
    .end local v2           #ds:Ljava/net/DatagramSocket;
    .end local v5           #size:I
    :catch_9b
    move-exception v6

    move-object v3, v6

    .line 467
    .local v3, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 469
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 470
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->stopRequestUDP:Z

    goto/16 :goto_1

    .line 458
    .end local v3           #e:Ljava/io/IOException;
    :cond_c4
    const-wide/16 v6, 0x64

    :try_start_c6
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c9
    .catch Ljava/lang/InterruptedException; {:try_start_c6 .. :try_end_c9} :catch_cb
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c9} :catch_d6

    goto/16 :goto_1

    .line 459
    :catch_cb
    move-exception v3

    .line 460
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_cc
    const-string v6, "Interrupt Received!"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->stopRequestUDP:Z
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d4} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d4} :catch_d6

    goto/16 :goto_1

    .line 473
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catch_d6
    move-exception v6

    move-object v4, v6

    .line 475
    .local v4, ee:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 477
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 478
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/stk/udpRxThread;->stopRequestUDP:Z

    goto/16 :goto_1

    .line 484
    .end local v4           #ee:Ljava/lang/Exception;
    :cond_ff
    return-void
.end method

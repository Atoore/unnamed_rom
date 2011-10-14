.class Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;
.super Ljava/lang/Object;
.source "StkBIPServerListenThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

.field mStkBIPManager:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

.field s:Ljava/net/Socket;

.field serverSocket:Ljava/net/ServerSocket;

.field volatile stopRequest:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)V
    .registers 5
    .parameter "con"
    .parameter "bipManager"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->s:Ljava/net/Socket;

    .line 50
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    .line 51
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->mStkBIPManager:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->stopRequest:Z

    .line 53
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    .line 56
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    .line 57
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->mStkBIPManager:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    .line 59
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-string v7, "Exception while closing Socket"

    .line 64
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Port Number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget v4, v4, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v3, Ljava/net/ServerSocket;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget v4, v4, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-direct {v3, v4}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    .line 66
    const-string v3, "Server socket created."

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->s:Ljava/net/Socket;

    .line 70
    const-string v3, "Connection Accepted"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->s:Ljava/net/Socket;

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->socket:Ljava/net/Socket;

    .line 75
    const-string v3, "Sending Channel Status event "

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    const/4 v4, 0x2

    iput-byte v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->linkState:B

    .line 78
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    const/4 v4, 0x0

    iput-byte v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    .line 80
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->mStkBIPManager:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->sendChannelStatusEvent(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V

    .line 82
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    iget v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    .line 83
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    iget v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->writer:Ljava/io/BufferedOutputStream;

    .line 84
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xff

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    .line 85
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0xff

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->storeSendData:Ljava/io/ByteArrayOutputStream;

    .line 86
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->lastReadPosition:I

    .line 87
    const-string v3, "Initialized all streams"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    :cond_a5
    :goto_a5
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->stopRequest:Z

    if-nez v3, :cond_df

    .line 90
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    if-lez v3, :cond_119

    .line 91
    :goto_b3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->reader:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .local v0, byteRead:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_e0

    .line 92
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->byteArrayWriter:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c5} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c5} :catch_f0

    goto :goto_b3

    .line 118
    .end local v0           #byteRead:I
    :catch_c6
    move-exception v3

    move-object v1, v3

    .line 119
    .local v1, e:Ljava/io/IOException;
    const-string v3, "IOException while creating Server Socket"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    :try_start_cd
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->s:Ljava/net/Socket;

    if-eqz v3, :cond_d6

    .line 122
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 124
    :cond_d6
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_df

    .line 125
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_df} :catch_165

    .line 145
    .end local v1           #e:Ljava/io/IOException;
    :cond_df
    :goto_df
    return-void

    .line 94
    .restart local v0       #byteRead:I
    :cond_e0
    :try_start_e0
    const-string/jumbo v3, "sendDataAvailable Event"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->mStkBIPManager:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->sendDataAvailableEvent(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_ef} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_ef} :catch_f0

    goto :goto_a5

    .line 131
    .end local v0           #byteRead:I
    :catch_f0
    move-exception v3

    move-object v1, v3

    .line 132
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Exception while creating Server Socket"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    :try_start_f7
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->s:Ljava/net/Socket;

    if-eqz v3, :cond_100

    .line 135
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 137
    :cond_100
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_df

    .line 138
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_109} :catch_10a

    goto :goto_df

    .line 140
    :catch_10a
    move-exception v3

    move-object v2, v3

    .line 141
    .local v2, ex:Ljava/lang/Exception;
    const-string v3, "Exception while closing Socket"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_df

    .line 98
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_119
    const-wide/16 v3, 0x64

    :try_start_11b
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11e
    .catch Ljava/lang/InterruptedException; {:try_start_11b .. :try_end_11e} :catch_11f
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_11e} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_11e} :catch_f0

    goto :goto_a5

    .line 99
    :catch_11f
    move-exception v1

    .line 100
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_120
    const-string v3, "Interrupt Exception!! Stop Thread"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->stopRequest:Z

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopRequest = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->stopRequest:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_141} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_141} :catch_f0

    .line 104
    :try_start_141
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->s:Ljava/net/Socket;

    if-eqz v3, :cond_14a

    .line 105
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->s:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 107
    :cond_14a
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_a5

    .line 108
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerListenThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_153} :catch_155
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_153} :catch_c6

    goto/16 :goto_a5

    .line 110
    :catch_155
    move-exception v3

    move-object v2, v3

    .line 111
    .restart local v2       #ex:Ljava/lang/Exception;
    :try_start_157
    const-string v3, "Exception while closing Socket"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_163} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_163} :catch_f0

    goto/16 :goto_a5

    .line 127
    .end local v2           #ex:Ljava/lang/Exception;
    .local v1, e:Ljava/io/IOException;
    :catch_165
    move-exception v3

    move-object v2, v3

    .line 128
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v3, "Exception while closing Socket"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_df
.end method

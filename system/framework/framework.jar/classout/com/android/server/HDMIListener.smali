.class final Lcom/android/server/HDMIListener;
.super Ljava/lang/Object;
.source "HDMIListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final HDMI_CMD_CHANGE_MODE:Ljava/lang/String; = "change_mode: "

.field private static final HDMI_CMD_DISABLE_HDMI:Ljava/lang/String; = "disable_hdmi"

.field private static final HDMI_CMD_ENABLE_HDMI:Ljava/lang/String; = "enable_hdmi"

.field private static final HDMI_CMD_HPDOPTION:Ljava/lang/String; = "hdmi_hpd: "

.field private static final HDMI_CMD_SET_ASHEIGHT:Ljava/lang/String; = "set_asheight: "

.field private static final HDMI_CMD_SET_ASWIDTH:Ljava/lang/String; = "set_aswidth: "

.field private static final HDMI_EVT_AUDIO_OFF:Ljava/lang/String; = "hdmi_audio_off"

.field private static final HDMI_EVT_AUDIO_ON:Ljava/lang/String; = "hdmi_audio_on"

.field private static final HDMI_EVT_CONNECTED:Ljava/lang/String; = "hdmi_connected"

.field private static final HDMI_EVT_DISCONNECTED:Ljava/lang/String; = "hdmi_disconnected"

.field private static final HDMI_EVT_NO_BROADCAST_ONLINE:Ljava/lang/String; = "hdmi_no_broadcast_online"

.field private static final HDMI_EVT_START:Ljava/lang/String; = "hdmi_listner_started"

.field private static final HDMI_SOCKET:Ljava/lang/String; = "hdmid"

.field private static final TAG:Ljava/lang/String; = "HDMIListener"


# instance fields
.field private mEDIDs:[I

.field private mHDMIConnected:Z

.field private mHDMIEnabled:Z

.field private mOnlineBroadCast:Z

.field private mOutputStream:Ljava/io/DataOutputStream;

.field private mService:Lcom/android/server/HDMIService;


# direct methods
.method constructor <init>(Lcom/android/server/HDMIService;)V
    .registers 4
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/android/server/HDMIListener;->mHDMIConnected:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/server/HDMIListener;->mHDMIEnabled:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HDMIListener;->mOnlineBroadCast:Z

    .line 67
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    .line 70
    iput-object p1, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    .line 71
    return-void
.end method

.method private handleEvent(Ljava/lang/String;)V
    .registers 10
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const-string v7, "hdmi_connected"

    const-string v6, "HDMIListener"

    .line 74
    const-string v3, "HDMIListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEvent \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v3, "hdmi_connected"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 77
    const-string v3, "hdmi_connected"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, ids:[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    .line 79
    const/4 v1, 0x0

    .local v1, i:I
    :goto_43
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    array-length v3, v3

    if-ge v1, v3, :cond_63

    .line 81
    :try_start_48
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_56} :catch_59

    .line 79
    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 82
    :catch_59
    move-exception v3

    move-object v0, v3

    .line 83
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "HDMIListener"

    const-string v3, "NumberFormatException in handleEvent"

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    .line 86
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_63
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/HDMIListener;->mHDMIConnected:Z

    .line 87
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    iget-object v4, p0, Lcom/android/server/HDMIListener;->mEDIDs:[I

    invoke-virtual {v3, v4}, Lcom/android/server/HDMIService;->notifyHDMIConnected([I)V

    .line 101
    .end local v1           #i:I
    .end local v2           #ids:[Ljava/lang/String;
    :cond_6d
    :goto_6d
    return-void

    .line 88
    :cond_6e
    const-string v3, "hdmi_disconnected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 89
    iput-boolean v5, p0, Lcom/android/server/HDMIListener;->mHDMIConnected:Z

    .line 90
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    invoke-virtual {v3}, Lcom/android/server/HDMIService;->notifyHDMIDisconnected()V

    goto :goto_6d

    .line 91
    :cond_7e
    const-string v3, "hdmi_audio_on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 93
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    invoke-virtual {v3}, Lcom/android/server/HDMIService;->notifyHDMIAudioOn()V

    goto :goto_6d

    .line 94
    :cond_8c
    const-string v3, "hdmi_audio_off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 96
    iget-object v3, p0, Lcom/android/server/HDMIListener;->mService:Lcom/android/server/HDMIService;

    invoke-virtual {v3}, Lcom/android/server/HDMIService;->notifyHDMIAudioOff()V

    goto :goto_6d

    .line 97
    :cond_9a
    const-string v3, "hdmi_no_broadcast_online"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 99
    iput-boolean v5, p0, Lcom/android/server/HDMIListener;->mOnlineBroadCast:Z

    goto :goto_6d
.end method

.method private listenToSocket()V
    .registers 15

    .prologue
    const-string v13, "HDMIListener"

    .line 128
    const/4 v8, 0x0

    .line 131
    .local v8, socket:Landroid/net/LocalSocket;
    :try_start_3
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_6b

    .line 132
    .end local v8           #socket:Landroid/net/LocalSocket;
    .local v9, socket:Landroid/net/LocalSocket;
    :try_start_8
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v11, "hdmid"

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 135
    .local v0, address:Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 137
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 138
    .local v7, inputStream:Ljava/io/InputStream;
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v11, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    .line 147
    const/16 v11, 0x200

    new-array v1, v11, [B

    .line 149
    .local v1, buffer:[B
    const-string v11, "hdmi_listner_started"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_2d
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_30} :catch_8b

    move-result v2

    .line 152
    .local v2, count:I
    if-gez v2, :cond_54

    move-object v8, v9

    .line 167
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v9           #socket:Landroid/net/LocalSocket;
    .restart local v8       #socket:Landroid/net/LocalSocket;
    :goto_34
    monitor-enter p0

    .line 168
    :try_start_35
    iget-object v11, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_7f

    if-eqz v11, :cond_41

    .line 170
    :try_start_39
    iget-object v11, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_75

    .line 175
    :goto_3e
    const/4 v11, 0x0

    :try_start_3f
    iput-object v11, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    .line 177
    :cond_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_7f

    .line 180
    if-eqz v8, :cond_47

    .line 181
    :try_start_44
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_82

    .line 187
    :cond_47
    :goto_47
    const-string v11, "HDMIListener"

    const-string v11, "Failed to connect to hdmi daemon"

    new-instance v12, Ljava/lang/IllegalStateException;

    invoke-direct {v12}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v13, v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    return-void

    .line 154
    .end local v8           #socket:Landroid/net/LocalSocket;
    .restart local v0       #address:Landroid/net/LocalSocketAddress;
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v7       #inputStream:Ljava/io/InputStream;
    .restart local v9       #socket:Landroid/net/LocalSocket;
    :cond_54
    const/4 v10, 0x0

    .line 155
    .local v10, start:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_56
    if-ge v6, v2, :cond_2d

    .line 156
    :try_start_58
    aget-byte v11, v1, v6

    if-nez v11, :cond_68

    .line 157
    new-instance v4, Ljava/lang/String;

    sub-int v11, v6, v10

    invoke-direct {v4, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 158
    .local v4, event:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/HDMIListener;->handleEvent(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_66} :catch_8b

    .line 159
    add-int/lit8 v10, v6, 0x1

    .line 155
    .end local v4           #event:Ljava/lang/String;
    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 163
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v6           #i:I
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v9           #socket:Landroid/net/LocalSocket;
    .end local v10           #start:I
    .restart local v8       #socket:Landroid/net/LocalSocket;
    :catch_6b
    move-exception v11

    move-object v5, v11

    .line 164
    .local v5, ex:Ljava/io/IOException;
    :goto_6d
    const-string v11, "HDMIListener"

    const-string v11, "Could not open listner socket"

    invoke-static {v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 171
    .end local v5           #ex:Ljava/io/IOException;
    :catch_75
    move-exception v11

    move-object v3, v11

    .line 172
    .local v3, e:Ljava/io/IOException;
    :try_start_77
    const-string v11, "HDMIListener"

    const-string v12, "IOException closing output stream"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 177
    .end local v3           #e:Ljava/io/IOException;
    :catchall_7f
    move-exception v11

    monitor-exit p0
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_7f

    throw v11

    .line 183
    :catch_82
    move-exception v5

    .line 184
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v11, "HDMIListener"

    const-string v11, "IOException closing socket"

    invoke-static {v13, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 163
    .end local v5           #ex:Ljava/io/IOException;
    .end local v8           #socket:Landroid/net/LocalSocket;
    .restart local v9       #socket:Landroid/net/LocalSocket;
    :catch_8b
    move-exception v11

    move-object v5, v11

    move-object v8, v9

    .end local v9           #socket:Landroid/net/LocalSocket;
    .restart local v8       #socket:Landroid/net/LocalSocket;
    goto :goto_6d
.end method

.method private writeCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "command"
    .parameter "argument"

    .prologue
    const-string v2, "HDMIListener"

    .line 104
    monitor-enter p0

    .line 105
    :try_start_3
    iget-object v2, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    if-nez v2, :cond_13

    .line 106
    const-string v2, "HDMIListener"

    const-string v3, "No connection to hdmi daemon"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_6c

    .line 124
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 125
    return-void

    .line 108
    :cond_13
    :try_start_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1d

    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_1d
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_6c

    .line 115
    :try_start_21
    iget-object v2, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 116
    iget-object v2, p0, Lcom/android/server/HDMIListener;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 117
    const-string v2, "HDMIListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeCommand: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_21 .. :try_end_61} :catchall_6c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_61} :catch_62

    goto :goto_e

    .line 119
    :catch_62
    move-exception v2

    move-object v1, v2

    .line 120
    .local v1, ex:Ljava/io/IOException;
    :try_start_64
    const-string v2, "HDMIListener"

    const-string v3, "IOException in writeCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 123
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_6c
    move-exception v2

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_6c

    throw v2
.end method


# virtual methods
.method public changeDisplayMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 227
    const-string v0, "change_mode: "

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public enableHDMIOutput(Z)V
    .registers 4
    .parameter "hdmiEnable"

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIEnabled:Z

    if-ne v0, p1, :cond_d

    .line 213
    const-string v0, "HDMIListener"

    const-string v1, "enableHDMIOutput ignored, unchanged!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_c
    return-void

    .line 216
    :cond_d
    if-eqz p1, :cond_18

    .line 217
    const-string v0, "enable_hdmi"

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIEnabled:Z

    goto :goto_c

    .line 221
    :cond_18
    const-string v0, "disable_hdmi"

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIEnabled:Z

    goto :goto_c
.end method

.method getOnlineBroadcast()Z
    .registers 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/HDMIListener;->mOnlineBroadCast:Z

    return v0
.end method

.method isHDMIConnected()Z
    .registers 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/server/HDMIListener;->mHDMIConnected:Z

    return v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 195
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HDMIListener;->listenToSocket()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 200
    :goto_3
    return-void

    .line 196
    :catch_4
    move-exception v0

    .line 198
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "HDMIListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in HDMIListener thread!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setActionsafeHeightRatio(F)V
    .registers 4
    .parameter "asHeightRatio"

    .prologue
    .line 235
    const-string/jumbo v0, "set_asheight: "

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public setActionsafeWidthRatio(F)V
    .registers 4
    .parameter "asWidthRatio"

    .prologue
    .line 231
    const-string/jumbo v0, "set_aswidth: "

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public setHPD(Z)V
    .registers 5
    .parameter "hpdOption"

    .prologue
    .line 239
    const-string v0, "hdmi_hpd: "

    new-instance v1, Ljava/lang/Integer;

    if-eqz p1, :cond_12

    const/4 v2, 0x1

    :goto_7
    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void

    .line 239
    :cond_12
    const/4 v2, 0x0

    goto :goto_7
.end method

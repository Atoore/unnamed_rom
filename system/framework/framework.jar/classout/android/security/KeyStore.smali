.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# static fields
.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa

.field private static final sAddress:Landroid/net/LocalSocketAddress;


# instance fields
.field private mError:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "keystore"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    sput-object v0, Landroid/security/KeyStore;->sAddress:Landroid/net/LocalSocketAddress;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStore;->mError:I

    .line 48
    return-void
.end method

.method private varargs execute(I[[B)Ljava/util/ArrayList;
    .registers 16
    .parameter "code"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[B)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 154
    const/4 v11, 0x5

    iput v11, p0, Landroid/security/KeyStore;->mError:I

    .line 156
    move-object v0, p2

    .local v0, arr$:[[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v5, :cond_17

    aget-object v7, v0, v2

    .line 157
    .local v7, parameter:[B
    if-eqz v7, :cond_12

    array-length v11, v7

    const v12, 0xffff

    if-le v11, v12, :cond_14

    .line 158
    :cond_12
    const/4 v11, 0x0

    .line 210
    .end local v7           #parameter:[B
    :goto_13
    return-object v11

    .line 156
    .restart local v7       #parameter:[B
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 162
    .end local v7           #parameter:[B
    :cond_17
    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V

    .line 164
    .local v8, socket:Landroid/net/LocalSocket;
    :try_start_1c
    sget-object v11, Landroid/security/KeyStore;->sAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v8, v11}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 166
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 167
    .local v6, out:Ljava/io/OutputStream;
    invoke-virtual {v6, p1}, Ljava/io/OutputStream;->write(I)V

    .line 168
    move-object v0, p2

    array-length v5, v0

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v5, :cond_3f

    aget-object v7, v0, v2

    .line 169
    .restart local v7       #parameter:[B
    array-length v11, v7

    shr-int/lit8 v11, v11, 0x8

    invoke-virtual {v6, v11}, Ljava/io/OutputStream;->write(I)V

    .line 170
    array-length v11, v7

    invoke-virtual {v6, v11}, Ljava/io/OutputStream;->write(I)V

    .line 171
    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 173
    .end local v7           #parameter:[B
    :cond_3f
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 174
    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 176
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 177
    .local v3, in:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 v11, 0x1

    if-eq p1, v11, :cond_5c

    .line 178
    const/4 v11, -0x1

    if-eq p1, v11, :cond_55

    .line 179
    iput p1, p0, Landroid/security/KeyStore;->mError:I
    :try_end_55
    .catchall {:try_start_1c .. :try_end_55} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_55} :catch_9f

    .line 181
    :cond_55
    const/4 v11, 0x0

    .line 207
    :try_start_56
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_13

    .line 208
    :catch_5a
    move-exception v12

    goto :goto_13

    .line 184
    :cond_5c
    :try_start_5c
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v10, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :goto_61
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, i:I
    const/4 v11, -0x1

    if-ne v1, v11, :cond_70

    .line 201
    const/4 v11, 0x1

    iput v11, p0, Landroid/security/KeyStore;->mError:I
    :try_end_6b
    .catchall {:try_start_5c .. :try_end_6b} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_6b} :catch_9f

    .line 207
    :try_start_6b
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_ab

    :goto_6e
    move-object v11, v10

    .line 208
    goto :goto_13

    .line 190
    :cond_70
    :try_start_70
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_9f

    move-result v4

    .local v4, j:I
    const/4 v11, -0x1

    if-ne v4, v11, :cond_7e

    .line 191
    const/4 v11, 0x0

    .line 207
    :try_start_78
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_13

    .line 208
    :catch_7c
    move-exception v12

    goto :goto_13

    .line 193
    :cond_7e
    shl-int/lit8 v11, v1, 0x8

    or-int/2addr v11, v4

    :try_start_81
    new-array v9, v11, [B

    .line 194
    .local v9, value:[B
    const/4 v1, 0x0

    :goto_84
    array-length v11, v9

    if-ge v1, v11, :cond_9b

    .line 195
    array-length v11, v9

    sub-int/2addr v11, v1

    invoke-virtual {v3, v9, v1, v11}, Ljava/io/InputStream;->read([BII)I
    :try_end_8c
    .catchall {:try_start_81 .. :try_end_8c} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8c} :catch_9f

    move-result v4

    const/4 v11, -0x1

    if-ne v4, v11, :cond_99

    .line 196
    const/4 v11, 0x0

    .line 207
    :try_start_91
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_96

    goto/16 :goto_13

    .line 208
    :catch_96
    move-exception v12

    goto/16 :goto_13

    .line 194
    :cond_99
    add-int/2addr v1, v4

    goto :goto_84

    .line 199
    :cond_9b
    :try_start_9b
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_61

    .line 203
    .end local v1           #i:I
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #j:I
    .end local v6           #out:Ljava/io/OutputStream;
    .end local v9           #value:[B
    .end local v10           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :catch_9f
    move-exception v11

    .line 207
    :try_start_a0
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_ad

    .line 210
    :goto_a3
    const/4 v11, 0x0

    goto/16 :goto_13

    .line 206
    :catchall_a6
    move-exception v11

    .line 207
    :try_start_a7
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_af

    .line 208
    :goto_aa
    throw v11

    .restart local v1       #i:I
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    .restart local v10       #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :catch_ab
    move-exception v11

    goto :goto_6e

    .end local v1           #i:I
    .end local v3           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/OutputStream;
    .end local v10           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :catch_ad
    move-exception v11

    goto :goto_a3

    :catch_af
    move-exception v12

    goto :goto_aa
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .registers 3
    .parameter "string"

    .prologue
    .line 215
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 216
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 218
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .registers 1

    .prologue
    .line 51
    new-instance v0, Landroid/security/KeyStore;

    invoke-direct {v0}, Landroid/security/KeyStore;-><init>()V

    return-object v0
.end method

.method private static toString([B)Ljava/lang/String;
    .registers 4
    .parameter "bytes"

    .prologue
    .line 224
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v1

    .line 225
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 227
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 93
    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->contains([B)Z

    move-result v0

    return v0
.end method

.method public contains([B)Z
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 88
    const/16 v0, 0x65

    new-array v1, v2, [[B

    aput-object p1, v1, v3

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    .line 89
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    if-ne v0, v2, :cond_11

    move v0, v2

    :goto_10
    return v0

    :cond_11
    move v0, v3

    goto :goto_10
.end method

.method public delete(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 84
    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->delete([B)Z

    move-result v0

    return v0
.end method

.method public delete([B)Z
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 79
    const/16 v0, 0x64

    new-array v1, v2, [[B

    aput-object p1, v1, v3

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    .line 80
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    if-ne v0, v2, :cond_11

    move v0, v2

    :goto_10
    return v0

    :cond_11
    move v0, v3

    goto :goto_10
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 65
    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/security/KeyStore;->get([B)[B

    move-result-object v0

    .line 66
    .local v0, value:[B
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    invoke-static {v0}, Landroid/security/KeyStore;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method public get([B)[B
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 60
    const/16 v1, 0x67

    const/4 v2, 0x1

    new-array v2, v2, [[B

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    .local v0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_14
    const/4 v1, 0x0

    .end local p0
    :goto_15
    return-object v1

    .restart local p0
    :cond_16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    move-object v1, p0

    goto :goto_15
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public lock()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    const/16 v0, 0x6c

    new-array v1, v2, [[B

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    .line 137
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    if-ne v0, v3, :cond_f

    move v0, v3

    :goto_e
    return v0

    :cond_f
    move v0, v2

    goto :goto_e
.end method

.method public password(Ljava/lang/String;)Z
    .registers 3
    .parameter "password"

    .prologue
    .line 132
    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->password([B)Z

    move-result v0

    return v0
.end method

.method public password(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    .line 124
    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/security/KeyStore;->password([B[B)Z

    move-result v0

    return v0
.end method

.method public password([B)Z
    .registers 3
    .parameter "password"

    .prologue
    .line 128
    invoke-virtual {p0, p1, p1}, Landroid/security/KeyStore;->password([B[B)Z

    move-result v0

    return v0
.end method

.method public password([B[B)Z
    .registers 7
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 119
    const/16 v0, 0x70

    const/4 v1, 0x2

    new-array v1, v1, [[B

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    .line 120
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    if-ne v0, v2, :cond_14

    move v0, v2

    :goto_13
    return v0

    :cond_14
    move v0, v3

    goto :goto_13
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 75
    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/security/KeyStore;->put([B[B)Z

    move-result v0

    return v0
.end method

.method public put([B[B)Z
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 70
    const/16 v0, 0x69

    const/4 v1, 0x2

    new-array v1, v1, [[B

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    .line 71
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    if-ne v0, v2, :cond_14

    move v0, v2

    :goto_13
    return v0

    :cond_14
    move v0, v3

    goto :goto_13
.end method

.method public reset()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    const/16 v0, 0x72

    new-array v1, v2, [[B

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    .line 115
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    if-ne v0, v3, :cond_f

    move v0, v3

    :goto_e
    return v0

    :cond_f
    move v0, v2

    goto :goto_e
.end method

.method public saw(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "prefix"

    .prologue
    .line 102
    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/security/KeyStore;->saw([B)[[B

    move-result-object v2

    .line 103
    .local v2, values:[[B
    if-nez v2, :cond_c

    .line 104
    const/4 v3, 0x0

    .line 110
    :goto_b
    return-object v3

    .line 106
    :cond_c
    array-length v3, v2

    new-array v1, v3, [Ljava/lang/String;

    .line 107
    .local v1, strings:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v3, v2

    if-ge v0, v3, :cond_1e

    .line 108
    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/security/KeyStore;->toString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1e
    move-object v3, v1

    .line 110
    goto :goto_b
.end method

.method public saw([B)[[B
    .registers 6
    .parameter "prefix"

    .prologue
    .line 97
    const/16 v1, 0x73

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    move-result-object v0

    .line 98
    .local v0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v0, :cond_13

    const/4 p0, 0x0

    check-cast p0, [[B

    .end local p0
    move-object v1, p0

    :goto_12
    return-object v1

    .restart local p0
    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [[B

    move-object v1, p0

    goto :goto_12
.end method

.method public test()I
    .registers 3

    .prologue
    .line 55
    const/16 v0, 0x74

    const/4 v1, 0x0

    new-array v1, v1, [[B

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    .line 56
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public unlock(Ljava/lang/String;)Z
    .registers 3
    .parameter "password"

    .prologue
    .line 146
    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->unlock([B)Z

    move-result v0

    return v0
.end method

.method public unlock([B)Z
    .registers 6
    .parameter "password"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 141
    const/16 v0, 0x75

    new-array v1, v2, [[B

    aput-object p1, v1, v3

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    .line 142
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    if-ne v0, v2, :cond_11

    move v0, v2

    :goto_10
    return v0

    :cond_11
    move v0, v3

    goto :goto_10
.end method

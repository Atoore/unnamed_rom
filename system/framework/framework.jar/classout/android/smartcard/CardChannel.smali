.class final Landroid/smartcard/CardChannel;
.super Ljava/lang/Object;
.source "CardChannel.java"

# interfaces
.implements Landroid/smartcard/ICardChannel;


# instance fields
.field private final client:Landroid/smartcard/SmartcardClient;

.field private final hChannel:J

.field private volatile isClosed:Z

.field private final isLogicalChannel:Z


# direct methods
.method constructor <init>(Landroid/smartcard/SmartcardClient;JZ)V
    .registers 5
    .parameter "client"
    .parameter "hChannel"
    .parameter "isLogicalChannel"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/smartcard/CardChannel;->client:Landroid/smartcard/SmartcardClient;

    .line 41
    iput-wide p2, p0, Landroid/smartcard/CardChannel;->hChannel:J

    .line 42
    iput-boolean p4, p0, Landroid/smartcard/CardChannel;->isLogicalChannel:Z

    .line 43
    return-void
.end method

.method private assertOpen()V
    .registers 3

    .prologue
    .line 132
    iget-boolean v0, p0, Landroid/smartcard/CardChannel;->isClosed:Z

    if-eqz v0, :cond_c

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_c
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/smartcard/CardException;
        }
    .end annotation

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/smartcard/CardChannel;->isClosed:Z

    if-eqz v0, :cond_5

    .line 64
    :goto_4
    return-void

    .line 58
    :cond_5
    :try_start_5
    iget-object v0, p0, Landroid/smartcard/CardChannel;->client:Landroid/smartcard/SmartcardClient;

    invoke-virtual {v0, p0}, Landroid/smartcard/SmartcardClient;->closeChannel(Landroid/smartcard/CardChannel;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_a} :catch_d

    goto :goto_4

    .line 59
    :catch_b
    move-exception v0

    goto :goto_4

    .line 61
    :catch_d
    move-exception v0

    goto :goto_4
.end method

.method getHandle()J
    .registers 3

    .prologue
    .line 118
    iget-wide v0, p0, Landroid/smartcard/CardChannel;->hChannel:J

    return-wide v0
.end method

.method invalidate()V
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/smartcard/CardChannel;->isClosed:Z

    .line 126
    return-void
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/smartcard/CardChannel;->isClosed:Z

    return v0
.end method

.method public isLogicalChannel()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/smartcard/CardChannel;->isLogicalChannel:Z

    return v0
.end method

.method public transmit([B)[B
    .registers 6
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/smartcard/CardException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/smartcard/CardChannel;->assertOpen()V

    .line 103
    :try_start_3
    iget-object v1, p0, Landroid/smartcard/CardChannel;->client:Landroid/smartcard/SmartcardClient;

    iget-wide v2, p0, Landroid/smartcard/CardChannel;->hChannel:J

    invoke-virtual {v1, v2, v3, p1}, Landroid/smartcard/SmartcardClient;->transmit(J[B)[B
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    .line 104
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 105
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid handle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 106
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "channel is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_26
    throw v0
.end method

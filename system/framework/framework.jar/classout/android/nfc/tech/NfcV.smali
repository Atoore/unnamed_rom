.class public final Landroid/nfc/tech/NfcV;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcV.java"


# static fields
.field public static final EXTRA_DSFID:Ljava/lang/String; = "dsfid"

.field public static final EXTRA_RESP_FLAGS:Ljava/lang/String; = "respflags"


# instance fields
.field private mDsfId:B

.field private mRespFlags:B


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .registers 4
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    .line 65
    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 66
    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, extras:Landroid/os/Bundle;
    const-string/jumbo v1, "respflags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, p0, Landroid/nfc/tech/NfcV;->mRespFlags:B

    .line 68
    const-string v1, "dsfid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, p0, Landroid/nfc/tech/NfcV;->mDsfId:B

    .line 69
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcV;
    .registers 4
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 55
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-nez v1, :cond_a

    move-object v1, v2

    .line 59
    :goto_9
    return-object v1

    .line 57
    :cond_a
    :try_start_a
    new-instance v1, Landroid/nfc/tech/NfcV;

    invoke-direct {v1, p0}, Landroid/nfc/tech/NfcV;-><init>(Landroid/nfc/Tag;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_9

    .line 58
    :catch_10
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move-object v1, v2

    .line 59
    goto :goto_9
.end method


# virtual methods
.method public bridge synthetic close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getDsfId()B
    .registers 2

    .prologue
    .line 90
    iget-byte v0, p0, Landroid/nfc/tech/NfcV;->mDsfId:B

    return v0
.end method

.method public getResponseFlags()B
    .registers 2

    .prologue
    .line 79
    iget-byte v0, p0, Landroid/nfc/tech/NfcV;->mRespFlags:B

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .registers 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isConnected()Z
    .registers 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic reconnect()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public transceive([B)[B
    .registers 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NfcV;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method

.class Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# instance fields
.field bytesRemaining:I

.field data:[B

.field dataLength:I


# direct methods
.method public constructor <init>([BII)V
    .registers 6
    .parameter "recvdata"
    .parameter "dataLen"
    .parameter "bytesInRxbuf"

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 411
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->data:[B

    .line 412
    iput p2, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->dataLength:I

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "temp[] length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->dataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dataLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->dataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytesInRxbuf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->bytesRemaining:I

    .line 415
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .registers 7
    .parameter "buf"

    .prologue
    const/16 v4, 0xff

    const/16 v3, 0x80

    .line 384
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v1, v2, 0x80

    .line 385
    .local v1, tag:I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 386
    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->dataLength:I

    if-ge v2, v3, :cond_27

    .line 387
    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->dataLength:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 393
    :cond_18
    :goto_18
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->dataLength:I

    if-ge v0, v2, :cond_3a

    .line 394
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->data:[B

    aget-byte v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 388
    .end local v0           #i:I
    :cond_27
    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->dataLength:I

    if-lt v2, v3, :cond_18

    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->dataLength:I

    if-ge v2, v4, :cond_18

    .line 389
    const/16 v2, 0x81

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 390
    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->dataLength:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_18

    .line 398
    .restart local v0       #i:I
    :cond_3a
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v1, v2, 0x80

    .line 399
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 400
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 401
    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->bytesRemaining:I

    if-gez v2, :cond_50

    .line 402
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->bytesRemaining:I

    .line 404
    :cond_50
    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->bytesRemaining:I

    const/16 v3, 0xfe

    if-le v2, v3, :cond_58

    .line 405
    iput v4, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->bytesRemaining:I

    .line 407
    :cond_58
    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataResponse;->bytesRemaining:I

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 409
    return-void
.end method

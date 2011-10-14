.class public final Lcom/android/internal/telephony/cdma/RuimRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "RuimRecords.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_RUIM_READY:I = 0x1

.field private static final EVENT_RUIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field public isAvailableFDN:Z

.field public isAvailableSMSP:Z

.field private mImsi:Ljava/lang/String;

.field private mMin2Min1:Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private mPrlVersion:Ljava/lang/String;

.field private m_ota_commited:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .registers 6
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 48
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->isAvailableFDN:Z

    .line 80
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->isAvailableSMSP:Z

    .line 85
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 87
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 90
    iput v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 93
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 94
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 96
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V

    .line 101
    return-void
.end method

.method private fetchRuimRecords()V
    .registers 4

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 324
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuimRecords:fetchRuimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x2fe2

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 328
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 331
    return-void
.end method

.method private handleRuimRefresh([I)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 360
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_c

    .line 361
    :cond_6
    const-string v0, "handleRuimRefresh without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 392
    :goto_b
    return-void

    .line 365
    :cond_c
    aget v0, p1, v2

    packed-switch v0, :pswitch_data_3c

    .line 389
    const-string v0, "handleRuimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 367
    :pswitch_17
    const-string v0, "handleRuimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 369
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto :goto_b

    .line 372
    :pswitch_25
    const-string v0, "handleRuimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto :goto_b

    .line 377
    :pswitch_2e
    const-string v0, "handleRuimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_b

    .line 365
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_25
        :pswitch_2e
    .end packed-switch
.end method

.method private onRuimReady()V
    .registers 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 318
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccRefresh(Landroid/os/Handler;)V

    .line 108
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 112
    const-string v0, "CDMA"

    const-string v1, "RuimRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object v0
.end method

.method protected getDisplayRule(Ljava/lang/String;)I
    .registers 3
    .parameter "plmn"

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRUIMOperatorNumeric()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 172
    const/4 v1, 0x0

    .line 185
    :goto_6
    return-object v1

    .line 175
    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    iget v1, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    if-eqz v1, :cond_1b

    .line 178
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 184
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 185
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const-string v6, "CDMA"

    .line 194
    const/4 v4, 0x0

    .line 196
    .local v4, isRecordLoadResponse:Z
    :try_start_3
    iget v6, p1, Landroid/os/Message;->what:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_5} :catch_12

    sparse-switch v6, :sswitch_data_f8

    .line 274
    :cond_8
    :goto_8
    if-eqz v4, :cond_d

    .line 275
    :goto_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    .line 278
    :cond_d
    return-void

    .line 198
    :sswitch_e
    :try_start_e
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRuimReady()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_22
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_8

    .line 269
    :catch_12
    move-exception v6

    move-object v3, v6

    .line 271
    .local v3, exc:Ljava/lang/RuntimeException;
    :try_start_14
    const-string v6, "CDMA"

    const-string v7, "Exception parsing RUIM record"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_22

    .line 274
    if-eqz v4, :cond_d

    goto :goto_a

    .line 202
    .end local v3           #exc:Ljava/lang/RuntimeException;
    :sswitch_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_21} :catch_12

    goto :goto_8

    .line 274
    :catchall_22
    move-exception v6

    if-eqz v4, :cond_28

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    .line 274
    :cond_28
    throw v6

    .line 206
    :sswitch_29
    :try_start_29
    const-string v6, "CDMA"

    const-string v7, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 212
    :sswitch_31
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 213
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 214
    .local v5, localTemp:[Ljava/lang/String;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_8

    .line 218
    const/4 v6, 0x0

    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 219
    const/4 v6, 0x3

    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 220
    const/4 v6, 0x4

    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 222
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MDN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MIN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 227
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v5           #localTemp:[Ljava/lang/String;
    :sswitch_77
    const/4 v4, 0x1

    .line 229
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 230
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    .line 232
    .local v2, data:[B
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_8

    .line 236
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 238
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iccid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 243
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    :sswitch_ac
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 244
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    .line 245
    const-string v6, "CDMA"

    const-string v7, "RuimRecords update failed"

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 253
    .end local v1           #ar:Landroid/os/AsyncResult;
    :sswitch_bf
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 258
    :sswitch_db
    const-string v6, "CDMA"

    const-string v7, "Event EVENT_GET_SST_DONE Received"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 262
    :sswitch_e4
    const/4 v4, 0x0

    .line 263
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 264
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_8

    .line 265
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    check-cast v6, [I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->handleRuimRefresh([I)V
    :try_end_f6
    .catchall {:try_start_29 .. :try_end_f6} :catchall_22
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_f6} :catch_12

    goto/16 :goto_8

    .line 196
    :sswitch_data_f8
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_1e
        0x4 -> :sswitch_29
        0x5 -> :sswitch_77
        0xa -> :sswitch_31
        0xe -> :sswitch_ac
        0x11 -> :sswitch_db
        0x12 -> :sswitch_bf
        0x13 -> :sswitch_bf
        0x15 -> :sswitch_bf
        0x16 -> :sswitch_bf
        0x1f -> :sswitch_e4
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 396
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 296
    const-string v0, "CDMA"

    const-string v1, "RuimRecords: record load complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 302
    iget-object p0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    const-string v1, "LOADED"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimCard;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 117
    iput v1, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->mncLength:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/IccRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 126
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 127
    return-void
.end method

.method protected onRecordLoaded()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 284
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    .line 286
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    if-ne v0, v1, :cond_12

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onAllRecordsLoaded()V

    .line 292
    :cond_11
    :goto_11
    return-void

    .line 288
    :cond_12
    iget v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    if-gez v0, :cond_11

    .line 289
    const-string v0, "CDMA"

    const-string v1, "RuimRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/IccRecords;->recordsToLoad:I

    goto :goto_11
.end method

.method public onRefresh(Z[I)V
    .registers 3
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 158
    if-eqz p1, :cond_5

    .line 162
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    .line 164
    :cond_5
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    .line 145
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/IccException;

    const-string/jumbo v2, "setVoiceMailNumber not implemented"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 147
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 148
    const-string v0, "CDMA"

    const-string/jumbo v1, "method setVoiceMailNumber is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .registers 4
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 341
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 357
    .end local p0
    :goto_3
    return-void

    .line 347
    .restart local p0
    :cond_4
    if-gez p2, :cond_11

    .line 348
    const/4 p2, -0x1

    .line 354
    :cond_7
    :goto_7
    iput p2, p0, Lcom/android/internal/telephony/IccRecords;->countVoiceMessages:I

    .line 356
    iget-object p0, p0, Lcom/android/internal/telephony/IccRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyMessageWaitingIndicator()V

    goto :goto_3

    .line 349
    .restart local p0
    :cond_11
    const/16 v0, 0xff

    if-le p2, v0, :cond_7

    .line 352
    const/16 p2, 0xff

    goto :goto_7
.end method

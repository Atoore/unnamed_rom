.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 4
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 48
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 49
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private dispatchWapPdu_DMNoti([BI)V
    .registers 6
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 328
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string v1, "WAP PUSH"

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method private dispatchWapPdu_DSNoti([BI)V
    .registers 6
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ds_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 360
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method private dispatchWapPdu_MMS([BIIII)V
    .registers 12
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 305
    new-array v2, p5, [B

    .line 306
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    add-int v1, p4, p5

    .line 308
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 309
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 316
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 318
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_MMS"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method private dispatchWapPdu_PushCO([BIIII)V
    .registers 10
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    .line 290
    new-array v0, p5, [B

    .line 291
    .local v0, header:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string/jumbo v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    const-string/jumbo v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 298
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 300
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private dispatchWapPdu_PushMsg([BI)V
    .registers 7
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 341
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWapPdu_PushMsg : binaryContentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 347
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private dispatchWapPdu_default([BIILjava/lang/String;II)V
    .registers 13
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 270
    new-array v2, p6, [B

    .line 271
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    add-int v1, p5, p6

    .line 275
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 276
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 283
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 285
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 286
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .registers 22
    .parameter "pdu"

    .prologue
    .line 63
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rx: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/16 v18, 0x0

    .line 66
    .local v18, index:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .local v19, index:I
    aget-byte v3, p1, v18

    and-int/lit16 v5, v3, 0xff

    .line 67
    .local v5, transactionId:I
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v3, p1, v19

    and-int/lit16 v6, v3, 0xff

    .line 68
    .local v6, pduType:I
    const/4 v8, 0x0

    .line 70
    .local v8, headerLength:I
    const/4 v3, 0x6

    if-eq v6, v3, :cond_4b

    const/4 v3, 0x7

    if-eq v6, v3, :cond_4b

    .line 72
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received non-PUSH WAP PDU. Type = "

    .end local v5           #transactionId:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v3, 0x1

    .line 265
    :goto_4a
    return v3

    .line 76
    .restart local v5       #transactionId:I
    :cond_4b
    new-instance v3, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 85
    const-string v3, "WAP PUSH"

    const-string v4, "Received PDU. Header Length error."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v3, 0x2

    goto :goto_4a

    .line 88
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v3

    long-to-int v8, v3

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v3

    add-int/lit8 v18, v3, 0x2

    .line 91
    move/from16 v7, v18

    .line 105
    .local v7, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 106
    const-string v3, "WAP PUSH"

    const-string v4, "Received PDU. Header Content-Type error."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v3, 0x2

    goto :goto_4a

    .line 110
    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v13

    .line 111
    .local v13, mimeType:Ljava/lang/String;
    if-nez v13, :cond_11c

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v3

    move-wide v0, v3

    long-to-int v0, v0

    move/from16 v16, v0

    .line 114
    .local v16, binaryContentType:I
    sparse-switch v16, :sswitch_data_202

    .line 169
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received PDU. Unsupported Content-Type = "

    .end local v5           #transactionId:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v3, 0x1

    goto/16 :goto_4a

    .line 116
    .restart local v5       #transactionId:I
    :sswitch_d6
    const-string v13, "application/vnd.oma.drm.rights+xml"

    .line 215
    :goto_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v3

    add-int v18, v18, v3

    .line 217
    const/16 v17, 0x0

    .line 218
    .local v17, dispatchedByApplication:Z
    sparse-switch v16, :sswitch_data_23c

    .line 261
    :goto_e8
    if-nez v17, :cond_f5

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v11, v5

    move v12, v6

    move v14, v7

    move v15, v8

    .line 262
    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_default([BIILjava/lang/String;II)V

    .line 265
    :cond_f5
    const/4 v3, -0x1

    goto/16 :goto_4a

    .line 119
    .end local v17           #dispatchedByApplication:Z
    :sswitch_f8
    const-string v13, "application/vnd.oma.drm.rights+wbxml"

    .line 120
    goto :goto_d8

    .line 122
    :sswitch_fb
    const-string v13, "application/vnd.wap.sic"

    .line 123
    goto :goto_d8

    .line 125
    :sswitch_fe
    const-string v13, "application/vnd.wap.slc"

    .line 126
    goto :goto_d8

    .line 128
    :sswitch_101
    const-string v13, "application/vnd.wap.coc"

    .line 129
    goto :goto_d8

    .line 131
    :sswitch_104
    const-string v13, "application/vnd.wap.mms-message"

    .line 132
    goto :goto_d8

    .line 134
    :sswitch_107
    const-string v13, "application/vnd.omaloc-supl-init"

    .line 135
    goto :goto_d8

    .line 137
    :sswitch_10a
    const-string v13, "application/vnd.docomo.pf"

    .line 138
    goto :goto_d8

    .line 146
    :sswitch_10d
    const-string v13, "application/vnd.syncml.notification"

    .line 147
    goto :goto_d8

    .line 152
    :sswitch_110
    const-string v13, "application/vnd.syncml.ds.notification"

    .line 153
    goto :goto_d8

    .line 157
    :sswitch_113
    const-string v13, "application/vnd.wap.connectivity-wbxml"

    .line 158
    goto :goto_d8

    .line 160
    :sswitch_116
    const-string v13, "application/vnd.syncml.dm+wbxml"

    .line 161
    goto :goto_d8

    .line 163
    :sswitch_119
    const-string v13, "application/vnd.syncml.dm+xml"

    .line 164
    goto :goto_d8

    .line 175
    .end local v16           #binaryContentType:I
    :cond_11c
    const-string v3, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 176
    const/16 v16, 0x4a

    .restart local v16       #binaryContentType:I
    goto :goto_d8

    .line 177
    .end local v16           #binaryContentType:I
    :cond_127
    const-string v3, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_132

    .line 178
    const/16 v16, 0x4b

    .restart local v16       #binaryContentType:I
    goto :goto_d8

    .line 179
    .end local v16           #binaryContentType:I
    :cond_132
    const-string v3, "application/vnd.wap.sic"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13d

    .line 180
    const/16 v16, 0x2e

    .restart local v16       #binaryContentType:I
    goto :goto_d8

    .line 181
    .end local v16           #binaryContentType:I
    :cond_13d
    const-string v3, "application/vnd.wap.slc"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_148

    .line 182
    const/16 v16, 0x30

    .restart local v16       #binaryContentType:I
    goto :goto_d8

    .line 183
    .end local v16           #binaryContentType:I
    :cond_148
    const-string v3, "application/vnd.wap.coc"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_153

    .line 184
    const/16 v16, 0x32

    .restart local v16       #binaryContentType:I
    goto :goto_d8

    .line 185
    .end local v16           #binaryContentType:I
    :cond_153
    const-string v3, "application/vnd.wap.mms-message"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15f

    .line 186
    const/16 v16, 0x3e

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 187
    .end local v16           #binaryContentType:I
    :cond_15f
    const-string v3, "application/vnd.omaloc-supl-init"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 188
    const/16 v16, 0x312

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 189
    .end local v16           #binaryContentType:I
    :cond_16b
    const-string v3, "application/vnd.docomo.pf"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_177

    .line 190
    const/16 v16, 0x310

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 196
    .end local v16           #binaryContentType:I
    :cond_177
    const-string v3, "application/vnd.syncml.notification"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_183

    .line 197
    const/16 v16, 0x44

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 198
    .end local v16           #binaryContentType:I
    :cond_183
    const-string v3, "application/vnd.syncml.ds.notification"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18f

    .line 199
    const/16 v16, 0x4e

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 202
    .end local v16           #binaryContentType:I
    :cond_18f
    const-string v3, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19b

    .line 203
    const/16 v16, 0x36

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 204
    .end local v16           #binaryContentType:I
    :cond_19b
    const-string v3, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a7

    .line 205
    const/16 v16, 0x42

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 206
    .end local v16           #binaryContentType:I
    :cond_1a7
    const-string v3, "application/vnd.syncml.dm+xml"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b3

    .line 207
    const/16 v16, 0x43

    .restart local v16       #binaryContentType:I
    goto/16 :goto_d8

    .line 211
    .end local v16           #binaryContentType:I
    :cond_1b3
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received PDU. Unknown Content-Type = "

    .end local v5           #transactionId:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v3, 0x1

    goto/16 :goto_4a

    .restart local v5       #transactionId:I
    .restart local v16       #binaryContentType:I
    .restart local v17       #dispatchedByApplication:Z
    :sswitch_1ce
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 220
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    .line 221
    const/16 v17, 0x1

    .line 222
    goto/16 :goto_e8

    :sswitch_1d9
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 224
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    .line 225
    const/16 v17, 0x1

    .line 226
    goto/16 :goto_e8

    .line 233
    :sswitch_1e4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DMNoti([BI)V

    .line 234
    const/16 v17, 0x1

    .line 236
    goto/16 :goto_e8

    .line 244
    :sswitch_1f1
    const/16 v17, 0x0

    .line 245
    goto/16 :goto_e8

    .line 251
    :sswitch_1f5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_DSNoti([BI)V

    .line 252
    const/16 v17, 0x1

    .line 256
    goto/16 :goto_e8

    .line 114
    :sswitch_data_202
    .sparse-switch
        0x2e -> :sswitch_fb
        0x30 -> :sswitch_fe
        0x32 -> :sswitch_101
        0x36 -> :sswitch_113
        0x3e -> :sswitch_104
        0x42 -> :sswitch_116
        0x43 -> :sswitch_119
        0x44 -> :sswitch_10d
        0x4a -> :sswitch_d6
        0x4b -> :sswitch_f8
        0x4e -> :sswitch_110
        0xce -> :sswitch_110
        0x310 -> :sswitch_10a
        0x312 -> :sswitch_107
    .end sparse-switch

    .line 218
    :sswitch_data_23c
    .sparse-switch
        0x2e -> :sswitch_1f1
        0x30 -> :sswitch_1f1
        0x32 -> :sswitch_1ce
        0x36 -> :sswitch_1f1
        0x3e -> :sswitch_1d9
        0x42 -> :sswitch_1f1
        0x43 -> :sswitch_1f1
        0x44 -> :sswitch_1e4
        0x4e -> :sswitch_1f5
        0xce -> :sswitch_1f5
    .end sparse-switch
.end method

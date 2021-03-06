.class public Lcom/android/mms/transaction/WapPushMessage;
.super Ljava/lang/Object;
.source "WapPushMessage.java"


# instance fields
.field private action:I

.field private created:J

.field private encodingCharsetName:Ljava/lang/String;

.field private href:Ljava/lang/String;

.field private in:Ljava/io/ByteArrayInputStream;

.field private publicId:I

.field private publicIdStr:Ljava/lang/String;

.field private siExpires:J

.field private siId:Ljava/lang/String;

.field private stringTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private wbxmlVersion:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput v1, p0, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    .line 105
    iput v1, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    .line 107
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicIdStr:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    .line 111
    iput v1, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    .line 113
    iput-wide v2, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    .line 115
    iput-wide v2, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    .line 117
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    .line 123
    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    return-void
.end method

.method private parseDateTime()J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 397
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v8

    .line 398
    .local v8, datetimeEncoding:I
    const/16 v3, 0xc3

    if-eq v8, v3, :cond_0

    .line 399
    new-instance v3, Ljava/io/UnsupportedEncodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported datetime encoding. datetime encoding= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", remainBytes ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 404
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v9

    .line 405
    .local v9, datetimeLength:I
    const/4 v3, 0x2

    if-ge v9, v3, :cond_1

    .line 406
    new-instance v3, Lcom/google/android/mms/InvalidHeaderValueException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid datetime length. length= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 411
    .local v1, datetime:Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 412
    .local v2, year:I
    const/4 v12, 0x0

    .line 413
    .local v12, month:I
    const/4 v4, 0x0

    .line 414
    .local v4, day:I
    const/4 v5, 0x0

    .line 415
    .local v5, hour:I
    const/4 v6, 0x0

    .line 416
    .local v6, minute:I
    const/4 v7, 0x0

    .line 418
    .local v7, second:I
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 419
    .local v14, yearBuf:Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v9, :cond_2

    .line 420
    packed-switch v11, :pswitch_data_0

    .line 419
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 422
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 425
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 427
    goto :goto_1

    .line 429
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 430
    goto :goto_1

    .line 432
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 433
    goto :goto_1

    .line 435
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 436
    goto :goto_1

    .line 438
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 439
    goto :goto_1

    .line 441
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readOPAQUE()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 442
    goto :goto_1

    .line 448
    :cond_2
    const/4 v3, 0x1

    sub-int v3, v12, v3

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 451
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v13

    .line 453
    .local v13, timeZone:Ljava/util/TimeZone;
    invoke-virtual {v13}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual {v13}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    .end local v4           #day:I
    add-int v10, v3, v4

    .line 455
    .local v10, gmtOffset:I
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 456
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v10}, Ljava/util/Calendar;->add(II)V

    .line 459
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    return-wide v15

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private parseSIAttr()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 247
    const/4 v5, 0x1

    .line 248
    .local v5, isReadByte:Z
    const/4 v7, -0x1

    .line 251
    .local v7, token:I
    :goto_0
    if-eqz v5, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v7

    .line 254
    :cond_0
    const/4 v5, 0x1

    .line 256
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 327
    return-void

    .line 260
    :cond_1
    packed-switch v7, :pswitch_data_0

    .line 323
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported attribute. attribute= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 266
    :pswitch_0
    iput v7, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseDateTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    goto :goto_0

    .line 272
    :pswitch_2
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseDateTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    goto :goto_0

    .line 275
    :pswitch_3
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 277
    .local v6, siIdBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v6}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v7

    .line 278
    const/4 v5, 0x0

    .line 280
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    goto :goto_0

    .line 283
    .end local v6           #siIdBuf:Ljava/lang/StringBuffer;
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 285
    .local v0, hrefBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v7

    .line 286
    const/4 v5, 0x0

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 291
    .end local v0           #hrefBuf:Ljava/lang/StringBuffer;
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    .local v1, hrefHttpBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v7

    .line 294
    const/4 v5, 0x0

    .line 296
    const-string v8, "http://"

    invoke-virtual {v1, v10, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 299
    .end local v1           #hrefHttpBuf:Ljava/lang/StringBuffer;
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 301
    .local v2, hrefHttpWwwBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v7

    .line 302
    const/4 v5, 0x0

    .line 304
    const-string v8, "http://www."

    invoke-virtual {v2, v10, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 307
    .end local v2           #hrefHttpWwwBuf:Ljava/lang/StringBuffer;
    :pswitch_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 309
    .local v3, hrefHttpsBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v7

    .line 310
    const/4 v5, 0x0

    .line 312
    const-string v8, "https://"

    invoke-virtual {v3, v10, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 315
    .end local v3           #hrefHttpsBuf:Ljava/lang/StringBuffer;
    :pswitch_8
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 317
    .local v4, hrefHttpsWwwBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v7

    .line 318
    const/4 v5, 0x0

    .line 320
    const-string v8, "https://www."

    invoke-virtual {v4, v10, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private parseSLAttr()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 330
    const/4 v5, 0x1

    .line 331
    .local v5, isReadByte:Z
    const/4 v6, -0x1

    .line 334
    .local v6, token:I
    :goto_0
    if-eqz v5, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v6

    .line 337
    :cond_0
    const/4 v5, 0x1

    .line 339
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 394
    return-void

    .line 343
    :cond_1
    packed-switch v6, :pswitch_data_0

    .line 390
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported attribute. attribute= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 347
    :pswitch_0
    iput v6, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    goto :goto_0

    .line 350
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 352
    .local v0, hrefBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 353
    const/4 v5, 0x0

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 358
    .end local v0           #hrefBuf:Ljava/lang/StringBuffer;
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 360
    .local v1, hrefHttpBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 361
    const/4 v5, 0x0

    .line 363
    const-string v7, "http://"

    invoke-virtual {v1, v8, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 366
    .end local v1           #hrefHttpBuf:Ljava/lang/StringBuffer;
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 368
    .local v2, hrefHttpWwwBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 369
    const/4 v5, 0x0

    .line 371
    const-string v7, "http://www."

    invoke-virtual {v2, v8, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 374
    .end local v2           #hrefHttpWwwBuf:Ljava/lang/StringBuffer;
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 376
    .local v3, hrefHttpsBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 377
    const/4 v5, 0x0

    .line 379
    const-string v7, "https://"

    invoke-virtual {v3, v8, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto :goto_0

    .line 382
    .end local v3           #hrefHttpsBuf:Ljava/lang/StringBuffer;
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 384
    .local v4, hrefHttpsWwwBuf:Ljava/lang/StringBuffer;
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/WapPushMessage;->readString(Ljava/lang/StringBuffer;)I

    move-result v6

    .line 385
    const/4 v5, 0x0

    .line 387
    const-string v7, "https://www."

    invoke-virtual {v4, v8, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    goto/16 :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private parseTag(I)V
    .locals 3
    .parameter "_tagToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_0

    .line 235
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseSIAttr()V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 238
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->parseSLAttr()V

    goto :goto_0

    .line 240
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported operation. publicId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    iget-object v1, p0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 465
    .local v0, inByte:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 466
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_0
    return v0
.end method

.method private readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    const/4 v1, 0x0

    .line 475
    .local v1, intValue:I
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v0

    .line 476
    .local v0, inByte:I
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    .line 477
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    .line 479
    return v1
.end method

.method private readOPAQUE()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v1

    .line 485
    .local v1, inByte:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 486
    .local v0, buf:Ljava/lang/StringBuffer;
    shr-int/lit8 v2, v1, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    and-int/lit8 v3, v1, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 488
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readString(Ljava/lang/StringBuffer;)I
    .locals 7
    .parameter "_value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 493
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v0

    .line 495
    .local v0, inByte:I
    sparse-switch v0, :sswitch_data_0

    .line 527
    return v0

    .line 497
    :sswitch_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 499
    .local v2, stringValues:Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v1

    .line 501
    .local v1, stringValue:I
    if-nez v1, :cond_0

    .line 502
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 506
    :cond_0
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 511
    .end local v1           #stringValue:I
    .end local v2           #stringValues:Ljava/io/ByteArrayOutputStream;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v3

    .line 512
    .local v3, tableIndex:I
    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 515
    .end local v3           #tableIndex:I
    :sswitch_2
    const-string v4, ".com/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 518
    :sswitch_3
    const-string v4, ".edu/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 521
    :sswitch_4
    const-string v4, ".net/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 524
    :sswitch_5
    const-string v4, ".org/"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 495
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x83 -> :sswitch_1
        0x85 -> :sswitch_2
        0x86 -> :sswitch_3
        0x87 -> :sswitch_4
        0x88 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    return v0
.end method

.method public getCreated()J
    .locals 2

    .prologue
    .line 594
    iget-wide v0, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    return-wide v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    return v0
.end method

.method public getSiExpires()J
    .locals 2

    .prologue
    .line 598
    iget-wide v0, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    return-wide v0
.end method

.method public getSiId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public initSiId()V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    .line 609
    return-void
.end method

.method public parse([B)V
    .locals 19
    .parameter "_wbxmlData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    .line 133
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v2

    .line 146
    .local v2, encodingCharset:I
    sparse-switch v2, :sswitch_data_0

    .line 157
    new-instance v14, Ljava/io/UnsupportedEncodingException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unsupported encoding charset. charset= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v2           #encodingCharset:I
    :catch_0
    move-exception v14

    move-object v3, v14

    .line 226
    .local v3, ex:Ljava/lang/Exception;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v14}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 228
    throw v3

    .line 148
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v2       #encodingCharset:I
    :sswitch_0
    :try_start_1
    const-string v14, "US-ASCII"

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    .line 162
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v6

    .line 163
    .local v6, stringTableLength:I
    const/4 v8, 0x0

    .line 164
    .local v8, stringValues:Ljava/io/ByteArrayOutputStream;
    const/4 v5, -0x1

    .line 165
    .local v5, startIndex:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v6, :cond_2

    .line 166
    if-nez v8, :cond_0

    .line 167
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    .end local v8           #stringValues:Ljava/io/ByteArrayOutputStream;
    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    .restart local v8       #stringValues:Ljava/io/ByteArrayOutputStream;
    move v5, v4

    .line 171
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v7

    .line 173
    .local v7, stringValue:I
    if-nez v7, :cond_1

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    move-object v14, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v16, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual/range {v14 .. v16}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const/4 v8, 0x0

    .line 165
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 151
    .end local v4           #i:I
    .end local v5           #startIndex:I
    .end local v6           #stringTableLength:I
    .end local v7           #stringValue:I
    .end local v8           #stringValues:Ljava/io/ByteArrayOutputStream;
    :sswitch_1
    const-string v14, "ISO-8859-1"

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    goto :goto_0

    .line 154
    :sswitch_2
    const-string v14, "UTF-8"

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    goto :goto_0

    .line 179
    .restart local v4       #i:I
    .restart local v5       #startIndex:I
    .restart local v6       #stringTableLength:I
    .restart local v7       #stringValue:I
    .restart local v8       #stringValues:Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 187
    .end local v7           #stringValue:I
    :cond_2
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v10, textBuf:Ljava/lang/StringBuffer;
    :goto_3
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->in:Ljava/io/ByteArrayInputStream;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    .line 192
    .local v13, token:I
    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    .line 222
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-eqz v14, :cond_3

    .line 223
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    .line 230
    :cond_3
    return-void

    .line 196
    :cond_4
    sparse-switch v13, :sswitch_data_1

    .line 218
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/WapPushMessage;->parseTag(I)V

    goto :goto_3

    .line 200
    :sswitch_4
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    .local v12, textValues:Ljava/io/ByteArrayOutputStream;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readByte()I

    move-result v11

    .line 204
    .local v11, textValue:I
    if-nez v11, :cond_5

    .line 205
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->encodingCharsetName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 209
    :cond_5
    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 214
    .end local v11           #textValue:I
    .end local v12           #textValues:Ljava/io/ByteArrayOutputStream;
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/WapPushMessage;->readInt()I

    move-result v9

    .line 215
    .local v9, tableIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/WapPushMessage;->stringTable:Ljava/util/Hashtable;

    move-object v14, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6a -> :sswitch_2
    .end sparse-switch

    .line 196
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_4
        0x83 -> :sswitch_5
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x3a

    const/16 v9, 0x2d

    const/16 v8, 0x9

    const/16 v7, 0xa

    .line 533
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 535
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v3, "WapPushMessage = {"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 536
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "wbxmlVersion= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/WapPushMessage;->wbxmlVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 537
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "publicId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/WapPushMessage;->publicId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 538
    iget-object v3, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 539
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "siId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->siId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 540
    :cond_0
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 541
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 542
    .local v1, cal:Ljava/util/Calendar;
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->created:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 544
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 545
    .local v2, calBuf:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 546
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 547
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 548
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 549
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 550
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 552
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "created= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 554
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #calBuf:Ljava/lang/StringBuffer;
    :cond_1
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 555
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 556
    .restart local v1       #cal:Ljava/util/Calendar;
    iget-wide v3, p0, Lcom/android/mms/transaction/WapPushMessage;->siExpires:J

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 558
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 559
    .restart local v2       #calBuf:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 560
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 561
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 562
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 563
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 564
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 566
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "siExpires= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 568
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #calBuf:Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "action= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/WapPushMessage;->action:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 569
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "href= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->href:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 570
    iget-object v3, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 571
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "text= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/WapPushMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 572
    :cond_3
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 574
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

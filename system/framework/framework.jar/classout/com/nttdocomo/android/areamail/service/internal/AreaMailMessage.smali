.class public Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;
.super Ljava/lang/Object;
.source "AreaMailMessage.java"


# static fields
.field private static final ENCODING_16BIT:I = 0x3

.field private static final ENCODING_7BIT:I = 0x1

.field private static final ENCODING_8BIT:I = 0x2

.field private static final ENCODING_UNKNOWN:I = 0x0

.field private static final LANGUAGE_CODES_GROUP_0:[Ljava/lang/String; = null

.field private static final LANGUAGE_CODES_GROUP_2:[Ljava/lang/String; = null

.field private static final PDU_HEADER_LENGTH:I = 0x5

.field private static final PDU_MAX_LENGTH:I = 0x4e3

.field private static final SIZE_PER_PAGE:I = 0x52


# instance fields
.field private mBody:Ljava/lang/String;

.field private mBuzzerFlag:Z

.field private mLanguage:Ljava/lang/String;

.field private mMessageId:I

.field private mPageNumber:I

.field private mPdu:[B

.field private mPopupFlag:Z

.field private mSerialNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "de"

    aput-object v1, v0, v4

    const-string v1, "en"

    aput-object v1, v0, v5

    const-string v1, "it"

    aput-object v1, v0, v6

    const-string v1, "fr"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "nl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    .line 49
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cs"

    aput-object v1, v0, v4

    const-string v1, "he"

    aput-object v1, v0, v5

    const-string v1, "ar"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ru"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "is"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([B)V
    .registers 4
    .parameter "pdu"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mBody:Ljava/lang/String;

    .line 74
    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mMessageId:I

    .line 77
    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mSerialNumber:I

    .line 80
    iput-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mPopupFlag:Z

    .line 83
    iput-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mBuzzerFlag:Z

    .line 86
    iput-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mPdu:[B

    .line 114
    invoke-direct {p0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->parseHeader([B)V

    .line 115
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mPdu:[B

    .line 116
    return-void
.end method

.method public static createMessage([B)Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;
    .registers 3
    .parameter "pdu"

    .prologue
    .line 101
    if-eqz p0, :cond_b

    array-length v0, p0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_b

    array-length v0, p0

    const/16 v1, 0x4e3

    if-le v0, v1, :cond_d

    .line 102
    :cond_b
    const/4 v0, 0x0

    .line 104
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;

    invoke-direct {v0, p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;-><init>([B)V

    goto :goto_c
.end method

.method private parseBody()V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v5, bodybuilder:Ljava/lang/StringBuilder;
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 202
    .local v16, outputStream:Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x58

    .line 203
    .local v13, index:I
    const/4 v15, 0x6

    .line 204
    .local v15, offset:I
    const/4 v12, 0x1

    .local v12, i:I
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mPageNumber:I

    move/from16 v18, v0

    move v0, v12

    move/from16 v1, v18

    if-gt v0, v1, :cond_12e

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mPdu:[B

    move-object/from16 v18, v0

    aget-byte v17, v18, v13

    .line 206
    .local v17, pageLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mPdu:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move v2, v15

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 207
    add-int/lit8 v15, v15, 0x53

    .line 208
    add-int/lit8 v13, v13, 0x53

    .line 210
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 211
    .local v14, messageBody:[B
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mPdu:[B

    move-object/from16 v18, v0

    const/16 v19, 0x5

    aget-byte v8, v18, v19

    .line 215
    .local v8, dataCodingScheme:I
    const/4 v11, 0x0

    .line 216
    .local v11, hasLanguageIndicator:Z
    const/4 v6, 0x0

    .line 218
    .local v6, bodyparts:Ljava/lang/String;
    move v0, v8

    and-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x4

    packed-switch v18, :pswitch_data_150

    .line 280
    :pswitch_52
    const/4 v10, 0x1

    .line 283
    .local v10, encoding:I
    :goto_53
    packed-switch v10, :pswitch_data_174

    .line 308
    :pswitch_56
    new-instance v18, Ljava/io/UnsupportedEncodingException;

    invoke-direct/range {v18 .. v18}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v18

    .line 220
    .end local v10           #encoding:I
    :pswitch_5c
    const/4 v10, 0x1

    .line 221
    .restart local v10       #encoding:I
    sget-object v18, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    and-int/lit8 v19, v8, 0xf

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mLanguage:Ljava/lang/String;

    goto :goto_53

    .line 225
    .end local v10           #encoding:I
    :pswitch_6a
    const/4 v11, 0x1

    .line 226
    and-int/lit8 v18, v8, 0xf

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_77

    .line 227
    const/4 v10, 0x3

    .restart local v10       #encoding:I
    goto :goto_53

    .line 229
    .end local v10           #encoding:I
    :cond_77
    const/4 v10, 0x1

    .line 231
    .restart local v10       #encoding:I
    goto :goto_53

    .line 234
    .end local v10           #encoding:I
    :pswitch_79
    const/4 v10, 0x1

    .line 235
    .restart local v10       #encoding:I
    sget-object v18, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    and-int/lit8 v19, v8, 0xf

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mLanguage:Ljava/lang/String;

    goto :goto_53

    .line 239
    .end local v10           #encoding:I
    :pswitch_87
    const/4 v10, 0x1

    .line 240
    .restart local v10       #encoding:I
    goto :goto_53

    .line 244
    .end local v10           #encoding:I
    :pswitch_89
    and-int/lit8 v18, v8, 0xc

    shr-int/lit8 v18, v18, 0x2

    packed-switch v18, :pswitch_data_17e

    .line 255
    const/4 v10, 0x1

    .line 256
    .restart local v10       #encoding:I
    goto :goto_53

    .line 246
    .end local v10           #encoding:I
    :pswitch_92
    const/4 v10, 0x2

    .line 247
    .restart local v10       #encoding:I
    goto :goto_53

    .line 250
    .end local v10           #encoding:I
    :pswitch_94
    const/4 v10, 0x3

    .line 251
    .restart local v10       #encoding:I
    goto :goto_53

    .line 267
    .end local v10           #encoding:I
    :pswitch_96
    const/4 v10, 0x0

    .line 268
    .restart local v10       #encoding:I
    goto :goto_53

    .line 271
    .end local v10           #encoding:I
    :pswitch_98
    and-int/lit8 v18, v8, 0x4

    shr-int/lit8 v18, v18, 0x2

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a6

    .line 272
    const/4 v10, 0x2

    .restart local v10       #encoding:I
    goto :goto_53

    .line 274
    .end local v10           #encoding:I
    :cond_a6
    const/4 v10, 0x1

    .line 276
    .restart local v10       #encoding:I
    goto :goto_53

    .line 285
    :pswitch_a8
    const/16 v18, 0x0

    move-object v0, v14

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x8

    div-int/lit8 v19, v19, 0x7

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v6

    .line 288
    if-eqz v11, :cond_e7

    if-eqz v6, :cond_e7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_e7

    .line 289
    const/16 v18, 0x0

    const/16 v19, 0x2

    move-object v0, v6

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mLanguage:Ljava/lang/String;

    .line 290
    const/16 v18, 0x3

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 311
    :cond_e7
    :goto_e7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_e

    .line 295
    :pswitch_ee
    const/4 v9, 0x0

    .line 296
    .local v9, encodeoffset:I
    if-eqz v11, :cond_112

    move-object v0, v14

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_112

    .line 297
    const/16 v18, 0x0

    const/16 v19, 0x2

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mLanguage:Ljava/lang/String;

    .line 298
    add-int/lit8 v9, v9, 0x2

    .line 301
    :cond_112
    :try_start_112
    new-instance v7, Ljava/lang/String;

    move-object v0, v14

    array-length v0, v0

    move/from16 v18, v0

    const v19, 0xfffe

    and-int v18, v18, v19

    sub-int v18, v18, v9

    const-string/jumbo v19, "utf-16"

    move-object v0, v7

    move-object v1, v14

    move v2, v9

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_12c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_112 .. :try_end_12c} :catch_14d

    .end local v6           #bodyparts:Ljava/lang/String;
    .local v7, bodyparts:Ljava/lang/String;
    move-object v6, v7

    .line 304
    .end local v7           #bodyparts:Ljava/lang/String;
    .restart local v6       #bodyparts:Ljava/lang/String;
    goto :goto_e7

    .line 314
    .end local v6           #bodyparts:Ljava/lang/String;
    .end local v8           #dataCodingScheme:I
    .end local v9           #encodeoffset:I
    .end local v10           #encoding:I
    .end local v11           #hasLanguageIndicator:Z
    .end local v14           #messageBody:[B
    .end local v17           #pageLength:I
    :cond_12e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mBody:Ljava/lang/String;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mBody:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "--B:P(.|\n)+?--B:P--"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mBody:Ljava/lang/String;

    .line 319
    return-void

    .line 302
    .restart local v6       #bodyparts:Ljava/lang/String;
    .restart local v8       #dataCodingScheme:I
    .restart local v9       #encodeoffset:I
    .restart local v10       #encoding:I
    .restart local v11       #hasLanguageIndicator:Z
    .restart local v14       #messageBody:[B
    .restart local v17       #pageLength:I
    :catch_14d
    move-exception v18

    goto :goto_e7

    .line 218
    nop

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_6a
        :pswitch_79
        :pswitch_87
        :pswitch_89
        :pswitch_89
        :pswitch_96
        :pswitch_96
        :pswitch_52
        :pswitch_96
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_96
        :pswitch_98
    .end packed-switch

    .line 283
    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_56
        :pswitch_ee
    .end packed-switch

    .line 244
    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_92
        :pswitch_94
    .end packed-switch
.end method

.method private parseHeader([B)V
    .registers 6
    .parameter "pdu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mMessageId:I

    .line 125
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mSerialNumber:I

    .line 126
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mSerialNumber:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_36

    move v0, v3

    :goto_25
    iput-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mBuzzerFlag:Z

    .line 127
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mSerialNumber:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_38

    move v0, v3

    :goto_2e
    iput-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mPopupFlag:Z

    .line 128
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mPageNumber:I

    .line 129
    return-void

    :cond_36
    move v0, v2

    .line 126
    goto :goto_25

    :cond_38
    move v0, v2

    .line 127
    goto :goto_2e
.end method


# virtual methods
.method public getBuzzerFlag()Z
    .registers 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mBuzzerFlag:Z

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mBody:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 139
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->parseBody()V

    .line 141
    :cond_7
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mMessageId:I

    return v0
.end method

.method public getPopupFlag()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mPopupFlag:Z

    return v0
.end method

.method public getSerialNumber()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mSerialNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AreaMailMessage{msgId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "serial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mSerialNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

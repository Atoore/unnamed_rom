.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PduParser"
.end annotation


# instance fields
.field cur:I

.field mUserDataSeptetPadding:I

.field mUserDataSize:I

.field pdu:[B

.field userData:[B

.field userDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field validityPeriodFormat:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 834
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 835
    return-void
.end method

.method constructor <init>([B)V
    .registers 3
    .parameter "pdu"

    .prologue
    const/4 v0, 0x0

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->validityPeriodFormat:I

    .line 838
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    .line 839
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 840
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 841
    return-void
.end method


# virtual methods
.method constructUserData(ZZ)I
    .registers 17
    .parameter "hasUserDataHeader"
    .parameter "dataInSeptets"

    .prologue
    .line 951
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 954
    .local v5, offset:I
    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->validityPeriodFormat:I

    packed-switch v10, :pswitch_data_98

    .line 967
    :goto_7
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5           #offset:I
    .local v6, offset:I
    aget-byte v10, v10, v5

    and-int/lit16 v9, v10, 0xff

    .line 968
    .local v9, userDataLength:I
    const/4 v4, 0x0

    .line 969
    .local v4, headerSeptets:I
    const/4 v8, 0x0

    .line 971
    .local v8, userDataHeaderLength:I
    if-eqz p1, :cond_96

    .line 972
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6           #offset:I
    .restart local v5       #offset:I
    aget-byte v10, v10, v6

    and-int/lit16 v8, v10, 0xff

    .line 974
    new-array v7, v8, [B

    .line 975
    .local v7, udh:[B
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    const/4 v11, 0x0

    invoke-static {v10, v5, v7, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 976
    invoke-static {v7}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 977
    add-int/2addr v5, v8

    .line 979
    add-int/lit8 v10, v8, 0x1

    mul-int/lit8 v3, v10, 0x8

    .line 980
    .local v3, headerBits:I
    div-int/lit8 v4, v3, 0x7

    .line 981
    rem-int/lit8 v10, v3, 0x7

    if-lez v10, :cond_66

    const/4 v10, 0x1

    :goto_35
    add-int/2addr v4, v10

    .line 982
    mul-int/lit8 v10, v4, 0x7

    sub-int/2addr v10, v3

    iput v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 986
    .end local v3           #headerBits:I
    .end local v7           #udh:[B
    :goto_3b
    if-eqz p2, :cond_68

    .line 992
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    array-length v10, v10

    sub-int v1, v10, v5

    .line 1004
    .local v1, bufferLen:I
    :cond_42
    :goto_42
    new-array v10, v1, [B

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    .line 1008
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->access$000()Z

    move-result v10

    if-nez v10, :cond_74

    .line 1009
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v13, v13

    invoke-static {v10, v5, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1015
    :goto_57
    iput v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1017
    if-eqz p2, :cond_8c

    .line 1019
    sub-int v2, v9, v4

    .line 1021
    .local v2, count:I
    if-gez v2, :cond_8a

    const/4 v10, 0x0

    .line 1034
    .end local v2           #count:I
    :goto_60
    return v10

    .line 957
    .end local v1           #bufferLen:I
    .end local v4           #headerSeptets:I
    .end local v8           #userDataHeaderLength:I
    .end local v9           #userDataLength:I
    :pswitch_61
    const/4 v5, 0x7

    .line 958
    goto :goto_7

    .line 960
    :pswitch_63
    add-int/lit8 v5, v5, 0x1

    .line 961
    goto :goto_7

    .line 981
    .restart local v3       #headerBits:I
    .restart local v4       #headerSeptets:I
    .restart local v7       #udh:[B
    .restart local v8       #userDataHeaderLength:I
    .restart local v9       #userDataLength:I
    :cond_66
    const/4 v10, 0x0

    goto :goto_35

    .line 998
    .end local v3           #headerBits:I
    .end local v7           #udh:[B
    :cond_68
    if-eqz p1, :cond_72

    add-int/lit8 v10, v8, 0x1

    :goto_6c
    sub-int v1, v9, v10

    .line 999
    .restart local v1       #bufferLen:I
    if-gez v1, :cond_42

    .line 1000
    const/4 v1, 0x0

    goto :goto_42

    .line 998
    .end local v1           #bufferLen:I
    :cond_72
    const/4 v10, 0x0

    goto :goto_6c

    .line 1010
    .restart local v1       #bufferLen:I
    :cond_74
    if-eqz p1, :cond_82

    .line 1011
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    array-length v13, v13

    invoke-static {v10, v5, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_57

    .line 1013
    :cond_82
    const-string v10, "Gsm/SmsMessage"

    const-string v11, "array copy skip! if dataCodingScheme is unsupporting,\n encodingType is Unknown and messageBody is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .restart local v2       #count:I
    :cond_8a
    move v10, v2

    .line 1021
    goto :goto_60

    .line 1028
    .end local v2           #count:I
    :cond_8c
    move v0, v9

    .line 1030
    .local v0, UCS2Count:I
    if-eqz p1, :cond_94

    .line 1032
    sub-int v10, v0, v8

    const/4 v11, 0x1

    sub-int v0, v10, v11

    :cond_94
    move v10, v0

    .line 1034
    goto :goto_60

    .end local v0           #UCS2Count:I
    .end local v1           #bufferLen:I
    .end local v5           #offset:I
    .restart local v6       #offset:I
    :cond_96
    move v5, v6

    .end local v6           #offset:I
    .restart local v5       #offset:I
    goto :goto_3b

    .line 954
    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_61
        :pswitch_63
        :pswitch_61
    .end packed-switch
.end method

.method getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .registers 6

    .prologue
    .line 891
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 892
    .local v0, addressLength:I
    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x2

    .line 894
    .local v1, lengthBytes:I
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    .line 896
    .local v2, ret:Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 898
    return-object v2
.end method

.method getByte()I
    .registers 4

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .registers 6

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 854
    .local v0, len:I
    if-nez v0, :cond_d

    .line 856
    const/4 v1, 0x0

    .line 868
    .local v1, ret:Ljava/lang/String;
    :goto_7
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 870
    return-object v1

    .line 860
    .end local v1           #ret:Ljava/lang/String;
    :cond_d
    :try_start_d
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_14} :catch_16

    move-result-object v1

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_7

    .line 862
    .end local v1           #ret:Ljava/lang/String;
    :catch_16
    move-exception v3

    move-object v2, v3

    .line 863
    .local v2, tr:Ljava/lang/RuntimeException;
    const-string v3, "Gsm/SmsMessage"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 864
    const/4 v1, 0x0

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_7
.end method

.method getSCTimestampMillis()J
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 908
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .line 909
    .local v8, year:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 910
    .local v3, month:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 911
    .local v0, day:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 912
    .local v1, hour:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .line 913
    .local v2, minute:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 920
    .local v4, second:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    aget-byte v7, v9, v10

    .line 923
    .local v7, tzByte:B
    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .line 925
    .local v6, timezoneOffset:I
    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_92

    .line 927
    :goto_6a
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 930
    .local v5, time:Landroid/text/format/Time;
    const/16 v9, 0x5a

    if-lt v8, v9, :cond_95

    add-int/lit16 v9, v8, 0x76c

    :goto_77
    iput v9, v5, Landroid/text/format/Time;->year:I

    .line 931
    sub-int v9, v3, v12

    iput v9, v5, Landroid/text/format/Time;->month:I

    .line 932
    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 933
    iput v1, v5, Landroid/text/format/Time;->hour:I

    .line 934
    iput v2, v5, Landroid/text/format/Time;->minute:I

    .line 935
    iput v4, v5, Landroid/text/format/Time;->second:I

    .line 938
    invoke-virtual {v5, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    mul-int/lit8 v11, v6, 0xf

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    return-wide v9

    .line 925
    .end local v5           #time:Landroid/text/format/Time;
    :cond_92
    neg-int v9, v6

    move v6, v9

    goto :goto_6a

    .line 930
    .restart local v5       #time:Landroid/text/format/Time;
    :cond_95
    add-int/lit16 v9, v8, 0x7d0

    goto :goto_77
.end method

.method getUserData()[B
    .registers 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userData:[B

    return-object v0
.end method

.method getUserDataEUC_KR(I)Ljava/lang/String;
    .registers 7
    .parameter "byteCount"

    .prologue
    .line 1170
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string v4, "EUC_KR"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_11

    .line 1176
    .local v1, ret:Ljava/lang/String;
    :goto_b
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1177
    return-object v1

    .line 1171
    .end local v1           #ret:Ljava/lang/String;
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 1172
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1173
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method getUserDataGSM7Bit(I)Ljava/lang/String;
    .registers 7
    .parameter "septetCount"

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    sget v2, Lcom/android/internal/telephony/SmsHeader;->nationalLanguageSingleShiftTableIdentifierCode:I

    move v0, v2

    .line 1133
    .local v0, nationalLanguage:I
    :goto_c
    if-eqz v0, :cond_25

    .line 1134
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    invoke-static {v2, v3, p1, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIII)Ljava/lang/String;

    move-result-object v1

    .line 1140
    .local v1, ret:Ljava/lang/String;
    :goto_18
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    mul-int/lit8 v3, p1, 0x7

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1142
    return-object v1

    .line 1131
    .end local v0           #nationalLanguage:I
    .end local v1           #ret:Ljava/lang/String;
    :cond_22
    const/4 v2, 0x0

    move v0, v2

    goto :goto_c

    .line 1136
    .restart local v0       #nationalLanguage:I
    :cond_25
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    invoke-static {v2, v3, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_18
.end method

.method getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .registers 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method getUserDataSeptetPadding()I
    .registers 2

    .prologue
    .line 1057
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    return v0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .registers 7
    .parameter "byteCount"

    .prologue
    .line 1156
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    const-string/jumbo v4, "utf-16"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_12

    .line 1162
    .local v1, ret:Ljava/lang/String;
    :goto_c
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    .line 1163
    return-object v1

    .line 1157
    .end local v1           #ret:Ljava/lang/String;
    :catch_12
    move-exception v2

    move-object v0, v2

    .line 1158
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 1159
    .restart local v1       #ret:Ljava/lang/String;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method moreDataPresent()Z
    .registers 3

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->pdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->cur:I

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

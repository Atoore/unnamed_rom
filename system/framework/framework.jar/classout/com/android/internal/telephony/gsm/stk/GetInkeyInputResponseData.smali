.class Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field private mDuration:B

.field public mInData:Ljava/lang/String;

.field private mIsDuration:Z

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mTimeUnit:B

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/Duration;)V
    .registers 4
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsDuration:Z

    .line 94
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/Duration;->timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->value()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mTimeUnit:B

    .line 95
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/Duration;->timeInterval:I

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mDuration:B

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .registers 5
    .parameter "inData"
    .parameter "ucs2"
    .parameter "packed"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 71
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 72
    iput-boolean p3, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "yesNoResponse"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    .line 83
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mYesNoResponse:Z

    .line 84
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .registers 16
    .parameter "buf"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 100
    if-nez p1, :cond_5

    .line 174
    :cond_4
    return-void

    .line 103
    :cond_5
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsDuration:Z

    if-ne v9, v13, :cond_33

    .line 104
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v7, v9, 0x80

    .line 105
    .local v7, tag:I
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 107
    const/4 v9, 0x2

    new-array v2, v9, [B

    .line 108
    .local v2, data:[B
    iget-byte v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mTimeUnit:B

    aput-byte v9, v2, v12

    .line 109
    iget-byte v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mDuration:B

    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    aput-byte v9, v2, v13

    .line 110
    array-length v9, v2

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    move-object v0, v2

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_29
    if-ge v4, v5, :cond_4

    aget-byte v1, v0, v4

    .line 112
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 116
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v2           #data:[B
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #tag:I
    :cond_33
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v7, v9, 0x80

    .line 117
    .restart local v7       #tag:I
    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 121
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v9, :cond_78

    .line 122
    new-array v2, v13, [B

    .line 123
    .restart local v2       #data:[B
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v9, :cond_76

    move v9, v13

    :goto_49
    aput-byte v9, v2, v12

    .line 156
    :goto_4b
    array-length v9, v2

    const/16 v10, 0x80

    if-lt v9, v10, :cond_5a

    array-length v9, v2

    const/16 v10, 0xff

    if-gt v9, v10, :cond_5a

    .line 157
    const/16 v9, 0x81

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 160
    :cond_5a
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 163
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v9, :cond_cc

    .line 164
    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 170
    :goto_69
    move-object v0, v2

    .restart local v0       #arr$:[B
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_6c
    if-ge v4, v5, :cond_4

    aget-byte v1, v0, v4

    .line 171
    .restart local v1       #b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_76
    move v9, v12

    .line 123
    goto :goto_49

    .line 124
    .end local v2           #data:[B
    :cond_78
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v9, :cond_c9

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_c9

    .line 126
    :try_start_84
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v9, :cond_91

    .line 127
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v10, "UTF-16BE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_4b

    .line 128
    .end local v2           #data:[B
    :cond_91
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v9, :cond_c2

    .line 129
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 131
    .local v6, size:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v8

    .line 133
    .local v8, tempData:[B
    array-length v9, v8

    if-le v9, v13, :cond_b5

    .line 134
    array-length v9, v8

    sub-int/2addr v9, v13

    new-array v2, v9, [B

    .line 135
    .restart local v2       #data:[B
    const/4 v9, 0x1

    const/4 v10, 0x0

    array-length v11, v8

    sub-int/2addr v11, v13

    invoke-static {v8, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_af
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_84 .. :try_end_af} :catch_b0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_84 .. :try_end_af} :catch_bd

    goto :goto_4b

    .line 147
    .end local v2           #data:[B
    .end local v6           #size:I
    .end local v8           #tempData:[B
    :catch_b0
    move-exception v9

    move-object v3, v9

    .line 148
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-array v2, v12, [B

    .line 151
    .restart local v2       #data:[B
    goto :goto_4b

    .line 137
    .end local v2           #data:[B
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #size:I
    .restart local v8       #tempData:[B
    :cond_b5
    :try_start_b5
    new-array v2, v6, [B

    .line 138
    .restart local v2       #data:[B
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v8, v9, v2, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_bc
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b5 .. :try_end_bc} :catch_b0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_b5 .. :try_end_bc} :catch_bd

    goto :goto_4b

    .line 149
    .end local v2           #data:[B
    .end local v6           #size:I
    .end local v8           #tempData:[B
    :catch_bd
    move-exception v9

    move-object v3, v9

    .line 150
    .local v3, e:Lcom/android/internal/telephony/EncodeException;
    new-array v2, v12, [B

    .line 151
    .restart local v2       #data:[B
    goto :goto_4b

    .line 145
    .end local v2           #data:[B
    .end local v3           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_c2
    :try_start_c2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_c7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c2 .. :try_end_c7} :catch_b0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_c2 .. :try_end_c7} :catch_bd

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_4b

    .line 153
    .end local v2           #data:[B
    :cond_c9
    new-array v2, v12, [B

    .restart local v2       #data:[B
    goto :goto_4b

    .line 165
    :cond_cc
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v9, :cond_d4

    .line 166
    invoke-virtual {p1, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_69

    .line 168
    :cond_d4
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_69
.end method

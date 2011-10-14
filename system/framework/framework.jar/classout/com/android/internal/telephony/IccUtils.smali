.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MccMncConvert(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "s"

    .prologue
    const/4 v4, 0x2

    const-string v5, "IccUtils"

    .line 616
    const/4 v0, 0x0

    .line 618
    .local v0, MCC:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 620
    .local v1, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 622
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3a

    .line 626
    const-string v2, "IccUtils"

    const-string v2, "[MccMncConvert] MCC Value is invalid(\'fff\')!"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v2, 0x0

    .line 664
    :goto_39
    return-object v2

    .line 630
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ddd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4e

    .line 631
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 635
    :cond_4e
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 636
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x46

    if-eq v2, v3, :cond_6e

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_94

    .line 642
    :cond_6e
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :goto_73
    const-string v2, "IccUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MccMncConvert] Convert Result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    .line 659
    :cond_94
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_73
.end method

.method public static SSbcdToString([BII)Ljava/lang/String;
    .registers 13
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v9, 0x23

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, 0x1

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, p2, 0x2

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .local v1, ret:Ljava/lang/StringBuilder;
    aget-byte v4, p0, p1

    and-int/lit16 v2, v4, 0xff

    .line 107
    .local v2, ton:I
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_16
    add-int v4, p1, p2

    if-ge v0, v4, :cond_5d

    .line 110
    aget-byte v4, p0, v0

    and-int/lit8 v3, v4, 0xf

    .line 111
    .local v3, v:I
    if-ne v3, v7, :cond_55

    .line 112
    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    const/16 v4, 0x91

    if-ne v2, v4, :cond_35

    add-int/lit8 v4, p1, 0x1

    sub-int v4, v0, v4

    if-le v4, v5, :cond_35

    .line 114
    const/4 v2, 0x0

    .line 115
    const/16 v4, 0x2b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    :cond_35
    :goto_35
    aget-byte v4, p0, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 126
    if-ne v3, v7, :cond_69

    .line 127
    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    const/16 v4, 0x91

    if-ne v2, v4, :cond_52

    add-int/lit8 v4, p1, 0x1

    sub-int v4, v0, v4

    if-le v4, v5, :cond_52

    .line 129
    const/4 v2, 0x0

    .line 130
    const/16 v4, 0x2b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    :cond_52
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 118
    :cond_55
    if-ne v3, v8, :cond_5b

    .line 119
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 121
    :cond_5b
    if-le v3, v6, :cond_62

    .line 142
    .end local v3           #v:I
    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 122
    .restart local v3       #v:I
    :cond_62
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 133
    :cond_69
    if-ne v3, v8, :cond_6f

    .line 134
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52

    .line 136
    :cond_6f
    if-gt v3, v6, :cond_5d

    .line 137
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_52
.end method

.method public static SetupCallbcdToString([BII)Ljava/lang/String;
    .registers 13
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v9, 0x23

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/16 v5, 0x9

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, p2, 0x2

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 67
    .local v1, ret:Ljava/lang/StringBuilder;
    aget-byte v4, p0, p1

    and-int/lit16 v2, v4, 0xff

    .line 68
    .local v2, ton:I
    const/16 v4, 0x91

    if-ne v2, v4, :cond_1e

    const/16 v4, 0x2b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    :cond_1e
    add-int/lit8 v0, p1, 0x1

    .local v0, i:I
    :goto_20
    add-int v4, p1, p2

    if-ge v0, v4, :cond_4f

    .line 73
    aget-byte v4, p0, v0

    and-int/lit8 v3, v4, 0xf

    .line 74
    .local v3, v:I
    if-ne v3, v6, :cond_3f

    .line 75
    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    :goto_2f
    aget-byte v4, p0, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    .line 86
    if-ne v3, v6, :cond_5b

    .line 87
    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 76
    :cond_3f
    if-ne v3, v7, :cond_45

    .line 77
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 78
    :cond_45
    if-ne v3, v8, :cond_4d

    .line 79
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 81
    :cond_4d
    if-le v3, v5, :cond_54

    .line 97
    .end local v3           #v:I
    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 82
    .restart local v3       #v:I
    :cond_54
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 88
    :cond_5b
    if-ne v3, v7, :cond_61

    .line 89
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 90
    :cond_61
    if-ne v3, v8, :cond_69

    .line 91
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 93
    :cond_69
    if-gt v3, v5, :cond_4f

    .line 94
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .registers 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 235
    const/4 v0, 0x1

    if-lt p2, v0, :cond_42

    .line 236
    aget-byte v0, p0, p1

    const/16 v1, -0x80

    if-ne v0, v1, :cond_42

    .line 237
    const/4 v0, 0x1

    sub-int v0, p2, v0

    div-int/lit8 v2, v0, 0x2

    .line 238
    .local v2, ucslen:I
    const/4 v1, 0x0

    .line 241
    .local v1, ret:Ljava/lang/String;
    :try_start_f
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    mul-int/lit8 v2, v2, 0x2

    const-string/jumbo v4, "utf-16be"

    .end local v2           #ucslen:I
    invoke-direct {v0, p0, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_1b} :catch_32

    .line 247
    .end local v1           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    :goto_1b
    if-eqz v0, :cond_42

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    .line 251
    .end local p2
    .local p0, ucslen:I
    :goto_21
    if-lez p0, :cond_3c

    const/4 p2, 0x1

    sub-int p2, p0, p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const v1, 0xffff

    if-ne p2, v1, :cond_3c

    .line 252
    add-int/lit8 p0, p0, -0x1

    goto :goto_21

    .line 242
    .end local v0           #ret:Ljava/lang/String;
    .restart local v1       #ret:Ljava/lang/String;
    .local p0, data:[B
    .restart local p2
    :catch_32
    move-exception v0

    .line 243
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, "IccUtils"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .end local v1           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    goto :goto_1b

    .line 254
    .end local p2
    .local p0, ucslen:I
    :cond_3c
    const/4 p2, 0x0

    invoke-virtual {v0, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 310
    .end local v0           #ret:Ljava/lang/String;
    .end local p0           #ucslen:I
    :goto_41
    return-object p0

    .line 259
    .local p0, data:[B
    .restart local p2
    :cond_42
    const/4 v1, 0x0

    .line 260
    .local v1, isucs2:Z
    const/4 v0, 0x0

    .line 261
    .local v0, base:C
    const/4 v2, 0x0

    .line 263
    .local v2, len:I
    const/4 v3, 0x3

    if-lt p2, v3, :cond_91

    aget-byte v3, p0, p1

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_91

    .line 264
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    .end local v0           #base:C
    and-int/lit16 v0, v0, 0xff

    .line 265
    .end local v2           #len:I
    .local v0, len:I
    const/4 v1, 0x3

    sub-int v1, p2, v1

    if-le v0, v1, :cond_d8

    .line 266
    .end local v1           #isucs2:Z
    const/4 v0, 0x3

    sub-int v0, p2, v0

    move v2, v0

    .line 268
    .end local v0           #len:I
    .restart local v2       #len:I
    :goto_5d
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x7

    int-to-char v0, v0

    .line 269
    .local v0, base:C
    add-int/lit8 p1, p1, 0x3

    .line 270
    const/4 v1, 0x1

    .line 282
    .restart local v1       #isucs2:Z
    :cond_69
    :goto_69
    if-eqz v1, :cond_ce

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, ret:Ljava/lang/StringBuilder;
    move p2, v2

    .line 285
    .end local v1           #isucs2:Z
    .end local v2           #len:I
    .local p2, len:I
    :goto_71
    if-lez p2, :cond_c8

    .line 288
    aget-byte v1, p0, p1

    if-gez v1, :cond_d4

    .line 289
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0x7f

    add-int/2addr v1, v0

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 p1, p1, 0x1

    .line 291
    add-int/lit8 p2, p2, -0x1

    move v1, p2

    .line 296
    .end local p2           #len:I
    .local v1, len:I
    :goto_85
    const/4 p2, 0x0

    .line 297
    .local p2, count:I
    :goto_86
    if-ge p2, v1, :cond_bd

    add-int v2, p1, p2

    aget-byte v2, p0, v2

    if-ltz v2, :cond_bd

    .line 298
    add-int/lit8 p2, p2, 0x1

    goto :goto_86

    .line 271
    .end local v3           #ret:Ljava/lang/StringBuilder;
    .local v1, isucs2:Z
    .restart local v2       #len:I
    .local p2, length:I
    :cond_91
    const/4 v3, 0x4

    if-lt p2, v3, :cond_69

    aget-byte v3, p0, p1

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_69

    .line 272
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    .end local v0           #base:C
    and-int/lit16 v0, v0, 0xff

    .line 273
    .end local v2           #len:I
    .local v0, len:I
    const/4 v1, 0x4

    sub-int v1, p2, v1

    if-le v0, v1, :cond_d6

    .line 274
    .end local v1           #isucs2:Z
    const/4 v0, 0x4

    sub-int v0, p2, v0

    move v2, v0

    .line 276
    .end local v0           #len:I
    .restart local v2       #len:I
    :goto_a9
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    .line 278
    .local v0, base:C
    add-int/lit8 p1, p1, 0x4

    .line 279
    const/4 v1, 0x1

    .restart local v1       #isucs2:Z
    goto :goto_69

    .line 300
    .end local v2           #len:I
    .local v1, len:I
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    .local p2, count:I
    :cond_bd
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    add-int/2addr p1, p2

    .line 304
    sub-int p2, v1, p2

    .line 305
    .end local v1           #len:I
    .local p2, len:I
    goto :goto_71

    .line 307
    :cond_c8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_41

    .line 310
    .end local v3           #ret:Ljava/lang/StringBuilder;
    .local v1, isucs2:Z
    .restart local v2       #len:I
    .local p2, length:I
    :cond_ce
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_41

    .end local v1           #isucs2:Z
    .end local v2           #len:I
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    .local p2, len:I
    :cond_d4
    move v1, p2

    .end local p2           #len:I
    .local v1, len:I
    goto :goto_85

    .end local v1           #len:I
    .end local v3           #ret:Ljava/lang/StringBuilder;
    .local v0, len:I
    .local p2, length:I
    :cond_d6
    move v2, v0

    .end local v0           #len:I
    .restart local v2       #len:I
    goto :goto_a9

    .end local v2           #len:I
    .restart local v0       #len:I
    :cond_d8
    move v2, v0

    .end local v0           #len:I
    .restart local v2       #len:I
    goto :goto_5d
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .registers 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 46
    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_a
    add-int v3, p1, p2

    if-ge v0, v3, :cond_14

    .line 50
    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .line 51
    .local v2, v:I
    if-le v2, v4, :cond_19

    .line 59
    .end local v2           #v:I
    :cond_14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 52
    .restart local v2       #v:I
    :cond_19
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 55
    if-gt v2, v4, :cond_14

    .line 56
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private static bitToRGB(I)I
    .registers 2
    .parameter "bit"

    .prologue
    .line 486
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 487
    const/4 v0, -0x1

    .line 489
    :goto_4
    return v0

    :cond_5
    const/high16 v0, -0x100

    goto :goto_4
.end method

.method public static byteToHexString(B)Ljava/lang/String;
    .registers 5
    .parameter "a"

    .prologue
    const-string v3, "0123456789abcdef"

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 391
    .local v1, ret:Ljava/lang/StringBuilder;
    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v0, v2, 0xf

    .line 393
    .local v0, b:I
    const-string v2, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    and-int/lit8 v0, p0, 0xf

    .line 397
    const-string v2, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 6
    .parameter "bytes"

    .prologue
    const-string v4, "0123456789abcdef"

    .line 358
    if-nez p0, :cond_6

    const/4 v3, 0x0

    .line 374
    :goto_5
    return-object v3

    .line 360
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 362
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v3, p0

    if-ge v1, v3, :cond_31

    .line 365
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 367
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 371
    const-string v3, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 374
    .end local v0           #b:I
    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5
.end method

.method public static cdmaBcdByteToInt(B)I
    .registers 4
    .parameter "b"

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 187
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_d

    .line 188
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 191
    :cond_d
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_16

    .line 192
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 195
    :cond_16
    return v0
.end method

.method private static getCLUT([BII)[I
    .registers 12
    .parameter "rawData"
    .parameter "offset"
    .parameter "number"

    .prologue
    .line 582
    if-nez p0, :cond_4

    .line 583
    const/4 v7, 0x0

    .line 597
    :goto_3
    return-object v7

    .line 586
    :cond_4
    new-array v4, p2, [I

    .line 587
    .local v4, result:[I
    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    .line 588
    .local v3, endIndex:I
    move v5, p1

    .line 589
    .local v5, valueIndex:I
    const/4 v1, 0x0

    .line 590
    .local v1, colorIndex:I
    const/high16 v0, -0x100

    .line 592
    .local v0, alpha:I
    :goto_e
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colorIndex:I
    .local v2, colorIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    .line 596
    if-lt v6, v3, :cond_2f

    move-object v7, v4

    .line 597
    goto :goto_3

    :cond_2f
    move v1, v2

    .end local v2           #colorIndex:I
    .restart local v1       #colorIndex:I
    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_e
.end method

.method public static gsmBcdByteToInt(B)I
    .registers 4
    .parameter "b"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 165
    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_b

    .line 166
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 169
    :cond_b
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_16

    .line 170
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 173
    :cond_16
    return v0
.end method

.method static hexCharToInt(C)I
    .registers 5
    .parameter "c"

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    .line 315
    if-lt p0, v1, :cond_f

    const/16 v0, 0x39

    if-gt p0, v0, :cond_f

    sub-int v0, p0, v1

    .line 317
    :goto_e
    return v0

    .line 316
    :cond_f
    if-lt p0, v2, :cond_1a

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1a

    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 317
    :cond_1a
    if-lt p0, v3, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0xa

    goto :goto_e

    .line 319
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .registers 7
    .parameter "s"

    .prologue
    .line 336
    if-nez p0, :cond_4

    const/4 v3, 0x0

    .line 347
    :goto_3
    return-object v3

    .line 338
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 340
    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .line 342
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v2, :cond_2c

    .line 343
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 342
    add-int/lit8 v0, v0, 0x2

    goto :goto_d

    :cond_2c
    move-object v3, v1

    .line 347
    goto :goto_3
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .registers 16
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    const/16 v10, 0x8

    .line 532
    rem-int v9, v10, p4

    if-eqz v9, :cond_13

    .line 533
    const-string v9, "IccUtils"

    const-string/jumbo v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v9

    .line 565
    :goto_12
    return-object v9

    .line 538
    :cond_13
    const/4 v0, 0x1

    .line 539
    .local v0, mask:I
    packed-switch p4, :pswitch_data_4c

    .line 554
    :goto_17
    :pswitch_17
    new-array v2, p2, [I

    .line 555
    .local v2, resultArray:[I
    const/4 v3, 0x0

    .line 556
    .local v3, resultIndex:I
    div-int v5, v10, p4

    .local v5, run:I
    move v8, p1

    .line 557
    .end local p1
    .local v8, valueIndex:I
    :goto_1d
    if-ge v3, p2, :cond_48

    .line 558
    add-int/lit8 p1, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local p1
    aget-byte v7, p0, v8

    .line 559
    .local v7, tempByte:B
    const/4 v6, 0x0

    .local v6, runIndex:I
    move v4, v3

    .end local v3           #resultIndex:I
    .local v4, resultIndex:I
    :goto_25
    if-ge v6, v5, :cond_45

    .line 560
    sub-int v9, v5, v6

    const/4 v10, 0x1

    sub-int v1, v9, v10

    .line 561
    .local v1, offset:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    .line 559
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3           #resultIndex:I
    .restart local v4       #resultIndex:I
    goto :goto_25

    .line 541
    .end local v1           #offset:I
    .end local v2           #resultArray:[I
    .end local v4           #resultIndex:I
    .end local v5           #run:I
    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :pswitch_3b
    const/4 v0, 0x1

    .line 542
    goto :goto_17

    .line 544
    :pswitch_3d
    const/4 v0, 0x3

    .line 545
    goto :goto_17

    .line 547
    :pswitch_3f
    const/16 v0, 0xf

    .line 548
    goto :goto_17

    .line 550
    :pswitch_42
    const/16 v0, 0xff

    goto :goto_17

    .restart local v2       #resultArray:[I
    .restart local v4       #resultIndex:I
    .restart local v5       #run:I
    .restart local v6       #runIndex:I
    .restart local v7       #tempByte:B
    :cond_45
    move v3, v4

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    move v8, p1

    .line 564
    .end local p1
    .restart local v8       #valueIndex:I
    goto :goto_1d

    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :cond_48
    move p1, v8

    .end local v8           #valueIndex:I
    .restart local p1
    move-object v9, v2

    .line 565
    goto :goto_12

    .line 539
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3d
        :pswitch_17
        :pswitch_3f
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_42
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .registers 8
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    .line 570
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_12

    .line 571
    const-string v1, "IccUtils"

    const-string/jumbo v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v1

    .line 578
    :goto_11
    return-object v1

    .line 576
    :cond_12
    new-array v0, p2, [I

    .local v0, resultArray:[I
    move-object v1, v0

    .line 578
    goto :goto_11
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .registers 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v6, 0x1

    .line 412
    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_b

    if-ge p2, v6, :cond_e

    .line 413
    :cond_b
    const-string v4, ""

    .line 450
    :goto_d
    return-object v4

    .line 416
    :cond_e
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_4c

    .line 437
    const-string v2, ""

    .line 445
    .local v2, ret:Ljava/lang/String;
    :goto_19
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1f

    :cond_1f
    move-object v4, v2

    .line 450
    goto :goto_d

    .line 420
    .end local v2           #ret:Ljava/lang/String;
    :pswitch_21
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .line 421
    .local v3, unusedBits:I
    sub-int v4, p2, v6

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .line 422
    .local v0, countSeptets:I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 423
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_19

    .line 427
    .end local v0           #countSeptets:I
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #unusedBits:I
    :pswitch_33
    :try_start_33
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    sub-int v5, p2, v6

    const-string/jumbo v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_33 .. :try_end_3f} :catch_40

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_19

    .line 429
    .end local v2           #ret:Ljava/lang/String;
    :catch_40
    move-exception v4

    move-object v1, v4

    .line 430
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 431
    .restart local v2       #ret:Ljava/lang/String;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 416
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_21
        :pswitch_33
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "data"
    .parameter "length"

    .prologue
    .line 460
    const/4 v8, 0x0

    .line 461
    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .line 462
    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .line 463
    .local v3, height:I
    mul-int v4, v10, v3

    .line 465
    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .line 467
    .local v7, pixels:[I
    const/4 v5, 0x0

    .line 468
    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .line 469
    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .line 470
    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_16
    if-ge v6, v4, :cond_33

    .line 472
    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_44

    .line 473
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    .line 474
    const/4 v0, 0x7

    .line 476
    :goto_21
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_16

    .line 479
    :cond_33
    if-eq v6, v4, :cond_3d

    .line 480
    const-string v11, "IccUtils"

    const-string/jumbo v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_3d
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_44
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_21
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "data"
    .parameter "length"
    .parameter "transparency"

    .prologue
    const/4 v11, 0x1

    .line 503
    const/4 v6, 0x0

    .line 504
    .local v6, valueIndex:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    .line 505
    .local v8, width:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    .line 506
    .local v4, height:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .line 507
    .local v0, bits:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    .line 508
    .local v3, colorNumber:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .line 510
    .local v1, clutOffset:I
    const/4 v9, 0x6

    sub-int/2addr p1, v9

    .line 512
    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .line 513
    .local v2, colorIndexArray:[I
    if-ne v11, p2, :cond_37

    .line 514
    sub-int v9, v3, v11

    const/4 v10, 0x0

    aput v10, v2, v9

    .line 517
    :cond_37
    const/4 v5, 0x0

    .line 518
    .local v5, resultArray:[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_4a

    .line 519
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    .line 526
    :goto_43
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    .line 522
    :cond_4a
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_43
.end method

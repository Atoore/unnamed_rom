.class public Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataBitmap.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mInitBaseValue:Ljava/lang/String;

.field private mInitBaseValueCheck:Z

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-string v1, ""

    .line 71
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 65
    const-string v0, ""

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    .line 72
    return-void
.end method

.method private CompareFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 32
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 239
    const-string/jumbo v27, "sjan"

    const-string v28, "CompareFile"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v10, 0x5

    .line 241
    .local v10, compareCount:I
    const/16 v11, 0x80

    .line 243
    .local v11, compareSize:I
    const/4 v4, 0x0

    .line 244
    .local v4, Result:Z
    const/16 v17, 0x0

    .line 245
    .local v17, fisSrc:Ljava/io/FileInputStream;
    const/4 v15, 0x0

    .line 248
    .local v15, fisDest:Ljava/io/FileInputStream;
    :try_start_f
    new-instance v18, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_18} :catch_4c

    .line 249
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .local v18, fisSrc:Ljava/io/FileInputStream;
    :try_start_18
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_21} :catch_146

    .line 255
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .local v16, fisDest:Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 258
    .local v14, fileSize:I
    :try_start_22
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move v14, v0

    .line 259
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v27

    move-wide/from16 v0, v27

    long-to-int v0, v0

    move/from16 v27, v0

    move v0, v14

    move/from16 v1, v27

    if-eq v0, v1, :cond_6d

    .line 261
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 262
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_46} :catch_54

    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v5, v4

    .line 340
    .end local v4           #Result:Z
    .end local v14           #fileSize:I
    .local v5, Result:I
    :goto_4b
    return v5

    .line 250
    .end local v5           #Result:I
    .restart local v4       #Result:Z
    :catch_4c
    move-exception v27

    move-object/from16 v12, v27

    .line 251
    .local v12, e:Ljava/io/FileNotFoundException;
    :goto_4f
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v5, v4

    .line 252
    .restart local v5       #Result:I
    goto :goto_4b

    .line 265
    .end local v5           #Result:I
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v14       #fileSize:I
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_54
    move-exception v27

    move-object/from16 v12, v27

    .line 266
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 268
    :try_start_5a
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 269
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_60} :catch_66

    :goto_60
    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v5, v4

    .line 273
    .restart local v5       #Result:I
    goto :goto_4b

    .line 270
    .end local v5           #Result:I
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_66
    move-exception v27

    move-object/from16 v13, v27

    .line 271
    .local v13, e1:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    .line 276
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #e1:Ljava/io/IOException;
    :cond_6d
    const/16 v27, 0x1

    move v0, v14

    move/from16 v1, v27

    if-ge v0, v1, :cond_87

    .line 279
    :try_start_74
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 280
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7a} :catch_80

    :goto_7a
    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v5, v4

    .line 284
    .restart local v5       #Result:I
    goto :goto_4b

    .line 281
    .end local v5           #Result:I
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_80
    move-exception v27

    move-object/from16 v13, v27

    .line 282
    .restart local v13       #e1:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    .line 287
    .end local v13           #e1:Ljava/io/IOException;
    :cond_87
    const/16 v27, 0x80

    move v0, v14

    move/from16 v1, v27

    if-gt v0, v1, :cond_118

    move v9, v14

    .line 289
    .local v9, buffSize:I
    :goto_8f
    const/16 v21, 0x0

    .line 291
    .local v21, iCnt:I
    div-int v26, v14, v9

    .line 292
    .local v26, tmp:I
    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_11e

    const/16 v27, 0x5

    move/from16 v21, v27

    .line 296
    :goto_9f
    const/16 v22, 0x0

    .line 298
    .local v22, offset:I
    mul-int v27, v9, v21

    sub-int v26, v14, v27

    .line 299
    div-int v22, v26, v21

    .line 302
    const/4 v6, 0x1

    .line 305
    .local v6, bSameData:Z
    const/16 v23, 0x0

    .line 306
    .local v23, position:I
    :try_start_aa
    move v0, v9

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 307
    .local v25, readSrcData:[B
    move v0, v9

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 309
    .local v24, readDestData:[B
    new-instance v8, Ljava/io/BufferedInputStream;

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 310
    .local v8, bisSrc:Ljava/io/BufferedInputStream;
    new-instance v7, Ljava/io/BufferedInputStream;

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 312
    .local v7, bisDest:Ljava/io/BufferedInputStream;
    const/16 v19, 0x0

    .local v19, i1:I
    :goto_c6
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_131

    if-eqz v6, :cond_131

    .line 314
    const/16 v27, 0x0

    move-object v0, v8

    move-object/from16 v1, v25

    move/from16 v2, v27

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 315
    const/16 v27, 0x0

    move-object v0, v7

    move-object/from16 v1, v24

    move/from16 v2, v27

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 317
    add-int v27, v9, v22

    add-int v23, v23, v27

    .line 319
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object v0, v8

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 320
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object v0, v7

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 322
    const/16 v20, 0x0

    .local v20, i2:I
    :goto_100
    move/from16 v0, v20

    move v1, v9

    if-ge v0, v1, :cond_127

    if-eqz v6, :cond_127

    .line 323
    aget-byte v27, v25, v20

    aget-byte v28, v24, v20
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_10b} :catch_12a

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_122

    const/16 v27, 0x1

    move/from16 v6, v27

    .line 322
    :goto_115
    add-int/lit8 v20, v20, 0x1

    goto :goto_100

    .line 287
    .end local v6           #bSameData:Z
    .end local v7           #bisDest:Ljava/io/BufferedInputStream;
    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v9           #buffSize:I
    .end local v19           #i1:I
    .end local v20           #i2:I
    .end local v21           #iCnt:I
    .end local v22           #offset:I
    .end local v23           #position:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    .end local v26           #tmp:I
    :cond_118
    const/16 v27, 0x80

    move/from16 v9, v27

    goto/16 :goto_8f

    .restart local v9       #buffSize:I
    .restart local v21       #iCnt:I
    .restart local v26       #tmp:I
    :cond_11e
    move/from16 v21, v26

    .line 292
    goto/16 :goto_9f

    .line 323
    .restart local v6       #bSameData:Z
    .restart local v7       #bisDest:Ljava/io/BufferedInputStream;
    .restart local v8       #bisSrc:Ljava/io/BufferedInputStream;
    .restart local v19       #i1:I
    .restart local v20       #i2:I
    .restart local v22       #offset:I
    .restart local v23       #position:I
    .restart local v24       #readDestData:[B
    .restart local v25       #readSrcData:[B
    :cond_122
    const/16 v27, 0x0

    move/from16 v6, v27

    goto :goto_115

    .line 312
    :cond_127
    add-int/lit8 v19, v19, 0x1

    goto :goto_c6

    .line 326
    .end local v7           #bisDest:Ljava/io/BufferedInputStream;
    .end local v8           #bisSrc:Ljava/io/BufferedInputStream;
    .end local v19           #i1:I
    .end local v20           #i2:I
    .end local v24           #readDestData:[B
    .end local v25           #readSrcData:[B
    :catch_12a
    move-exception v27

    move-object/from16 v12, v27

    .line 327
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 328
    const/4 v6, 0x0

    .line 332
    .end local v12           #e:Ljava/io/IOException;
    :cond_131
    :try_start_131
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V

    .line 333
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_137} :catch_13f

    .line 338
    :goto_137
    move v4, v6

    move-object/from16 v15, v16

    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    move v5, v4

    .line 340
    .restart local v5       #Result:I
    goto/16 :goto_4b

    .line 334
    .end local v5           #Result:I
    .end local v15           #fisDest:Ljava/io/FileInputStream;
    .end local v17           #fisSrc:Ljava/io/FileInputStream;
    .restart local v16       #fisDest:Ljava/io/FileInputStream;
    .restart local v18       #fisSrc:Ljava/io/FileInputStream;
    :catch_13f
    move-exception v27

    move-object/from16 v13, v27

    .line 335
    .restart local v13       #e1:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_137

    .line 250
    .end local v6           #bSameData:Z
    .end local v9           #buffSize:I
    .end local v13           #e1:Ljava/io/IOException;
    .end local v14           #fileSize:I
    .end local v16           #fisDest:Ljava/io/FileInputStream;
    .end local v21           #iCnt:I
    .end local v22           #offset:I
    .end local v23           #position:I
    .end local v26           #tmp:I
    .restart local v15       #fisDest:Ljava/io/FileInputStream;
    :catch_146
    move-exception v27

    move-object/from16 v12, v27

    move-object/from16 v17, v18

    .end local v18           #fisSrc:Ljava/io/FileInputStream;
    .restart local v17       #fisSrc:Ljava/io/FileInputStream;
    goto/16 :goto_4f
.end method

.method private compareFileSize(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 225
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, file1:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, file2:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_22

    .line 229
    const/4 v2, 0x1

    .line 232
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method


# virtual methods
.method public GetBitmap()Landroid/graphics/Bitmap;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetBitmapPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 6
    .parameter "format"
    .parameter "altData"

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 85
    .local v0, Result:Z
    if-eqz v0, :cond_a

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    if-nez v2, :cond_c

    :cond_a
    move v1, v0

    .line 101
    .end local v0           #Result:Z
    .end local p2
    .local v1, Result:Z
    :goto_b
    return v1

    .line 87
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :cond_c
    packed-switch p1, :pswitch_data_20

    .end local p2
    :goto_f
    move v1, v0

    .line 101
    .end local v0           #Result:Z
    .restart local v1       #Result:Z
    goto :goto_b

    .line 90
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :pswitch_11
    const/4 v0, 0x0

    .line 91
    goto :goto_f

    .line 93
    :pswitch_13
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local p2
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->SetBitmapPath(Ljava/lang/String;)Z

    move-result v0

    .line 94
    goto :goto_f

    .line 97
    .restart local p2
    :pswitch_1e
    const/4 v0, 0x0

    goto :goto_f

    .line 87
    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_11
        :pswitch_13
        :pswitch_1e
    .end packed-switch
.end method

.method public SetBitmap(Landroid/graphics/Bitmap;)Z
    .registers 3
    .parameter "bitmap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public SetBitmapPath(Ljava/lang/String;)Z
    .registers 7
    .parameter "FilePath"

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, Result:Z
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_c

    :cond_a
    move v1, v0

    .line 168
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_b
    return v1

    .line 155
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_c
    iget-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    if-eqz v3, :cond_15

    .line 156
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 157
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValueCheck:Z

    .line 159
    :cond_15
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 161
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, tempFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 163
    const/4 v0, 0x1

    :goto_23
    move v1, v0

    .line 168
    .restart local v1       #Result:I
    goto :goto_b

    .line 165
    .end local v1           #Result:I
    :cond_25
    const-string v3, "ClipboardServiceEx"

    const-string v4, "ClipboardDataBitmap : value is no file path ..check plz"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 110
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "o"

    .prologue
    const-string v7, "bitmap equals"

    .line 199
    const-string v5, "ClipboardServiceEx"

    const-string v6, "bitmap equals"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, result:Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    move v2, v1

    .line 218
    .end local v1           #result:Z
    .local v2, result:I
    :goto_11
    return v2

    .line 204
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_12
    instance-of v5, p1, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    if-nez v5, :cond_18

    move v2, v1

    .line 205
    .restart local v2       #result:I
    goto :goto_11

    .line 207
    .end local v2           #result:I
    :cond_18
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    move-object v4, v0

    .line 208
    .local v4, trgData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, trgBmp:Ljava/lang/String;
    iget-object v5, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_39

    .line 211
    iget-object v5, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-direct {p0, v5, v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->CompareFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 212
    const/4 v1, 0x1

    .line 213
    const-string/jumbo v5, "sjan"

    const-string v6, "bitmap equals"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    move v2, v1

    .line 218
    .restart local v2       #result:I
    goto :goto_11
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 6
    .parameter "source"

    .prologue
    const-class v1, Ljava/lang/String;

    .line 367
    :try_start_2
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    .line 368
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    .line 369
    const-string/jumbo v1, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardDataBitmap : readFormSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3a

    .line 376
    :goto_39
    return-void

    .line 372
    :catch_3a
    move-exception v1

    move-object v0, v1

    .line 374
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ClipboardServiceEx"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this Bitmap class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_26

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    goto :goto_1d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 345
    const-string v0, "ClipboardServiceEx"

    const-string v1, "Bitmap write to parcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 349
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 350
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mInitBaseValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.class public Landroid/sec/clipboard/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static instance:Landroid/sec/clipboard/util/FileHelper;


# instance fields
.field private NullFile:Ljava/io/File;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Landroid/sec/clipboard/util/FileHelper;

    invoke-direct {v0}, Landroid/sec/clipboard/util/FileHelper;-><init>()V

    sput-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, "sjan"

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->tag:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/io/File;

    const-string v1, "_TEMP_FILE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-void
.end method

.method private getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "bitmapPath"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const-string/jumbo v6, "sjan"

    .line 215
    const/4 v3, 0x2

    .line 216
    .local v3, sampleSize:I
    const/4 v1, 0x0

    .line 218
    .local v1, bm:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 223
    .local v0, bitmapOption:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 228
    :try_start_d
    const-string/jumbo v4, "sjan"

    const-string v5, "BitmapFactory.decodeFile(bitmapPath, bitmapOption"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_70

    move-result-object v1

    .line 238
    :goto_19
    const-string/jumbo v4, "sjan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitmapOption.outWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bitmapOption.outHieght:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string/jumbo v4, "sjan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGridItemWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mGridItemHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_63
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_7b

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p3, :cond_7b

    .line 243
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 230
    :catch_70
    move-exception v4

    move-object v2, v4

    .line 232
    .local v2, e:Ljava/lang/Exception;
    const-string/jumbo v4, "sjan"

    const-string v4, "exception arised during bm = BitmapFactory.decodeFile(bitmapPath, bitmapOption);"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 245
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7b
    add-int/lit8 v3, v3, -0x1

    .line 249
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 253
    const/4 v4, 0x0

    :try_start_80
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 254
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_85} :catch_87

    move-result-object v1

    .line 261
    :goto_86
    return-object v1

    .line 255
    :catch_87
    move-exception v4

    move-object v2, v4

    .line 257
    .restart local v2       #e:Ljava/lang/Exception;
    const-string/jumbo v4, "sjan"

    const-string v4, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86
.end method

.method public static getInstance()Landroid/sec/clipboard/util/FileHelper;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-object v0
.end method


# virtual methods
.method public checkDir(Ljava/io/File;)Z
    .registers 3
    .parameter "file"

    .prologue
    .line 324
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public checkFile(Ljava/io/File;)Z
    .registers 3
    .parameter "file"

    .prologue
    .line 346
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public createThumnailImage(Ljava/lang/String;)Z
    .registers 14
    .parameter "filePath"

    .prologue
    const-string v11, "close : "

    const-string/jumbo v10, "sjan"

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, thumFullPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 170
    .local v2, bm:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 174
    .local v0, Result:Z
    const/16 v7, 0x99

    const/16 v8, 0x56

    invoke-direct {p0, p1, v7, v8}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 177
    if-nez v2, :cond_2e

    .line 178
    const-string/jumbo v7, "sjan"

    const-string v7, "createThumnailImage Bitmap is null"

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 207
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_2d
    return v1

    .line 182
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_2e
    const/4 v4, 0x0

    .line 185
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_2f
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_a3
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_6c

    .line 187
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    if-eqz v5, :cond_3e

    .line 188
    :try_start_36
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_cc
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3d} :catch_cf

    .line 189
    const/4 v0, 0x1

    .line 197
    :cond_3e
    if-eqz v5, :cond_43

    .line 198
    :try_start_40
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_49

    :cond_43
    move-object v4, v5

    .line 206
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_44
    :goto_44
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 207
    .restart local v1       #Result:I
    goto :goto_2d

    .line 200
    .end local v1           #Result:I
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_49
    move-exception v3

    .line 201
    .local v3, e:Ljava/io/IOException;
    const-string/jumbo v7, "sjan"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 204
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_44

    .line 192
    .end local v3           #e:Ljava/io/IOException;
    :catch_6c
    move-exception v7

    move-object v3, v7

    .line 193
    .local v3, e:Ljava/lang/Exception;
    :goto_6e
    :try_start_6e
    const-string/jumbo v7, "sjan"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_a3

    .line 197
    if-eqz v4, :cond_44

    .line 198
    :try_start_7d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_44

    .line 200
    :catch_81
    move-exception v3

    .line 201
    .local v3, e:Ljava/io/IOException;
    const-string/jumbo v7, "sjan"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    .line 196
    .end local v3           #e:Ljava/io/IOException;
    :catchall_a3
    move-exception v7

    .line 197
    :goto_a4
    if-eqz v4, :cond_a9

    .line 198
    :try_start_a6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    .line 203
    :cond_a9
    :goto_a9
    throw v7

    .line 200
    :catch_aa
    move-exception v3

    .line 201
    .restart local v3       #e:Ljava/io/IOException;
    const-string/jumbo v8, "sjan"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a9

    .line 196
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_cc
    move-exception v7

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_a4

    .line 192
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_cf
    move-exception v7

    move-object v3, v7

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_6e
.end method

.method public delete(Ljava/io/File;)V
    .registers 8
    .parameter "file"

    .prologue
    .line 358
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 359
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 370
    :cond_9
    :goto_9
    return-void

    .line 363
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 364
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 365
    .local v4, list:[Ljava/io/File;
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_17
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 366
    .local v1, f:Ljava/io/File;
    invoke-virtual {p0, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 368
    .end local v1           #f:Ljava/io/File;
    :cond_21
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_9
.end method

.method public fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .registers 16
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 76
    const/4 v6, 0x0

    .line 77
    .local v6, Result:Z
    const/4 v9, 0x0

    .line 78
    .local v9, inputStream:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 81
    .local v11, outputStream:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 82
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fd

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 83
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_16} :catch_3d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_16} :catch_81

    .end local v9           #inputStream:Ljava/io/FileInputStream;
    .local v10, inputStream:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 94
    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .restart local v9       #inputStream:Ljava/io/FileInputStream;
    :goto_17
    :try_start_17
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1c} :catch_87

    .end local v11           #outputStream:Ljava/io/FileOutputStream;
    .local v12, outputStream:Ljava/io/FileOutputStream;
    move-object v11, v12

    .line 101
    .end local v12           #outputStream:Ljava/io/FileOutputStream;
    .restart local v11       #outputStream:Ljava/io/FileOutputStream;
    :goto_1d
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 102
    .local v0, fcin:Ljava/nio/channels/FileChannel;
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 104
    .local v5, fcout:Ljava/nio/channels/FileChannel;
    :try_start_25
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    .line 105
    .local v3, lSize:J
    const-wide/16 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 107
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 108
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 110
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 111
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_3a} :catch_cb

    .line 112
    const/4 v6, 0x1

    .end local v3           #lSize:J
    :goto_3b
    move v7, v6

    .line 118
    .end local v0           #fcin:Ljava/nio/channels/FileChannel;
    .end local v5           #fcout:Ljava/nio/channels/FileChannel;
    .end local v6           #Result:Z
    .local v7, Result:I
    :goto_3c
    return v7

    .line 85
    .end local v7           #Result:I
    .restart local v6       #Result:Z
    :catch_3d
    move-exception v1

    move-object v8, v1

    .line 86
    .local v8, e:Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputStream~ FileNotFoundException Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string/jumbo v1, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileCopy~ Source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ Destination file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 88
    .restart local v7       #Result:I
    goto :goto_3c

    .line 89
    .end local v7           #Result:I
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_81
    move-exception v1

    move-object v8, v1

    .line 90
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 95
    .end local v8           #e:Ljava/io/IOException;
    :catch_87
    move-exception v1

    move-object v8, v1

    .line 96
    .local v8, e:Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutputStream~ FileNotFoundException Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string/jumbo v1, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileCopy~ Source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ Destination file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 113
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #fcin:Ljava/nio/channels/FileChannel;
    .restart local v5       #fcout:Ljava/nio/channels/FileChannel;
    :catch_cb
    move-exception v1

    move-object v8, v1

    .line 114
    .local v8, e:Ljava/io/IOException;
    const-string/jumbo v1, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileCopy~ IOException Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string/jumbo v1, "sjan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileCopy~ Source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ Destination file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v6, 0x0

    goto/16 :goto_3b
.end method

.method public getAbsoluteNullFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/io/File;)[Ljava/io/File;
    .registers 3
    .parameter "file"

    .prologue
    .line 351
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 353
    .local v0, list:[Ljava/io/File;
    return-object v0
.end method

.method public getNullFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-object v0
.end method

.method public getSDCardPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 308
    const-string v1, ""

    .line 309
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, ext:Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 311
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 315
    :goto_17
    return-object v1

    .line 313
    :cond_18
    const-string/jumbo v1, "unmounted"

    goto :goto_17
.end method

.method public loadObjectFile(Ljava/io/File;)Ljava/lang/Object;
    .registers 12
    .parameter "file"

    .prologue
    const-string v6, "ClassNotFoundException"

    const-string v9, "close IOException"

    const-string/jumbo v8, "sjan"

    .line 270
    const/4 v5, 0x0

    .line 271
    .local v5, result:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 272
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 274
    .local v3, ois:Ljava/io/ObjectInputStream;
    :try_start_a
    const-string/jumbo v6, "sjan"

    const-string v7, "load object file"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_d8
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_17} :catch_3d
    .catch Ljava/io/StreamCorruptedException; {:try_start_a .. :try_end_17} :catch_63
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_17} :catch_89
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_b0

    .line 276
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_17
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_f2
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1c} :catch_116
    .catch Ljava/io/StreamCorruptedException; {:try_start_17 .. :try_end_1c} :catch_10b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_1c} :catch_102
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_f9

    .line 277
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .local v4, ois:Ljava/io/ObjectInputStream;
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_f5
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1f} :catch_11b
    .catch Ljava/io/StreamCorruptedException; {:try_start_1c .. :try_end_1f} :catch_110
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_1f} :catch_106
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_fd

    move-result-object v5

    .line 292
    if-eqz v4, :cond_25

    :try_start_22
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 293
    :cond_25
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2d

    :cond_2a
    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 299
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v5           #result:Ljava/lang/Object;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :cond_2c
    :goto_2c
    return-object v5

    .line 294
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #result:Ljava/lang/Object;
    :catch_2d
    move-exception v6

    move-object v0, v6

    .line 295
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v6, "sjan"

    const-string v6, "close IOException"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 298
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2c

    .line 278
    .end local v0           #e:Ljava/io/IOException;
    :catch_3d
    move-exception v6

    move-object v0, v6

    .line 279
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3f
    :try_start_3f
    const-string/jumbo v6, "sjan"

    const-string v7, "FileNotFoundException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_d8

    .line 292
    if-eqz v3, :cond_4f

    :try_start_4c
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 293
    :cond_4f
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_54} :catch_55

    goto :goto_2c

    .line 294
    :catch_55
    move-exception v6

    move-object v0, v6

    .line 295
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v6, "sjan"

    const-string v6, "close IOException"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .line 281
    .end local v0           #e:Ljava/io/IOException;
    :catch_63
    move-exception v6

    move-object v0, v6

    .line 282
    .local v0, e:Ljava/io/StreamCorruptedException;
    :goto_65
    :try_start_65
    const-string/jumbo v6, "sjan"

    const-string v7, "StreamCorruptedException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_d8

    .line 292
    if-eqz v3, :cond_75

    :try_start_72
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 293
    :cond_75
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7a} :catch_7b

    goto :goto_2c

    .line 294
    :catch_7b
    move-exception v6

    move-object v0, v6

    .line 295
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v6, "sjan"

    const-string v6, "close IOException"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .line 284
    .end local v0           #e:Ljava/io/IOException;
    :catch_89
    move-exception v6

    move-object v0, v6

    .line 285
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_8b
    :try_start_8b
    const-string/jumbo v6, "sjan"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_8b .. :try_end_96} :catchall_d8

    .line 292
    if-eqz v3, :cond_9b

    :try_start_98
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 293
    :cond_9b
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a0} :catch_a1

    goto :goto_2c

    .line 294
    :catch_a1
    move-exception v6

    move-object v0, v6

    .line 295
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v6, "sjan"

    const-string v6, "close IOException"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2c

    .line 287
    .end local v0           #e:Ljava/io/IOException;
    :catch_b0
    move-exception v6

    move-object v0, v6

    .line 288
    .restart local v0       #e:Ljava/io/IOException;
    :goto_b2
    :try_start_b2
    const-string/jumbo v6, "sjan"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_bd
    .catchall {:try_start_b2 .. :try_end_bd} :catchall_d8

    .line 292
    if-eqz v3, :cond_c2

    :try_start_bf
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 293
    :cond_c2
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c7} :catch_c9

    goto/16 :goto_2c

    .line 294
    :catch_c9
    move-exception v6

    move-object v0, v6

    .line 295
    const-string/jumbo v6, "sjan"

    const-string v6, "close IOException"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2c

    .line 291
    .end local v0           #e:Ljava/io/IOException;
    :catchall_d8
    move-exception v6

    .line 292
    :goto_d9
    if-eqz v3, :cond_de

    :try_start_db
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 293
    :cond_de
    if-eqz v1, :cond_e3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e3} :catch_e4

    .line 297
    :cond_e3
    :goto_e3
    throw v6

    .line 294
    :catch_e4
    move-exception v7

    move-object v0, v7

    .line 295
    .restart local v0       #e:Ljava/io/IOException;
    const-string/jumbo v7, "sjan"

    const-string v7, "close IOException"

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e3

    .line 291
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_f2
    move-exception v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_d9

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catchall_f5
    move-exception v6

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_d9

    .line 287
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_f9
    move-exception v6

    move-object v0, v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_b2

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_fd
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_b2

    .line 284
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_102
    move-exception v6

    move-object v0, v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_8b

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_106
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_8b

    .line 281
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_10b
    move-exception v6

    move-object v0, v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_65

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_110
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_65

    .line 278
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_116
    move-exception v6

    move-object v0, v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3f

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_11b
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3f
.end method

.method public makeDir(Ljava/io/File;)V
    .registers 5
    .parameter "file"

    .prologue
    const/4 v2, -0x1

    .line 333
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 334
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 335
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 337
    :cond_13
    return-void
.end method

.method public saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 14
    .parameter "file"
    .parameter "obj"

    .prologue
    const-string v10, "close : "

    const-string/jumbo v9, "sjan"

    .line 131
    if-nez p2, :cond_12

    .line 132
    const-string/jumbo v6, "sjan"

    const-string/jumbo v6, "obj == null"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v6, 0x0

    .line 159
    :goto_11
    return v6

    .line 137
    :cond_12
    const/4 v5, 0x1

    .line 138
    .local v5, result:Z
    const/4 v1, 0x0

    .line 139
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 142
    .local v3, oos:Ljava/io/ObjectOutputStream;
    :try_start_15
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_93
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_55

    .line 143
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1a
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_c2
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_c9

    .line 144
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .local v4, oos:Ljava/io/ObjectOutputStream;
    :try_start_1f
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_c5
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_cd

    .line 151
    if-eqz v4, :cond_27

    :try_start_24
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 152
    :cond_27
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2c} :catch_30

    :cond_2c
    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_2e
    :goto_2e
    move v6, v5

    .line 159
    goto :goto_11

    .line 153
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_30
    move-exception v6

    move-object v0, v6

    .line 154
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v6, "sjan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 157
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2e

    .line 145
    .end local v0           #e:Ljava/io/IOException;
    :catch_55
    move-exception v6

    move-object v0, v6

    .line 146
    .restart local v0       #e:Ljava/io/IOException;
    :goto_57
    :try_start_57
    const-string/jumbo v6, "sjan"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_57 .. :try_end_64} :catchall_93

    .line 148
    const/4 v5, 0x0

    .line 151
    if-eqz v3, :cond_6a

    :try_start_67
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 152
    :cond_6a
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6f} :catch_70

    goto :goto_2e

    .line 153
    :catch_70
    move-exception v6

    move-object v0, v6

    .line 154
    const-string/jumbo v6, "sjan"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 150
    .end local v0           #e:Ljava/io/IOException;
    :catchall_93
    move-exception v6

    .line 151
    :goto_94
    if-eqz v3, :cond_99

    :try_start_96
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 152
    :cond_99
    if-eqz v1, :cond_9e

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9e} :catch_9f

    .line 156
    :cond_9e
    :goto_9e
    throw v6

    .line 153
    :catch_9f
    move-exception v7

    move-object v0, v7

    .line 154
    .restart local v0       #e:Ljava/io/IOException;
    const-string/jumbo v7, "sjan"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9e

    .line 150
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_c2
    move-exception v6

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_94

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catchall_c5
    move-exception v6

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_94

    .line 145
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_c9
    move-exception v6

    move-object v0, v6

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_57

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_cd
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_57
.end method

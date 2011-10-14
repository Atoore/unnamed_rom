.class public Lcom/android/mms/ui/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPath:Ljava/lang/String;

.field private mRotate:I

.field private mSrc:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    .line 74
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 78
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 85
    :cond_2
    :goto_0
    invoke-static {p2, p1}, Lcom/android/mms/ui/UriImage;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    .line 87
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V

    .line 98
    return-void

    .line 81
    :cond_3
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromFile(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private decodeBoundsInfo()V
    .locals 8

    .prologue
    const-string v7, "IOException caught while closing stream"

    const-string v6, "Mms/image"

    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 152
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 153
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 154
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 155
    iget v3, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_2

    .line 156
    :cond_0
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 157
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 168
    :goto_0
    if-eqz v1, :cond_1

    .line 170
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 177
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    return-void

    .line 159
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :try_start_2
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 160
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 162
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 164
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while opening stream"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    if-eqz v1, :cond_1

    .line 170
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 171
    :catch_1
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 171
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v0

    .line 173
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 166
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    if-eqz v1, :cond_1

    .line 170
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 171
    :catch_4
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 168
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 170
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 174
    :cond_3
    :goto_2
    throw v3

    .line 171
    :catch_5
    move-exception v0

    .line 173
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static getDegreeFromFile(Landroid/net/Uri;)I
    .locals 7
    .parameter "uri"

    .prologue
    .line 477
    const/4 v4, 0x0

    .line 480
    .local v4, path:Ljava/lang/String;
    const-string v5, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 481
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 489
    :goto_0
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .local v2, mExif:Landroid/media/ExifInterface;
    const/4 v0, 0x0

    .line 496
    .local v0, degree:I
    if-eqz v2, :cond_0

    .line 497
    const/4 v3, 0x0

    .line 499
    .local v3, orientation:I
    :try_start_1
    const-string v5, "Orientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 503
    :goto_1
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 504
    packed-switch v3, :pswitch_data_0

    .line 515
    :pswitch_0
    const/4 v0, 0x0

    .end local v3           #orientation:I
    :cond_0
    :goto_2
    move v5, v0

    .line 520
    .end local v0           #degree:I
    .end local v2           #mExif:Landroid/media/ExifInterface;
    :goto_3
    return v5

    .line 483
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 490
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 491
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "Mms/image"

    const-string v6, "can not read exif"

    invoke-static {v5, v6, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    const/4 v5, 0x0

    goto :goto_3

    .line 500
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #degree:I
    .restart local v2       #mExif:Landroid/media/ExifInterface;
    .restart local v3       #orientation:I
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 501
    .local v1, ex:Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_1

    .line 506
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :pswitch_1
    const/16 v0, 0x5a

    .line 507
    goto :goto_2

    .line 509
    :pswitch_2
    const/16 v0, 0xb4

    .line 510
    goto :goto_2

    .line 512
    :pswitch_3
    const/16 v0, 0x10e

    .line 513
    goto :goto_2

    .line 504
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getResizedImageData(III)[B
    .locals 25
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v19, v0

    .line 304
    .local v19, outWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move/from16 v18, v0

    .line 306
    .local v18, outHeight:I
    const/16 v22, 0x1

    .line 307
    .local v22, scaleFactor:I
    :goto_0
    div-int v5, v19, v22

    move v0, v5

    move/from16 v1, p1

    if-gt v0, v1, :cond_0

    div-int v5, v18, v22

    move v0, v5

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    .line 308
    :cond_0
    mul-int/lit8 v22, v22, 0x2

    goto :goto_0

    .line 311
    :cond_1
    const-string v5, "Mms:app"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 312
    const-string v5, "Mms/image"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResizedImageData: wlimit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hlimit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sizeLimit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", initialScaleFactor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_2
    const/4 v13, 0x0

    .line 318
    .local v13, input:Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 320
    .local v16, os:Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x1

    .local v11, attempts:I
    move-object/from16 v17, v16

    .line 323
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .local v17, os:Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_0
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 324
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v22

    move-object v1, v15

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    if-eqz v13, :cond_3

    .line 327
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    :cond_3
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v13

    .line 334
    const/16 v20, 0x50

    .line 336
    .local v20, quality:I
    const/4 v5, 0x0

    :try_start_3
    invoke-static {v13, v5, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 338
    .local v4, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mRotate:I

    move v5, v0

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 339
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 340
    .local v9, m:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mRotate:I

    move v5, v0

    int-to-float v5, v5

    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 341
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .line 343
    .end local v9           #m:Landroid/graphics/Matrix;
    :cond_4
    if-nez v4, :cond_9

    .line 344
    const/4 v5, 0x0

    .line 415
    if-eqz v13, :cond_5

    .line 417
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 422
    :cond_5
    :goto_3
    if-eqz v17, :cond_6

    .line 424
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_4
    move-object/from16 v16, v17

    .line 427
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .end local v20           #quality:I
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :cond_7
    :goto_5
    return-object v5

    .line 328
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v12

    .line 329
    .local v12, e:Ljava/io/IOException;
    :try_start_6
    const-string v5, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 411
    .end local v12           #e:Ljava/io/IOException;
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v5

    move-object v12, v5

    move-object/from16 v16, v17

    .line 412
    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .local v12, e:Ljava/io/FileNotFoundException;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :goto_6
    :try_start_7
    const-string v5, "Mms/image"

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 413
    const/4 v5, 0x0

    .line 415
    if-eqz v13, :cond_8

    .line 417
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    .line 422
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :cond_8
    :goto_7
    if-eqz v16, :cond_7

    .line 424
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    .line 425
    :catch_2
    move-exception v12

    .line 426
    .local v12, e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 418
    .end local v12           #e:Ljava/io/IOException;
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #b:Landroid/graphics/Bitmap;
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #quality:I
    :catch_3
    move-exception v12

    .line 419
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 425
    .end local v12           #e:Ljava/io/IOException;
    :catch_4
    move-exception v12

    .line 426
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 346
    .end local v12           #e:Ljava/io/IOException;
    :cond_9
    :try_start_a
    iget v5, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move v0, v5

    move/from16 v1, p1

    if-gt v0, v1, :cond_a

    iget v5, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move v0, v5

    move/from16 v1, p2

    if-le v0, v1, :cond_e

    .line 349
    :cond_a
    div-int v24, v19, v22

    .line 350
    .local v24, scaledWidth:I
    div-int v23, v18, v22

    .line 352
    .local v23, scaledHeight:I
    const-string v5, "Mms:app"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 353
    const-string v5, "Mms/image"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResizedImageData: retry scaling using Bitmap.createScaledBitmap: w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_b
    div-int v5, v19, v22

    div-int v6, v18, v22

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v4

    .line 360
    if-nez v4, :cond_e

    .line 361
    const/4 v5, 0x0

    .line 415
    if-eqz v13, :cond_c

    .line 417
    :try_start_b
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 422
    :cond_c
    :goto_8
    if-eqz v17, :cond_d

    .line 424
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_d
    :goto_9
    move-object/from16 v16, v17

    .line 427
    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .line 418
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v12

    .line 419
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 425
    .end local v12           #e:Ljava/io/IOException;
    :catch_6
    move-exception v12

    .line 426
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 370
    .end local v12           #e:Ljava/io/IOException;
    .end local v23           #scaledHeight:I
    .end local v24           #scaledWidth:I
    :cond_e
    if-eqz v17, :cond_f

    .line 372
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1

    .line 377
    :cond_f
    :goto_a
    :try_start_e
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1

    .line 378
    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_f
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, v20

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 379
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v14

    .line 380
    .local v14, jpgFileSize:I
    move v0, v14

    move/from16 v1, p3

    if-le v0, v1, :cond_11

    .line 381
    mul-int v5, v20, p3

    div-int v21, v5, v14

    .line 382
    .local v21, reducedQuality:I
    const/16 v5, 0x32

    move/from16 v0, v21

    move v1, v5

    if-lt v0, v1, :cond_11

    .line 383
    move/from16 v20, v21

    .line 385
    const-string v5, "Mms:app"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 386
    const-string v5, "Mms/image"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResizedImageData: compress(2) w/ quality="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_a

    .line 389
    :cond_10
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_a

    .line 393
    :goto_b
    :try_start_11
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_a

    .line 394
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_12
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_1

    move-object/from16 v16, v17

    .line 401
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v14           #jpgFileSize:I
    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .end local v21           #reducedQuality:I
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :cond_11
    :goto_c
    :try_start_13
    const-string v5, "Mms:app"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 402
    const-string v5, "Mms/image"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attempt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v16, :cond_16

    const/4 v7, 0x0

    :goto_d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int v7, v19, v22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-int v7, v18, v22

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scaleFactor="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " quality="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_12
    mul-int/lit8 v22, v22, 0x2

    .line 407
    add-int/lit8 v11, v11, 0x1

    .line 408
    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_a

    move-result v5

    move v0, v5

    move/from16 v1, p3

    if-le v0, v1, :cond_14

    :cond_13
    const/4 v5, 0x4

    if-lt v11, v5, :cond_1a

    .line 410
    :cond_14
    if-nez v16, :cond_17

    const/4 v5, 0x0

    .line 415
    :goto_e
    if-eqz v13, :cond_15

    .line 417
    :try_start_14
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    .line 422
    :cond_15
    :goto_f
    if-eqz v16, :cond_7

    .line 424
    :try_start_15
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    goto/16 :goto_5

    .line 425
    :catch_7
    move-exception v12

    .line 426
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 373
    .end local v12           #e:Ljava/io/IOException;
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #b:Landroid/graphics/Bitmap;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v12

    .line 374
    .restart local v12       #e:Ljava/io/IOException;
    :try_start_16
    const-string v5, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_1

    goto/16 :goto_a

    .line 397
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v12           #e:Ljava/io/IOException;
    :catch_9
    move-exception v5

    move-object v12, v5

    move-object/from16 v16, v17

    .line 398
    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .local v12, e:Ljava/lang/OutOfMemoryError;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :goto_10
    :try_start_17
    const-string v5, "Mms/image"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutOfMemoryError"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_a

    goto/16 :goto_c

    .line 411
    .end local v12           #e:Ljava/lang/OutOfMemoryError;
    :catch_a
    move-exception v5

    move-object v12, v5

    goto/16 :goto_6

    .line 390
    .restart local v4       #b:Landroid/graphics/Bitmap;
    .restart local v14       #jpgFileSize:I
    .restart local v21       #reducedQuality:I
    :catch_b
    move-exception v12

    .line 391
    .local v12, e:Ljava/io/IOException;
    :try_start_18
    const-string v5, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_a

    goto/16 :goto_b

    .line 397
    .end local v12           #e:Ljava/io/IOException;
    .end local v14           #jpgFileSize:I
    .end local v21           #reducedQuality:I
    :catch_c
    move-exception v5

    move-object v12, v5

    goto :goto_10

    .line 402
    .end local v4           #b:Landroid/graphics/Bitmap;
    :cond_16
    :try_start_19
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    goto/16 :goto_d

    .line 410
    :cond_17
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_a

    move-result-object v5

    goto :goto_e

    .line 418
    :catch_d
    move-exception v12

    .line 419
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 418
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v20           #quality:I
    .local v12, e:Ljava/io/FileNotFoundException;
    :catch_e
    move-exception v12

    .line 419
    .local v12, e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 415
    .end local v12           #e:Ljava/io/IOException;
    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v5

    move-object/from16 v16, v17

    .end local v17           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #os:Ljava/io/ByteArrayOutputStream;
    :goto_11
    if-eqz v13, :cond_18

    .line 417
    :try_start_1a
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f

    .line 422
    :cond_18
    :goto_12
    if-eqz v16, :cond_19

    .line 424
    :try_start_1b
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    .line 427
    :cond_19
    :goto_13
    throw v5

    .line 418
    :catch_f
    move-exception v12

    .line 419
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 425
    .end local v12           #e:Ljava/io/IOException;
    :catch_10
    move-exception v12

    .line 426
    .restart local v12       #e:Ljava/io/IOException;
    const-string v6, "Mms/image"

    invoke-virtual {v12}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 415
    .end local v12           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    goto :goto_11

    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v20       #quality:I
    :cond_1a
    move-object/from16 v17, v16

    .end local v16           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1
.end method

.method public static getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 9
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 453
    const/4 v8, 0x0

    .line 454
    .local v8, degree:I
    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    const/4 v7, 0x0

    .line 457
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 459
    if-eqz v7, :cond_0

    .line 460
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 466
    :cond_0
    if-eqz v7, :cond_1

    .line 467
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 473
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 464
    .restart local v7       #cur:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 466
    if-eqz v7, :cond_1

    .line 467
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 467
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 470
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_3
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->isMMSUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->getDegreeFromFile(Landroid/net/Uri;)I

    move-result v8

    goto :goto_0
.end method

.method private getRotatedImageData()[B
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-string v13, "Mms/image"

    .line 253
    const/4 v8, 0x0

    .line 254
    .local v8, input:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 256
    .local v10, os:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 257
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v8

    .line 258
    const/16 v12, 0x64

    .line 260
    .local v12, quality:I
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v8, v1, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    .local v0, b:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 263
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 264
    .local v5, m:Landroid/graphics/Matrix;
    iget v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 265
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 267
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_0
    if-nez v0, :cond_4

    .line 282
    if-eqz v8, :cond_1

    .line 284
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 289
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 291
    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    move-object v1, v14

    .line 294
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #quality:I
    :cond_3
    :goto_2
    return-object v1

    .line 285
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #quality:I
    :catch_0
    move-exception v7

    .line 286
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 292
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 293
    .restart local v7       #e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 270
    .end local v7           #e:Ljava/io/IOException;
    :cond_4
    :try_start_4
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 272
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .local v11, os:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1, v12, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a

    move-object v10, v11

    .line 277
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    :goto_3
    if-nez v10, :cond_8

    move-object v1, v14

    .line 282
    :goto_4
    if-eqz v8, :cond_5

    .line 284
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 289
    :cond_5
    :goto_5
    if-eqz v10, :cond_3

    .line 291
    :try_start_7
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 292
    :catch_2
    move-exception v7

    .line 293
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 273
    .end local v7           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    move-object v7, v1

    .line 274
    .local v7, e:Ljava/lang/OutOfMemoryError;
    :goto_6
    :try_start_8
    const-string v1, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 278
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #quality:I
    :catch_4
    move-exception v1

    move-object v7, v1

    .line 279
    .local v7, e:Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_9
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 282
    if-eqz v8, :cond_6

    .line 284
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 289
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_6
    :goto_8
    if-eqz v10, :cond_7

    .line 291
    :try_start_b
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_7
    :goto_9
    move-object v1, v14

    .line 294
    goto :goto_2

    .line 277
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #quality:I
    :cond_8
    :try_start_c
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4

    move-result-object v1

    goto :goto_4

    .line 285
    :catch_5
    move-exception v7

    .line 286
    .local v7, e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 285
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #quality:I
    .local v7, e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v7

    .line 286
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 292
    .end local v7           #e:Ljava/io/IOException;
    :catch_7
    move-exception v7

    .line 293
    .restart local v7       #e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 282
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :goto_a
    if-eqz v8, :cond_9

    .line 284
    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 289
    :cond_9
    :goto_b
    if-eqz v10, :cond_a

    .line 291
    :try_start_e
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 294
    :cond_a
    :goto_c
    throw v1

    .line 285
    :catch_8
    move-exception v7

    .line 286
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 292
    .end local v7           #e:Ljava/io/IOException;
    :catch_9
    move-exception v7

    .line 293
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 282
    .end local v7           #e:Ljava/io/IOException;
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #quality:I
    :catchall_1
    move-exception v1

    move-object v10, v11

    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    goto :goto_a

    .line 278
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v1

    move-object v7, v1

    move-object v10, v11

    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 273
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    :catch_b
    move-exception v1

    move-object v7, v1

    move-object v10, v11

    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_6
.end method

.method private initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v0, "_data"

    const-string v9, "Query on "

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 121
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 132
    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, filePath:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 137
    :cond_3
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 142
    :goto_0
    iput-object v8, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 146
    return-void

    .line 139
    .end local v8           #filePath:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 140
    .restart local v8       #filePath:Ljava/lang/String;
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private initFromFile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    .line 103
    .local v2, mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, extension:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 108
    .local v0, dotPos:I
    if-ltz v0, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .end local v0           #dotPos:I
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private static isMMSUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, authority:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    const/4 v1, 0x1

    .line 448
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, authority:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const/4 v1, 0x1

    .line 438
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    return v0
.end method

.method public getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    .locals 7
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 204
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 206
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/UriImage;->getResizedImageData(III)[B

    move-result-object v1

    .line 207
    .local v1, data:[B
    if-nez v1, :cond_0

    .line 211
    const/4 v6, 0x0

    .line 224
    :goto_0
    return-object v6

    .line 214
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 215
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 216
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, src:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 218
    .local v5, srcBytes:[B
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 219
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 220
    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 221
    .local v3, period:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    if-eqz v3, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v0, v6

    .line 222
    .local v0, contentId:[B
    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    move-object v6, v2

    .line 224
    goto :goto_0

    .end local v0           #contentId:[B
    :cond_1
    move-object v0, v5

    .line 221
    goto :goto_1
.end method

.method public getRotate()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    return v0
.end method

.method public getRotateImageAsPart()Lcom/google/android/mms/pdu/PduPart;
    .locals 7

    .prologue
    .line 229
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 231
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->getRotatedImageData()[B

    move-result-object v1

    .line 232
    .local v1, data:[B
    if-nez v1, :cond_0

    .line 236
    const/4 v6, 0x0

    .line 249
    :goto_0
    return-object v6

    .line 239
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 240
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 241
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, src:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 243
    .local v5, srcBytes:[B
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 244
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 245
    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 246
    .local v3, period:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    if-eqz v3, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object v0, v6

    .line 247
    .local v0, contentId:[B
    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    move-object v6, v2

    .line 249
    goto :goto_0

    .end local v0           #contentId:[B
    :cond_1
    move-object v0, v5

    .line 246
    goto :goto_1
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    return v0
.end method

.class public Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;
.super Ljava/lang/Object;
.source "ClipboardDataBitmapUrl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadSimpleBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "urlname"

    .prologue
    const-string v8, "downloadSimpleBitmap2 Url-"

    const-string v7, " / Error : "

    const-string v6, "ClipboardServiceEx"

    .line 54
    const/4 v2, 0x0

    .line 55
    .local v2, url:Ljava/net/URL;
    const/4 v0, 0x0

    .line 57
    .local v0, Result:Landroid/graphics/Bitmap;
    :try_start_8
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_d} :catch_17
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_41
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_d} :catch_6b

    .line 59
    .end local v2           #url:Ljava/net/URL;
    .local v3, url:Ljava/net/URL;
    :try_start_d
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_14} :catch_9d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_99
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_14} :catch_95

    move-result-object v0

    move-object v2, v3

    .line 71
    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    :goto_16
    return-object v0

    .line 60
    :catch_17
    move-exception v4

    move-object v1, v4

    .line 61
    .local v1, e:Ljava/net/MalformedURLException;
    :goto_19
    const-string v4, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadSimpleBitmap1 Url-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " /  Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    .line 69
    goto :goto_16

    .line 63
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_41
    move-exception v4

    move-object v1, v4

    .line 64
    .local v1, e:Ljava/io/IOException;
    :goto_43
    const-string v4, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadSimpleBitmap2 Url-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / Error : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x0

    .line 69
    goto :goto_16

    .line 66
    .end local v1           #e:Ljava/io/IOException;
    :catch_6b
    move-exception v4

    move-object v1, v4

    .line 67
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :goto_6d
    const-string v4, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadSimpleBitmap2 Url-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / Error : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    goto :goto_16

    .line 66
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_95
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto :goto_6d

    .line 63
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_99
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto :goto_43

    .line 60
    .end local v2           #url:Ljava/net/URL;
    .restart local v3       #url:Ljava/net/URL;
    :catch_9d
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #url:Ljava/net/URL;
    .restart local v2       #url:Ljava/net/URL;
    goto/16 :goto_19
.end method

.method public static getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "fileName"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const-string/jumbo v6, "welgate"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    .line 77
    const/4 v3, 0x2

    .line 78
    .local v3, sampleSize:I
    const/4 v1, 0x0

    .line 80
    .local v1, bm:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 83
    .local v0, bitmapOption:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 87
    :try_start_f
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_20

    move-result-object v1

    .line 94
    :goto_13
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p1, :cond_2a

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_2a

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 88
    :catch_20
    move-exception v2

    .line 90
    .local v2, e:Ljava/lang/Exception;
    const-string/jumbo v4, "welgate"

    const-string v4, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 98
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2a
    add-int/lit8 v3, v3, -0x1

    .line 100
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 104
    const/4 v4, 0x0

    :try_start_2f
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 105
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_36

    move-result-object v1

    .line 112
    :goto_35
    return-object v1

    .line 106
    :catch_36
    move-exception v4

    move-object v2, v4

    .line 108
    .restart local v2       #e:Ljava/lang/Exception;
    const-string/jumbo v4, "welgate"

    const-string v4, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

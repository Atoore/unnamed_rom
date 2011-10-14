.class public Lcom/android/mms/model/ImageModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "ImageModel.java"


# instance fields
.field private mBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mRotate:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v1, "img"

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 66
    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 70
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 71
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 72
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 78
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 66
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 79
    invoke-direct {p0}, Lcom/android/mms/model/ImageModel;->decodeImageBounds()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;I)V
    .locals 0
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .parameter "parDuation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 91
    iput p6, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 66
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;I)V
    .locals 0
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .parameter "regionModel"
    .parameter "parDuation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 97
    iput p6, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    .line 98
    return-void
.end method

.method private createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "thumbnailBoundsLimit"
    .parameter "uri"

    .prologue
    .line 220
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mWidth:I

    move v14, v0

    .line 221
    .local v14, outWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mHeight:I

    move v13, v0

    .line 223
    .local v13, outHeight:I
    const/4 v15, 0x1

    .line 224
    .local v15, s:I
    :goto_0
    div-int v3, v14, v15

    move v0, v3

    move/from16 v1, p1

    if-gt v0, v1, :cond_0

    div-int v3, v13, v15

    move v0, v3

    move/from16 v1, p1

    if-le v0, v1, :cond_1

    .line 225
    :cond_0
    mul-int/lit8 v15, v15, 0x2

    goto :goto_0

    .line 227
    :cond_1
    const-string v3, "Mms:app"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createThumbnailBitmap: scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v5, v14, v15

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int v5, v13, v15

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_2
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 232
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    iput v15, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 234
    const/4 v11, 0x0

    .line 236
    .local v11, input:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 237
    const/4 v3, 0x0

    invoke-static {v11, v3, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 238
    .local v2, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mRotate:I

    move v3, v0

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 239
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 240
    .local v7, m:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/model/ImageModel;->mRotate:I

    move v3, v0

    int-to-float v3, v3

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 241
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 251
    .end local v7           #m:Landroid/graphics/Matrix;
    :cond_3
    if-eqz v11, :cond_4

    .line 253
    :try_start_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    move-object v3, v2

    .line 256
    .end local v2           #b:Landroid/graphics/Bitmap;
    :cond_5
    :goto_2
    return-object v3

    .line 254
    .restart local v2       #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 255
    .local v9, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 244
    .end local v2           #b:Landroid/graphics/Bitmap;
    .end local v9           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v9, v3

    .line 245
    .local v9, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    const/4 v3, 0x0

    .line 251
    if-eqz v11, :cond_5

    .line 253
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 254
    :catch_2
    move-exception v9

    .line 255
    .local v9, e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 247
    .end local v9           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    move-object v10, v3

    .line 248
    .local v10, ex:Ljava/lang/OutOfMemoryError;
    :try_start_4
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    .line 249
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    .end local v10           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_6

    .line 253
    :try_start_5
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 256
    :cond_6
    :goto_3
    throw v3

    .line 254
    :catch_4
    move-exception v9

    .line 255
    .restart local v9       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private decodeImageBounds()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 122
    .local v0, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 123
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 124
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotate()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    .line 129
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 105
    .local v0, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 110
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 111
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 112
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotate()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    .line 118
    return-void
.end method

.method private internalGetBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "uri"

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 205
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 207
    const/16 v1, 0x1e0

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public checkContentRestriction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 173
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public checkCreationMode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 179
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkImageCreationMode(Ljava/lang/String;I)V

    .line 182
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkResolution(II)V

    .line 184
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageRotation(I)V

    .line 186
    return-void
.end method

.method public checkResolution()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 191
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkResolution(II)V

    .line 192
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/model/ImageModel;->internalGetBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapWithDrmCheck()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/model/ImageModel;->internalGetBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    if-nez v0, :cond_0

    .line 264
    invoke-super {p0}, Lcom/android/mms/model/RegionMediaModel;->getDuration()I

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    goto :goto_0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 5
    .parameter "evt"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 139
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 140
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 142
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 155
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/model/ImageModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 156
    invoke-virtual {p0, v4}, Lcom/android/mms/model/ImageModel;->notifyModelChanged(Z)V

    .line 157
    return-void

    .line 143
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 145
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 148
    iget-short v1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v1, v3, :cond_0

    .line 149
    iput-boolean v4, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 151
    :cond_3
    iget-short v1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v1, v3, :cond_0

    .line 152
    iput-boolean v4, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0
.end method

.method public setResizeImageSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 310
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 311
    return-void
.end method

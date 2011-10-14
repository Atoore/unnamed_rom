.class public Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;
.super Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceSurface"
.end annotation


# instance fields
.field private mResourceId:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 3
    .parameter "resources"
    .parameter "resourceId"

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;-><init>()V

    .line 776
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResources:Landroid/content/res/Resources;

    .line 777
    iput p2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResourceId:I

    .line 779
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 780
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 781
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 782
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResources:Landroid/content/res/Resources;

    iget v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResourceId:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 783
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    .line 784
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    .line 785
    return-void
.end method


# virtual methods
.method protected declared-synchronized preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 789
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 790
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 791
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 792
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 793
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResources:Landroid/content/res/Resources;

    iget v3, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResourceId:I

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 794
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 795
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$900()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode requested resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->mResourceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    monitor-exit p0

    return-void

    .line 797
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v1       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->upload(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;Landroid/graphics/Bitmap;)V

    .line 798
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 789
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

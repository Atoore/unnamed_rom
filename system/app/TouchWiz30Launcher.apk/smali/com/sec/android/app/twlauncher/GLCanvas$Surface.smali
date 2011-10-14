.class public Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
.super Ljava/lang/Object;
.source "GLCanvas.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;
.implements Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Surface"
.end annotation


# instance fields
.field protected mHeight:I

.field private mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

.field protected mTextureId:I

.field protected mWidth:I

.field protected temp:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    .line 599
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->temp:[I

    return-void
.end method


# virtual methods
.method protected bind(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 1
    .parameter "renderer"

    .prologue
    .line 638
    const v0, 0x84c0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->bind(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;I)V

    .line 639
    return-void
.end method

.method protected bind(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;I)V
    .locals 5
    .parameter "render"
    .parameter "slot"

    .prologue
    const/4 v4, 0x0

    const v3, 0x46180400

    const/16 v2, 0xde1

    .line 642
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 643
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 644
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->temp:[I

    invoke-static {v0, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->temp:[I

    aget v0, v0, v4

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    .line 646
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->addGLObject(Lcom/sec/android/app/twlauncher/GLCanvas$GLObject;)V

    .line 647
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;->access$1000(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    .line 649
    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 650
    const/16 v0, 0x2801

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 652
    const/16 v0, 0x2800

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 654
    return-void
.end method

.method public draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 665
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->getHeight()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p1

    move-object v1, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 666
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 679
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 680
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    if-lez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    iget v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;->queueTexture(I)V

    .line 683
    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 661
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 657
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    return v0
.end method

.method public onContextLost()V
    .locals 1

    .prologue
    .line 669
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mTextureId:I

    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mObjectFinalizeQueue:Lcom/sec/android/app/twlauncher/GLCanvas$ObjectFinalizeQueue;

    .line 671
    return-void
.end method

.method protected preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 597
    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 674
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 675
    return-void
.end method

.method protected upload(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "renderer"
    .parameter "b"

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->bind(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V

    .line 607
    monitor-enter p2

    .line 608
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    invoke-static {}, Lcom/sec/android/app/twlauncher/GLCanvas;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attempting to upload a recycled bitmap."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v0, 0x4

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    .line 616
    .local v6, colors:[I
    const/4 v0, 0x2

    const/4 v1, 0x2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 618
    .end local v6           #colors:[I
    .end local p2
    .local v3, b:Landroid/graphics/Bitmap;
    :goto_0
    :try_start_1
    invoke-static {v3}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 619
    .local v2, internalFormat:I
    invoke-static {v3}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 620
    .local v4, type:I
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    .line 621
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v5, 0x47012f00

    invoke-static {v0, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 623
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v5, 0x47012f00

    invoke-static {v0, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 628
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    .line 629
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I

    .line 630
    monitor-exit p2

    .line 631
    return-void

    .line 630
    .end local v2           #internalFormat:I
    .end local v3           #b:Landroid/graphics/Bitmap;
    .end local v4           #type:I
    .restart local p2
    :catchall_0
    move-exception v0

    move-object v3, p2

    .end local p2
    .restart local v3       #b:Landroid/graphics/Bitmap;
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    .end local v3           #b:Landroid/graphics/Bitmap;
    .restart local p2
    :cond_0
    move-object v3, p2

    .end local p2
    .restart local v3       #b:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 613
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

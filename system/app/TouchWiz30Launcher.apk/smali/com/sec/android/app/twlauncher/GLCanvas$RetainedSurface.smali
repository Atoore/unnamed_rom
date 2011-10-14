.class public Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
.super Lcom/sec/android/app/twlauncher/GLCanvas$Surface;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainedSurface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;
    }
.end annotation


# static fields
.field private static final DEFAULT_POLICY:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mBitmapPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

.field protected mUploadNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 697
    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RETAIN:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    sput-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->DEFAULT_POLICY:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 700
    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->DEFAULT_POLICY:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    .line 701
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 708
    sget-object v0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->DEFAULT_POLICY:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    .line 709
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V
    .locals 2
    .parameter "b"
    .parameter "policy"

    .prologue
    const/4 v1, 0x0

    .line 711
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;-><init>()V

    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    .line 742
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    .line 712
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    .line 713
    if-eqz p1, :cond_0

    .line 714
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 715
    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmapPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    .line 716
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 704
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    .line 705
    return-void
.end method


# virtual methods
.method public declared-synchronized onContextLost()V
    .locals 1

    .prologue
    .line 761
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->onContextLost()V

    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    monitor-exit p0

    return-void

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized postUpload(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "toUpload"

    .prologue
    .line 732
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mWidth:I

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$Surface;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    monitor-exit p0

    return-void

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized preRender(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 748
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->upload(Lcom/sec/android/app/twlauncher/GLCanvas$SceneGraphRenderer;Landroid/graphics/Bitmap;)V

    .line 750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mUploadNeeded:Z

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmapPolicy:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    sget-object v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    if-ne v0, v1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 757
    :cond_0
    monitor-exit p0

    return-void

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

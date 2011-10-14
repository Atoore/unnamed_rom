.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$1;,
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;
    }
.end annotation


# static fields
.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static mSync:Ljava/lang/Object;

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWallpaperXStep:F

.field private mWallpaperYStep:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/WallpaperManager;->DEBUG:Z

    .line 334
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/WallpaperManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .parameter "context"
    .parameter "handler"

    .prologue
    const/high16 v0, -0x4080

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 59
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 346
    iput-object p1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/os/Looper;)V

    .line 348
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "context"
    .parameter "bm"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x1

    .line 708
    if-nez p1, :cond_5

    move-object v7, p1

    .line 751
    :goto_4
    return-object v7

    .line 711
    :cond_5
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {p1, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 716
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 718
    .local v3, newbm:Landroid/graphics/Bitmap;
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v3, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 719
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 720
    .local v0, c:Landroid/graphics/Canvas;
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 721
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 722
    .local v6, targetRect:Landroid/graphics/Rect;
    const/4 v7, 0x0

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 723
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 724
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 726
    iget v7, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v7

    .line 727
    .local v2, deltaw:I
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v7

    .line 729
    .local v1, deltah:I
    if-gtz v2, :cond_41

    if-lez v1, :cond_61

    .line 732
    :cond_41
    const/high16 v5, 0x3f80

    .line 733
    .local v5, scale:F
    if-le v2, v1, :cond_7c

    .line 734
    int-to-float v7, p2

    iget v8, v6, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 738
    :goto_4b
    iget v7, v6, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 739
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 740
    iget v7, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v7

    .line 741
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v7

    .line 744
    .end local v5           #scale:F
    :cond_61
    div-int/lit8 v7, v2, 0x2

    div-int/lit8 v8, v1, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 745
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 746
    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 747
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 748
    const/4 v7, 0x0

    invoke-virtual {v0, p1, v7, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 750
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v7, v3

    .line 751
    goto :goto_4

    .line 736
    .end local v4           #paint:Landroid/graphics/Paint;
    .restart local v5       #scale:F
    :cond_7c
    int-to-float v7, p3

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    div-float v5, v7, v8

    goto :goto_4b
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 354
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .registers 3
    .parameter "looper"

    .prologue
    .line 338
    sget-object v0, Landroid/app/WallpaperManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v1, :cond_e

    .line 340
    new-instance v1, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v1, p0}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 342
    :cond_e
    monitor-exit v0

    .line 343
    return-void

    .line 342
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 6
    .parameter "data"
    .parameter "fos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    const v2, 0x8000

    new-array v1, v2, [B

    .line 548
    .local v1, buffer:[B
    :goto_5
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, amt:I
    if-lez v0, :cond_10

    .line 549
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_5

    .line 551
    :cond_10
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    const v0, 0x108016e

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 705
    return-void
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .registers 8
    .parameter "windowToken"

    .prologue
    .line 688
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v2, -0x4080

    const/high16 v3, -0x4080

    const/high16 v4, -0x4080

    const/high16 v5, -0x4080

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    .line 693
    :goto_16
    return-void

    .line 690
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public getDesiredMinimumHeight()I
    .registers 3

    .prologue
    .line 592
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 595
    :goto_a
    return v1

    .line 593
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 595
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDesiredMinimumWidth()I
    .registers 3

    .prologue
    .line 569
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWidthHint()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 572
    :goto_a
    return v1

    .line 570
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 572
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 373
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 374
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1c

    .line 375
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 376
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    move-object v2, v1

    .line 379
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_1b
    return-object v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 415
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 416
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_13

    .line 417
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v5}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .local v1, dr:Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    .line 420
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_12
    return-object v2

    :cond_13
    move-object v2, v5

    goto :goto_12
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .registers 2

    .prologue
    .line 360
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 3

    .prologue
    .line 446
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 448
    :goto_a
    return-object v1

    .line 447
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 448
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 392
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 393
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1b

    .line 394
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 395
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    move-object v2, v1

    .line 398
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_1a
    return-object v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 431
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 432
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_13

    .line 433
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v5}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .local v1, dr:Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    .line 436
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :goto_12
    return-object v2

    :cond_13
    move-object v2, v5

    goto :goto_12
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 15
    .parameter "windowToken"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"

    .prologue
    .line 668
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 674
    :goto_14
    return-void

    .line 671
    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    :try_start_0
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_21

    move-result-object v0

    .line 497
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_e

    .line 511
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_d
    :goto_d
    return-void

    .line 500
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_e
    const/4 v1, 0x0

    .line 502
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_23

    .line 503
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_14
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_2a

    .line 505
    if-eqz v2, :cond_d

    .line 506
    :try_start_1d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_d

    .line 509
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_21
    move-exception v3

    goto :goto_d

    .line 505
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_23
    move-exception v3

    :goto_24
    if-eqz v1, :cond_29

    .line 506
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 505
    :cond_29
    throw v3
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2a} :catch_21

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_2a
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_24
.end method

.method public setResource(I)V
    .registers 9
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    :try_start_0
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 467
    .local v3, resources:Landroid/content/res/Resources;
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_44

    move-result-object v0

    .line 469
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_3c

    .line 470
    const/4 v1, 0x0

    .line 472
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_2b
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_3d

    .line 473
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_30
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_46

    .line 475
    if-eqz v2, :cond_3c

    .line 476
    :try_start_39
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 482
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_3c
    :goto_3c
    return-void

    .line 475
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #resources:Landroid/content/res/Resources;
    :catchall_3d
    move-exception v4

    :goto_3e
    if-eqz v1, :cond_43

    .line 476
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 475
    :cond_43
    throw v4
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_44} :catch_44

    .line 480
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #resources:Landroid/content/res/Resources;
    :catch_44
    move-exception v4

    goto :goto_3c

    .line 475
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #resources:Landroid/content/res/Resources;
    :catchall_46
    move-exception v4

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3e
.end method

.method public setStream(Ljava/io/InputStream;)V
    .registers 7
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    :try_start_0
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_1d

    move-result-object v0

    .line 528
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_e

    .line 542
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_d
    :goto_d
    return-void

    .line 531
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    :cond_e
    const/4 v1, 0x0

    .line 533
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1f

    .line 534
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_14
    invoke-direct {p0, p1, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_26

    .line 536
    if-eqz v2, :cond_d

    .line 537
    :try_start_19
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_d

    .line 540
    .end local v0           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_1d
    move-exception v3

    goto :goto_d

    .line 536
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_1f
    move-exception v3

    :goto_20
    if-eqz v1, :cond_25

    .line 537
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 536
    :cond_25
    throw v3
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_26} :catch_1d

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_26
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_20
.end method

.method public setWallpaperOffsetSteps(FF)V
    .registers 3
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 647
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 648
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 649
    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .registers 10
    .parameter "windowToken"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 630
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 636
    :goto_14
    return-void

    .line 633
    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public suggestDesiredDimensions(II)V
    .registers 4
    .parameter "minimumWidth"
    .parameter "minimumHeight"

    .prologue
    .line 609
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    #getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->setDimensionHints(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 612
    :goto_9
    return-void

    .line 610
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.class Lcom/sec/android/app/twlauncher/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 33
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 39
    .local v0, bounds:Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 53
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 58
    return-void
.end method

.class public Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;,
        Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;
    }
.end annotation


# static fields
.field private static mTransparent:Landroid/graphics/Bitmap;


# instance fields
.field private customDrawLock:Ljava/lang/Object;

.field private mCustomCache:Landroid/graphics/Bitmap;

.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsCustomDrawing:Z

.field private mOnUpdateListener:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;

.field private mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

.field private mUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 62
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    .line 51
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    .line 55
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mUpdated:Z

    .line 63
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 64
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setDrawingCacheEnabled(Z)V

    .line 65
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v3, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    .line 70
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setDrawingCacheEnabled(Z)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setChildrenDrawingCacheEnabled(Z)V

    .line 72
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setPersistentDrawingCache(I)V

    .line 73
    return-void

    .line 66
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)Landroid/view/ViewParent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private buildCustomCache()V
    .locals 5

    .prologue
    .line 219
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    .line 223
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 224
    const-string v2, "LauncherAppWidgetHostView"

    const-string v3, "Fail to create custom cache bitmap!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 227
    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 228
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 229
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    monitor-enter v2

    .line 230
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    .line 231
    .local v1, flag:Z
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    .line 232
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    .line 233
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    .line 234
    monitor-exit v2

    goto :goto_0

    .end local v1           #flag:Z
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private postCheckForLongClick()V
    .locals 3

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method


# virtual methods
.method public buildDrawingCache(Z)V
    .locals 2
    .parameter "autoScale"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    if-nez v1, :cond_0

    .line 197
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->buildDrawingCache(Z)V

    .line 199
    :cond_0
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 144
    :cond_0
    return-void
.end method

.method destroyLauncherReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->setOnUpdateListener(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;)V

    .line 290
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 291
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const-string v0, "LauncherAppWidgetHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchRestoreInstanceState: widgetid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 277
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const-string v0, "LauncherAppWidgetHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSaveInstanceState: widgetid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 285
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    if-nez v1, :cond_0

    .line 182
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->draw(Landroid/graphics/Canvas;)V

    .line 184
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mUpdated:Z

    if-eqz v1, :cond_1

    .line 185
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mUpdated:Z

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mOnUpdateListener:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mOnUpdateListener:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;

    invoke-interface {v1, p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;->onWidgetUpdated(Lcom/sec/android/app/twlauncher/CustomViewFlipper$CustomFlipView;)V

    .line 190
    :cond_1
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized getCustomCache()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->buildCustomCache()V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "autoScale"

    .prologue
    .line 204
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->customDrawLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    .local v0, b:Landroid/graphics/Bitmap;
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    if-nez v2, :cond_0

    .line 207
    monitor-exit v1

    move-object v1, v0

    .line 209
    :goto_0
    return-object v1

    :cond_0
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mTransparent:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 210
    .end local v0           #b:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCustomFlipEnd()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    .line 262
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    .line 263
    return-void
.end method

.method public onCustomFlipStart()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mIsCustomDrawing:Z

    .line 249
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_0

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 84
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v0, v1

    .line 105
    goto :goto_0

    .line 91
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_1

    .line 97
    :pswitch_2
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnUpdateListener(Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mOnUpdateListener:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView$OnUpdateListener;

    .line 148
    return-void
.end method

.method public declared-synchronized updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 3
    .parameter "remoteViews"

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->isRestricted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :try_start_1
    sget-object v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    :try_start_2
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 165
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 169
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mCustomCache:Landroid/graphics/Bitmap;

    .line 171
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->mUpdated:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 172
    :goto_0
    monitor-exit p0

    return-void

    .line 156
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 157
    .local v0, e:Ljava/lang/NullPointerException;
    goto :goto_0

    .line 165
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 155
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

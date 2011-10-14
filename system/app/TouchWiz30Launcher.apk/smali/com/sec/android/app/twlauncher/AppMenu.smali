.class public Lcom/sec/android/app/twlauncher/AppMenu;
.super Landroid/view/ViewGroup;
.source "AppMenu.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AppMenu$Animate;
    }
.end annotation


# instance fields
.field private mAppHeight:I

.field private mAppWidth:I

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

.field private mColumnNum:I

.field private mEnabledChildAnimation:Z

.field private mHasFolderOpen:Z

.field private mItemsOnPage:I

.field private mLRPadding:I

.field protected mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mOrientation:I

.field private mScreenClipExtendedEdge:I

.field private mSkiaDrawing:Z

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopOffset:I

.field private mVerticalSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "orientation"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    .line 58
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 62
    iput v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mScreenClipExtendedEdge:I

    .line 64
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mSkiaDrawing:Z

    .line 68
    iput p2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    .line 72
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemsOnPage:I

    .line 74
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemsOnPage:I

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->init()V

    .line 77
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    .line 84
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setClickable(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 87
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 89
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v3, -0x1

    .line 91
    .local v3, oldOrientation:I
    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    if-eq v5, v6, :cond_0

    .line 92
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 93
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mOrientation:I

    iput v5, v0, Landroid/content/res/Configuration;->orientation:I

    .line 94
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 95
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 98
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    const v5, 0x7f0b0010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    .line 99
    const v5, 0x7f0b0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    .line 100
    const v5, 0x7f0b000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    .line 101
    const v5, 0x7f0b0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    .line 105
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 106
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 107
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 108
    invoke-virtual {v4, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 111
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mItemsOnPage:I

    if-ge v1, v5, :cond_2

    .line 112
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    new-instance v6, Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    invoke-direct {v6, p0}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;-><init>(Lcom/sec/android/app/twlauncher/AppMenu;)V

    aput-object v6, v5, v1

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setAnimationCacheEnabled(Z)V

    .line 116
    return-void
.end method


# virtual methods
.method cellToPoint(I[I)V
    .locals 6
    .parameter "cell"
    .parameter "point"

    .prologue
    .line 246
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    div-int v0, p1, v2

    .line 247
    .local v0, line:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    rem-int v1, p1, v2

    .line 249
    .local v1, num:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 250
    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    aput v3, p2, v2

    .line 251
    return-void
.end method

.method cellToPoint(Landroid/view/View;[I)V
    .locals 4
    .parameter "v"
    .parameter "point"

    .prologue
    .line 254
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 255
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 256
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 258
    .local v0, cell:I
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(I[I)V

    .line 263
    .end local v0           #cell:I
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    aput v3, p2, v2

    .line 261
    const/4 v2, 0x1

    iget v3, v1, Landroid/graphics/Rect;->top:I

    aput v3, p2, v2

    goto :goto_0
.end method

.method public clearFocus()V
    .locals 3

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v0

    .line 382
    .local v0, folder:Lcom/sec/android/app/twlauncher/UserFolder;
    if-nez v0, :cond_0

    .line 383
    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 390
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolder;->getDescendantFocusability()I

    move-result v1

    .line 387
    .local v1, oldState:I
    const/high16 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolder;->setDescendantFocusability(I)V

    .line 388
    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 389
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolder;->setDescendantFocusability(I)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mSkiaDrawing:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;ZZ)Z
    .locals 10
    .parameter "canvas"
    .parameter "ignoreClipping"
    .parameter "ignoreTransRefs"

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    .line 328
    .local v0, childCount:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScrollX()I

    move-result v8

    sub-int v3, v9, v8

    .line 329
    .local v3, pageLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getMeasuredWidth()I

    move-result v8

    move v7, v8

    .line 332
    .local v7, windowWidth:I
    :goto_0
    if-nez p3, :cond_0

    .line 335
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    .line 337
    :cond_0
    const/4 v4, 0x0

    .line 338
    .local v4, res:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 339
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 340
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int v2, v3, v8

    .line 341
    .local v2, left:I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int v5, v2, v8

    .line 342
    .local v5, right:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mScreenClipExtendedEdge:I

    add-int/2addr v8, v7

    if-ge v2, v8, :cond_1

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mScreenClipExtendedEdge:I

    neg-int v8, v8

    if-gt v5, v8, :cond_3

    :cond_1
    if-nez p2, :cond_3

    .line 338
    .end local v6           #view:Landroid/view/View;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 329
    .end local v1           #i:I
    .end local v2           #left:I
    .end local v4           #res:Z
    .end local v5           #right:I
    .end local v7           #windowWidth:I
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/DragLayer;->getWidth()I

    move-result v8

    move v7, v8

    goto :goto_0

    .line 346
    .restart local v1       #i:I
    .restart local v2       #left:I
    .restart local v4       #res:Z
    .restart local v5       #right:I
    .restart local v6       #view:Landroid/view/View;
    .restart local v7       #windowWidth:I
    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 347
    instance-of v8, v6, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v8, :cond_4

    .line 348
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 349
    check-cast v6, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    .end local v6           #view:Landroid/view/View;
    invoke-interface {v6, p1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 351
    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto :goto_2

    .line 353
    .end local v2           #left:I
    .end local v5           #right:I
    :cond_5
    return v4
.end method

.method public freeResources()V
    .locals 7

    .prologue
    .line 474
    const-string v5, "AppMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "freeResources "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v2

    .line 477
    .local v2, glsvg:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    invoke-virtual {v2, p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->cancelPreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 478
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 479
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 480
    .local v1, c:Landroid/view/View;
    instance-of v4, v1, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    if-eqz v4, :cond_0

    .line 481
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    move-object v4, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->cancelPreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 483
    :cond_0
    instance-of v4, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v4, :cond_1

    .line 484
    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local v1           #c:Landroid/view/View;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->freeResources()V

    .line 478
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 487
    :cond_2
    return-void
.end method

.method public getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, aMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 442
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #aMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 448
    .restart local p1       #aMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 449
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 450
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 452
    .local v1, tag:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v3, :cond_2

    .line 448
    .end local v1           #tag:Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 455
    .restart local v1       #tag:Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolder;

    if-nez v3, :cond_1

    .line 458
    const-string v3, "DebugPlacement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Owner = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v1           #tag:Ljava/lang/Object;
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 461
    .end local v2           #view:Landroid/view/View;
    :cond_3
    return-object p1
.end method

.method public getChildHeight()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    return v0
.end method

.method public getChildWidth()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    return v0
.end method

.method public getLRPadding()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    return v0
.end method

.method public getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;
    .locals 4

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 397
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 398
    .local v1, v:Landroid/view/View;
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v2, :cond_0

    .line 399
    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolder;

    .end local v1           #v:Landroid/view/View;
    move-object v2, v1

    .line 403
    .end local v0           #i:I
    :goto_1
    return-object v2

    .line 396
    .restart local v0       #i:I
    .restart local v1       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 403
    .end local v0           #i:I
    .end local v1           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public hasFolderOpen()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mHasFolderOpen:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 149
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    .line 150
    .local v3, childLeft:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTopOffset:I

    .line 152
    .local v4, childTop:I
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mTmpRect:Landroid/graphics/Rect;

    .line 153
    .local v9, r:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 154
    .local v8, newRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    .line 155
    .local v6, count:I
    iget v10, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mVerticalSpace:I

    .line 156
    .local v10, verticalSpace:I
    const/4 v0, 0x0

    .line 157
    .local v0, cellCount:I
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mHasFolderOpen:Z

    .line 158
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 159
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 161
    .local v5, childWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 163
    .local v2, childHeight:I
    instance-of v11, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v11, :cond_0

    .line 164
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->stop()V

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    .line 166
    invoke-virtual {v1, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 167
    add-int v11, v3, v5

    add-int v12, v4, v2

    invoke-virtual {v8, v3, v4, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 168
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEnabledChildAnimation:Z

    if-eqz v11, :cond_2

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 169
    add-int v11, v3, v5

    add-int v12, v4, v2

    invoke-virtual {v9, v3, v4, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 170
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppMenu$Animate;

    aget-object v11, v11, v7

    const/16 v12, 0x12c

    invoke-virtual {v11, v1, v9, v12}, Lcom/sec/android/app/twlauncher/AppMenu$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 175
    :goto_1
    add-int/2addr v3, v5

    .line 176
    add-int/lit8 v0, v0, 0x1

    .line 178
    iget v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    rem-int v11, v0, v11

    if-nez v11, :cond_0

    .line 179
    add-int v11, v4, v2

    add-int v4, v11, v10

    .line 180
    iget v3, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    .line 184
    :cond_0
    instance-of v11, v1, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v11, :cond_1

    .line 185
    sub-int v5, p4, p2

    .line 186
    sub-int v2, p5, p3

    .line 187
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12, v5, v2}, Landroid/view/View;->layout(IIII)V

    .line 188
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mHasFolderOpen:Z

    .line 158
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 172
    :cond_2
    add-int v11, v3, v5

    add-int v12, v4, v2

    invoke-virtual {v1, v3, v4, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 191
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childHeight:I
    .end local v5           #childWidth:I
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 120
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 122
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 123
    .local v6, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 125
    .local v2, height:I
    iget v7, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLRPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mColumnNum:I

    div-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    .line 127
    iget v6, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppWidth:I

    .line 128
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mAppHeight:I

    .line 130
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 131
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v1

    .line 134
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 135
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, child:Landroid/view/View;
    instance-of v7, v0, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v7, :cond_0

    .line 137
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v4

    .line 138
    .local v4, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getFolderViewSize()Landroid/graphics/Point;

    move-result-object v5

    .line 139
    .local v5, size:Landroid/graphics/Point;
    iget v7, v5, Landroid/graphics/Point;->x:I

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, v5, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/view/View;->measure(II)V

    .line 134
    .end local v4           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v5           #size:Landroid/graphics/Point;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 145
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 465
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 466
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 467
    .local v0, c:Landroid/view/View;
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    if-eqz v2, :cond_0

    .line 468
    check-cast v0, Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;

    .end local v0           #c:Landroid/view/View;
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    .line 465
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    :cond_1
    return-void
.end method

.method public removeMissingApps(Ljava/util/HashMap;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 423
    .local v1, res:Z
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 424
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 425
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 427
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v4, :cond_1

    .line 423
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 430
    :cond_1
    instance-of v4, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 431
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 432
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 433
    const/4 v1, 0x1

    goto :goto_1

    .line 437
    .end local v2           #tag:Ljava/lang/Object;
    .end local v3           #view:Landroid/view/View;
    :cond_2
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 267
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 268
    if-eqz p1, :cond_0

    .line 269
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 270
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 271
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 273
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v0

    .line 200
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 201
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 202
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 204
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 211
    return-void
.end method

.method public setEnabledChildAnimation(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mEnabledChildAnimation:Z

    .line 227
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 81
    return-void
.end method

.method public setScreenClipExtendedEdge(I)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 242
    iput p1, p0, Lcom/sec/android/app/twlauncher/AppMenu;->mScreenClipExtendedEdge:I

    .line 243
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "aVisibility"

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppMenu;->getOpenFolder()Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v0

    .line 369
    .local v0, folder:Lcom/sec/android/app/twlauncher/UserFolder;
    if-nez v0, :cond_0

    .line 370
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 377
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolder;->getDescendantFocusability()I

    move-result v1

    .line 374
    .local v1, oldState:I
    const/high16 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolder;->setDescendantFocusability(I)V

    .line 375
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 376
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolder;->setDescendantFocusability(I)V

    goto :goto_0
.end method

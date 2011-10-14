.class public Lcom/sec/android/app/twlauncher/MenuDrawer;
.super Landroid/widget/FrameLayout;
.source "MenuDrawer.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# instance fields
.field private mChildSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSkiaCanvas:Landroid/graphics/Canvas;

.field private mSurfaceUploadNeeded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mChildSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 23
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mSkiaCanvas:Landroid/graphics/Canvas;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mSurfaceUploadNeeded:Z

    .line 36
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "outRect"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getHitRect(Landroid/graphics/Rect;)V

    .line 40
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 77
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 48
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 51
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setAnimationCacheEnabled(Z)V

    .line 54
    return-void
.end method

.method public setBackgroundClose()V
    .locals 6

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f09

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    const-string v4, "wallpaper"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 113
    .local v3, wp:Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 115
    .local v2, wi:Landroid/app/WallpaperInfo;
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 117
    .local v1, usingLiveWallpaper:Z
    :goto_0
    if-nez v1, :cond_0

    .line 118
    const v4, 0x7f07000e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundResource(I)V

    .line 121
    .end local v1           #usingLiveWallpaper:Z
    .end local v2           #wi:Landroid/app/WallpaperInfo;
    .end local v3           #wp:Landroid/app/WallpaperManager;
    :cond_0
    return-void

    .line 115
    .restart local v2       #wi:Landroid/app/WallpaperInfo;
    .restart local v3       #wp:Landroid/app/WallpaperManager;
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public setBackgroundImage()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public setEnabledProgress(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

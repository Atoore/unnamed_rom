.class public Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;
.super Lcom/sec/android/app/twlauncher/UserFolderItemView;
.source "LauncherManagerFolderItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected applyScale(Lcom/sec/android/app/twlauncher/GLCanvas;F)V
    .locals 2
    .parameter "canvas"
    .parameter "scale"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 36
    invoke-virtual {p1, p2, p2}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FF)V

    .line 37
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 38
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 3
    .parameter "canvas"

    .prologue
    const v2, 0x3e99999a

    .line 22
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 23
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getFastScrollFactor()F

    move-result v0

    .line 24
    .local v0, fastScrollFactor:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 25
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    .line 28
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    .line 29
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 30
    const/4 v1, 0x0

    return v1
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 4
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 43
    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 49
    .end local p6
    :goto_0
    return v2

    .line 46
    .restart local p6
    :cond_0
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p6
    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    .line 47
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 48
    .local v1, itemInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v1, v0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    .line 49
    const/4 v2, 0x1

    goto :goto_0
.end method

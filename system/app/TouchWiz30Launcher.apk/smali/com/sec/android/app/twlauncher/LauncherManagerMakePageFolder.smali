.class public Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;
.super Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;
.source "LauncherManagerMakePageFolder.java"


# instance fields
.field private mPageFolderFull:Landroid/widget/Toast;

.field private mRejectDragDrop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->init()V

    .line 27
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, context:Landroid/content/Context;
    const v1, 0x7f080076

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "16"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mPageFolderFull:Landroid/widget/Toast;

    .line 44
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 6
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v5, 0x0

    .line 48
    instance-of v4, p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-nez v4, :cond_0

    move v4, v5

    .line 69
    :goto_0
    return v4

    .line 51
    :cond_0
    move-object v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    .line 52
    .local v1, itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    if-nez v1, :cond_1

    move v4, v5

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    .line 56
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 59
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 60
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v4, :cond_3

    .line 61
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v2, v0

    .line 62
    .local v2, model:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v4

    const/16 v5, 0x10

    if-lt v4, v5, :cond_3

    .line 63
    const/4 v4, 0x1

    goto :goto_0

    .line 69
    .end local v2           #model:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_3
    invoke-super/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public addToRejectDragDropList(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 1
    .parameter "aInfo"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    return-void
.end method

.method public clearRejectDragDropList()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 21
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 73
    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 74
    move-object/from16 v0, p6

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 75
    const/16 v19, 0x0

    .line 116
    :goto_0
    return v19

    .line 77
    :cond_0
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v7

    .line 78
    .local v7, itemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    if-nez v7, :cond_1

    .line 79
    const/16 v19, 0x0

    goto :goto_0

    .line 81
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mRejectDragDrop:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 82
    const/16 v19, 0x0

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 85
    .local v17, tag:Ljava/lang/Object;
    if-eqz v17, :cond_5

    .line 86
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 87
    move-object/from16 v0, v17

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v11, v0

    .line 88
    .local v11, model:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v19

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->mPageFolderFull:Landroid/widget/Toast;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mCurrentScreen:I

    move v13, v0

    .line 92
    .local v13, screen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 93
    .local v9, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v5

    .line 94
    .local v5, draggedView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v12

    .line 95
    .local v12, pt:Landroid/graphics/PointF;
    move-object v0, v12

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v15, v19, v20

    .line 96
    .local v15, startX:I
    move-object v0, v12

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v16, v19, v20

    .line 97
    .local v16, startY:I
    new-instance v14, Landroid/graphics/PointF;

    move v0, v15

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    move-object v0, v14

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 99
    .local v14, startPoint:Landroid/graphics/PointF;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/MenuItemView;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v19

    move v0, v6

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 101
    invoke-virtual {v9, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 102
    .local v18, view:Landroid/view/View;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 103
    move-object/from16 v0, v18

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v10, v0

    .line 104
    .local v10, miv:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/MenuItemView;->getVisibility()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 105
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v10           #miv:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 109
    .end local v18           #view:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v19

    check-cast v5, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local v5           #draggedView:Landroid/view/View;
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v14

    move-object v3, v8

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->unPhanToMMWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;)Z

    .line 111
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 116
    .end local v6           #i:I
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/MenuItemView;>;"
    .end local v9           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v11           #model:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v12           #pt:Landroid/graphics/PointF;
    .end local v13           #screen:I
    .end local v14           #startPoint:Landroid/graphics/PointF;
    .end local v15           #startX:I
    .end local v16           #startY:I
    :cond_5
    invoke-super/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderItemView;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z

    move-result v19

    goto/16 :goto_0
.end method

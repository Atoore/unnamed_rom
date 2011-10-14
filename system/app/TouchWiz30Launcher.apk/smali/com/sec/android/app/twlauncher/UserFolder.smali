.class public Lcom/sec/android/app/twlauncher/UserFolder;
.super Lcom/sec/android/app/twlauncher/Folder;
.source "UserFolder.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mHostScreen:I

.field private mRequiresPreload:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mRequiresPreload:Z

    .line 23
    return-void
.end method

.method static fromXml(Landroid/content/Context;)Lcom/sec/android/app/twlauncher/UserFolder;
    .locals 3
    .parameter "context"

    .prologue
    .line 38
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/UserFolder;

    return-object p0
.end method

.method private setRequiresPreload()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mRequiresPreload:Z

    .line 333
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 334
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
    const/4 v6, 0x1

    .line 43
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p6
    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    .line 44
    .local v0, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 45
    .local v1, itemType:I
    if-eqz v1, :cond_0

    if-ne v1, v6, :cond_1

    :cond_0
    iget-wide v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-wide v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    move v2, v6

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 4
    .parameter "aInfo"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    .line 178
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    .line 182
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v2, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_0

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 184
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Folder;->bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/UserFolder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    .line 251
    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_1

    .line 252
    check-cast p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 254
    :cond_1
    return-void
.end method

.method close()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeFolderView(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    .line 289
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->updateHostScreen()V

    .line 290
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 302
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    .line 303
    .local v0, parent:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    const/4 v1, 0x0

    .line 304
    .local v1, res:Z
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 306
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 307
    invoke-virtual {v0, p1, p0, v4, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v1

    .line 308
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 310
    :cond_0
    return v1
.end method

.method public getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getContentAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 258
    .local v0, adapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v1, :cond_0

    .line 259
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    move-object v1, v0

    .line 261
    :goto_0
    return-object v1

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "outRect"

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/UserFolder;->getHitRect(Landroid/graphics/Rect;)V

    .line 174
    return-void
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 315
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->invalidate()V

    .line 316
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->setRequiresPreload()V

    .line 317
    return-void
.end method

.method public invalidate(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 327
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Folder;->invalidate(IIII)V

    .line 328
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->setRequiresPreload()V

    .line 329
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "dirty"

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/Folder;->invalidate(Landroid/graphics/Rect;)V

    .line 322
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->setRequiresPreload()V

    .line 323
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 170
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 208
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 203
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 10
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object/from16 v0, p6

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    move v1, v0

    if-eqz v1, :cond_0

    .line 128
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p6
    invoke-virtual/range {p6 .. p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v2

    .end local v2           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .restart local v2       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object v8, v2

    .line 132
    .end local v2           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .local v8, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_0
    if-nez v8, :cond_1

    move-object v2, v8

    .end local v8           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v2       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move v1, v5

    .line 164
    :goto_1
    return v1

    .line 129
    .restart local p6
    :cond_0
    move-object/from16 v0, p6

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move v1, v0

    if-eqz v1, :cond_6

    .line 130
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v2, v0

    move-object v8, v2

    .end local v2           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v8       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto :goto_0

    .line 135
    .end local p6
    :cond_1
    iget-wide v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v6, -0x1

    cmp-long v1, v3, v6

    if-nez v1, :cond_5

    .line 137
    new-instance v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v2, v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 139
    .end local v8           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v2       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_2
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolder;->addAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 141
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v1

    if-ne v1, v9, :cond_2

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v1, v5}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v1

    if-ne v1, v9, :cond_4

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const v3, 0x7f080081

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 153
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 161
    :goto_4
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/MenuManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-eqz v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    :cond_3
    move v1, v9

    .line 164
    goto :goto_1

    .line 148
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const v3, 0x7f080082

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 155
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-wide v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move v6, v5

    move v7, v5

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabaseForUserFoler(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_4

    .end local v2           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v8       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_5
    move-object v2, v8

    .end local v8           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v2       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto :goto_2

    .restart local p6
    :cond_6
    move-object v8, v2

    .end local v2           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v8       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .locals 12
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 215
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v1, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_2

    .line 230
    :cond_0
    if-eqz p6, :cond_1

    .line 231
    invoke-super/range {p0 .. p7}, Lcom/sec/android/app/twlauncher/Folder;->onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V

    .line 232
    move-object/from16 v0, p7

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    move-object v11, v0

    .line 234
    .local v11, ldi:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragItem:Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 236
    .local v9, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->shouldDelayRemovingFromSourceWhenDrop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/UserFolder;->removeAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->updateHostScreen()V

    .line 244
    .end local v9           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v11           #ldi:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v10, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 219
    .local v10, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->hasDropTarget(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->phantomizeDragView(Lcom/sec/android/app/twlauncher/AppMenu;)Z

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/MenuManager;->onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 84
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v8

    .line 109
    :goto_0
    return v4

    .line 88
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v4, v4, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v4, :cond_2

    .line 109
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/Folder;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    .line 91
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mHostScreen:I

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 93
    .local v2, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 96
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropFolder()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isNewDropPage()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v7

    .line 97
    .local v1, dropTableFolders:Z
    :goto_1
    if-eqz v1, :cond_5

    move v4, v8

    .line 98
    goto :goto_0

    .end local v1           #dropTableFolders:Z
    :cond_4
    move v1, v8

    .line 96
    goto :goto_1

    .line 100
    .restart local v1       #dropTableFolders:Z
    :cond_5
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 101
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragItem:Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->close()V

    .line 103
    new-array v3, v5, [I

    .line 104
    .local v3, loc:[I
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 106
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    aget v6, v3, v8

    aget v7, v3, v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, p0, v5, v0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->dragFromFolder(Lcom/sec/android/app/twlauncher/UserFolder;Landroid/graphics/Point;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/View;)V

    move v4, v8

    .line 107
    goto :goto_0
.end method

.method onOpen()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mHostScreen:I

    .line 277
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->requestFocus()Z

    .line 281
    return-void
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "dragAction"

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Folder;->onPreDragStart(Landroid/view/View;I)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragItem:Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/UserFolder;->removeAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 123
    :cond_0
    return-void
.end method

.method public removeAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 4
    .parameter "aInfo"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    .line 191
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v2, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_0

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 197
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected updateHostScreen()V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/UserFolder;->mHostScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 266
    .local v0, cl:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->updateBadgeCounts()V

    .line 270
    :cond_0
    return-void
.end method

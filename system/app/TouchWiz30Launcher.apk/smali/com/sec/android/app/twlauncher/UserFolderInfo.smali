.class Lcom/sec/android/app/twlauncher/UserFolderInfo;
.super Lcom/sec/android/app/twlauncher/FolderInfo;
.source "UserFolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;
    }
.end annotation


# instance fields
.field private mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

.field public mHighlightedIcon:Landroid/graphics/drawable/Drawable;

.field private mIsNewDropFolder:Z

.field private mIsNewDropPage:Z

.field private mShadowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingList:Ljava/util/ArrayList;
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
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderInfo;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    .line 44
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    .line 46
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    .line 48
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mHighlightedIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setCreateTime(J)V

    .line 71
    return-void
.end method

.method private syncBubbleItemView(Lcom/sec/android/app/twlauncher/BubbleTextView;)V
    .locals 0
    .parameter "aView"

    .prologue
    .line 413
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->resetPressedDrawable()V

    .line 414
    return-void
.end method

.method private syncItemView(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V
    .locals 1
    .parameter "aView"

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->forceReload()V

    .line 401
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->invalidateSurface()V

    .line 402
    return-void
.end method

.method private syncLMFolderView(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V
    .locals 4
    .parameter "aView"

    .prologue
    .line 387
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    .line 388
    .local v0, appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->clear()V

    .line 390
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 391
    .local v2, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 393
    .end local v2           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 394
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 396
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private syncMenuItem(Landroid/view/MenuItem;)V
    .locals 1
    .parameter "aView"

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 406
    return-void

    .line 405
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private syncSimpleTextIconItem(Lcom/sec/android/app/twlauncher/SimpleTextIconItem;)V
    .locals 1
    .parameter "aView"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->setText(Ljava/lang/CharSequence;)V

    .line 410
    return-void
.end method

.method private syncUserFolder(Lcom/sec/android/app/twlauncher/UserFolder;)V
    .locals 4
    .parameter "aView"

    .prologue
    .line 374
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolder;->getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v0

    .line 375
    .local v0, appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    if-eqz v0, :cond_1

    .line 376
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 377
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->clear()V

    .line 378
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 379
    .local v2, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 381
    .end local v2           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 382
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 384
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z
    .locals 1
    .parameter "aInfo"

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    move-result v0

    return v0
.end method

.method public add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z
    .locals 2
    .parameter "aInfo"
    .parameter "aCommitNow"

    .prologue
    const/4 v1, 0x1

    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    move v0, v1

    .line 162
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addFolderView(Ljava/lang/Object;)Z
    .locals 3
    .parameter "aView"

    .prologue
    const/4 v2, 0x0

    .line 296
    if-nez p1, :cond_0

    move v1, v2

    .line 307
    .end local p1
    :goto_0
    return v1

    .line 299
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 300
    goto :goto_0

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 303
    .local v0, res:Z
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 304
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 306
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    move v1, v0

    .line 307
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 288
    return-void
.end method

.method public commit()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->fixIndices()V

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 242
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 244
    return v2
.end method

.method public contains(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z
    .locals 1
    .parameter "aInfo"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public copyFrom(Lcom/sec/android/app/twlauncher/UserFolderInfo;Z)V
    .locals 2
    .parameter "info"
    .parameter "aCommitNow"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->copyFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    if-eqz p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    .line 114
    :cond_1
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    .line 115
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    .line 118
    return-void
.end method

.method public fixIndices()V
    .locals 5

    .prologue
    .line 230
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 231
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 232
    .local v1, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    .line 233
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    .line 234
    const-string v2, "DebugPlacement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fix indices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 236
    .end local v1           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return-void
.end method

.method public getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 4
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
    .line 198
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 199
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 204
    .restart local p1       #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 206
    .local v1, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 208
    .end local v1           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    return-object p1
.end method

.method public getBadgeCount()I
    .locals 4

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, sum:I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 94
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 96
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return v2
.end method

.method public getContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 1
    .parameter "aIndex"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    return-object p0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isNewDropFolder()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    return v0
.end method

.method public isNewDropPage()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    return v0
.end method

.method public markAsClean()V
    .locals 3

    .prologue
    .line 421
    invoke-super {p0}, Lcom/sec/android/app/twlauncher/FolderInfo;->markAsClean()V

    .line 422
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    .line 422
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 425
    :cond_0
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 87
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z
    .locals 1
    .parameter "aInfo"

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z
    .locals 2
    .parameter "aInfo"
    .parameter "aCommitNow"

    .prologue
    const/4 v1, 0x1

    .line 213
    if-eqz p2, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 225
    return v1
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 418
    return-void
.end method

.method public removeFolderView(Ljava/lang/Object;)Z
    .locals 1
    .parameter "aView"

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeMissingApps(Ljava/util/HashMap;)Z
    .locals 5
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
    .local p1, aMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    const/4 v4, 0x1

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, res:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 174
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 175
    .local v1, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 177
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 178
    const/4 v2, 0x1

    .line 173
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 181
    .end local v1           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v0, v3, v4

    :goto_1
    if-ltz v0, :cond_3

    .line 182
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 183
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 185
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 186
    const/4 v2, 0x1

    .line 181
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 189
    .end local v1           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    .line 190
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v3, :cond_4

    .line 191
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    .line 193
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 194
    return v2
.end method

.method public renewFrom(Lcom/sec/android/app/twlauncher/UserFolderInfo;Z)V
    .locals 4
    .parameter "info"
    .parameter "aCommitNow"

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->copyFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 129
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 131
    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v0, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 132
    .local v0, aInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v0           #aInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    iget-boolean v2, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    .line 136
    iget-boolean v2, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    .line 137
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    .line 139
    return-void
.end method

.method public revert()Z
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mShadowList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    invoke-interface {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;->onContentsChanged()V

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public setIsNewDropFolder(Z)V
    .locals 0
    .parameter "isDropFolder"

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropFolder:Z

    .line 327
    return-void
.end method

.method public setIsNewDropPage(Z)V
    .locals 0
    .parameter "isDropPage"

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mIsNewDropPage:Z

    .line 319
    return-void
.end method

.method public setOnContentsChangedListener(Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mContentsChangedListener:Lcom/sec/android/app/twlauncher/UserFolderInfo$UserFolderInfoUpdate;

    .line 82
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "aTitle"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 124
    return-void
.end method

.method syncAllViews()V
    .locals 5

    .prologue
    .line 347
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_6

    .line 348
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 349
    .local v2, v:Ljava/lang/Object;
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v3, :cond_0

    .line 350
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v3, v0

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncUserFolder(Lcom/sec/android/app/twlauncher/UserFolder;)V

    .line 352
    :cond_0
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    if-eqz v3, :cond_1

    .line 353
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    move-object v3, v0

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncLMFolderView(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    .line 355
    :cond_1
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v3, :cond_2

    .line 356
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    move-object v3, v0

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncItemView(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V

    .line 358
    :cond_2
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    if-eqz v3, :cond_3

    .line 362
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    move-object v3, v0

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncSimpleTextIconItem(Lcom/sec/android/app/twlauncher/SimpleTextIconItem;)V

    .line 364
    :cond_3
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/BubbleTextView;

    if-eqz v3, :cond_4

    .line 365
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/BubbleTextView;

    move-object v3, v0

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncBubbleItemView(Lcom/sec/android/app/twlauncher/BubbleTextView;)V

    .line 367
    :cond_4
    instance-of v3, v2, Landroid/view/MenuItem;

    if-eqz v3, :cond_5

    .line 368
    check-cast v2, Landroid/view/MenuItem;

    .end local v2           #v:Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncMenuItem(Landroid/view/MenuItem;)V

    .line 347
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 371
    :cond_6
    return-void
.end method

.method public updateBadgeCount()I
    .locals 4

    .prologue
    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, sum:I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 337
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->updateBadgeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 339
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return v2
.end method

.method public updateItemIds(J)Z
    .locals 4
    .parameter "aId"

    .prologue
    const/4 v3, 0x1

    .line 249
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 250
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderInfo;->mWorkingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 251
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    .line 249
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 253
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return v3
.end method

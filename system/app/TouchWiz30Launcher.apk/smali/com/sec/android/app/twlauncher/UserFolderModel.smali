.class public Lcom/sec/android/app/twlauncher/UserFolderModel;
.super Ljava/lang/Object;
.source "UserFolderModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;
    }
.end annotation


# instance fields
.field private mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPreviewIconSize:F

.field private mPreviewIconXGap:F

.field private mPreviewIconYGap:F

.field private mPreviewIconYOffset:F

.field private mPreviewOffsetX:F

.field private mPreviewOffsetY:F

.field private mRes:Landroid/content/res/Resources;

.field private mSpecialFolders:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "aRes"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 44
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mSpecialFolders:Ljava/util/Hashtable;

    .line 76
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    .line 77
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewOffsetX:F

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewOffsetY:F

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconSize:F

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconXGap:F

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconYGap:F

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconYOffset:F

    .line 88
    return-void
.end method

.method private getContainingFolderFromList(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 4
    .parameter
    .parameter "aInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ")",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, aList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/app/twlauncher/UserFolderInfo;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 428
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 429
    .local v0, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->contains(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 433
    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :goto_1
    return-object v2

    .line 427
    .restart local v0       #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 433
    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private lock(Ljava/util/concurrent/locks/Lock;)V
    .locals 0
    .parameter "aLock"

    .prologue
    .line 148
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 149
    return-void
.end method

.method private removeFolderFromDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .locals 8
    .parameter "db"
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v7, "menu_item"

    .line 362
    const-string v1, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from DB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "parent_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 366
    const-string v1, "page"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    const-string v1, "cell"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    const-string v1, "menu_item"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parent_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 371
    const-wide/16 v1, -0x1

    invoke-virtual {p2, v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateItemIds(J)Z

    .line 372
    const-string v1, "menu_item"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v7, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 374
    const/4 v1, 0x1

    return v1
.end method

.method private unLock(Ljava/util/concurrent/locks/Lock;)V
    .locals 0
    .parameter "aLock"

    .prologue
    .line 152
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 153
    return-void
.end method

.method private updateFolderAppToDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .locals 10
    .parameter "db"
    .parameter "info"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const-string v9, "menu_item"

    const-string v8, "cell"

    .line 378
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 379
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "parent_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v3, "page"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v3, "cell"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    const-string v3, "menu_item"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parent_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v9, v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 388
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v3

    sub-int v1, v3, v6

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 389
    invoke-virtual {p2, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 390
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-wide v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    .line 391
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 392
    const-string v3, "parent_id"

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 393
    const-string v3, "page"

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    const-string v3, "cell"

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    const-string v3, "menu_item"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v9, v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 397
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    .line 388
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 399
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return v6
.end method

.method private updateFolderToDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .locals 11
    .parameter "db"
    .parameter "info"

    .prologue
    const-wide/16 v5, -0x1

    const-string v10, "menu_item"

    const-string v9, "DebugFolder"

    const-string v8, " to DB"

    const-string v7, " "

    .line 336
    const/4 v0, 0x1

    .line 337
    .local v0, res:Z
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isClean()Z

    move-result v2

    if-nez v2, :cond_2

    .line 338
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 339
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "page"

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getPageNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    const-string v2, "cell"

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getCellNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string v2, "title"

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v2, "parent_id"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    iget-wide v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    cmp-long v2, v5, v2

    if-nez v2, :cond_0

    .line 344
    const-string v2, "menu_item"

    const-string v2, ""

    invoke-virtual {p1, v10, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 345
    const-string v2, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserted folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to DB"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-wide v2, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    cmp-long v2, v5, v2

    if-nez v2, :cond_1

    .line 347
    const/4 v2, 0x0

    .line 357
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 350
    .restart local v1       #values:Landroid/content/ContentValues;
    :cond_0
    const-string v2, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to DB"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v2, "menu_item"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v10, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 354
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->updateFolderAppToDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    move-result v0

    .line 356
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->markAsClean()V

    move v2, v0

    .line 357
    goto :goto_0
.end method


# virtual methods
.method public assignEditToNormal()Z
    .locals 5

    .prologue
    .line 227
    const/4 v2, 0x0

    .line 231
    .local v2, mustUpdateDb:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 232
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 233
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->assignEditToNormal()V

    .line 234
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isDirty()Z

    move-result v3

    or-int/2addr v2, v3

    .line 231
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 236
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_0
    return v2
.end method

.method public assignNormalToEdit()Z
    .locals 5

    .prologue
    .line 240
    const/4 v2, 0x0

    .line 244
    .local v2, mustUpdateDb:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 245
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 246
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->assignNormalToEdit()V

    .line 247
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isDirty()Z

    move-result v3

    or-int/2addr v2, v3

    .line 244
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 249
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_0
    return v2
.end method

.method public assignTo(Ljava/util/ArrayList;ZZZ)V
    .locals 4
    .parameter
    .parameter "aCurrent"
    .parameter "aAdded"
    .parameter "aRemoved"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 295
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 297
    if-eqz p2, :cond_0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 300
    :cond_0
    if-eqz p3, :cond_1

    .line 301
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 303
    :cond_1
    if-eqz p4, :cond_2

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    .line 311
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 307
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assignTo() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    throw v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 480
    return-void
.end method

.method public commit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 439
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    sub-int v0, v2, v5

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 443
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 444
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->commit()Z

    .line 442
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 446
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    sub-int v0, v2, v5

    :goto_2
    if-ltz v0, :cond_2

    .line 447
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 448
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->clear()V

    .line 446
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 450
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_2
    return-void
.end method

.method public createUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 14
    .parameter "aId"
    .parameter "aCommitNow"

    .prologue
    .line 157
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/Launcher;->createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v3

    .line 158
    .local v3, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setFiltered(Z)V

    .line 159
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setSystemApp(Z)V

    .line 163
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 164
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f020017

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 168
    .local v13, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    const/4 v4, 0x0

    .line 169
    .local v4, bitmap:Landroid/graphics/Bitmap;
    instance-of v2, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 170
    move-object v0, v13

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v12, v0

    .line 171
    .local v12, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 176
    .end local v12           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    new-instance v1, Lcom/sec/android/app/twlauncher/FolderDrawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    iget v5, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewOffsetX:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewOffsetY:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconSize:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconXGap:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconYGap:F

    iget v10, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mPreviewIconYOffset:F

    const v11, 0x7f070014

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    .line 181
    .local v1, fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    iput-object v1, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 182
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f080004

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOwner(I)V

    .line 184
    iput-wide p1, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 185
    const-wide/16 v5, -0x1

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setParentId(J)V

    .line 186
    const/4 v2, 0x2

    iput v2, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 187
    if-eqz p3, :cond_2

    .line 188
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :goto_2
    return-object v3

    .line 166
    .end local v1           #fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    .end local v13           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f02008c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .restart local v13       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 173
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    const-string v2, "DebugFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Folder image is not a BitmapDrawable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public deleteFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    .locals 2
    .parameter "aInfo"

    .prologue
    const/4 v1, 0x1

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 473
    :goto_0
    return v0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v1

    .line 471
    goto :goto_0

    .line 473
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dumpSelf(Ljava/lang/String;)V
    .locals 6
    .parameter "aWho"

    .prologue
    const-string v5, "Folder "

    const-string v4, "DebugFolder"

    .line 91
    const-string v2, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Dumping Added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 93
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const-string v2, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_0
    const-string v2, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Dumping Deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 97
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const-string v2, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 99
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_1
    const-string v2, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Dumping Current"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 101
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const-string v2, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 103
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_2
    const-string v2, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Dumping Special"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mSpecialFolders:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 105
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const-string v2, "DebugFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 107
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_3
    return-void
.end method

.method public getAddedFolders()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getContainingFolderFromModel(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 4
    .parameter "aInfo"

    .prologue
    const/4 v3, 0x0

    .line 407
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v1, :cond_0

    move-object v1, v3

    .line 421
    :goto_0
    return-object v1

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getContainingFolderFromList(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v0

    .line 413
    .local v0, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 414
    goto :goto_0

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getContainingFolderFromList(Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 418
    goto :goto_0

    .line 420
    :cond_2
    const-wide/16 v1, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    move-object v1, v3

    .line 421
    goto :goto_0
.end method

.method public getSpecialFolders()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mSpecialFolders:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 5
    .parameter "aId"
    .parameter "aCreateIfNotExist"

    .prologue
    const/4 v4, 0x1

    .line 214
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    sub-int v0, v2, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 215
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 216
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iget-wide v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    move-object v2, v1

    .line 223
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :goto_1
    return-object v2

    .line 214
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 220
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_1
    if-eqz p3, :cond_2

    .line 221
    invoke-virtual {p0, p1, p2, v4}, Lcom/sec/android/app/twlauncher/UserFolderModel;->createUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v2

    goto :goto_1

    .line 223
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getUserFolders()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public numFolders()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public removeAllViews()V
    .locals 3

    .prologue
    .line 196
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 197
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    goto :goto_0

    .line 199
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 200
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    goto :goto_1

    .line 202
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 203
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    goto :goto_2

    .line 205
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mSpecialFolders:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 206
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    goto :goto_3

    .line 209
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_3
    return-void
.end method

.method public removeMissingApps(Ljava/util/HashMap;)Z
    .locals 4
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
    .line 131
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 132
    .local v2, res:Z
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 133
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 135
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 136
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_1

    .line 138
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 139
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_2

    .line 141
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mSpecialFolders:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 142
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_3

    .line 144
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_3
    return v2
.end method

.method public revert()V
    .locals 5

    .prologue
    .line 453
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 454
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 460
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 461
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->revert()Z

    .line 459
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 463
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_1
    return-void
.end method

.method public saveToDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;)Z
    .locals 7
    .parameter "db"
    .parameter "aCb"

    .prologue
    const/4 v6, 0x1

    const-string v4, "DebugFolder"

    .line 314
    const-string v3, "DebugFolder"

    const-string v3, "Save Folder Data To DB"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 319
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    sub-int v1, v3, v6

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {p2}, Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;->canContinue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 321
    .local v2, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->updateFolderToDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    .line 319
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 323
    .end local v2           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 324
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 325
    .restart local v2       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->removeFolderFromDB(Landroid/database/sqlite/SQLiteDatabase;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 327
    .end local v1           #i:I
    .end local v2           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 328
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "DebugFolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMMFolderInfo() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    .line 332
    .end local v0           #e:Ljava/lang/Exception;
    :goto_2
    return v6

    .line 330
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    goto :goto_2

    .end local v1           #i:I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    throw v3
.end method

.method public setFolderOpenFlag(Z)V
    .locals 4
    .parameter "aFlag"

    .prologue
    .line 110
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mUserFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 113
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iput-boolean p1, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :catch_0
    move-exception v2

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    .line 128
    :goto_1
    return-void

    .line 115
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mAddedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 116
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iput-boolean p1, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 126
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    throw v2

    .line 118
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mDeletedFolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 119
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iput-boolean p1, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    goto :goto_3

    .line 121
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mSpecialFolders:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 122
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iput-boolean p1, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 126
    .end local v1           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    goto :goto_1
.end method

.method public syncWithApps(Landroid/widget/ArrayAdapter;)Z
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, aApps:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const-string v11, "DebugFolder"

    .line 253
    const-string v9, "DebugFolder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Syncing with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v6, 0x0

    .line 255
    .local v6, res:Z
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/UserFolderModel;->lock(Ljava/util/concurrent/locks/Lock;)V

    .line 257
    :try_start_0
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->toMap(Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v1

    .line 258
    .local v1, appMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/UserFolderModel;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v6

    .line 263
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v7

    .line 265
    .local v7, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 266
    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 267
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v9, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v9, :cond_1

    .line 265
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v4

    .line 271
    .local v4, id:J
    const-wide/16 v9, -0x1

    cmp-long v9, v4, v9

    if-eqz v9, :cond_0

    .line 274
    const/4 v9, 0x0

    invoke-virtual {p0, v4, v5, v9}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v2

    .line 275
    .local v2, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    if-eqz v2, :cond_0

    .line 278
    const-string v9, "DebugFolder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Folder "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " swallows app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isDirty()Z

    move-result v8

    .line 280
    .local v8, wasDirty:Z
    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    .line 281
    if-nez v8, :cond_0

    .line 282
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->markAsClean()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 285
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #appMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    .end local v2           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v3           #i:I
    .end local v4           #id:J
    .end local v7           #size:I
    .end local v8           #wasDirty:Z
    :catch_0
    move-exception v9

    .line 287
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    .line 289
    :goto_2
    return v6

    .line 287
    .restart local v1       #appMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    .restart local v3       #i:I
    .restart local v7       #size:I
    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    goto :goto_2

    .end local v1           #appMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    .end local v3           #i:I
    .end local v7           #size:I
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/UserFolderModel;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v10}, Lcom/sec/android/app/twlauncher/UserFolderModel;->unLock(Ljava/util/concurrent/locks/Lock;)V

    throw v9
.end method

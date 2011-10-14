.class public Lcom/android/mms/util/DraftCache;
.super Ljava/lang/Object;
.source "DraftCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    }
.end annotation


# static fields
.field static final DRAFT_PROJECTION:[Ljava/lang/String;

.field public static isInvalidDraft:Z

.field private static final sDraftObserverMms:Landroid/database/ContentObserver;

.field private static final sDraftObserverSms:Landroid/database/ContentObserver;

.field private static sInstance:Lcom/android/mms/util/DraftCache;


# instance fields
.field private final mChangeListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/util/DraftCache$OnDraftChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDraftSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    sput-boolean v2, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z

    .line 55
    new-instance v0, Lcom/android/mms/util/DraftCache$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mms/util/DraftCache$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/util/DraftCache;->sDraftObserverSms:Landroid/database/ContentObserver;

    .line 62
    new-instance v0, Lcom/android/mms/util/DraftCache$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mms/util/DraftCache$2;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/util/DraftCache;->sDraftObserverMms:Landroid/database/ContentObserver;

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    .line 76
    const-string v0, "Mms/DraftCache"

    const-string v1, "DraftCache()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iput-object p1, p0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/DraftCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/mms/util/DraftCache;->rebuildCache()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/util/DraftCache;
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 235
    const-string v0, "Mms/DraftCache"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v0, Lcom/android/mms/util/DraftCache;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DraftCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/util/DraftCache;->sDraftObserverSms:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/util/DraftCache;->sDraftObserverMms:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 242
    return-void
.end method

.method private declared-synchronized rebuildCache()V
    .locals 23

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    new-instance v12, Lcom/android/mms/TimeChecker;

    invoke-direct {v12}, Lcom/android/mms/TimeChecker;-><init>()V

    .line 111
    .local v12, checker:Lcom/android/mms/TimeChecker;
    invoke-virtual {v12}, Lcom/android/mms/TimeChecker;->start()V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    move-object/from16 v18, v0

    .line 114
    .local v18, oldDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v17, Ljava/util/HashSet;

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->size()I

    move-result v4

    move-object/from16 v0, v17

    move v1, v4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 116
    .local v17, newDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/mms/util/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 120
    .local v13, cursor:Landroid/database/Cursor;
    sget-boolean v4, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z

    if-eqz v4, :cond_0

    .line 121
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    :cond_0
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 127
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 128
    .local v21, threadId:J
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    .local v20, s:Ljava/lang/StringBuffer;
    const-string v4, "Mms/DraftCache"

    const-string v5, "rebuildCache: add tid="

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    .end local v20           #s:Ljava/lang/StringBuffer;
    .end local v21           #threadId:J
    :catchall_0
    move-exception v4

    if-eqz v13, :cond_1

    .line 137
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    .end local v12           #checker:Lcom/android/mms/TimeChecker;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v17           #newDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v18           #oldDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 136
    .restart local v12       #checker:Lcom/android/mms/TimeChecker;
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v17       #newDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v18       #oldDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    if-eqz v13, :cond_3

    .line 137
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_3
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/util/DraftCache;->dump()V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_5

    .line 170
    :cond_4
    monitor-exit p0

    return-void

    .line 154
    :cond_5
    :try_start_4
    new-instance v11, Ljava/util/HashSet;

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 155
    .local v11, added:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object v0, v11

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 156
    new-instance v19, Ljava/util/HashSet;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 157
    .local v19, removed:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 159
    invoke-virtual {v12}, Lcom/android/mms/TimeChecker;->end()V

    .line 160
    const-string v4, "Mms/DraftCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "done rebuild draft cache, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lcom/android/mms/TimeChecker;->getElapsed()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,start notifying..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;

    .line 163
    .local v16, l:Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 164
    .restart local v21       #threadId:J
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-wide/from16 v1, v21

    move v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V

    goto :goto_1

    .line 166
    .end local v21           #threadId:J
    :cond_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 167
    .restart local v21       #threadId:J
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v21

    move v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public declared-synchronized hasDraft(J)Z
    .locals 4
    .parameter "threadId"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 213
    .local v0, result:Z
    const-string v1, "Mms/DraftCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasDraft(long),threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return v0

    .line 212
    .end local v0           #result:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "Mms/DraftCache"

    const-string v1, "refresh()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/util/DraftCache$3;

    invoke-direct {v1, p0}, Lcom/android/mms/util/DraftCache$3;-><init>(Lcom/android/mms/util/DraftCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    return-void
.end method

.method public declared-synchronized removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDraftState(JZ)V
    .locals 1
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 177
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/util/DraftCache;->setDraftState(JZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDraftState(JZZ)V
    .locals 6
    .parameter "threadId"
    .parameter "hasDraft"
    .parameter "notify"

    .prologue
    const-string v3, "Mms/DraftCache"

    .line 183
    monitor-enter p0

    :try_start_0
    const-string v3, "Mms/DraftCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDraftState(),threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",hasDraft="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_1

    .line 205
    :cond_0
    monitor-exit p0

    return-void

    .line 190
    :cond_1
    if-eqz p3, :cond_2

    .line 191
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 196
    .local v0, changed:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/util/DraftCache;->dump()V

    .line 199
    if-eqz p4, :cond_0

    if-eqz v0, :cond_0

    .line 200
    const-string v3, "Mms/DraftCache"

    const-string v4, "notify draft changed"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;

    .line 202
    .local v2, l:Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    invoke-interface {v2, p1, p2, p3}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 183
    .end local v0           #changed:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 193
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .restart local v0       #changed:Z
    goto :goto_0
.end method

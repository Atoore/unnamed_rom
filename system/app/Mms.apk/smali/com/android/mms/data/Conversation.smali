.class public Lcom/android/mms/data/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Conversation$Cache;
    }
.end annotation


# static fields
.field private static final ALL_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final READ_PROJECTION:[Ljava/lang/String;

.field private static final TEMP_THREAD_ID_STR:Ljava/lang/String;

.field private static final UNREAD_PROJECTION:[Ljava/lang/String;

.field private static final UNREAD_SUM_PROJECTION:[Ljava/lang/String;

.field private static isCached:Z

.field private static mLoadingThreads:Z

.field private static mReadContentValues:Landroid/content/ContentValues;

.field private static mSeenContentValues:Landroid/content/ContentValues;

.field private static final sAllThreadsUri:Landroid/net/Uri;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDate:J

.field private mHasAttachment:Z

.field private mHasError:Z

.field private mHasUnreadMessages:Z

.field private mIsCbSms:Z

.field private mIsWapPushMessage:Z

.field private mMarkAsBlockedSyncer:Ljava/lang/Object;

.field private mMarkAsReadBlocked:Z

.field private mMessageCount:I

.field private mRecipients:Lcom/android/mms/data/ContactList;

.field private mSnippet:Ljava/lang/String;

.field private mThreadId:J

.field private mUnreadMessageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "_id"

    const-string v5, "read"

    .line 57
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    .line 60
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "message_count"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "recipient_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "snippet_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v5, v0, v1

    const/4 v1, 0x7

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "has_attachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 67
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "read"

    aput-object v5, v0, v4

    sput-object v0, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    .line 71
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "message_count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/Conversation;->MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 81
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sum(unread_count)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/Conversation;->UNREAD_SUM_PROJECTION:[Ljava/lang/String;

    .line 88
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "read"

    aput-object v5, v0, v3

    sput-object v0, Lcom/android/mms/data/Conversation;->READ_PROJECTION:[Ljava/lang/String;

    .line 1258
    sput-boolean v3, Lcom/android/mms/data/Conversation;->isCached:Z

    .line 1395
    const-wide v0, 0x7ffffffffffffffeL

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Conversation;->TEMP_THREAD_ID_STR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsWapPushMessage:Z

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    .line 154
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 155
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 157
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JZ)V
    .locals 2
    .parameter "context"
    .parameter "threadId"
    .parameter "allowQuery"

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsWapPushMessage:Z

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    .line 160
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 161
    invoke-direct {p0, p2, p3, p4}, Lcom/android/mms/data/Conversation;->loadFromThreadId(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 165
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "allowQuery"

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsWapPushMessage:Z

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    .line 168
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 169
    invoke-static {p1, p0, p2, p3}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    .line 170
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V
    .locals 2
    .parameter "context"
    .parameter "recipients"

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsWapPushMessage:Z

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    .line 174
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 175
    iput-object p2, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 177
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/data/Conversation;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->cacheAllThreads(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/mms/data/Conversation;->getSeenContentValues()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/mms/data/Conversation;->mSeenContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/data/Conversation;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/data/Conversation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/mms/data/Conversation;->getReadContentValues()V

    return-void
.end method

.method static synthetic access$700()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/mms/data/Conversation;->mReadContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/data/Conversation;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/data/Conversation;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    return-wide v0
.end method

.method private static cacheAllThreads(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const-string v14, "Mms/Conversation"

    .line 1262
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 1264
    .local v9, startT:J
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0

    .line 1265
    :try_start_0
    sget-boolean v1, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    if-eqz v1, :cond_0

    .line 1266
    const-string v1, "Mms/Conversation"

    const-string v2, "cacheAllThreads(),already loading"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    monitor-exit v0

    .line 1332
    :goto_0
    return-void

    .line 1269
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    .line 1270
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1276
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1279
    .local v13, threadsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1282
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1283
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1284
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1285
    .local v11, threadId:J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1292
    invoke-static {v11, v12}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v7

    .line 1296
    .local v7, conv:Lcom/android/mms/data/Conversation;
    if-nez v7, :cond_2

    .line 1300
    new-instance v7, Lcom/android/mms/data/Conversation;

    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    const/4 v0, 0x0

    invoke-direct {v7, p0, v6, v0}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    .restart local v7       #conv:Lcom/android/mms/data/Conversation;
    :try_start_2
    invoke-static {v7}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1307
    :catch_0
    move-exception v8

    .line 1308
    .local v8, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v0, "Mms/Conversation"

    const-string v1, "Tried to add duplicate Conversation to Cache"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1319
    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    .end local v8           #e:Ljava/lang/IllegalStateException;
    .end local v11           #threadId:J
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 1320
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1323
    :cond_1
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1324
    const/4 v2, 0x0

    :try_start_4
    sput-boolean v2, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    .line 1325
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 1270
    .end local v6           #c:Landroid/database/Cursor;
    .end local v13           #threadsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 1314
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #conv:Lcom/android/mms/data/Conversation;
    .restart local v11       #threadId:J
    .restart local v13       #threadsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    const/4 v0, 0x0

    :try_start_6
    invoke-static {p0, v7, v6, v0}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1319
    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    .end local v11           #threadId:J
    :cond_3
    if-eqz v6, :cond_4

    .line 1320
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1323
    :cond_4
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0

    .line 1324
    const/4 v1, 0x0

    :try_start_7
    sput-boolean v1, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    .line 1325
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1329
    invoke-static {v13}, Lcom/android/mms/data/Conversation$Cache;->keepOnly(Ljava/util/Set;)V

    .line 1331
    const-string v0, "Mms/Conversation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheAllThreads(),elapsed(ms)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v9

    long-to-double v1, v1

    const-wide v3, 0x412e848000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1325
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;
    .locals 2
    .parameter "context"

    .prologue
    .line 186
    const-string v0, "Mms/Conversation"

    const-string v1, "createNew()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static deleteConversation(J)I
    .locals 4
    .parameter "threadId"

    .prologue
    const/4 v3, 0x0

    .line 1149
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    .line 1150
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1151
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 1153
    .local v2, uri:Landroid/net/Uri;
    invoke-static {v0, v1, v2, v3, v3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static deleteTempConversation()V
    .locals 4

    .prologue
    .line 1144
    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation;->deleteConversation(J)I

    move-result v0

    .line 1145
    .local v0, deleted:I
    const-string v1, "Mms/Conversation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteTempConversation(),deleted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    return-void
.end method

.method private static fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V
    .locals 7
    .parameter "context"
    .parameter "conv"
    .parameter "c"
    .parameter "allowQuery"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 946
    monitor-enter p1

    .line 947
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 948
    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/mms/data/Conversation;->mDate:J

    .line 949
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p1, Lcom/android/mms/data/Conversation;->mMessageCount:I

    .line 950
    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p1, Lcom/android/mms/data/Conversation;->mUnreadMessageCount:I

    .line 953
    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-static {p2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, snippet:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 955
    const v3, 0x7f090010

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 957
    :cond_0
    iput-object v2, p1, Lcom/android/mms/data/Conversation;->mSnippet:Ljava/lang/String;

    .line 959
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v5

    :goto_0
    invoke-direct {p1, v3}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    .line 960
    const/4 v3, 0x7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    :goto_1
    iput-boolean v3, p1, Lcom/android/mms/data/Conversation;->mHasError:Z

    .line 961
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    :goto_2
    iput-boolean v3, p1, Lcom/android/mms/data/Conversation;->mHasAttachment:Z

    .line 962
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 966
    .local v0, recipientIds:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 967
    .local v1, recipients:Lcom/android/mms/data/ContactList;
    monitor-enter p1

    .line 968
    :try_start_1
    iput-object v1, p1, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 969
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 970
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v5, :cond_5

    invoke-virtual {v1, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/data/Contact;

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CBmessages"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 972
    iput-boolean v5, p1, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 979
    :cond_1
    :goto_3
    return-void

    .end local v0           #recipientIds:Ljava/lang/String;
    .end local v1           #recipients:Lcom/android/mms/data/ContactList;
    .restart local p0
    :cond_2
    move v3, v6

    .line 959
    goto :goto_0

    :cond_3
    move v3, v6

    .line 960
    goto :goto_1

    :cond_4
    move v3, v6

    .line 961
    goto :goto_2

    .line 962
    .end local v2           #snippet:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 969
    .restart local v0       #recipientIds:Ljava/lang/String;
    .restart local v1       #recipients:Lcom/android/mms/data/ContactList;
    .restart local v2       #snippet:Ljava/lang/String;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 974
    .end local p0
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-virtual {v1, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/mms/data/Contact;

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Push message"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 975
    iput-boolean v5, p1, Lcom/android/mms/data/Conversation;->mIsWapPushMessage:Z

    goto :goto_3
.end method

.method public static from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;
    .locals 9
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    const-string v8, "Mms/Conversation"

    .line 368
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 369
    .local v3, threadId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 370
    invoke-static {v3, v4}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 371
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 372
    invoke-static {p0, v0, p1, v7}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    move-object v1, v0

    .line 384
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .local v1, conv:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 376
    .end local v1           #conv:Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0, p1, v7}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 378
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_1
    const-string v5, "Mms/Conversation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "from(),return="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 384
    .restart local v1       #conv:Ljava/lang/Object;
    goto :goto_0

    .line 379
    .end local v1           #conv:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 380
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v5, "Mms/Conversation"

    const-string v5, "Tried to add duplicate Conversation to Cache"

    invoke-static {v8, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    .locals 6
    .parameter "context"
    .parameter "threadId"
    .parameter "allowQuery"

    .prologue
    .line 194
    const-string v3, "Mms/Conversation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get(Context,long,boolean),threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",allowQuery"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 197
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 206
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .local v1, conv:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 200
    .end local v1           #conv:Ljava/lang/Object;
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :cond_0
    new-instance v0, Lcom/android/mms/data/Conversation;

    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 202
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 206
    .restart local v1       #conv:Ljava/lang/Object;
    goto :goto_0

    .line 203
    .end local v1           #conv:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 204
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v3, "Tried to add duplicate Conversation to Cache"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "allowQuery"
    .parameter "createThread"

    .prologue
    const/4 v7, 0x1

    const-string v6, "Mms/Conversation"

    .line 264
    const-string v4, "Mms/Conversation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get(),uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",allowQuery="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    if-nez p1, :cond_0

    .line 267
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    .line 283
    :goto_0
    return-object v4

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 272
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 274
    .local v2, threadId:J
    const-string v4, "Mms/Conversation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri threadId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {p0, v2, v3, p2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 277
    .end local v2           #threadId:J
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 278
    .local v0, exception:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    .end local v0           #exception:Ljava/lang/NumberFormatException;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, recipient:Ljava/lang/String;
    invoke-static {v1, p2, v7}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-static {p0, v4, p2, p3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;
    .locals 9
    .parameter "context"
    .parameter "recipients"
    .parameter "allowQuery"
    .parameter "createThread"

    .prologue
    const-wide/16 v7, 0x0

    const-string v6, "Mms/Conversation"

    .line 215
    const-string v4, "Mms/Conversation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get(Context,ContactList,boolean),recipients="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",allowQuery="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 220
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    .line 255
    :goto_0
    return-object v4

    .line 223
    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Conversation$Cache;->get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 224
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 225
    goto :goto_0

    .line 227
    :cond_1
    invoke-static {p0, p1, p3}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)J

    move-result-wide v2

    .line 230
    .local v2, threadId:J
    if-nez p3, :cond_2

    cmp-long v4, v2, v7

    if-lez v4, :cond_6

    .line 231
    :cond_2
    new-instance v0, Lcom/android/mms/data/Conversation;

    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    invoke-direct {v0, p0, v2, v3, p2}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 238
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :goto_1
    const-string v4, "Mms/Conversation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversation.get: created new conversation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 241
    const-string v4, "Mms/Conversation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversation.get: new conv\'s recipients don\'t match input recpients "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_3
    if-nez p3, :cond_4

    cmp-long v4, v2, v7

    if-lez v4, :cond_5

    .line 248
    :cond_4
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    move-object v4, v0

    .line 255
    goto :goto_0

    .line 234
    :cond_6
    new-instance v0, Lcom/android/mms/data/Conversation;

    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V

    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    goto :goto_1

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "Tried to add duplicate Conversation to Cache"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static get(Landroid/content/Context;Ljava/util/ArrayList;ZZ)Lcom/android/mms/data/Conversation;
    .locals 5
    .parameter "context"
    .parameter
    .parameter "allowQuery"
    .parameter "createThread"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/android/mms/data/Conversation;"
        }
    .end annotation

    .prologue
    .local p1, recipientsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, result:Lcom/android/mms/data/Conversation;
    if-nez p1, :cond_0

    .line 296
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 302
    :goto_0
    const-string v2, "Mms/Conversation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get(Context,ArrayList,boolean),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-object v1

    .line 298
    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Conversation;->getRecipientByList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, recipient:Ljava/lang/String;
    invoke-static {v0, v2, v2}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    goto :goto_0
.end method

.method private static getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)J
    .locals 10
    .parameter "context"
    .parameter "list"
    .parameter "createThread"

    .prologue
    const-string v9, "Mms/Conversation"

    .line 691
    const-string v7, "Mms/Conversation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOrCreateThreadId(),list="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 694
    .local v4, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 695
    .local v1, cacheContact:Lcom/android/mms/data/Contact;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 696
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 699
    const/4 v7, 0x0

    invoke-static {v3, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 703
    :goto_1
    if-eqz v1, :cond_1

    .line 704
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 701
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 706
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 710
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :cond_2
    invoke-static {p0, v4, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Z)J

    move-result-wide v5

    .line 711
    .local v5, retVal:J
    const-string v7, "Mms/Conversation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOrCreateThreadId(),return="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    return-wide v5
.end method

.method private getReadContentValues()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 395
    sget-object v0, Lcom/android/mms/data/Conversation;->mReadContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/mms/data/Conversation;->mReadContentValues:Landroid/content/ContentValues;

    .line 397
    sget-object v0, Lcom/android/mms/data/Conversation;->mReadContentValues:Landroid/content/ContentValues;

    const-string v1, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    :cond_0
    return-void
.end method

.method public static getRecipientByList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, recipientsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v9, 0x3b

    .line 307
    if-nez p0, :cond_0

    .line 308
    const/4 v7, 0x0

    .line 330
    :goto_0
    return-object v7

    .line 311
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 312
    .local v4, recipientCount:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 314
    .local v5, s:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 315
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 316
    .local v6, tmpl:Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, number:Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 320
    .local v3, pos:I
    if-lez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 321
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 324
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 327
    .end local v1           #number:Ljava/lang/String;
    .end local v3           #pos:I
    .end local v6           #tmpl:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, numbers:Ljava/lang/String;
    const-string v7, "Mms/Conversation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRecipientByList(),return="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v2

    .line 330
    goto :goto_0
.end method

.method private getSeenContentValues()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 388
    sget-object v0, Lcom/android/mms/data/Conversation;->mSeenContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/mms/data/Conversation;->mSeenContentValues:Landroid/content/ContentValues;

    .line 390
    sget-object v0, Lcom/android/mms/data/Conversation;->mSeenContentValues:Landroid/content/ContentValues;

    const-string v1, "seen"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    :cond_0
    return-void
.end method

.method public static getTempThreadId()J
    .locals 2

    .prologue
    .line 1398
    const-wide v0, 0x7ffffffffffffffeL

    return-wide v0
.end method

.method public static getTempThreadIdStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1402
    sget-object v0, Lcom/android/mms/data/Conversation;->TEMP_THREAD_ID_STR:Ljava/lang/String;

    return-object v0
.end method

.method public static getUnreadMessageCount(Landroid/content/ContentResolver;)I
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1457
    .line 1460
    :try_start_0
    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->UNREAD_SUM_PROJECTION:[Ljava/lang/String;

    const-string v3, "unread_count > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1467
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1468
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 1474
    if-eqz v0, :cond_0

    .line 1475
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v1

    .line 1478
    :goto_0
    return v0

    .line 1474
    :cond_1
    if-eqz v0, :cond_2

    .line 1475
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v7

    .line 1478
    goto :goto_0

    .line 1471
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 1472
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1474
    if-eqz v1, :cond_2

    .line 1475
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1474
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    .line 1475
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1474
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1471
    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2
.end method

.method public static getUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "threadId"

    .prologue
    .line 536
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 1134
    const-string v0, "Mms/Conversation"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->deleteConversation(J)I

    .line 1138
    invoke-static {}, Lcom/android/mms/data/Conversation;->updateDeletable()V

    .line 1140
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/data/Conversation;->isCached:Z

    .line 1141
    return-void
.end method

.method private loadFromThreadId(JZ)Z
    .locals 8
    .parameter "threadId"
    .parameter "allowQuery"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v2, "Mms/Conversation"

    .line 1365
    const-string v0, "Mms/Conversation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromThreadId(),threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowQuery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1370
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, v6, p3}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    .line 1373
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromThreadId: fillFromCursor returned differnt thread_id! threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThreadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1384
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1378
    :cond_1
    :try_start_1
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromThreadId: Can\'t find thread ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1382
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static loadingThreads()Z
    .locals 4

    .prologue
    .line 1252
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0

    .line 1253
    :try_start_0
    const-string v1, "Mms/Conversation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadingThreads(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    sget-boolean v1, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    monitor-exit v0

    return v1

    .line 1255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setHasUnreadMessages(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 661
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mHasUnreadMessages:Z

    .line 663
    return-void
.end method

.method public static startCaching(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1164
    sget-boolean v0, Lcom/android/mms/data/Conversation;->isCached:Z

    if-eqz v0, :cond_0

    .line 1173
    :goto_0
    return-void

    .line 1166
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/data/Conversation;->isCached:Z

    .line 1168
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Conversation$3;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Conversation$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V
    .locals 9
    .parameter "handler"
    .parameter "token"
    .parameter "deleteAll"
    .parameter "deleteDraft"
    .parameter "deleteInfo"
    .parameter "isDeleteList"

    .prologue
    const/4 v5, 0x0

    .line 826
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDelete(),deleteAll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isDeleteList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v7, p4, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p4, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 831
    .local v3, uri:Landroid/net/Uri;
    if-eqz p5, :cond_2

    .line 833
    if-eqz p2, :cond_1

    const-string v0, "deletable=1"

    move-object v4, v0

    .line 838
    .local v4, selection:Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_0

    .line 839
    const-string v6, "msgType <> 3"

    .line 840
    .local v6, typeClue:Ljava/lang/String;
    if-nez v4, :cond_4

    .line 841
    move-object v4, v6

    .end local v6           #typeClue:Ljava/lang/String;
    :cond_0
    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v2, p4

    .line 845
    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 846
    return-void

    .line 833
    .end local v4           #selection:Ljava/lang/String;
    :cond_1
    const-string v0, "deletable=1 AND locked=0"

    move-object v4, v0

    goto :goto_0

    .line 836
    :cond_2
    if-eqz p2, :cond_3

    move-object v4, v5

    .restart local v4       #selection:Ljava/lang/String;
    :goto_2
    goto :goto_0

    .end local v4           #selection:Ljava/lang/String;
    :cond_3
    const-string v0, "locked=0"

    move-object v4, v0

    goto :goto_2

    .line 843
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v6       #typeClue:Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " And "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static startDeleteAll(Landroid/content/AsyncQueryHandler;IZZ)V
    .locals 7
    .parameter "handler"
    .parameter "token"
    .parameter "deleteAll"
    .parameter "isDeleteList"

    .prologue
    const/4 v2, 0x0

    .line 860
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDeleteAll(),deleteAll="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",isDeleteList="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    if-eqz p3, :cond_1

    .line 865
    if-eqz p2, :cond_0

    const-string v0, "deletable=1"

    move-object v4, v0

    .line 871
    .local v4, selection:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 872
    .local v6, tempThreadIdClue:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 873
    move-object v4, v6

    .line 879
    :goto_1
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 880
    return-void

    .line 865
    .end local v4           #selection:Ljava/lang/String;
    .end local v6           #tempThreadIdClue:Ljava/lang/String;
    :cond_0
    const-string v0, "deletable=1 AND locked=0"

    move-object v4, v0

    goto :goto_0

    .line 868
    :cond_1
    if-eqz p2, :cond_2

    move-object v4, v2

    .restart local v4       #selection:Ljava/lang/String;
    :goto_2
    goto :goto_0

    .end local v4           #selection:Ljava/lang/String;
    :cond_2
    const-string v0, "locked=0"

    move-object v4, v0

    goto :goto_2

    .line 875
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v6       #tempThreadIdClue:Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static startQueryForAll(Landroid/content/AsyncQueryHandler;I)V
    .locals 8
    .parameter "handler"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 799
    const-string v0, "Mms/Conversation"

    const-string v1, "startQueryForAll()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 806
    sget-object v3, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC,_id DESC"

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method public static startQueryForFakeView(Landroid/content/AsyncQueryHandler;II)V
    .locals 8
    .parameter "handler"
    .parameter "token"
    .parameter "limit"

    .prologue
    const/4 v2, 0x0

    .line 779
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startQueryForFakeView(),limit="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 786
    sget-object v3, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date DESC,_id DESC LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method public static startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V
    .locals 8
    .parameter "handler"
    .parameter "threadId"
    .parameter "token"

    .prologue
    const/4 v5, 0x0

    .line 893
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startQueryHaveLockedMessages(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0, p3}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 896
    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    .line 897
    .local v3, uri:Landroid/net/Uri;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 898
    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 900
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method public static startQueryHaveLockedThread(Landroid/content/AsyncQueryHandler;I)V
    .locals 8
    .parameter "handler"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 912
    const-string v0, "Mms/Conversation"

    const-string v1, "startQueryHaveLockedThread()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 915
    const-string v0, "content://mms-sms/allLocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 916
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v5, "locked=1"

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method public static updateDeletable()V
    .locals 2

    .prologue
    .line 1407
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->updateDeletable(J)V

    .line 1408
    return-void
.end method

.method public static updateDeletable(J)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1411
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDeletable(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    if-eqz v6, :cond_0

    move v0, v6

    .line 1414
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1418
    const-string v2, "deletable = %d"

    new-array v3, v6, [Ljava/lang/Object;

    if-eqz v6, :cond_1

    move v4, v7

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1419
    const-wide/16 v3, -0x1

    cmp-long v3, p0, v3

    if-lez v3, :cond_2

    const-string v3, " AND %s = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "thread_id"

    aput-object v5, v4, v7

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1423
    :goto_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1424
    const-string v5, "deletable"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1427
    new-instance v0, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/data/Conversation$5;

    invoke-direct {v5, v1, v4, v2, v3}, Lcom/android/mms/data/Conversation$5;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1436
    new-instance v0, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/data/Conversation$6;

    invoke-direct {v5, v1, v4, v2, v3}, Lcom/android/mms/data/Conversation$6;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1446
    new-instance v0, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/data/Conversation$7;

    invoke-direct {v5, v1, v4, v2, v3}, Lcom/android/mms/data/Conversation$7;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1454
    return-void

    :cond_0
    move v0, v7

    .line 1413
    goto :goto_0

    :cond_1
    move v4, v6

    .line 1418
    goto :goto_1

    .line 1419
    :cond_2
    const-string v3, ""

    goto :goto_2
.end method


# virtual methods
.method public blockMarkAsRead(Z)V
    .locals 4
    .parameter "block"

    .prologue
    const-string v2, "Mms/Conversation"

    .line 503
    const-string v0, "Mms/Conversation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockMarkAsRead(),block="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-boolean v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-eq p1, v1, :cond_0

    .line 507
    const-string v1, "Mms/Conversation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change blocked, before="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",after="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    .line 510
    iget-boolean v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-nez v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 515
    :cond_0
    monitor-exit v0

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 6
    .parameter "context"
    .parameter "exit"

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 405
    .local v2, threadUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 407
    .local v0, threadId:J
    const-string v3, "Mms/Conversation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkReadReport(),threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 410
    const/16 v3, 0x80

    new-instance v4, Lcom/android/mms/data/Conversation$1;

    invoke-direct {v4, p0, v2, p2}, Lcom/android/mms/data/Conversation$1;-><init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Ljava/lang/Runnable;)V

    invoke-static {p1, v0, v1, v3, v4}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :goto_0
    monitor-exit p0

    return-void

    .line 437
    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 404
    .end local v0           #threadId:J
    .end local v2           #threadUri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public clearThreadId()V
    .locals 4

    .prologue
    .line 566
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearThreadId(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now zero"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation$Cache;->remove(J)V

    .line 569
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 570
    return-void
.end method

.method public declared-synchronized ensureThreadId()J
    .locals 4

    .prologue
    const-string v0, "Mms/Conversation"

    .line 554
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureThreadId(),before="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 560
    :cond_0
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureThreadId(),after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 723
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/data/Conversation;

    move-object v2, v0

    .line 724
    .local v2, other:Lcom/android/mms/data/Conversation;
    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    iget-object v4, v2, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 726
    .end local v2           #other:Lcom/android/mms/data/Conversation;
    :goto_0
    monitor-exit p0

    return v3

    .line 725
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 726
    .local v1, e:Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    goto :goto_0

    .line 723
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getDate()J
    .locals 2

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mDate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageCount()I
    .locals 1

    .prologue
    .line 631
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 645
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mSnippet:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getThreadId()J
    .locals 2

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mUnreadMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 526
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAttachment()Z
    .locals 1

    .prologue
    .line 669
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasAttachment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasDraft()Z
    .locals 5

    .prologue
    .line 596
    monitor-enter p0

    const/4 v0, 0x0

    .line 598
    .local v0, result:Z
    :try_start_0
    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 599
    const/4 v1, 0x0

    .line 604
    :goto_0
    monitor-exit p0

    return v1

    .line 601
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/util/DraftCache;->hasDraft(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v1, v0

    .line 604
    goto :goto_0

    .line 596
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasError()Z
    .locals 1

    .prologue
    .line 676
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasUnreadMessages()Z
    .locals 2

    .prologue
    .line 652
    const-string v0, "Mms/Conversation"

    const-string v1, "hasUnreadMessages()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasUnreadMessages:Z

    return v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 732
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCbSms()Z
    .locals 1

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWapPushMessage()Z
    .locals 1

    .prologue
    .line 685
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsWapPushMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markAsRead()V
    .locals 3

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 450
    .local v0, threadUri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/data/Conversation$2;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/data/Conversation$2;-><init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 500
    return-void
.end method

.method public sameRecipient(Landroid/net/Uri;)Z
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 338
    const/4 v2, 0x0

    .line 339
    .local v2, result:Z
    iget-object v4, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    .line 340
    .local v3, size:I
    if-le v3, v5, :cond_0

    .line 341
    const/4 v2, 0x0

    .line 353
    :goto_0
    const-string v4, "Mms/Conversation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sameRecipient(),return="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return v2

    .line 342
    :cond_0
    if-nez p1, :cond_2

    .line 343
    if-nez v3, :cond_1

    move v2, v5

    :goto_1
    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_1

    .line 344
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 345
    const/4 v2, 0x0

    goto :goto_0

    .line 347
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, recipient:Ljava/lang/String;
    invoke-static {v1, v6, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 350
    .local v0, incomingRecipient:Lcom/android/mms/data/ContactList;
    iget-object v4, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4, v0}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public declared-synchronized setDraftState(Z)V
    .locals 4
    .parameter "hasDraft"

    .prologue
    .line 611
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 616
    :goto_0
    monitor-exit p0

    return-void

    .line 614
    :cond_0
    :try_start_1
    const-string v0, "Mms/Conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDraftState(),hasDraft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 579
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 582
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    monitor-exit p0

    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 737
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/mms/Log;->isPrintSecured()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 740
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "recipients:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 741
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 743
    .end local v0           #sb:Ljava/lang/StringBuffer;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 737
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.class public Lcom/android/mms/util/RateController;
.super Ljava/lang/Object;
.source "RateController.java"


# static fields
.field private static sInstance:Lcom/android/mms/util/RateController;

.field private static sMutexLock:Z


# instance fields
.field private mAnswer:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/mms/util/RateController$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/RateController$1;-><init>(Lcom/android/mms/util/RateController;)V

    iput-object v0, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    iput-object p1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/util/RateController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/android/mms/util/RateController;->mAnswer:I

    return p1
.end method

.method public static getInstance()Lcom/android/mms/util/RateController;
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-string v1, "Mms/RateController"

    .line 84
    const-string v0, "Mms/RateController"

    const-string v0, "init()"

    invoke-static {v1, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "Mms/RateController"

    const-string v0, "Already initialized."

    invoke-static {v1, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    new-instance v0, Lcom/android/mms/util/RateController;

    invoke-direct {v0, p0}, Lcom/android/mms/util/RateController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/RateController;->sInstance:Lcom/android/mms/util/RateController;

    .line 91
    return-void
.end method

.method private declared-synchronized waitForAnswer()I
    .locals 5

    .prologue
    .line 152
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, t:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/16 v2, 0x4e20

    if-ge v1, v2, :cond_0

    .line 155
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .local v0, s:Ljava/lang/StringBuffer;
    const-string v2, "Mms/RateController"

    const-string v3, "Waiting for answer..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    div-int/lit16 v4, v1, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    .end local v0           #s:Ljava/lang/StringBuffer;
    :goto_1
    add-int/lit16 v1, v1, 0x3e8

    goto :goto_0

    .line 163
    :cond_0
    :try_start_2
    iget v2, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    .line 152
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 159
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized isAllowedByUser()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 125
    monitor-enter p0

    :goto_0
    :try_start_0
    sget-boolean v1, Lcom/android/mms/util/RateController;->sMutexLock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 127
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    goto :goto_0

    .line 132
    :cond_0
    const/4 v1, 0x1

    :try_start_2
    sput-boolean v1, Lcom/android/mms/util/RateController;->sMutexLock:Z

    .line 134
    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.RATE_LIMIT_CONFIRMED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/util/RateController;->mAnswer:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 138
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.RATE_LIMIT_SURPASSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    invoke-direct {p0}, Lcom/android/mms/util/RateController;->waitForAnswer()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-ne v1, v6, :cond_1

    move v1, v6

    .line 145
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/util/RateController;->sMutexLock:Z

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v1

    :cond_1
    move v1, v5

    .line 143
    goto :goto_1

    .line 145
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/util/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/util/RateController;->sMutexLock:Z

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final isLimitSurpassed()Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    sub-long v8, v0, v2

    .line 108
    .local v8, oneHourAgo:J
    iget-object v0, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v11, [Ljava/lang/String;

    const-string v4, "COUNT(*) AS rate"

    aput-object v4, v3, v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sent_time>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 112
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 114
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    move v0, v11

    .line 118
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 121
    :goto_1
    return v0

    :cond_0
    move v0, v10

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    .line 121
    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final update()V
    .locals 4

    .prologue
    .line 101
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 102
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sent_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    iget-object v1, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/util/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 104
    return-void
.end method

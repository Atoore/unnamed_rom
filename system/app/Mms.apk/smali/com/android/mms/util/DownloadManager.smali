.class public Lcom/android/mms/util/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# static fields
.field private static sInstance:Lcom/android/mms/util/DownloadManager;


# instance fields
.field private mAutoDownload:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mRoamingStateListener:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/mms/util/DownloadManager$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager$1;-><init>(Lcom/android/mms/util/DownloadManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 92
    new-instance v0, Lcom/android/mms/util/DownloadManager$2;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager$2;-><init>(Lcom/android/mms/util/DownloadManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 120
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 121
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mPreferencesChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mRoamingStateListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    .line 128
    const-string v0, "Mms/DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoDownload ------> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method static synthetic access$000()Lcom/android/mms/util/DownloadManager;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/DownloadManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/util/DownloadManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/util/DownloadManager;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/mms/util/DownloadManager;->getMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAutoDownloadState(Landroid/content/SharedPreferences;)Z
    .locals 1
    .parameter "prefs"

    .prologue
    .line 155
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->isRoaming()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    return v0
.end method

.method static getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z
    .locals 7
    .parameter "prefs"
    .parameter "roaming"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "Mms/DownloadManager"

    .line 159
    const-string v2, "pref_key_mms_auto_retrieval"

    invoke-interface {p0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 162
    .local v1, autoDownload:Z
    const-string v2, "Mms/DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto download without roaming -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz v1, :cond_1

    .line 166
    const-string v2, "pref_key_mms_retrieval_during_roaming"

    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 170
    .local v0, alwaysAuto:Z
    const-string v2, "Mms/DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto download during roaming -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v5

    .line 177
    .end local v0           #alwaysAuto:Z
    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/mms/util/DownloadManager;
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    return-object v0
.end method

.method private getMessage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 250
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    .line 252
    .local v1, ind:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 253
    .local v3, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 255
    .local v2, subject:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 256
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 259
    .local v0, from:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0900e3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 253
    .end local v0           #from:Ljava/lang/String;
    .end local v2           #subject:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0900e1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 256
    .restart local v2       #subject:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0900e2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const-string v1, "Mms/DownloadManager"

    .line 138
    const-string v0, "Mms/DownloadManager"

    const-string v0, "DownloadManager.init()"

    invoke-static {v1, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "Mms/DownloadManager"

    const-string v0, "Already initialized."

    invoke-static {v1, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    new-instance v0, Lcom/android/mms/util/DownloadManager;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/DownloadManager;->sInstance:Lcom/android/mms/util/DownloadManager;

    .line 145
    return-void
.end method

.method static isRoaming()Z
    .locals 4

    .prologue
    .line 182
    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, roaming:Ljava/lang/String;
    const-string v1, "Mms/DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roaming ------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getState(Landroid/net/Uri;)I
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 263
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "st"

    aput-object v2, v3, v5

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 268
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 270
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 272
    .local v8, state:I
    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/util/DownloadManager;->isAuto()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/16 v0, 0x81

    .line 277
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 280
    .end local v8           #state:I
    :goto_0
    return v0

    .line 274
    .restart local v8       #state:I
    :cond_0
    and-int/lit8 v0, v8, -0x5

    .line 277
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #state:I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 280
    :cond_2
    const/16 v0, 0x80

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public isAuto()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    return v0
.end method

.method public markState(Landroid/net/Uri;I)V
    .locals 12
    .parameter "uri"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const-string v5, "Mms/DownloadManager"

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/pdu/NotificationInd;

    .line 195
    .local v7, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    const/16 v0, 0x81

    if-ne p2, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/util/DownloadManager$3;

    invoke-direct {v1, p0}, Lcom/android/mms/util/DownloadManager$3;-><init>(Lcom/android/mms/util/DownloadManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, p1, v2, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    .end local v7           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 207
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v0, "Mms/DownloadManager"

    invoke-virtual {v6}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 209
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 210
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v0, "Mms/DownloadManager"

    const-string v0, "TypeCastException in markState method !!!!"

    invoke-static {v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    .end local v6           #e:Ljava/lang/ClassCastException;
    .restart local v7       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_0
    const/16 v0, 0x87

    if-ne p2, v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/util/DownloadManager$4;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/util/DownloadManager$4;-><init>(Lcom/android/mms/util/DownloadManager;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    :cond_1
    :goto_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 232
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "st"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 225
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/util/DownloadManager;->mAutoDownload:Z

    if-nez v0, :cond_1

    .line 226
    or-int/lit8 p2, p2, 0x4

    goto :goto_1
.end method

.method public showErrorCodeToast(I)V
    .locals 3
    .parameter "errorStr"

    .prologue
    .line 237
    move v0, p1

    .line 238
    .local v0, errStr:I
    iget-object v1, p0, Lcom/android/mms/util/DownloadManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/util/DownloadManager$5;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/util/DownloadManager$5;-><init>(Lcom/android/mms/util/DownloadManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method

.class public Lcom/android/mms/transaction/MmsSystemEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsSystemEventReceiver.java"


# static fields
.field private static bFilterAttached:Z

.field private static sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bFilterAttached:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static registerForConnectionStateChanges(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-string v2, "Mms/MmsSystemEventReceiver"

    .line 109
    sget-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bFilterAttached:Z

    if-nez v1, :cond_3

    .line 110
    invoke-static {p0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "Mms/MmsSystemEventReceiver"

    const-string v1, "registerForConnectionStateChanges"

    invoke-static {v2, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-nez v1, :cond_1

    .line 118
    new-instance v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;-><init>()V

    sput-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    .line 121
    :cond_1
    sget-object v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bFilterAttached:Z

    .line 128
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    :goto_0
    return-void

    .line 124
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    const-string v1, "Mms/MmsSystemEventReceiver"

    const-string v1, "Filter attached"

    invoke-static {v2, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restorePduNotificationStatus(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 97
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 99
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "st"

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "m_type = 130 AND st = 129"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 105
    .local v6, count:I
    const-string v0, "Mms/MmsSystemEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restorePduNotificationStatus count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static unRegisterForConnectionStateChanges(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 131
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "Mms/MmsSystemEventReceiver"

    const-string v1, "unRegisterForConnectionStateChanges"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    if-eqz v0, :cond_1

    .line 136
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->sMmsSystemEventReceiver:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_1
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/MmsSystemEventReceiver;->bFilterAttached:Z

    .line 142
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static wakeUpService(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "Mms/MmsSystemEventReceiver"

    const-string v1, "wakeUpService: start transaction service ..."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const-string v5, "Mms/MmsSystemEventReceiver"

    .line 65
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    const-string v3, "Mms/MmsSystemEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.CONTENT_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    const-string v3, "deleted_contents"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 72
    .local v1, changed:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 73
    const-string v3, "Mms/MmsSystemEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONTENT_CHANGED_ACTION changed uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 93
    .end local v1           #changed:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 77
    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, state:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    const-string v3, "Mms/MmsSystemEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANY_DATA_STATE event received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_3
    const-string v3, "CONNECTED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    invoke-static {p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V

    goto :goto_0

    .line 86
    .end local v2           #state:Ljava/lang/String;
    :cond_4
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->restorePduNotificationStatus(Landroid/content/Context;)V

    .line 91
    invoke-static {p1, v6, v6}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

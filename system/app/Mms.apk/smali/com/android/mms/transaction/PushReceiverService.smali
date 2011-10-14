.class public Lcom/android/mms/transaction/PushReceiverService;
.super Landroid/app/Service;
.source "PushReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/PushReceiverService$1;,
        Lcom/android/mms/transaction/PushReceiverService$WPMInfo;,
        Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;
    }
.end annotation


# instance fields
.field private mServiceHandler:Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;

    .line 30
    iput-object v0, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 369
    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/PushReceiverService;Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/PushReceiverService;->handleSiMessage(Lcom/android/mms/transaction/WapPushMessage;)V

    return-void
.end method

.method private deleteWPMInfo(I)V
    .locals 5
    .parameter "_id"

    .prologue
    const/4 v4, 0x0

    .line 309
    const-string v1, "Mms/PushReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteWPMInfo. id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wap-push-messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 313
    .local v0, wpmUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/transaction/PushReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p0, v1, v0, v4, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method private handleSiMessage(Lcom/android/mms/transaction/WapPushMessage;)V
    .locals 13
    .parameter "_recvSiMessage"

    .prologue
    const-wide/16 v9, -0x1

    const/16 v8, 0x9

    const-string v12, "discard message because of deletion. recv_action= "

    const-string v11, ">>length="

    const-string v7, "Mms/PushReceiverService"

    .line 70
    const-string v3, "Mms/PushReceiverService"

    const-string v3, "handleSiMessage."

    invoke-static {v7, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-eqz v3, :cond_1

    .line 74
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 76
    const-string v3, "Mms/PushReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discard message because of expiration. expires= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v3, "Mms/PushReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSiMessage. Before trim() si-Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>length="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "Mms/PushReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSiMessage. After trim()    si-Id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">>length="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 86
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->initSiId()V

    .line 87
    const-string v3, "Mms/PushReceiverService"

    const-string v3, "After trim()  set  si-Id null !"

    invoke-static {v7, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_2
    const/4 v1, 0x0

    .line 94
    .local v1, storedWpmInfo:Lcom/android/mms/transaction/PushReceiverService$WPMInfo;
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 96
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/mms/transaction/PushReceiverService;->selectWPMInfoBySiId(ILjava/lang/String;)Lcom/android/mms/transaction/PushReceiverService$WPMInfo;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_4

    .line 102
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    .line 106
    const-string v3, "Mms/PushReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discard message because of Handling of out of order delivery. 01>stored_created= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "recv_created= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :cond_3
    invoke-static {v1}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/transaction/PushReceiverService;->deleteWPMInfo(I)V

    .line 114
    const-string v3, "Mms/PushReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process Replacement. 01>stored_created= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$000(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "recv_created= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 136
    invoke-static {v1}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/transaction/PushReceiverService;->deleteWPMInfo(I)V

    .line 139
    const-string v3, "Mms/PushReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discard message because of deletion. recv_action= "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_5

    .line 149
    const-string v3, "Mms/PushReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discard message because of deletion. recv_action= "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_5
    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 158
    const-string v3, "Mms/PushReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discard message because of action_signal_none. recv_action= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_6
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 163
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "address"

    const-string v4, "Push message"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v3, "body"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    const-string v3, "type"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v3, "href"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getHref()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v3, "si_id"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v3, "created"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getCreated()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    const-string v3, "si_expires"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getSiExpires()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v3, "action"

    invoke-virtual {p1}, Lcom/android/mms/transaction/WapPushMessage;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/PushReceiverService;->insertWPMInfo(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 175
    .local v0, messageUri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 176
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    goto/16 :goto_0
.end method

.method private insertWPMInfo(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "_values"

    .prologue
    .line 317
    const-string v0, "Mms/PushReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertWPMInfo. _values= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/mms/transaction/PushReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static processUri(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "address"
    .parameter "context"

    .prologue
    .line 234
    const-string v2, "wtai://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 235
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, number:Ljava/lang/String;
    const-string v2, "Mms/PushReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processUri uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {p1, v0}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    .end local v0           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    .local v1, uriIntent:Landroid/content/Intent;
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private selectWPMInfoBySiId(ILjava/lang/String;)Lcom/android/mms/transaction/PushReceiverService$WPMInfo;
    .locals 12
    .parameter "_type"
    .parameter "_siId"

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 249
    const/4 v8, 0x0

    .line 251
    .local v8, wpmInfo:Lcom/android/mms/transaction/PushReceiverService$WPMInfo;
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "wap-push-messages"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 252
    .local v2, wpmUri:Landroid/net/Uri;
    new-array v3, v11, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v9

    const-string v0, "created"

    aput-object v0, v3, v10

    .line 255
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "type=? and si_id=?"

    .line 256
    .local v4, selection:Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    aput-object p2, v5, v10

    .line 260
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/transaction/PushReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 263
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 264
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    new-instance v8, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;

    .end local v8           #wpmInfo:Lcom/android/mms/transaction/PushReceiverService$WPMInfo;
    invoke-direct {v8, p0, v6}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;-><init>(Lcom/android/mms/transaction/PushReceiverService;Lcom/android/mms/transaction/PushReceiverService$1;)V

    .line 266
    .restart local v8       #wpmInfo:Lcom/android/mms/transaction/PushReceiverService$WPMInfo;
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v8, v0}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$102(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;I)I

    .line 267
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v8, v0, v1}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$002(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;J)J

    .line 270
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_1
    const-string v0, "Mms/PushReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectWPMInfoBySiId. siId= "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", _id= "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v8, :cond_2

    invoke-static {v8}, Lcom/android/mms/transaction/PushReceiverService$WPMInfo;->access$100(Lcom/android/mms/transaction/PushReceiverService$WPMInfo;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-object v8

    .line 273
    :cond_2
    const-string v6, "null"

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 64
    const-string v0, "Mms/PushReceiverService"

    const-string v1, "onBind."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const-string v2, "Mms/PushReceiverService"

    .line 34
    const-string v1, "Mms/PushReceiverService"

    const-string v1, "onCreate."

    invoke-static {v2, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Mms/PushReceiverService"

    const/16 v1, 0xa

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 37
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 40
    new-instance v1, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/PushReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;

    .line 41
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "Mms/PushReceiverService"

    const-string v1, "onDestroy."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 60
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 45
    const-string v1, "Mms/PushReceiverService"

    const-string v2, "onStartCommand."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 48
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 49
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/android/mms/transaction/PushReceiverService;->mServiceHandler:Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/PushReceiverService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    const/4 v1, 0x2

    return v1
.end method

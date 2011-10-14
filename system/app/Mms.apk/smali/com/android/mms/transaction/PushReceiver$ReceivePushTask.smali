.class Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;
.super Landroid/os/AsyncTask;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceivePushTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/transaction/PushReceiver;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->this$0:Lcom/android/mms/transaction/PushReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private updateAddress(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 3
    .parameter "from"

    .prologue
    .line 192
    if-nez p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 199
    .local v1, cacheContact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    invoke-virtual {v1, v0}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 14
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v13, 0x0

    const/4 v1, 0x0

    const-string v12, "Mms/PushReceiver"

    .line 75
    aget-object v1, p1, v1

    .line 78
    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 79
    new-instance v2, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v2, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 80
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v7

    .line 82
    if-nez v7, :cond_0

    .line 83
    const-string v1, "Mms/PushReceiver"

    const-string v1, "Invalid PUSH data"

    invoke-static {v12, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v13

    .line 186
    :goto_0
    return-object v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 89
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v9

    .line 93
    sparse-switch v9, :sswitch_data_0

    .line 176
    :try_start_0
    const-string v1, "Mms/PushReceiver"

    const-string v2, "Received unrecognized PDU."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :cond_1
    :goto_1
    const-string v1, "Mms/PushReceiver"

    const-string v1, "PUSH Intent processed."

    invoke-static {v12, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v13

    .line 186
    goto :goto_0

    .line 96
    :sswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v9}, Lcom/android/mms/transaction/PushReceiver;->access$000(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J

    move-result-wide v10

    .line 97
    const-wide/16 v3, -0x1

    cmp-long v3, v10, v3

    if-eqz v3, :cond_1

    .line 103
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 105
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 106
    const-string v1, "thread_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    iget-object v1, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    const-string v2, ""

    .line 110
    const/16 v1, 0x86

    if-ne v9, v1, :cond_2

    .line 111
    move-object v0, v7

    check-cast v0, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/DeliveryInd;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_6

    array-length v3, v1

    if-lez v3, :cond_6

    .line 113
    invoke-static {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 114
    :goto_2
    iget-object v1, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    check-cast v7, Lcom/google/android/mms/pdu/DeliveryInd;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/DeliveryInd;->getStatus()I

    move-result v3

    move-wide v4, v10

    invoke-static/range {v1 .. v6}, Lcom/android/mms/transaction/MessagingNotification;->updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 178
    :catch_0
    move-exception v1

    .line 179
    const-string v2, "Mms/PushReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save the data from PUSH: type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 117
    :cond_2
    const/16 v1, 0x88

    if-ne v9, v1, :cond_1

    .line 118
    :try_start_2
    move-object v0, v7

    check-cast v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/ReadOrigInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 120
    iget-object v1, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    check-cast v7, Lcom/google/android/mms/pdu/ReadOrigInd;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/ReadOrigInd;->getReadStatus()I

    move-result v3

    move-wide v4, v10

    invoke-static/range {v1 .. v6}, Lcom/android/mms/transaction/MessagingNotification;->updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 180
    :catch_1
    move-exception v1

    .line 181
    const-string v2, "Mms/PushReceiver"

    const-string v2, "Unexpected RuntimeException."

    invoke-static {v12, v2, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 128
    :sswitch_1
    :try_start_3
    move-object v0, v7

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v8, v0

    .line 130
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransIdEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v2

    .line 132
    const/16 v3, 0x3d

    array-length v4, v2

    sub-int/2addr v4, v5

    aget-byte v4, v2, v4

    if-ne v3, v4, :cond_3

    .line 133
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v3

    .line 134
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 136
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v10, v2

    invoke-static {v2, v5, v4, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const/4 v5, 0x0

    array-length v2, v2

    array-length v6, v3

    invoke-static {v3, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    invoke-virtual {v8, v4}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 144
    :cond_3
    iget-object v2, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v8}, Lcom/android/mms/transaction/PushReceiver;->access$100(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 145
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 147
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->updateAddress(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 150
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    const-string v3, "uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v3, "type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    iget-object v3, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 156
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v2

    .line 159
    if-nez v2, :cond_4

    .line 160
    iget-object v2, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 169
    :goto_3
    iget-object v2, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    goto/16 :goto_1

    .line 164
    :cond_4
    iget-object v2, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount(Landroid/content/ContentResolver;)I

    move-result v2

    .line 165
    iget-object v3, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    goto :goto_3

    .line 171
    :cond_5
    const-string v1, "Mms/PushReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip downloading duplicate message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_6
    move-object v6, v2

    goto/16 :goto_2

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.class public Lcom/android/mms/transaction/MessagingNotification;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;,
        Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;,
        Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;
    }
.end annotation


# static fields
.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

.field private static final LOG_HISTORY_URI:Landroid/net/Uri;

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final UNDELIVERED_URI:Landroid/net/Uri;

.field private static final WPM_STATUS_PROJECTION:[Ljava/lang/String;

.field private static mToastHandler:Landroid/os/Handler;

.field private static sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

.field private static sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

.field private static sNotificationOnDeleteIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "sub"

    aput-object v1, v0, v6

    const-string v1, "sub_cs"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 109
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "address"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 131
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;-><init>(Lcom/android/mms/transaction/MessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    .line 154
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    .line 156
    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    .line 182
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    .line 184
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    .line 188
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 78
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 78
    invoke-static/range {p0 .. p10}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V

    return-void
.end method

.method private static final accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I
    .locals 2
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, set:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;>;"
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "accumulateNotificationInfo()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    if-eqz p1, :cond_0

    .line 351
    invoke-interface {p0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 353
    iget v0, p1, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mCount:I

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static blockingUpdateAllNotifications(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 340
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "blockingUpdateAllNotifications()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {p0, v2, v2}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 343
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 344
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 345
    return-void
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x2c

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v8, "Mms/MessagingNotification"

    .line 238
    const-string v0, "Mms/MessagingNotification"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockingUpdateNewMessageIndicator(),isNew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isStatusMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 244
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 246
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateAllHistoryAsRead(Landroid/content/Context;)V

    .line 248
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 249
    invoke-static {p0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->getMmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;Landroid/content/Intent;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v3

    .line 250
    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v4

    .line 253
    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v5

    add-int/2addr v5, v10

    .line 254
    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v6

    add-int/2addr v5, v6

    .line 257
    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getWpmNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v6

    .line 258
    invoke-static {v0, v6}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v6

    add-int/2addr v5, v6

    .line 261
    const-string v6, "Mms/MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blockingUpdateNewMessageIndicator: count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isNew="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 263
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, p0, p1, v5, v1}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->deliver(Landroid/content/Context;ZII)V

    .line 270
    :goto_0
    invoke-static {p0, v5}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    .line 274
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p0, p2}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->deliver(Landroid/content/Context;Z)V

    .line 279
    :cond_0
    if-eqz p1, :cond_2

    .line 286
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "driving_mode_message_notification"

    invoke-static {v1, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 294
    if-eqz v3, :cond_4

    .line 296
    if-ne v1, v9, :cond_1

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0901b0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 299
    iget-object v1, v3, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    :cond_1
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    const-string v3, "TTS_INFO"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 329
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 330
    const-string v0, "Mms/MessagingNotification"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBroadcast(intentForVlingo): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_2
    return-void

    .line 266
    :cond_3
    const-string v0, "Mms/MessagingNotification"

    const-string v0, "blockingUpdateNewMessageIndicator: new message cancelNotification"

    invoke-static {v8, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/16 v0, 0x7b

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0

    .line 306
    :cond_4
    if-eqz v4, :cond_1

    .line 307
    if-ne v1, v9, :cond_5

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901af

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 310
    iget-object v1, v4, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 318
    :cond_5
    if-ne v1, v9, :cond_1

    .line 319
    const v1, 0x7f090188

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "address"
    .parameter "subject"
    .parameter "body"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x20

    .line 769
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 771
    invoke-static {p1, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, displayAddress:Ljava/lang/String;
    const-string v4, "CBmessages"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 773
    const v4, 0x7f090123

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 779
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_4

    const-string v4, ""

    :goto_1
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 781
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 784
    .local v2, offset:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 785
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 786
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 790
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 791
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 792
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_2
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 796
    .local v3, spanText:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 799
    return-object v3

    .line 775
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #offset:I
    .end local v3           #spanText:Landroid/text/SpannableString;
    :cond_3
    const-string v4, "Push message"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 776
    const v4, 0x7f09019f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 779
    :cond_4
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 612
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 615
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 617
    const-string v1, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotification(),notificationId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method private static getDownloadFailedMessageCount(Landroid/content/Context;)I
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1030
    .line 1033
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "st"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1042
    if-nez v0, :cond_1

    .line 1043
    const/4 v1, 0x0

    .line 1047
    if-eqz v0, :cond_0

    .line 1048
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v1

    .line 1050
    :goto_0
    return v0

    .line 1045
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 1047
    if-eqz v0, :cond_2

    .line 1048
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v1

    .line 1050
    goto :goto_0

    .line 1047
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_1
    if-eqz v1, :cond_3

    .line 1048
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1047
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1
.end method

.method private static getMmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1197
    packed-switch p1, :pswitch_data_0

    .line 1206
    :pswitch_0
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1200
    :pswitch_1
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1202
    :pswitch_2
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1204
    :pswitch_3
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1197
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final getMmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;Landroid/content/Intent;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 19
    .parameter "context"
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Intent;",
            ")",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 430
    .local v6, resolver:Landroid/content/ContentResolver;
    sget-object v7, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v9, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

    const/4 v10, 0x0

    const-string v11, "date desc"

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 433
    .local v5, cursor:Landroid/database/Cursor;
    if-nez v5, :cond_0

    .line 434
    const/16 p0, 0x0

    .line 474
    .end local v6           #resolver:Landroid/content/ContentResolver;
    .end local p0
    .end local p2
    :goto_0
    return-object p0

    .line 438
    .restart local v6       #resolver:Landroid/content/ContentResolver;
    .restart local p0
    .restart local p2
    :cond_0
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .end local v6           #resolver:Landroid/content/ContentResolver;
    if-nez v6, :cond_1

    .line 439
    const/16 p0, 0x0

    .line 474
    .end local p0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 441
    .restart local p0
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 442
    .local v17, msgId:J
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 443
    .local v6, msgUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 444
    .local v7, address:Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v6           #msgUri:Landroid/net/Uri;
    move-result-object v6

    const/4 v8, 0x4

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v6, v8}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 446
    .local v8, subject:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 447
    .local v12, threadId:J
    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v9

    .line 450
    .local v14, timeMillis:J
    const-string v6, "Mms/MessagingNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMmsNewMessageNotificationInfo: count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", first addr = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", thread_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v6, "address"

    move-object/from16 v0, p2

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v6, "subject"

    move-object/from16 v0, p2

    move-object v1, v6

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string v6, "com.android.mms.MMS_BR_FOR_VLINGO"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string p2, "Mms/MessagingNotification"

    .end local p2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Broadcast message for Vlingo: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", Subject: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const v10, 0x7f02012e

    const/4 v11, 0x0

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v16

    move-object/from16 v9, p0

    invoke-static/range {v7 .. v16}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object p2

    .line 464
    .local p2, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 465
    const-string v6, "200"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-object v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 467
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #subject:Ljava/lang/String;
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 468
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 469
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "200"

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide v1, v6

    move-object v3, v8

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 474
    .end local v12           #threadId:J
    .end local v14           #timeMillis:J
    .end local v17           #msgId:J
    .end local p2           #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :catchall_0
    move-exception p0

    .end local p0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw p0

    .restart local v12       #threadId:J
    .restart local v14       #timeMillis:J
    .restart local v17       #msgId:J
    .restart local p0
    .restart local p2       #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object/from16 p0, p2

    goto/16 :goto_0
.end method

.method private static getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1211
    packed-switch p1, :pswitch_data_0

    .line 1217
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1213
    :pswitch_0
    const v0, 0x7f0900bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1215
    :pswitch_1
    const v0, 0x7f0900bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1211
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "sub"
    .parameter "charset"

    .prologue
    .line 803
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 9
    .parameter "address"
    .parameter "body"
    .parameter "context"
    .parameter "iconResourceId"
    .parameter "subject"
    .parameter "threadId"
    .parameter "timeMillis"
    .parameter "count"

    .prologue
    .line 598
    invoke-static {p2, p5, p6}, Lcom/android/mms/ui/ComposeMessage;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 599
    .local v1, clickIntent:Landroid/content/Intent;
    const/high16 p5, 0x3400

    invoke-virtual {v1, p5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 602
    .end local p5
    const/4 p5, 0x0

    const/4 p6, 0x0

    invoke-static {p2, p0, p5, p6}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    .line 603
    .local p5, senderInfo:Ljava/lang/String;
    const/4 p6, 0x0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p5, p6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, senderInfoName:Ljava/lang/String;
    invoke-static {p2, p0, p4, p1}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 606
    .local v4, ticker:Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-object v2, p1

    move v3, p3

    move-wide/from16 v5, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;I)V

    return-object v0
.end method

.method private static getSmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1179
    sparse-switch p1, :sswitch_data_0

    .line 1192
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1181
    :sswitch_0
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1183
    :sswitch_1
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1185
    :sswitch_2
    const v0, 0x7f0900bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1188
    :sswitch_3
    const v0, 0x7f090108

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1179
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x46 -> :sswitch_3
    .end sparse-switch
.end method

.method private static final getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 480
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 2 AND status = 0)"

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 483
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    move-object v0, v5

    .line 499
    :goto_0
    return-object v0

    .line 487
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 499
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_0

    .line 490
    :cond_1
    const/4 v0, 0x4

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 491
    .local v7, address:Ljava/lang/String;
    const-wide/16 v9, 0xbb8

    .line 493
    .local v9, timeMillis:J
    const-string v0, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsNewDeliveryInfo: address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    const v2, 0x7f0900d0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v9, v10}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;-><init>(Ljava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #address:Ljava/lang/String;
    .end local v9           #timeMillis:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static final getSmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 553
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 1 AND read = 0)"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 556
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 557
    const/4 p0, 0x0

    .line 591
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local p0
    :goto_0
    return-object p0

    .line 561
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local p0
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .end local v1           #resolver:Landroid/content/ContentResolver;
    if-nez v1, :cond_1

    .line 562
    const/4 p0, 0x0

    .line 591
    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 565
    .restart local p0
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 566
    .local v12, msgId:J
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, address:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, body:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 569
    .local v7, threadId:J
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 573
    .local v9, timeMillis:J
    const-string v1, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSmsNewMessageNotificationInfo: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", first addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const v5, 0x7f02012e

    const/4 v6, 0x0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    move-object v4, p0

    invoke-static/range {v2 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v1

    .line 579
    .local v1, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    const v5, 0x7f02012e

    const/4 v6, 0x0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    move-object v4, p0

    invoke-static/range {v2 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v1

    .line 582
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v2           #address:Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 583
    const-string v2, "300"

    const/4 v3, 0x0

    invoke-static {p0, v12, v13, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 584
    .end local v3           #body:Ljava/lang/String;
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 585
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 586
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "300"

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 591
    .end local v1           #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .end local v7           #threadId:J
    .end local v9           #timeMillis:J
    .end local v12           #msgId:J
    :catchall_0
    move-exception p0

    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .restart local v1       #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .restart local v7       #threadId:J
    .restart local v9       #timeMillis:J
    .restart local v12       #msgId:J
    .restart local p0
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object p0, v1

    goto/16 :goto_0
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;[J)I
    .locals 14
    .parameter "context"
    .parameter "threadIdResult"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v13, 0x0

    .line 936
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v13

    const-string v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 940
    .local v10, undeliveredCursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    move v0, v13

    .line 980
    :goto_0
    return v0

    .line 943
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 944
    .local v7, count:I
    const-wide/16 v11, 0x0

    .line 946
    .local v11, undeliveredThreadId:J
    if-eqz p1, :cond_7

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 947
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 948
    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 949
    const/4 v0, 0x0

    aput-wide v11, p1, v0

    .line 962
    :cond_1
    :goto_1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    .line 964
    const/4 v0, 0x0

    aget-wide v8, p1, v0

    .line 965
    .local v8, firstId:J
    :cond_2
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    if-lez v7, :cond_6

    .line 966
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 967
    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_5

    .line 968
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 951
    .end local v8           #firstId:J
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 952
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez v7, :cond_1

    .line 953
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 954
    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 955
    const/4 v0, 0x0

    aput-wide v11, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 978
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 958
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 969
    .restart local v8       #firstId:J
    :cond_5
    cmp-long v0, v11, v8

    if-eqz v0, :cond_2

    .line 970
    const-wide/16 v8, 0x0

    goto :goto_2

    .line 974
    :cond_6
    const/4 v0, 0x1

    :try_start_1
    aput-wide v8, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    .end local v8           #firstId:J
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 980
    goto :goto_0
.end method

.method private static final getWpmNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    .prologue
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 506
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 507
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(read = 0)"

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 511
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_0

    move-object v0, v5

    .line 544
    :goto_0
    return-object v0

    .line 516
    :cond_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 544
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_0

    .line 521
    :cond_1
    :try_start_1
    const-string v2, "Push message"

    .line 522
    .local v2, address:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, body:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 524
    .local v7, threadId:J
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 528
    .local v9, timeMillis:J
    const-string v0, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWpmNewMessageNotificationInfo: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", first addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const v5, 0x7f02012e

    const/4 v6, 0x0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    move-object v4, p0

    invoke-static/range {v2 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v13

    .line 535
    .local v13, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 544
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .end local v7           #threadId:J
    .end local v9           #timeMillis:J
    .end local v13           #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v2       #address:Ljava/lang/String;
    .restart local v3       #body:Ljava/lang/String;
    .restart local v7       #threadId:J
    .restart local v9       #timeMillis:J
    .restart local v13       #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v0, v13

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-string v4, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    .line 194
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "init()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v0, cancelIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.mms.NOTIFICATION_CANCEL_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    return-void
.end method

.method public static isFailedToDeliver(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1230
    if-eqz p0, :cond_0

    const-string v0, "undelivered_flag"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isFailedToDownload(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1234
    if-eqz p0, :cond_0

    const-string v0, "failed_download_flag"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isValidThreadId(Landroid/content/Context;J)Z
    .locals 2
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 984
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "isNew"
    .parameter "isStatusMessage"

    .prologue
    .line 218
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "nonBlockingUpdateNewMessageIndicator()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$1;-><init>(Landroid/content/Context;ZZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 225
    return-void
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 808
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 809
    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZJZ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 821
    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFailed(),isDownload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",noisy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 827
    const-string v0, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 828
    if-nez v0, :cond_0

    .line 928
    :goto_0
    return-void

    .line 832
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 842
    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    .line 845
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v3

    .line 848
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 851
    const/4 v5, 0x1

    if-le v3, v5, :cond_5

    .line 852
    const p2, 0x7f0900d3

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v2

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 854
    const p3, 0x7f0900d4

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 856
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 878
    :goto_1
    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 879
    const/4 v3, 0x0

    const/high16 v5, 0x800

    invoke-static {p0, v3, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 882
    const v3, 0x7f020130

    iput v3, v4, Landroid/app/Notification;->icon:I

    .line 884
    iput-object p3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 886
    invoke-virtual {v4, p0, p3, p2, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 888
    if-eqz p4, :cond_4

    .line 890
    const-string p2, "power"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 891
    const p3, 0x1000001a

    const-string p4, "New message notification LCD on"

    invoke-virtual {p2, p3, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    .line 893
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 p4, 0x0

    invoke-virtual {p2, v2, v3, p4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 894
    const-wide/16 v2, 0x1388

    invoke-virtual {p3, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 897
    const-string p2, "audio"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 899
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result p3

    .line 900
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p4, "vibrate_in_silent"

    const/4 v2, 0x1

    invoke-static {p0, p4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p4, 0x1

    if-ne p0, p4, :cond_a

    const/4 p0, 0x1

    .line 902
    :goto_2
    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p2

    const/4 p4, 0x2

    if-eq p2, p4, :cond_b

    const/4 p2, 0x1

    .line 904
    :goto_3
    if-eqz p2, :cond_1

    if-nez p0, :cond_2

    :cond_1
    if-nez p2, :cond_3

    const/4 p0, 0x1

    if-ne p3, p0, :cond_3

    .line 907
    :cond_2
    const/16 p0, 0x10

    iput p0, v4, Landroid/app/Notification;->haptic:I

    .line 917
    :cond_3
    const-string p0, "pref_key_ringtone"

    const/4 p2, 0x0

    invoke-interface {v1, p0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 920
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    const/4 p0, 0x0

    :goto_4
    iput-object p0, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 923
    :cond_4
    if-eqz p1, :cond_d

    .line 924
    const/16 p0, 0x213

    invoke-virtual {v0, p0, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 858
    :cond_5
    if-eqz p1, :cond_6

    const v5, 0x7f0900e7

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 861
    :goto_5
    const v6, 0x7f0900e9

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 862
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 863
    if-eqz p1, :cond_7

    .line 865
    const-string v2, "failed_download_flag"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 875
    :goto_6
    const-string v2, "thread_id"

    invoke-virtual {v7, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object p2, v6

    move-object p3, v5

    move-object v2, v7

    goto/16 :goto_1

    .line 858
    :cond_6
    const v5, 0x7f0900e8

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 867
    :cond_7
    if-gtz v3, :cond_8

    .line 868
    const/16 p1, 0x315

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 871
    :cond_8
    const/4 p2, 0x0

    aget-wide p2, v2, p2

    const-wide/16 v8, 0x0

    cmp-long p2, p2, v8

    if-eqz p2, :cond_9

    const/4 p2, 0x0

    aget-wide p2, v2, p2

    .line 872
    :goto_7
    const-string v2, "undelivered_flag"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_6

    .line 871
    :cond_9
    const-wide/16 p2, 0x0

    goto :goto_7

    .line 900
    :cond_a
    const/4 p0, 0x0

    goto :goto_2

    .line 902
    :cond_b
    const/4 p2, 0x0

    goto :goto_3

    .line 920
    :cond_c
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_4

    .line 926
    :cond_d
    const/16 p0, 0x315

    invoke-virtual {v0, p0, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 842
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static notifySendFailed(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 812
    const-wide/16 v0, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 813
    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "noisy"

    .prologue
    .line 816
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 817
    return-void
.end method

.method public static setBadge(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1239
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1243
    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.ui.ConversationComposer"

    invoke-static {v0, v1, v2, p1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1244
    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBadgeCount(),count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    return-void
.end method

.method private static updateAllHistoryAsRead(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1387
    const-string v1, "logtype=? OR logtype=?"

    .line 1388
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "200"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "300"

    aput-object v4, v2, v3

    .line 1392
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1393
    const-string v4, "new"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1395
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1396
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateAllHistoryAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    return-void
.end method

.method public static updateClass0SoundnVibrate(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1054
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 1055
    .local v4, notification:Landroid/app/Notification;
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1057
    .local v3, nm:Landroid/app/NotificationManager;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1058
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v10, "pref_key_enable_notifications"

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1084
    :goto_0
    return-void

    .line 1062
    :cond_0
    const-string v10, "power"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 1063
    .local v5, pm:Landroid/os/PowerManager;
    const v10, 0x1000001a

    const-string v11, "New message notification LCD on"

    invoke-virtual {v5, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    .line 1065
    .local v9, wl:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11, v13}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1066
    const-wide/16 v10, 0x1388

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1069
    const-string v10, "audio"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1070
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v13}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v8

    .line 1071
    .local v8, vibrateSetting:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "vibrate_in_silent"

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v12, :cond_4

    move v2, v12

    .line 1073
    .local v2, bVibrateSilent:Z
    :goto_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_5

    move v1, v12

    .line 1075
    .local v1, bNowSilent:Z
    :goto_2
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    if-nez v1, :cond_3

    if-ne v8, v12, :cond_3

    .line 1078
    :cond_2
    const/16 v10, 0x10

    iput v10, v4, Landroid/app/Notification;->haptic:I

    .line 1081
    :cond_3
    const-string v10, "pref_key_ringtone"

    invoke-interface {v7, v10, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1082
    .local v6, ringtoneStr:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v10, v14

    :goto_3
    iput-object v10, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1083
    const/16 v10, 0x3e7

    invoke-virtual {v3, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .end local v1           #bNowSilent:Z
    .end local v2           #bVibrateSilent:Z
    .end local v6           #ringtoneStr:Ljava/lang/String;
    :cond_4
    move v2, v13

    .line 1071
    goto :goto_1

    .restart local v2       #bVibrateSilent:Z
    :cond_5
    move v1, v13

    .line 1073
    goto :goto_2

    .line 1082
    .restart local v1       #bNowSilent:Z
    .restart local v6       #ringtoneStr:Ljava/lang/String;
    :cond_6
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_3
.end method

.method private static updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 3
    .parameter "context"
    .parameter "isStatusMessage"
    .parameter "message"
    .parameter "timeMillis"

    .prologue
    .line 622
    if-nez p1, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 628
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/transaction/MessagingNotification$2;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification$2;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 1223
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1224
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateDownloadFailedNotification()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const/16 v0, 0x213

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1227
    :cond_0
    return-void
.end method

.method public static updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 19
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1308
    const/4 v4, 0x6

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v7, v4

    const/4 v4, 0x1

    const-string v5, "date"

    aput-object v5, v7, v4

    const/4 v4, 0x2

    const-string v5, "msg_box"

    aput-object v5, v7, v4

    const/4 v4, 0x3

    const-string v5, "sub"

    aput-object v5, v7, v4

    const/4 v4, 0x4

    const-string v5, "sub_cs"

    aput-object v5, v7, v4

    const/4 v4, 0x5

    const-string v5, "read"

    aput-object v5, v7, v4

    .line 1317
    if-nez p1, :cond_0

    .line 1318
    const/16 p0, 0x0

    .line 1381
    :goto_0
    return p0

    .line 1321
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1322
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1324
    if-nez v4, :cond_1

    .line 1325
    const/16 p0, 0x0

    goto :goto_0

    .line 1329
    :cond_1
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 1330
    const/16 p0, 0x0

    .line 1379
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1332
    :cond_2
    const-wide/16 v6, 0x0

    .line 1333
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1334
    const/4 v10, 0x1

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    .line 1335
    const/4 v12, 0x3

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 1336
    const/4 v13, 0x2

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v13, v13

    .line 1337
    const/4 v15, 0x5

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1342
    const-wide/16 v16, 0x1

    cmp-long v16, v13, v16

    if-nez v16, :cond_3

    .line 1343
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object p0

    .line 1352
    :goto_1
    if-eqz p2, :cond_8

    .line 1353
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 1356
    :goto_2
    const-string v6, "logtype=? AND ( messageid=? OR messageid=?)"

    .line 1357
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "200"

    aput-object v17, v7, v16

    const/16 v16, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0x2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v16

    .line 1361
    sget-object p1, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1365
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 p1, v0

    const/16 p2, 0x0

    :goto_3
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_7

    aget-object v6, p0, p2

    .line 1366
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1368
    const-string v16, "date"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1369
    const-string v16, "type"

    const-wide/16 v17, 0x1

    cmp-long v17, v13, v17

    if-nez v17, :cond_5

    const/16 v17, 0x1

    :goto_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1370
    const-string v16, "number"

    move-object v0, v7

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const-string v16, "messageid"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1372
    const-string v16, "m_subject"

    move-object v0, v7

    move-object/from16 v1, v16

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const-string v16, "new"

    if-nez v15, :cond_6

    const/16 v17, 0x1

    :goto_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1375
    const-string v16, "content://logs/mms"

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object v0, v5

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1376
    const-string v7, "Mms/MessagingNotification"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateHistoryForMms(),address="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_3

    .line 1344
    :cond_3
    const-wide/16 v16, 0x2

    cmp-long v16, v13, v16

    if-nez v16, :cond_4

    .line 1345
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p0

    goto/16 :goto_1

    .line 1347
    :cond_4
    const/16 p0, 0x0

    .line 1379
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1369
    :cond_5
    const/16 v17, 0x2

    goto :goto_4

    .line 1373
    :cond_6
    const/16 v17, 0x0

    goto :goto_5

    .line 1379
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1381
    const/16 p0, 0x1

    goto/16 :goto_0

    .line 1379
    :catchall_0
    move-exception p0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_8
    move-wide/from16 p1, v6

    goto/16 :goto_2
.end method

.method public static updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 1249
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "body"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "type"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "read"

    aput-object v1, v3, v0

    .line 1258
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1259
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1261
    if-nez p0, :cond_0

    .line 1262
    const/4 p0, 0x0

    .line 1303
    :goto_0
    return p0

    .line 1266
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p1

    if-nez p1, :cond_1

    .line 1267
    const/4 p1, 0x0

    .line 1301
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move p0, p1

    goto :goto_0

    .line 1270
    :cond_1
    const/4 p1, 0x0

    :try_start_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1271
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1272
    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1273
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1274
    const/4 v6, 0x4

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    .line 1275
    const/4 v8, 0x5

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1277
    if-eqz v0, :cond_2

    .line 1278
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x32

    if-le v9, v10, :cond_2

    .line 1279
    const/4 v9, 0x0

    const/16 v10, 0x32

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1282
    :cond_2
    const-string v9, "logtype=? AND messageid=?"

    .line 1283
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "300"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1287
    sget-object v11, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v11, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1289
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1291
    const-string v10, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1292
    const-string v4, "type"

    const-wide/16 v10, 0x1

    cmp-long v5, v6, v10

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1293
    const-string v4, "number"

    invoke-virtual {v9, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string v4, "messageid"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1295
    const-string v2, "m_content"

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const-string v0, "new"

    if-nez v8, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1298
    const-string v0, "content://logs/sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1299
    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHistoryForSms(),address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1301
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1303
    const/4 p0, 0x1

    goto/16 :goto_0

    .line 1292
    :cond_3
    const/4 v5, 0x2

    goto :goto_1

    .line 1296
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1301
    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private static updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1401
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1403
    const-string v1, "logtype=? AND messageid=?"

    .line 1404
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1408
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1409
    const-string v4, "new"

    if-eqz p4, :cond_0

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1410
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1411
    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHistoryReadFlag(),messageid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    return-void

    :cond_0
    move v5, v6

    .line 1409
    goto :goto_0
.end method

.method private static updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    .locals 3
    .parameter "context"
    .parameter "clickIntent"
    .parameter "description"
    .parameter "iconRes"
    .parameter "isNew"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "messageCount"
    .parameter "uniqueThreadCount"

    .prologue
    .line 642
    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotification(),isNew="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ticker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 645
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v0, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    .end local p0
    .end local p3
    .end local p4
    .end local p5
    .end local p6
    :goto_0
    return-void

    .line 649
    .restart local p0
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p6
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p3, p5, p6, p7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 650
    .local v0, notification:Landroid/app/Notification;
    iput-object p8, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 651
    iput p9, v0, Landroid/app/Notification;->missedCount:I

    .line 657
    const/4 p3, 0x1

    if-le p10, p3, :cond_1

    .line 658
    .end local p3
    const p1, 0x7f0900d2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1
    move-result-object p8

    .line 659
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.MAIN"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    .restart local p1
    const/high16 p3, 0x3400

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 664
    const-string p3, "vnd.android-dir/mms-sms"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    :cond_1
    const/4 p3, 0x1

    if-le p9, p3, :cond_2

    .line 671
    const p2, 0x7f0900d1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p2
    const/4 p5, 0x0

    invoke-static {p9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .end local p5
    move-result-object p6

    .end local p6
    aput-object p6, p3, p5

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 676
    .restart local p2
    :cond_2
    const/4 p3, 0x0

    const/high16 p5, 0x800

    invoke-static {p0, p3, p1, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 680
    .local p3, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, p0, p8, p2, p3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 682
    if-eqz p4, :cond_6

    .line 706
    const-string p3, "power"

    .end local p3           #pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    .line 707
    .local p3, pm:Landroid/os/PowerManager;
    const p4, 0x1000001a

    const-string p5, "New message notification LCD on"

    .end local p4
    invoke-virtual {p3, p4, p5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p4

    .line 709
    .local p4, wl:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p5

    const/4 p7, 0x0

    invoke-virtual {p3, p5, p6, p7}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 710
    const-wide/16 p5, 0x1388

    invoke-virtual {p4, p5, p6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 713
    const-string p3, "audio"

    .end local p3           #pm:Landroid/os/PowerManager;
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    .line 715
    .local p3, audioManager:Landroid/media/AudioManager;
    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    .end local p4           #wl:Landroid/os/PowerManager$WakeLock;
    move-result p5

    .line 716
    .local p5, vibrateSetting:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string p6, "vibrate_in_silent"

    const/4 p7, 0x1

    invoke-static {p4, p6, p7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p4

    const/4 p6, 0x1

    if-ne p4, p6, :cond_8

    const/4 p4, 0x1

    .line 718
    .local p4, bVibrateSilent:Z
    :goto_1
    invoke-virtual {p3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p3

    .end local p3           #audioManager:Landroid/media/AudioManager;
    const/4 p6, 0x2

    if-eq p3, p6, :cond_9

    const/4 p3, 0x1

    .line 720
    .local p3, bNowSilent:Z
    :goto_2
    if-eqz p3, :cond_3

    if-nez p4, :cond_4

    :cond_3
    if-nez p3, :cond_5

    const/4 p3, 0x1

    if-ne p5, p3, :cond_5

    .line 723
    .end local p3           #bNowSilent:Z
    :cond_4
    const/16 p3, 0x10

    iput p3, v0, Landroid/app/Notification;->haptic:I

    .line 733
    :cond_5
    const-string p3, "pref_key_ringtone"

    const/4 p4, 0x0

    invoke-interface {v1, p3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local p4           #bVibrateSilent:Z
    move-result-object p3

    .line 737
    .local p3, ringtoneStr:Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .end local p3           #ringtoneStr:Ljava/lang/String;
    :goto_3
    iput-object p3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 740
    iget-object p3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz p3, :cond_6

    .line 741
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 742
    const-string p3, "GATE"

    const-string p4, "<GATE-M>SMS_AUDIBLE_ALERT_IND</GATE-M>"

    invoke-static {p3, p4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    .end local p5           #vibrateSetting:I
    :cond_6
    iget p3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p3, p3, 0x1

    iput p3, v0, Landroid/app/Notification;->flags:I

    .line 747
    iget p3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 p3, p3, 0x4

    iput p3, v0, Landroid/app/Notification;->defaults:I

    .line 750
    const/4 p3, 0x0

    sget-object p4, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    const/4 p5, 0x0

    invoke-static {p0, p3, p4, p5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    iput-object p3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 753
    const-string p3, "notification"

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    .line 756
    .local p0, nm:Landroid/app/NotificationManager;
    iget-object p3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz p3, :cond_7

    .line 757
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 758
    const-string p3, "GATE"

    const-string p4, "<GATE-M>SMS_AUDIBLE_ALERT_IND</GATE-M>"

    invoke-static {p3, p4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_7
    const/16 p3, 0x7b

    invoke-virtual {p0, p3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 716
    .local p0, context:Landroid/content/Context;
    .local p3, audioManager:Landroid/media/AudioManager;
    .restart local p5       #vibrateSetting:I
    :cond_8
    const/4 p4, 0x0

    goto :goto_1

    .line 718
    .end local p3           #audioManager:Landroid/media/AudioManager;
    .restart local p4       #bVibrateSilent:Z
    :cond_9
    const/4 p3, 0x0

    goto :goto_2

    .line 737
    .end local p4           #bVibrateSilent:Z
    .local p3, ringtoneStr:Ljava/lang/String;
    :cond_a
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    goto :goto_3
.end method

.method public static updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1088
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1089
    const-string v1, "Mms/MessagingNotification"

    const-string v2, "updateReportNotification(),type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ",status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ",threadId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ",address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1095
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1101
    packed-switch p1, :pswitch_data_0

    .line 1118
    const-string p0, ""

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1103
    :pswitch_0
    const p1, 0x7f0900c6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1104
    invoke-static {p0, p2}, Lcom/android/mms/transaction/MessagingNotification;->getSmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 1105
    const v2, 0x7f02012d

    iput v2, v1, Landroid/app/Notification;->icon:I

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .line 1122
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1125
    const-string v2, ""

    .line 1127
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1128
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 1129
    const/4 v2, 0x1

    invoke-static {p5, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object p5

    .line 1132
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v2, " : "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 1134
    invoke-static {p0, p3, p4}, Lcom/android/mms/ui/ComposeMessage;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object p1

    .line 1135
    const/high16 p3, 0x3400

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1138
    const/4 p3, 0x0

    const/high16 p4, 0x800

    invoke-static {p0, p3, p1, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 1141
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    .line 1142
    const-string p1, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-interface {p4, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1146
    const/16 p1, 0x378

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1149
    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 1150
    const v2, 0x1000001a

    const-string v3, "New message notification LCD on"

    invoke-virtual {p1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 1152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1153
    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1155
    iput-object p2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1157
    invoke-virtual {v1, p0, p2, p5, p3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1160
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 1161
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result p2

    .line 1162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p3, "vibrate_in_silent"

    const/4 p5, 0x1

    invoke-static {p0, p3, p5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_4

    const/4 p0, 0x1

    .line 1164
    :goto_3
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_5

    const/4 p1, 0x1

    .line 1166
    :goto_4
    if-eqz p1, :cond_1

    if-nez p0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    const/4 p0, 0x1

    if-ne p2, p0, :cond_3

    .line 1169
    :cond_2
    const/16 p0, 0x10

    iput p0, v1, Landroid/app/Notification;->haptic:I

    .line 1172
    :cond_3
    const-string p0, "pref_key_ringtone"

    const/4 p1, 0x0

    invoke-interface {p4, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p0, 0x0

    :goto_5
    iput-object p0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1175
    const/16 p0, 0x378

    invoke-virtual {v0, p0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1108
    :pswitch_1
    const p1, 0x7f0900c6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1109
    invoke-static {p0, p2}, Lcom/android/mms/transaction/MessagingNotification;->getMmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 1110
    const v2, 0x7f02012d

    iput v2, v1, Landroid/app/Notification;->icon:I

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .line 1111
    goto/16 :goto_1

    .line 1113
    :pswitch_2
    const p1, 0x7f0900c7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1114
    invoke-static {p0, p2}, Lcom/android/mms/transaction/MessagingNotification;->getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 1115
    const v2, 0x7f020131

    iput v2, v1, Landroid/app/Notification;->icon:I

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .line 1116
    goto/16 :goto_1

    .line 1162
    :cond_4
    const/4 p0, 0x0

    goto :goto_3

    .line 1164
    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    .line 1173
    :cond_6
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_5

    :cond_7
    move-object p5, v2

    goto/16 :goto_2

    .line 1101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static updateSendFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 1002
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateSendFailedNotification()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1005
    const/16 v0, 0x315

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1009
    :goto_0
    return-void

    .line 1007
    :cond_0
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static updateSendFailedNotificationForThread(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 1016
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 1019
    .local v0, msgThreadId:[J
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1021
    const/16 v1, 0x315

    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1023
    :cond_0
    return-void

    .line 1016
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

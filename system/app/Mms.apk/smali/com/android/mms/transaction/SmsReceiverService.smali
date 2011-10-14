.class public Lcom/android/mms/transaction/SmsReceiverService;
.super Landroid/app/Service;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final REPLACE_PROJECTION:[Ljava/lang/String;

.field private static final SEND_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final GROUP_SMS_PROJECTION:[Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

.field private mRecipient:Ljava/lang/String;

.field private mResultCode:I

.field private mSending:Z

.field private mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "_id"

    .line 116
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    .line 618
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "protocol"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 384
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "group_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->GROUP_SMS_PROJECTION:[Ljava/lang/String;

    .line 1121
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$4;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SmsReceiverService$4;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method public static FilterCLRF(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "source"

    .prologue
    .line 900
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .line 901
    .local v1, i:I
    const/4 v0, 0x0

    .line 902
    .local v0, count:I
    add-int/lit8 v3, v1, 0x1

    .line 904
    .local v3, total:I
    :goto_0
    if-lez v1, :cond_1

    .line 905
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 906
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 909
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 912
    :cond_1
    const/4 v4, 0x0

    sub-int v5, v3, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 913
    .local v2, ret:Ljava/lang/String;
    return-object v2
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsServiceCenter(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/SmsReceiverService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/SmsReceiverService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->sendPCWLockMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForSetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForGetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSIMStatus(Landroid/content/Intent;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleCbSettingsAvailable(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 875
    aget-object v0, p2, v4

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    array-length v2, p2

    .line 880
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 881
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "pdu"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "body"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 895
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 896
    return-void

    :cond_0
    move-object v3, v0

    move v0, v4

    .line 883
    :goto_1
    if-ge v0, v2, :cond_1

    .line 884
    aget-object v3, p2, v0

    .line 885
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v5, 0x0

    const-string v6, "Mms/SmsReceiverService"

    const-string v4, "address"

    .line 824
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 827
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "ril.sms.gcf-mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, GcfMode:Ljava/lang/String;
    const-string v2, "On"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 830
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 831
    const-string v2, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms.getOriginatingAddress() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v2, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :goto_0
    const-string v2, "date"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 857
    const-string v2, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    const-string v2, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    const-string v2, "seen"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 860
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 861
    const-string v2, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_0
    const-string v2, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    const-string v2, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    return-object v1

    .line 834
    :cond_1
    const-string v2, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms.getDisplayOriginatingAddress(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v2, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 841
    const-string v2, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 843
    :cond_3
    const-string v2, "address"

    const v2, 0x7f090172

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v3, v5

    .line 864
    goto :goto_1
.end method

.method private handleBootCompleted()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v4, "handleBootCompleted()"

    const-string v3, "Mms/SmsReceiverService"

    .line 585
    const-string v0, "Mms/SmsReceiverService"

    const-string v0, "handleBootCompleted()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V

    .line 591
    invoke-static {}, Lcom/android/mms/data/Conversation;->deleteTempConversation()V

    .line 594
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->moveOutboxMessagesToQueuedBox()V

    .line 595
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 600
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    .line 602
    invoke-static {p0, v2, v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 603
    const-string v0, "Mms/SmsReceiverService"

    const-string v0, "handleBootCompleted()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method private handleCbReceived(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 919
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "handleCbReceived()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getCbMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/gsm/CbMessage;

    move-result-object v0

    .line 921
    invoke-direct {p0, p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->storeCbMessage(Landroid/content/Context;[Landroid/telephony/gsm/CbMessage;)Landroid/net/Uri;

    move-result-object v0

    .line 922
    if-eqz v0, :cond_0

    .line 923
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 925
    :cond_0
    return-void
.end method

.method private handleCbSettingsAvailable(Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 953
    .line 954
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 955
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 956
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCbSettings()Landroid/telephony/gsm/CbConfig;

    move-result-object v0

    .line 957
    if-nez v0, :cond_0

    .line 958
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "smsManager.getCbSettings() = null. Return here."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    :goto_0
    return-void

    .line 962
    :cond_0
    iget-char v2, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 965
    const-string v3, "pref_key_cb_settings_activation"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 967
    const-string v0, "pref_cb_my_channel_max_count"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 968
    const-string v0, "pref_sim_ready_status"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1004
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v0

    .line 1005
    array-length v3, v0

    .line 1007
    if-le v3, v2, :cond_1

    .line 1008
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1009
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aget-short v5, v0, v2

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/ChannelUtils;->updateSubscription(Landroid/content/Context;II)V

    .line 1008
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1012
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v0

    .line 1013
    const-string v2, "pref_cb_my_channel_enabled_count"

    array-length v0, v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1014
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1016
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private handleErrCodeForGetCbReceived(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "Mms/SmsReceiverService"

    .line 1020
    const-string v0, "getRsp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    .line 1022
    instance-of v0, p0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 1023
    check-cast p0, Lcom/android/internal/telephony/CommandException;

    .line 1024
    const-string v0, "Mms/SmsReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CB] error code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :goto_0
    return-void

    .line 1026
    :cond_0
    const-string v0, "Mms/SmsReceiverService"

    const-string v0, "[CB] error code = Unknown Object received "

    invoke-static {v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleErrCodeForSetCbReceived(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "Mms/SmsReceiverService"

    .line 928
    const-string v0, "setRsp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    .line 930
    instance-of v0, p0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 931
    check-cast p0, Lcom/android/internal/telephony/CommandException;

    .line 932
    const-string v0, "Mms/SmsReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CB] error code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :goto_0
    return-void

    .line 934
    :cond_0
    const-string v0, "Mms/SmsReceiverService"

    const-string v0, "[CB] error code = Unknown Object received "

    invoke-static {v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePCWLockMessage(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1142
    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_pcw_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1143
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCW LOCK. Send Lock message. BootComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_pcw_phone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;

    .line 1146
    if-eqz p1, :cond_1

    .line 1147
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    .line 1153
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1154
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1156
    :cond_0
    return-void

    .line 1149
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleSIMStatus(Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "pref_sim_ready_status"

    .line 939
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "handleSIMStatus()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 941
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 943
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 944
    const-string v0, "pref_sim_ready_status"

    const/4 v0, 0x0

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 945
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    const-string v0, "pref_sim_ready_status"

    const/4 v0, 0x1

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 948
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private handleSendMessage()V
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 328
    :cond_0
    return-void
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 319
    .local v0, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 322
    :cond_0
    return-void
.end method

.method private handleSmsReceived(Landroid/content/Intent;I)V
    .locals 10
    .parameter "intent"
    .parameter "error"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "GATE"

    const-string v6, "Mms/SmsReceiverService"

    .line 547
    const-string v4, "Mms/SmsReceiverService"

    const-string v4, "handleSmsReceived()"

    invoke-static {v6, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 550
    .local v1, msgs:[Landroid/telephony/SmsMessage;
    aget-object v3, v1, v7

    .line 553
    .local v3, sms:Landroid/telephony/SmsMessage;
    new-instance v2, Lcom/android/mms/transaction/MTMessageParser;

    invoke-direct {v2}, Lcom/android/mms/transaction/MTMessageParser;-><init>()V

    .line 554
    .local v2, mtparser:Lcom/android/mms/transaction/MTMessageParser;
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/transaction/MTMessageParser;->messageParser(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-ne v4, v8, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    invoke-direct {p0, p0, v1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v0

    .line 561
    .local v0, messageUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 563
    const-string v4, "Mms/SmsReceiverService"

    const-string v4, "handleSmsReceived..."

    invoke-static {v6, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v4, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSmsReceived"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "(replace)"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messageUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 573
    const-string v4, "GATE"

    const-string v4, "<GATE-M>INCOMING_MSG</GATE-M>"

    invoke-static {v9, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v4, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>SMSSENDERINFO:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</GATE-M>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_3
    if-eqz v0, :cond_0

    .line 579
    invoke-static {p0, v8, v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 580
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_0

    .line 564
    :cond_4
    const-string v5, ""

    goto :goto_1
.end method

.method private handleSmsSent(Landroid/content/Intent;I)V
    .locals 9
    .parameter "intent"
    .parameter "error"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v4, 0x0

    const-string v8, "GATE"

    const-string v5, "Mms/SmsReceiverService"

    .line 453
    const-string v3, "Mms/SmsReceiverService"

    const-string v3, "handleSmsSent()"

    invoke-static {v5, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 456
    .local v2, uri:Landroid/net/Uri;
    iput-boolean v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 457
    const-string v3, "SendNextMsg"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 459
    .local v0, sendNextMsg:Z
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-direct {p0, v2, v3}, Lcom/android/mms/transaction/SmsReceiverService;->updateGroupType(Landroid/net/Uri;I)Z

    move-result v1

    .line 461
    .local v1, updated:Z
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 462
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    const-string v3, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSmsSent sending uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    invoke-static {p0, v2, v6, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 466
    const-string v3, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSmsSent: failed to move message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to sent folder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_1
    if-eqz v0, :cond_2

    .line 469
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 473
    :cond_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 474
    const-string v3, "GATE"

    const-string v3, "<GATE-M>SMS_SENT_SUCCESS</GATE-M>"

    invoke-static {v8, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_3
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 479
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 531
    :cond_4
    :goto_0
    return-void

    .line 480
    :cond_5
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-eq v3, v6, :cond_6

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9

    .line 482
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 483
    const-string v3, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSmsSent: no service, queuing message w/ uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_7
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 490
    const-string v3, "GATE"

    const-string v3, "<GATE-M>SMS_MSG_ERROR</GATE-M>"

    invoke-static {v8, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_8
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->registerForServiceStateChanges()V

    .line 494
    invoke-static {p0, v2, v7, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 495
    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/transaction/SmsReceiverService$1;

    invoke-direct {v4, p0}, Lcom/android/mms/transaction/SmsReceiverService$1;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 501
    :cond_9
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-ne v3, v7, :cond_a

    .line 502
    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/transaction/SmsReceiverService$2;

    invoke-direct {v4, p0}, Lcom/android/mms/transaction/SmsReceiverService$2;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 510
    :cond_a
    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_b

    .line 511
    const-string v3, "Mms/SmsReceiverService"

    const-string v3, "handleSmsSent : DSAC Failure "

    invoke-static {v5, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v3, 0x5

    invoke-static {p0, v2, v3, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 513
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 514
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 516
    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/transaction/SmsReceiverService$3;

    invoke-direct {v4, p0}, Lcom/android/mms/transaction/SmsReceiverService$3;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 526
    :cond_b
    invoke-direct {p0, v2, p2, v1}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZ)V

    .line 527
    if-eqz v0, :cond_4

    .line 528
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto/16 :goto_0
.end method

.method private handleSmsServiceCenter(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const-string v8, "pref_key_manage_smsc_address"

    .line 291
    const-string v4, "smsc"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, Smsc:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 299
    :cond_0
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SMS]handleSmsServiceCenter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 303
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 305
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    aget-object v4, v0, v7

    const-string v5, "NotSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09011c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 308
    .local v2, not_set:Ljava/lang/String;
    const-string v4, "pref_key_manage_smsc_address"

    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 312
    .end local v2           #not_set:Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 310
    :cond_1
    const-string v4, "pref_key_manage_smsc_address"

    aget-object v4, v0, v7

    invoke-interface {v1, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "msgs"
    .parameter "error"

    .prologue
    .line 632
    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "insertMessage()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/4 v1, 0x0

    aget-object v0, p2, v1

    .line 636
    .local v0, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v1, v2, :cond_0

    .line 637
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)V

    .line 638
    const/4 v1, 0x0

    .line 642
    :goto_0
    return-object v1

    .line 639
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 640
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 642
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private messageFailedToSend(Landroid/net/Uri;IZ)V
    .locals 3
    .parameter "uri"
    .parameter "error"
    .parameter "needToNotify"

    .prologue
    .line 536
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageFailedToSend msg failed uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/4 v0, 0x5

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 539
    if-eqz p3, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 541
    :cond_0
    return-void
.end method

.method private moveOutboxMessagesToQueuedBox()V
    .locals 6

    .prologue
    .line 607
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 609
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "type"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 611
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = 4"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 613
    return-void
.end method

.method private registerForServiceStateChanges()V
    .locals 4

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1075
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V

    .line 1077
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1078
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1079
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1080
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "registerForServiceStateChanges"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    :cond_0
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1084
    return-void
.end method

.method private replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 21
    .parameter "context"
    .parameter "msgs"
    .parameter "error"

    .prologue
    .line 654
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "replaceMessage()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const/4 v3, 0x0

    aget-object v20, p2, v3

    .line 656
    .local v20, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v12

    .line 658
    .local v12, values:Landroid/content/ContentValues;
    const-string v3, "body"

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v3, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 661
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 662
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    .line 663
    .local v18, originatingAddress:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v19

    .line 664
    .local v19, protocolIdentifier:I
    const-string v7, "address = ? AND protocol = ?"

    .line 666
    .local v7, selection:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v18, v8, v3

    const/4 v3, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    .line 670
    .local v8, selectionArgs:[Ljava/lang/String;
    sget-object v5, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 673
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_1

    .line 675
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 676
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 677
    .local v16, messageId:J
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v3

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 679
    .local v11, messageUri:Landroid/net/Uri;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-object v10, v4

    invoke-static/range {v9 .. v14}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    move-object v3, v11

    .line 686
    .end local v11           #messageUri:Landroid/net/Uri;
    .end local v16           #messageId:J
    :goto_0
    return-object v3

    .line 683
    :cond_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 683
    :catchall_0
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private sendPCWLockMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v10, "Mms/SmsReceiverService"

    .line 1100
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 1102
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1104
    if-nez v1, :cond_1

    .line 1105
    const-string v0, "Mms/SmsReceiverService"

    const-string v0, "sendPCWLockMessage : conManager is null"

    invoke-static {v10, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    if-eqz p2, :cond_2

    .line 1110
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1111
    const/16 v7, 0xff

    const/4 v9, 0x2

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move v8, v6

    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V

    .line 1113
    const-string v0, "Mms/SmsReceiverService"

    const-string v0, "sendPCWLockMessage : send SMS complete."

    invoke-static {v10, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method private storeCbMessage(Landroid/content/Context;[Landroid/telephony/gsm/CbMessage;)Landroid/net/Uri;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const-string v6, "body"

    .line 1037
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "storeCbMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    aget-object v0, p2, v5

    .line 1042
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1043
    array-length v2, p2

    .line 1046
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1048
    invoke-virtual {v0}, Landroid/telephony/gsm/CbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1049
    const-string v2, "body"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    :goto_0
    const-string v0, "address"

    const-string v2, "CBmessages"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1064
    const-string v0, "protocol"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1065
    const-string v0, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1067
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1068
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0, v2, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1052
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v5

    .line 1054
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1055
    aget-object v4, p2, v3

    .line 1056
    invoke-virtual {v4}, Landroid/telephony/gsm/CbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1058
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    const-string v2, "body"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 24
    .parameter "context"
    .parameter "msgs"
    .parameter "error"

    .prologue
    .line 690
    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "storeMessage()"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/16 v20, 0x0

    aget-object v17, p2, v20

    .line 693
    .local v17, sms:Landroid/telephony/SmsMessage;
    const/4 v13, 0x0

    .line 697
    .local v13, not_supported_port_message:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    .local v6, body:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v19

    .line 699
    .local v19, values:Landroid/content/ContentValues;
    const-string v20, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    move-object/from16 v0, p2

    array-length v0, v0

    move v14, v0

    .line 703
    .local v14, pduCount:I
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 705
    .local v8, header:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v8, :cond_1

    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 706
    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v15, v0

    .line 707
    .local v15, port:I
    const/16 v20, 0x1580

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x1581

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x1582

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x1583

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x1585

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x1586

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x1589

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x158a

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x15e1

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x15e3

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x2134

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x2135

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v20, 0x2136

    move v0, v15

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 712
    :cond_0
    const-string v20, "<<"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    const v20, 0x7f090151

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    const-string v20, ">>\n"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    const/4 v13, 0x1

    .line 723
    .end local v15           #port:I
    :cond_1
    if-nez v13, :cond_2

    .line 724
    const/16 v20, 0x1

    move v0, v14

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 730
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v12

    .line 732
    .local v12, msgBody:Ljava/lang/String;
    if-nez v12, :cond_8

    .line 734
    const-string v20, "<<"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    const v20, 0x7f090151

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v20, ">>\n"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .end local v12           #msgBody:Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v20, "body"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v20, "thread_id"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    .line 758
    .local v18, threadId:Ljava/lang/Long;
    const-string v20, "address"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 760
    .local v5, address:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 761
    const/16 v20, 0x1

    move-object v0, v5

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v7

    .line 762
    .local v7, cacheContact:Lcom/android/mms/data/Contact;
    if-eqz v7, :cond_3

    .line 764
    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v20

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 765
    invoke-virtual {v7, v5}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->reload()V

    .line 776
    .end local v7           #cacheContact:Lcom/android/mms/data/Contact;
    :cond_3
    :goto_1
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_5

    :cond_4
    if-eqz v5, :cond_5

    .line 777
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 778
    const-string v20, "thread_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 781
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 785
    .local v16, resolver:Landroid/content/ContentResolver;
    const-string v20, "ril.sms.gcf-mode"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 787
    .local v4, GcfMode:Ljava/lang/String;
    const-string v20, "On"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 788
    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "GCF Mode On"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    sget v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 791
    sget v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    .line 792
    const-string v20, "Mms/SmsReceiverService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MmsConfig.SMS_DB_COUNT : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    sget-object v20, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 797
    .local v10, insertedUri:Landroid/net/Uri;
    sget v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 798
    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 799
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;)V

    .line 814
    .end local v11           #intent:Landroid/content/Intent;
    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {v20 .. v23}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    move-object/from16 v20, v10

    .line 816
    .end local v4           #GcfMode:Ljava/lang/String;
    .end local v5           #address:Ljava/lang/String;
    .end local v10           #insertedUri:Landroid/net/Uri;
    .end local v16           #resolver:Landroid/content/ContentResolver;
    .end local v18           #threadId:Ljava/lang/Long;
    :goto_3
    return-object v20

    .line 718
    .restart local v15       #port:I
    :cond_7
    const/16 v20, 0x0

    goto :goto_3

    .line 738
    .end local v15           #port:I
    .restart local v12       #msgBody:Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 743
    .end local v12           #msgBody:Ljava/lang/String;
    :cond_9
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    if-ge v9, v14, :cond_2

    .line 744
    aget-object v17, p2, v9

    .line 745
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 772
    .end local v9           #i:I
    .restart local v5       #address:Ljava/lang/String;
    .restart local v18       #threadId:Ljava/lang/Long;
    :cond_a
    new-instance v5, Ljava/lang/String;

    .end local v5           #address:Ljava/lang/String;
    const-string v20, "Unknown"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 773
    .restart local v5       #address:Ljava/lang/String;
    const-string v20, "address"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 802
    .restart local v4       #GcfMode:Ljava/lang/String;
    .restart local v16       #resolver:Landroid/content/ContentResolver;
    :cond_b
    const/4 v10, 0x0

    .restart local v10       #insertedUri:Landroid/net/Uri;
    goto :goto_2

    .line 806
    .end local v10           #insertedUri:Landroid/net/Uri;
    :cond_c
    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "GCF Mode Off"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    sget-object v20, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .restart local v10       #insertedUri:Landroid/net/Uri;
    goto :goto_2
.end method

.method private unRegisterForServiceStateChanges()V
    .locals 2

    .prologue
    .line 1087
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "unRegisterForServiceStateChanges"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1092
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :goto_0
    return-void

    .line 1093
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateGroupType(Landroid/net/Uri;I)Z
    .locals 21
    .parameter "uri"
    .parameter "resultCode"

    .prologue
    .line 394
    const/4 v6, 0x6

    move/from16 v0, p2

    move v1, v6

    if-ne v0, v1, :cond_1

    .line 395
    const/4 v6, 0x1

    .line 447
    :cond_0
    :goto_0
    return v6

    .line 397
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 398
    .local v5, context:Landroid/content/Context;
    if-nez v5, :cond_2

    .line 399
    const/4 v6, 0x1

    goto :goto_0

    .line 401
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    .line 402
    .local v17, msgId:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 403
    const/4 v6, 0x1

    goto :goto_0

    .line 405
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "group_id=(SELECT group_id FROM sms WHERE _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") AND _id!="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 407
    .local v9, selection:Ljava/lang/String;
    const/4 v13, 0x0

    .line 409
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService;->GROUP_SMS_PROJECTION:[Ljava/lang/String;

    move-object v8, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 412
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_5

    .line 413
    :cond_4
    const/4 v6, 0x1

    .line 443
    if-eqz v13, :cond_0

    .line 444
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 415
    :cond_5
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 416
    const/4 v12, 0x0

    .line 417
    .local v12, count:I
    const/16 v16, 0x0

    .line 418
    .local v16, isFailed:Z
    const/4 v6, 0x1

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 420
    .local v14, group_id:J
    :cond_6
    const/4 v6, 0x0

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 421
    .local v19, type:I
    packed-switch v19, :pswitch_data_0

    .line 428
    :goto_1
    :pswitch_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 430
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-ge v12, v6, :cond_7

    .line 431
    const/4 v6, 0x0

    .line 443
    if-eqz v13, :cond_0

    .line 444
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 423
    :pswitch_1
    const/16 v16, 0x1

    .line 425
    :pswitch_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 433
    :cond_7
    const/16 v18, 0x5

    .line 434
    .local v18, newType:I
    if-nez v16, :cond_8

    const/4 v6, -0x1

    move/from16 v0, p2

    move v1, v6

    if-ne v0, v1, :cond_8

    .line 435
    const/16 v18, 0x2

    .line 437
    :cond_8
    :try_start_2
    new-instance v20, Landroid/content/ContentValues;

    const/4 v6, 0x1

    move-object/from16 v0, v20

    move v1, v6

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 438
    .local v20, values:Landroid/content/ContentValues;
    const-string v6, "group_type"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v20

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    .end local v9           #selection:Ljava/lang/String;
    .end local v12           #count:I
    .end local v14           #group_id:J
    .end local v16           #isFailed:Z
    .end local v18           #newType:I
    .end local v19           #type:I
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_9
    if-eqz v13, :cond_a

    .line 444
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 443
    :catchall_0
    move-exception v6

    if-eqz v13, :cond_b

    .line 444
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v6

    .line 421
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Mms/SmsReceiverService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 161
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 163
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 164
    new-instance v1, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    .line 165
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 196
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x0

    .line 175
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    if-eqz p1, :cond_1

    const-string v2, "result"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    .line 182
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 183
    .local v1, msg:Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 184
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    const/4 v2, 0x2

    return v2

    .end local v1           #msg:Landroid/os/Message;
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 178
    goto :goto_0
.end method

.method public declared-synchronized sendFirstQueuedMessage()V
    .locals 21

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "sendFirstQueuedMessage()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/16 v19, 0x1

    .line 335
    .local v19, success:Z
    const-string v4, "content://sms/queued"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 336
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 337
    .local v5, resolver:Landroid/content/ContentResolver;
    sget-object v7, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "date ASC"

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v15

    .line 341
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    .line 343
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 344
    const/4 v4, 0x3

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 345
    .local v10, msgText:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 346
    .local v9, address:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 347
    .local v20, threadId:I
    const/4 v4, 0x4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 349
    .local v18, status:I
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 350
    .local v17, msgId:I
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide v11, v0

    invoke-static {v4, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 352
    .local v14, msgUri:Landroid/net/Uri;
    new-instance v7, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide v11, v0

    const/16 v4, 0x20

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_4

    const/4 v4, 0x1

    move v13, v4

    :goto_0
    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v14}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;)V

    .line 355
    .local v7, sender:Lcom/android/mms/transaction/SmsMessageSender;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 356
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "sendFirstQueuedMessage..."

    .end local v5           #resolver:Landroid/content/ContentResolver;
    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendFirstQueuedMessage "

    .end local v6           #uri:Landroid/net/Uri;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", threadId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", body: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    :cond_0
    const-wide/16 v11, -0x1

    :try_start_2
    invoke-virtual {v7, v11, v12}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z

    .line 362
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 373
    .end local v7           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #msgText:Ljava/lang/String;
    .end local v14           #msgUri:Landroid/net/Uri;
    .end local v17           #msgId:I
    .end local v18           #status:I
    .end local v20           #threadId:I
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 376
    :cond_2
    if-eqz v19, :cond_3

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 381
    :cond_3
    monitor-exit p0

    return-void

    .line 352
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #msgText:Ljava/lang/String;
    .restart local v14       #msgUri:Landroid/net/Uri;
    .restart local v17       #msgId:I
    .restart local v18       #status:I
    .restart local v20       #threadId:I
    :cond_4
    const/4 v4, 0x0

    move v13, v4

    goto :goto_0

    .line 363
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v6           #uri:Landroid/net/Uri;
    .restart local v7       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :catch_0
    move-exception v4

    move-object/from16 v16, v4

    .line 364
    .local v16, e:Lcom/google/android/mms/MmsException;
    :try_start_4
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendFirstQueuedMessage: failed to send message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 367
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 368
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v4

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 369
    const/16 v19, 0x0

    goto :goto_1

    .line 373
    .end local v7           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #msgText:Ljava/lang/String;
    .end local v14           #msgUri:Landroid/net/Uri;
    .end local v16           #e:Lcom/google/android/mms/MmsException;
    .end local v17           #msgId:I
    .end local v18           #status:I
    .end local v20           #threadId:I
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 331
    .end local v15           #c:Landroid/database/Cursor;
    .end local v19           #success:Z
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4
.end method

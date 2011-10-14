.class public Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;
.super Landroid/os/Handler;
.source "AreaMailService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;,
        Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;,
        Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;
    }
.end annotation


# static fields
.field private static final AREAMAIL_DISABLED:I = 0x0

.field private static final AREAMAIL_ENABLED:I = 0x1

.field private static final DOCOMO_SIM:Ljava/lang/String; = "44010"

.field private static final EMULATOR_SIM:Ljava/lang/String; = "310260"

.field private static final EVENT_AREAMAIL_DISABLED_RESPONSE:I = 0x1

.field private static final EVENT_AREAMAIL_ENABLED_RESPONSE:I = 0x0

.field private static final EVENT_AREAMAIL_REGISTER_MESSAGE_RESPONSE:I = 0x2

.field private static final EVENT_AREAMAIL_RESEND_RESPONSE:I = 0x5

.field private static final EVENT_AREAMAIL_UNREGISTER_MESSAGE_RESPONSE:I = 0x3

.field private static final EVENT_ETWS_RESEND_RESPONSE:I = 0x4

.field private static final EVENT_RADIO_AVAILABLE:I = 0x6

.field private static final LIMIT_ELAPSED_TIME:J = 0x1a2cL

.field private static final LOG_TAG:Ljava/lang/String; = "areamail.service"

.field private static final SMS_CB_CODE_SCHEME_MAX:I = 0xff

.field private static final SMS_CB_CODE_SCHEME_MIN:I = 0x0

.field private static final SMS_CB_CODE_SCHEME_NUMBER:I = 0x1

.field private static final TEST_SIM:Ljava/lang/String; = "00101"


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mEnforceRingMode:Z

.field private final mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationControl:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

.field private mOldMessageId:I

.field private mOldSerialNumber:I

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mRingTime:I

.field private mRingerMode:I

.field private mSettingReciver:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 6
    .parameter "phone"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 50
    iput-boolean v3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    .line 103
    iput-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 106
    iput-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mNotificationControl:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    .line 109
    iput-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;

    .line 112
    iput v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingTime:I

    .line 115
    const/4 v0, 0x2

    iput v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingerMode:I

    .line 118
    iput-boolean v3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mEnforceRingMode:Z

    .line 121
    iput-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mSettingReciver:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;

    .line 124
    iput v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mOldMessageId:I

    .line 127
    iput v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mOldSerialNumber:I

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    .line 162
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 163
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;

    .line 164
    new-instance v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mNotificationControl:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    .line 165
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->initialize()V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->initialize()V

    return-void
.end method

.method static synthetic access$200(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingTime:I

    return p1
.end method

.method static synthetic access$300(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mEnforceRingMode:Z

    return v0
.end method

.method static synthetic access$302(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mEnforceRingMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$402(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingerMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->resendAreaMailMessage(Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;)V

    return-void
.end method

.method private checkElapsedTime(J)Z
    .registers 7
    .parameter "receiveTime"

    .prologue
    .line 796
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x1a2c

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 797
    const/4 v0, 0x0

    .line 799
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private checkSameMessage(II)Z
    .registers 5
    .parameter "messageId"
    .parameter "serialNumber"

    .prologue
    .line 595
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mOldSerialNumber:I

    if-ne v0, p2, :cond_21

    .line 596
    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mOldMessageId:I

    if-eq v0, p1, :cond_1f

    const v0, 0xa000

    if-ne p1, v0, :cond_21

    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mOldMessageId:I

    const/16 v1, 0x1100

    if-eq v0, v1, :cond_1f

    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mOldMessageId:I

    const/16 v1, 0x1101

    if-eq v0, v1, :cond_1f

    iget v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mOldMessageId:I

    const/16 v1, 0x1102

    if-ne v0, v1, :cond_21

    .line 601
    :cond_1f
    const/4 v0, 0x1

    .line 604
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method private doEnabled(Z)V
    .registers 10
    .parameter "enabled"

    .prologue
    .line 613
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v2, messageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;>;"
    new-instance v5, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;

    const v6, 0xa000

    const v7, 0xa3ff

    invoke-direct {v5, p0, v6, v7}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;-><init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v5, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;

    const/16 v6, 0x1100

    const/16 v7, 0x1102

    invoke-direct {v5, p0, v6, v7}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;-><init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v5, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->getReceiveEntryList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 622
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;>;"
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 623
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;

    .line 624
    .local v0, info:Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;
    new-instance v3, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;

    iget v5, v0, Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;->mMessageId:I

    iget v6, v0, Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;->mMessageId:I

    invoke-direct {v3, p0, v5, v6}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;-><init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;II)V

    .line 625
    .local v3, range:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 628
    .end local v0           #info:Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;
    .end local v3           #range:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;
    :cond_42
    if-eqz p1, :cond_4d

    .line 629
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 630
    .local v4, response:Landroid/os/Message;
    invoke-direct {p0, v2, v4}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->registerMessageIdRange(Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 635
    :goto_4c
    return-void

    .line 632
    .end local v4           #response:Landroid/os/Message;
    :cond_4d
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 633
    .restart local v4       #response:Landroid/os/Message;
    invoke-direct {p0, v2, v4}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->unregisterMessageIdRange(Ljava/util/ArrayList;Landroid/os/Message;)V

    goto :goto_4c
.end method

.method private handleDisabledResponse(Landroid/os/AsyncResult;)V
    .registers 12
    .parameter "ar"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "areamail.service"

    .line 683
    iget-boolean v5, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v5, :cond_2b

    const-string v5, "areamail.service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AreaMailService.handleDisabledResponse:result["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_55

    move v6, v8

    :goto_1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_2b
    iget-object v5, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 686
    :try_start_2e
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_69

    .line 687
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_57

    move v4, v8

    .line 688
    .local v4, result:Z
    :goto_3b
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 689
    .local v3, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_42
    if-ge v1, v3, :cond_69

    .line 690
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_6b

    .line 692
    .local v2, listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    const/16 v6, 0xb

    const/4 v7, 0x0

    :try_start_4f
    invoke-interface {v2, v6, v4, v7}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;->onResult(IZI)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_6b
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_52} :catch_59

    .line 689
    :goto_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .end local v1           #i:I
    .end local v2           #listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    .end local v3           #num:I
    .end local v4           #result:Z
    :cond_55
    move v6, v7

    .line 683
    goto :goto_1a

    :cond_57
    move v4, v7

    .line 687
    goto :goto_3b

    .line 693
    .restart local v1       #i:I
    .restart local v2       #listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    .restart local v3       #num:I
    .restart local v4       #result:Z
    :catch_59
    move-exception v0

    .line 694
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5a
    const-string v6, "areamail.service"

    const-string v7, "RemoteException in handleDisabledResponse()"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 697
    add-int/lit8 v3, v3, -0x1

    goto :goto_52

    .line 701
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    .end local v3           #num:I
    .end local v4           #result:Z
    :cond_69
    monitor-exit v5

    .line 702
    return-void

    .line 701
    :catchall_6b
    move-exception v6

    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_5a .. :try_end_6d} :catchall_6b

    throw v6
.end method

.method private handleEnabledResponse(Landroid/os/AsyncResult;)V
    .registers 13
    .parameter "ar"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "areamail.service"

    .line 643
    iget-boolean v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v6, :cond_2b

    const-string v6, "areamail.service"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AreaMailService.handleEnabledResponse:result["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_55

    move v7, v10

    :goto_1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_2b
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 646
    :try_start_2e
    iget-object v7, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6b

    .line 647
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_57

    move v5, v10

    .line 648
    .local v5, result:Z
    :goto_3b
    iget-object v7, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 649
    .local v4, num:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_42
    if-ge v2, v4, :cond_69

    .line 650
    iget-object v7, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_93

    .line 652
    .local v3, listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    const/16 v7, 0xa

    const/4 v8, 0x0

    :try_start_4f
    invoke-interface {v3, v7, v5, v8}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;->onResult(IZI)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_93
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_52} :catch_59

    .line 649
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .end local v2           #i:I
    .end local v3           #listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    .end local v4           #num:I
    .end local v5           #result:Z
    :cond_55
    move v7, v9

    .line 643
    goto :goto_1a

    :cond_57
    move v5, v9

    .line 647
    goto :goto_3b

    .line 653
    .restart local v2       #i:I
    .restart local v3       #listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    .restart local v4       #num:I
    .restart local v5       #result:Z
    :catch_59
    move-exception v0

    .line 654
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5a
    const-string v7, "areamail.service"

    const-string v8, "RemoteException in handleEnabledResponse()"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v7, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 657
    add-int/lit8 v4, v4, -0x1

    goto :goto_52

    .line 660
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    :cond_69
    monitor-exit v6

    .line 675
    .end local v2           #i:I
    .end local v4           #num:I
    .end local v5           #result:Z
    :cond_6a
    :goto_6a
    return-void

    .line 662
    :cond_6b
    monitor-exit v6
    :try_end_6c
    .catchall {:try_start_5a .. :try_end_6c} :catchall_93

    .line 663
    iget-boolean v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v6, :cond_77

    const-string v6, "areamail.service"

    const-string v6, "AreaMailService.handleEnabledResponse:wait for radio to be available"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_77
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6a

    .line 668
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 669
    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_96

    .line 670
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_6a

    .line 662
    .end local v1           #err:Lcom/android/internal/telephony/CommandException$Error;
    :catchall_93
    move-exception v7

    :try_start_94
    monitor-exit v6
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v7

    .line 672
    .restart local v1       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_96
    const-string v6, "areamail.service"

    const-string v6, "It fails in AreaMail enabled "

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v8, v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6a
.end method

.method private handleRadioAvailable(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter "ar"

    .prologue
    const-string v1, "areamail.service"

    .line 765
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "areamail.service"

    const-string v0, "AreaMailService.handleRadioAvailable:start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_d
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->doEnabled(Z)V

    .line 767
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 768
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "areamail.service"

    const-string v0, "AreaMailService.handleRadioAvailable:end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_23
    return-void
.end method

.method private handleRegisterMessageResponse(Landroid/os/AsyncResult;I)V
    .registers 13
    .parameter "ar"
    .parameter "messageId"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "areamail.service"

    .line 711
    iget-boolean v5, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v5, :cond_2b

    const-string v5, "areamail.service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AreaMailService.handleRegisterMessageResponse:result["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_54

    move v6, v8

    :goto_1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_2b
    iget-object v5, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 714
    :try_start_2e
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_68

    .line 715
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_56

    move v4, v8

    .line 716
    .local v4, result:Z
    :goto_3b
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 717
    .local v3, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_42
    if-ge v1, v3, :cond_68

    .line 718
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_6a

    .line 720
    .local v2, listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    const/16 v6, 0xc

    :try_start_4e
    invoke-interface {v2, v6, v4, p2}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;->onResult(IZI)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_6a
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_58

    .line 717
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .end local v1           #i:I
    .end local v2           #listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    .end local v3           #num:I
    .end local v4           #result:Z
    :cond_54
    move v6, v7

    .line 711
    goto :goto_1a

    :cond_56
    move v4, v7

    .line 715
    goto :goto_3b

    .line 721
    .restart local v1       #i:I
    .restart local v2       #listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    .restart local v3       #num:I
    .restart local v4       #result:Z
    :catch_58
    move-exception v0

    .line 722
    .local v0, e:Landroid/os/RemoteException;
    :try_start_59
    const-string v6, "areamail.service"

    const-string v7, "RemoteException in handleRegisterMessageResponse()"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 725
    add-int/lit8 v3, v3, -0x1

    goto :goto_51

    .line 729
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    .end local v3           #num:I
    .end local v4           #result:Z
    :cond_68
    monitor-exit v5

    .line 730
    return-void

    .line 729
    :catchall_6a
    move-exception v6

    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_59 .. :try_end_6c} :catchall_6a

    throw v6
.end method

.method private handleUnregisterMessageResponse(Landroid/os/AsyncResult;I)V
    .registers 13
    .parameter "ar"
    .parameter "messageId"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "areamail.service"

    .line 739
    iget-boolean v5, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v5, :cond_2b

    const-string v5, "areamail.service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AreaMailService.handleUnregisterMessageResponse:result["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_54

    move v6, v8

    :goto_1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_2b
    iget-object v5, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 742
    :try_start_2e
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_68

    .line 743
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_56

    move v4, v8

    .line 744
    .local v4, result:Z
    :goto_3b
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 745
    .local v3, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_42
    if-ge v1, v3, :cond_68

    .line 746
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    :try_end_4c
    .catchall {:try_start_2e .. :try_end_4c} :catchall_6a

    .line 748
    .local v2, listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    const/16 v6, 0xd

    :try_start_4e
    invoke-interface {v2, v6, v4, p2}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;->onResult(IZI)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_6a
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_58

    .line 745
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .end local v1           #i:I
    .end local v2           #listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    .end local v3           #num:I
    .end local v4           #result:Z
    :cond_54
    move v6, v7

    .line 739
    goto :goto_1a

    :cond_56
    move v4, v7

    .line 743
    goto :goto_3b

    .line 749
    .restart local v1       #i:I
    .restart local v2       #listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    .restart local v3       #num:I
    .restart local v4       #result:Z
    :catch_58
    move-exception v0

    .line 750
    .local v0, e:Landroid/os/RemoteException;
    :try_start_59
    const-string v6, "areamail.service"

    const-string v7, "RemoteException in handleUnregisterMessageResponse()"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 753
    add-int/lit8 v3, v3, -0x1

    goto :goto_51

    .line 757
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #listener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    .end local v3           #num:I
    .end local v4           #result:Z
    :cond_68
    monitor-exit v5

    .line 758
    return-void

    .line 757
    :catchall_6a
    move-exception v6

    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_59 .. :try_end_6c} :catchall_6a

    throw v6
.end method

.method private initialize()V
    .registers 13

    .prologue
    const/4 v10, 0x1

    const-string v11, "areamail.service"

    .line 493
    iget-boolean v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "areamail.service"

    const-string v6, "AreaMailService.initialize:start"

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_e
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mSettingReciver:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;

    if-nez v6, :cond_48

    .line 497
    new-instance v6, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;

    invoke-direct {v6, p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;-><init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)V

    iput-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mSettingReciver:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;

    .line 501
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 502
    .local v1, areamailSettingFilter:Landroid/content/IntentFilter;
    const-string v6, "com.nttdocomo.android.areamail.RUMBLING_TIME_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    const-string v6, "com.nttdocomo.android.areamail.MANNER_MODE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 504
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mSettingReciver:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;

    const-string v8, "com.nttdocomo.android.permission.areamail.PREFERENCE_CHANGE"

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 507
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 508
    .local v4, genericlIntentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mSettingReciver:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 513
    .end local v1           #areamailSettingFilter:Landroid/content/IntentFilter;
    .end local v4           #genericlIntentFilter:Landroid/content/IntentFilter;
    :cond_48
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->isDocomoSim()Z

    move-result v6

    if-nez v6, :cond_4f

    .line 539
    :cond_4e
    :goto_4e
    return-void

    .line 517
    :cond_4f
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 519
    .local v2, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    iput v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingerMode:I

    .line 522
    const/4 v0, 0x0

    .line 524
    .local v0, areamailCotext:Landroid/content/Context;
    :try_start_60
    iget-object v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;

    const-string v7, "com.nttdocomo.android.areamail"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60 .. :try_end_68} :catch_9b

    move-result-object v0

    .line 529
    :goto_69
    const-string v6, "areamail_preferences"

    invoke-virtual {v0, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 532
    .local v5, pref:Landroid/content/SharedPreferences;
    const-string/jumbo v6, "pref_key_rumbling_time"

    const/16 v7, 0xa

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingTime:I

    .line 533
    const-string/jumbo v6, "pref_key_manner_mode"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mEnforceRingMode:Z

    .line 535
    const-string/jumbo v6, "pref_key_areamail_enabled"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 536
    invoke-direct {p0, v10}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->doEnabled(Z)V

    .line 538
    :cond_8f
    iget-boolean v6, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v6, :cond_4e

    const-string v6, "areamail.service"

    const-string v6, "AreaMailService.initialize:end"

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 525
    .end local v5           #pref:Landroid/content/SharedPreferences;
    :catch_9b
    move-exception v6

    move-object v3, v6

    .line 526
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "areamail.service"

    const-string v6, "Preference of AreaMail is not in System"

    invoke-static {v11, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69
.end method

.method private isDocomoSim()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 577
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, operator:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v1, :cond_2d

    const-string v1, "areamail.service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AreaMailService.isDocomoSim:MCC/MNC =["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_2d
    iget-boolean v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v1, :cond_3b

    const-string v1, "310260"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move v1, v4

    .line 585
    :goto_3a
    return v1

    .line 582
    :cond_3b
    const-string v1, "44010"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string v1, "00101"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    :cond_4b
    move v1, v4

    .line 583
    goto :goto_3a

    .line 585
    :cond_4d
    const/4 v1, 0x0

    goto :goto_3a
.end method

.method private registerMessageIdRange(Ljava/util/ArrayList;Landroid/os/Message;)V
    .registers 9
    .parameter
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, messageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;>;"
    const/4 v5, 0x1

    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 275
    .local v1, p:Landroid/os/Parcel;
    const/16 v4, 0x21d

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;>;"
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 279
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;

    .line 280
    .local v2, range:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;
    iget v4, v2, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;->startId:I

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget v4, v2, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;->endId:I

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 283
    .end local v2           #range:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;
    :cond_2f
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/16 v4, 0xff

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 287
    .local v3, request:[B
    iget-object v4, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeNttNEXTiRilRequestConfig([BLandroid/os/Message;)V

    .line 288
    return-void
.end method

.method private resendAreaMailMessage(Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;)V
    .registers 7
    .parameter "message"

    .prologue
    const-string v4, "areamail.service"

    .line 560
    iget-boolean v3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v3, :cond_d

    const-string v3, "areamail.service"

    const-string v3, "AreaMailService.resendAreaMailMessage:start"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 562
    .local v0, p:Landroid/os/Parcel;
    const/16 v3, 0x21e

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    invoke-virtual {p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->getMessageId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    invoke-virtual {p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->getSerialNumber()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 566
    .local v1, request:[B
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 567
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->invokeNttNEXTiRilRequestConfig([BLandroid/os/Message;)V

    .line 568
    iget-boolean v3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v3, :cond_3f

    const-string v3, "areamail.service"

    const-string v3, "AreaMailService.resendAreaMailMessage:end"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_3f
    return-void
.end method

.method private resendEtws()V
    .registers 6

    .prologue
    const-string v4, "areamail.service"

    .line 545
    iget-boolean v3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v3, :cond_d

    const-string v3, "areamail.service"

    const-string v3, "AreaMailService.resendEtws:start"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 547
    .local v0, p:Landroid/os/Parcel;
    const/16 v3, 0x21f

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    invoke-virtual {v0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 549
    .local v1, request:[B
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 550
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->invokeNttNEXTiRilRequestConfig([BLandroid/os/Message;)V

    .line 551
    iget-boolean v3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v3, :cond_31

    const-string v3, "areamail.service"

    const-string v3, "AreaMailService.resendEtws:end"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_31
    return-void
.end method

.method private unregisterMessageIdRange(Ljava/util/ArrayList;Landroid/os/Message;)V
    .registers 9
    .parameter
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, messageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;>;"
    const/4 v5, 0x0

    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 298
    .local v1, p:Landroid/os/Parcel;
    const/16 v4, 0x21d

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;>;"
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;

    .line 303
    .local v2, range:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;
    iget v4, v2, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;->startId:I

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v4, v2, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;->endId:I

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 306
    .end local v2           #range:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;
    :cond_2f
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    const/16 v4, 0xff

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 310
    .local v3, request:[B
    iget-object v4, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeNttNEXTiRilRequestConfig([BLandroid/os/Message;)V

    .line 311
    return-void
.end method


# virtual methods
.method public disableAreaMailService()V
    .registers 3

    .prologue
    const-string v1, "areamail.service"

    .line 186
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "areamail.service"

    const-string v0, "AreaMailService.disableAreaMailService:start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_d
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->isDocomoSim()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->doEnabled(Z)V

    .line 193
    :goto_17
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "areamail.service"

    const-string v0, "AreaMailService.disableAreaMailService:end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_22
    return-void

    .line 190
    :cond_23
    const-string v0, "areamail.service"

    const-string v0, "AreaMailService.enableAreaMailService:fails disable areamail service because SIM is unsupported"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public dispose()V
    .registers 3

    .prologue
    .line 775
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mNotificationControl:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    invoke-virtual {v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->stopNotification()V

    .line 776
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mSettingReciver:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mSettingReciver:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailSettingReceiver;

    .line 778
    return-void
.end method

.method public enableAreaMailService()V
    .registers 3

    .prologue
    const-string v1, "areamail.service"

    .line 172
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "areamail.service"

    const-string v0, "AreaMailService.enableAreaMailService:start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_d
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->isDocomoSim()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 174
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->doEnabled(Z)V

    .line 179
    :goto_17
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "areamail.service"

    const-string v0, "AreaMailService.enableAreaMailService:end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_22
    return-void

    .line 176
    :cond_23
    const-string v0, "areamail.service"

    const-string v0, "AreaMailService.enableAreaMailService:fails enable areamail service because SIM is unsupported"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public getNotificationControl()Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;
    .registers 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mNotificationControl:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    return-object v0
.end method

.method public handleAreaMailMessage(Landroid/os/AsyncResult;)V
    .registers 23
    .parameter "ar"

    .prologue
    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 437
    .local v11, receiveTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_27

    const-string v17, "areamail.service"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AreaMailService.handleAreaMailMessage:start time="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v10, v0

    .line 442
    .local v10, pdu:[B
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_96

    .line 443
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3d
    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_96

    .line 444
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v17, "AreaMail pdu data: "

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 445
    .local v14, sb:Ljava/lang/StringBuilder;
    move v8, v7

    .local v8, j:I
    :goto_51
    add-int/lit8 v17, v7, 0x8

    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_8a

    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    move v0, v8

    move/from16 v1, v17

    if-ge v0, v1, :cond_8a

    .line 446
    aget-byte v17, v10, v8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move v6, v0

    .line 447
    .local v6, b:I
    const/16 v17, 0x10

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_77

    .line 448
    const/16 v17, 0x30

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    :cond_77
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    .line 452
    .end local v6           #b:I
    :cond_8a
    const-string v17, "areamail.service"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    add-int/lit8 v7, v7, 0x8

    goto :goto_3d

    .line 455
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v14           #sb:Ljava/lang/StringBuilder;
    :cond_96
    invoke-static {v10}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->createMessage([B)Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;

    move-result-object v5

    .line 457
    .local v5, areaMailMessage:Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;
    if-nez v5, :cond_a4

    .line 458
    const-string v17, "areamail.service"

    const-string v18, "It failed in the parse of PDU header"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_a3
    :goto_a3
    return-void

    .line 462
    :cond_a4
    invoke-virtual {v5}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->getMessageId()I

    move-result v9

    .line 463
    .local v9, messageId:I
    invoke-virtual {v5}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->getSerialNumber()I

    move-result v15

    .line 465
    .local v15, serialNumber:I
    new-instance v16, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v5

    move-wide v3, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;-><init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;J)V

    .line 466
    .local v16, woker:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;
    invoke-virtual/range {v16 .. v16}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->start()V

    .line 468
    move-object/from16 v0, p0

    move v1, v9

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->checkSameMessage(II)Z

    move-result v17

    if-nez v17, :cond_12a

    .line 469
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mOldMessageId:I

    .line 470
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mOldSerialNumber:I

    .line 471
    const/4 v13, 0x2

    .line 472
    .local v13, ringType:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingerMode:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_eb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mEnforceRingMode:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f5

    .line 473
    :cond_eb
    invoke-virtual {v5}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->getBuzzerFlag()Z

    move-result v17

    if-eqz v17, :cond_150

    const/16 v17, 0x0

    move/from16 v13, v17

    .line 477
    :cond_f5
    :goto_f5
    move-object/from16 v0, p0

    move-wide v1, v11

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->checkElapsedTime(J)Z

    move-result v17

    if-eqz v17, :cond_155

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v17

    sget-object v18, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_155

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mNotificationControl:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingTime:I

    move/from16 v18, v0

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move-object/from16 v0, v17

    move v1, v13

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->startNotificationByTime(II)V

    .line 485
    .end local v13           #ringType:I
    :cond_12a
    :goto_12a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a3

    const-string v17, "areamail.service"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AreaMailService.handleAreaMailMessage:end time="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a3

    .line 473
    .restart local v13       #ringType:I
    :cond_150
    const/16 v17, 0x1

    move/from16 v13, v17

    goto :goto_f5

    .line 480
    :cond_155
    invoke-virtual/range {v16 .. v16}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->cancel()V

    .line 481
    const-string v17, "areamail.service"

    const-string v18, "AreaMailService.handleAreaMailMessage:Cancel notification because time hung"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a
.end method

.method public handleEtwsNotification(Landroid/os/AsyncResult;)V
    .registers 19
    .parameter "ar"

    .prologue
    .line 349
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    move v13, v0

    if-eqz v13, :cond_23

    const-string v13, "areamail.service"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AreaMailService.handleEtwsNotification:start time="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v8, v0

    .line 353
    .local v8, pdu:[B
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    move v13, v0

    if-eqz v13, :cond_73

    .line 354
    const/4 v4, 0x0

    .local v4, i:I
    :goto_38
    array-length v13, v8

    if-ge v4, v13, :cond_73

    .line 355
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ETWS pdu data: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .local v12, sb:Ljava/lang/StringBuilder;
    move v5, v4

    .local v5, j:I
    :goto_43
    add-int/lit8 v13, v4, 0x8

    if-ge v5, v13, :cond_67

    array-length v13, v8

    if-ge v5, v13, :cond_67

    .line 357
    aget-byte v13, v8, v5

    and-int/lit16 v2, v13, 0xff

    .line 358
    .local v2, b:I
    const/16 v13, 0x10

    if-ge v2, v13, :cond_57

    .line 359
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :cond_57
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 363
    .end local v2           #b:I
    :cond_67
    const-string v13, "areamail.service"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    add-int/lit8 v4, v4, 0x8

    goto :goto_38

    .line 366
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v12           #sb:Ljava/lang/StringBuilder;
    :cond_73
    invoke-static {v8}, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->createMessage([B)Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;

    move-result-object v3

    .line 368
    .local v3, etwsNotification:Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;
    if-nez v3, :cond_7d

    .line 369
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->resendEtws()V

    .line 428
    :cond_7c
    :goto_7c
    return-void

    .line 373
    :cond_7d
    invoke-virtual {v3}, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->getMessageId()I

    move-result v6

    .line 375
    .local v6, messageId:I
    const/16 v13, 0x1103

    if-ne v6, v13, :cond_ce

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 377
    .local v7, operator:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    move v13, v0

    if-eqz v13, :cond_b7

    const-string v13, "areamail.service"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[handleEtwsNotification]:MCC/MNC =["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_b7
    const-string v13, "00101"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ce

    .line 380
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    move v13, v0

    if-eqz v13, :cond_7c

    const-string v13, "areamail.service"

    const-string v14, "[handleEtwsNotification]AreaMailService is reject!!! (msgID is 0x1103)"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 385
    .end local v7           #operator:Ljava/lang/String;
    :cond_ce
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mOldMessageId:I

    .line 386
    invoke-virtual {v3}, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->getSerialNumber()I

    move-result v13

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mOldSerialNumber:I

    .line 388
    const/4 v11, 0x2

    .line 389
    .local v11, ringType:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingerMode:I

    move v13, v0

    const/4 v14, 0x2

    if-eq v13, v14, :cond_ed

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mEnforceRingMode:Z

    move v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f5

    .line 390
    :cond_ed
    invoke-virtual {v3}, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->getBuzzerFlag()Z

    move-result v13

    if-eqz v13, :cond_174

    const/4 v13, 0x0

    move v11, v13

    .line 395
    :cond_f5
    :goto_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v13, v14, :cond_111

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mNotificationControl:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mRingTime:I

    move v14, v0

    mul-int/lit16 v14, v14, 0x3e8

    invoke-virtual {v13, v11, v14}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->startNotificationByTime(II)V

    .line 399
    :cond_111
    invoke-virtual {v3}, Lcom/nttdocomo/android/areamail/service/internal/EtwsNotification;->getPopupFlag()Z

    move-result v13

    if-eqz v13, :cond_14f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v13, v14, :cond_14f

    .line 400
    new-instance v9, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v9, popupIntent:Landroid/content/Intent;
    const-string v13, "com.nttdocomo.android.areamail"

    const-string v14, "com.nttdocomo.android.areamail.AreaMailScreenConfirmActivity"

    invoke-virtual {v9, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const/high16 v13, 0x1000

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 405
    const/4 v10, 0x0

    .line 406
    .local v10, popupType:I
    packed-switch v6, :pswitch_data_180

    .line 420
    const-string v13, "areamail.service"

    const-string v14, "Received illegal message"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :goto_142
    const-string v13, "areamail_startflag"

    invoke-virtual {v9, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 426
    .end local v9           #popupIntent:Landroid/content/Intent;
    .end local v10           #popupType:I
    :cond_14f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    move v13, v0

    if-eqz v13, :cond_7c

    const-string v13, "areamail.service"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AreaMailService.handleEtwsNotification:end time="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7c

    .line 390
    :cond_174
    const/4 v13, 0x1

    move v11, v13

    goto/16 :goto_f5

    .line 408
    .restart local v9       #popupIntent:Landroid/content/Intent;
    .restart local v10       #popupType:I
    :pswitch_178
    const/4 v10, 0x1

    .line 409
    goto :goto_142

    .line 411
    :pswitch_17a
    const/4 v10, 0x2

    .line 412
    goto :goto_142

    .line 414
    :pswitch_17c
    const/4 v10, 0x3

    .line 415
    goto :goto_142

    .line 417
    :pswitch_17e
    const/4 v10, 0x6

    .line 418
    goto :goto_142

    .line 406
    :pswitch_data_180
    .packed-switch 0x1100
        :pswitch_178
        :pswitch_17a
        :pswitch_17c
        :pswitch_17e
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const-string v3, "areamail.service"

    .line 317
    const-string v1, "areamail.service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AreaMailService.handleMessage:msg id["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 319
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_64

    .line 341
    :goto_2b
    return-void

    .line 321
    :pswitch_2c
    invoke-direct {p0, v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->handleEnabledResponse(Landroid/os/AsyncResult;)V

    goto :goto_2b

    .line 324
    :pswitch_30
    invoke-direct {p0, v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->handleDisabledResponse(Landroid/os/AsyncResult;)V

    goto :goto_2b

    .line 327
    :pswitch_34
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->handleRegisterMessageResponse(Landroid/os/AsyncResult;I)V

    goto :goto_2b

    .line 330
    :pswitch_3a
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->handleUnregisterMessageResponse(Landroid/os/AsyncResult;I)V

    goto :goto_2b

    .line 334
    :pswitch_40
    const-string v1, "areamail.service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received the response of resending request. ressult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5e

    const/4 v2, 0x1

    :goto_52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_5e
    const/4 v2, 0x0

    goto :goto_52

    .line 337
    :pswitch_60
    invoke-direct {p0, v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->handleRadioAvailable(Landroid/os/AsyncResult;)V

    goto :goto_2b

    .line 319
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_3a
        :pswitch_40
        :pswitch_40
        :pswitch_60
    .end packed-switch
.end method

.method public registerListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    const-string v2, "areamail.service"

    .line 242
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "areamail.service"

    const-string v0, "AreaMailService.registerListener:start"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_d
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 244
    :try_start_10
    iget-object v1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_22

    .line 246
    iget-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v0, :cond_21

    const-string v0, "areamail.service"

    const-string v0, "AreaMailService.registerListener:end"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_21
    return-void

    .line 245
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public registerMessageId(I)V
    .registers 7
    .parameter "messageId"

    .prologue
    const-string v4, "areamail.service"

    .line 202
    iget-boolean v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v2, :cond_24

    const-string v2, "areamail.service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AreaMailService.registerMessageId:start messageId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_24
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->isDocomoSim()Z

    move-result v2

    if-nez v2, :cond_32

    .line 205
    const-string v2, "areamail.service"

    const-string v2, "AreaMailService.enableAreaMailService:fails register MessageId of areamail service because SIM is unsupported"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_31
    :goto_31
    return-void

    .line 209
    :cond_32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, messageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;>;"
    new-instance v2, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;

    invoke-direct {v2, p0, p1, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;-><init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 212
    .local v1, response:Landroid/os/Message;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->registerMessageIdRange(Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 213
    iget-boolean v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v2, :cond_31

    const-string v2, "areamail.service"

    const-string v2, "AreaMailService.registerMessageId:end"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public unregisterListener(Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;)V
    .registers 8
    .parameter "listener"

    .prologue
    const-string v5, "areamail.service"

    .line 255
    iget-boolean v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string v2, "areamail.service"

    const-string v2, "AreaMailService.registerListener:start"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_d
    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 257
    :try_start_10
    iget-object v3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;

    .line 258
    .local v1, l:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    invoke-interface {v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_16

    .line 259
    iget-object v3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 260
    monitor-exit v2

    .line 265
    .end local v1           #l:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailSettingListener;
    :cond_38
    :goto_38
    return-void

    .line 263
    :cond_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_46

    .line 264
    iget-boolean v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v2, :cond_38

    const-string v2, "areamail.service"

    const-string v2, "AreaMailService.registerListener:end"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 263
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_46
    move-exception v3

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v3
.end method

.method public unregisterMessageId(I)V
    .registers 7
    .parameter "messageId"

    .prologue
    const-string v4, "areamail.service"

    .line 222
    iget-boolean v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v2, :cond_24

    const-string v2, "areamail.service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AreaMailService.unregisterMessageId:start messageId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_24
    invoke-direct {p0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->isDocomoSim()Z

    move-result v2

    if-nez v2, :cond_32

    .line 225
    const-string v2, "areamail.service"

    const-string v2, "AreaMailService.enableAreaMailService:fails remove MessageId of areamail service because SIM is unsupported"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_31
    :goto_31
    return-void

    .line 229
    :cond_32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, messageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;>;"
    new-instance v2, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;

    invoke-direct {v2, p0, p1, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;-><init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 232
    .local v1, response:Landroid/os/Message;
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->unregisterMessageIdRange(Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 233
    iget-boolean v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->DEBUG:Z

    if-eqz v2, :cond_31

    const-string v2, "areamail.service"

    const-string v2, "AreaMailService.unregisterMessageId:end"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

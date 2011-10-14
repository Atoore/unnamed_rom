.class public Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "SimSmsInterfaceManager.java"


# static fields
.field static final DBG:Z = true

.field private static final EVENT_DELETE_DONE:I = 0x4

.field private static final EVENT_LOAD_DONE:I = 0x1

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x3

.field private static final EVENT_UPDATE_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static mGetCount:Z


# instance fields
.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mGetCount:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 4
    .parameter "phone"
    .parameter "dispatcher"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 131
    iput-object p2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return p1
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mGetCount:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    sput-boolean p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mGetCount:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/android/internal/telephony/PhoneBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/ArrayList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->handleSmses(Ljava/util/ArrayList;)V

    return-void
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .registers 18
    .parameter "messages"

    .prologue
    const/4 v15, 0x3

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 331
    const-string v2, "SIMRecords - handleSmses"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 335
    .local v8, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_10
    if-ge v9, v8, :cond_7d

    .line 336
    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v5, v0

    .line 338
    .local v5, ba:[B
    aget-byte v2, v5, v13

    if-eqz v2, :cond_48

    .line 339
    const-string v2, "ENF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v5, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_48
    aget-byte v2, v5, v13

    if-ne v2, v15, :cond_7a

    .line 345
    array-length v10, v5

    .line 349
    .local v10, n:I
    sub-int v2, v10, v14

    new-array v11, v2, [B

    .line 350
    .local v11, pdu:[B
    sub-int v2, v10, v14

    invoke-static {v5, v14, v11, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    aput-byte v14, v5, v13

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    const/16 v3, 0x6f3c

    add-int/lit8 v4, v9, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    add-int/lit8 v12, v9, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v15, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 335
    .end local v10           #n:I
    .end local v11           #pdu:[B
    :cond_7a
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 362
    .end local v5           #ba:[B
    :cond_7d
    return-void
.end method

.method private setByte(SLjava/io/ByteArrayOutputStream;)V
    .registers 5
    .parameter "a"
    .parameter "out"

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, c:I
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 421
    shr-int/lit8 v0, p1, 0x8

    .line 422
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 423
    return-void
.end method


# virtual methods
.method public copyMessageToIccEf(I[B[B)Z
    .registers 10
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSMSavailable()Z

    move-result v2

    if-nez v2, :cond_10

    .line 234
    const-string v2, "copyMessageToIccEf : SMS Not Avaliable"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    move v2, v3

    .line 256
    :goto_f
    return v2

    .line 239
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "pdu=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), smsm=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 242
    const-string v2, "Copying message to SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 244
    const/4 v3, 0x0

    :try_start_58
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 245
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 247
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_81

    .line 251
    :try_start_70
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_81
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_75} :catch_79

    .line 255
    :goto_75
    :try_start_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_81

    .line 256
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    goto :goto_f

    .line 252
    :catch_79
    move-exception v3

    move-object v0, v3

    .line 253
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_7b
    const-string v3, "interrupted while trying to update by index"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_75

    .line 255
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_81
    move-exception v3

    monitor-exit v2
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_81

    throw v3
.end method

.method public dispose()V
    .registers 1

    .prologue
    .line 135
    return-void
.end method

.method protected finalize()V
    .registers 4

    .prologue
    const-string v2, "GSM"

    .line 139
    :try_start_2
    invoke-super {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->finalize()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_d

    .line 143
    :goto_5
    const-string v1, "GSM"

    const-string v1, "SimSmsInterfaceManager finalized"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 140
    :catch_d
    move-exception v0

    .line 141
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "GSM"

    const-string v1, "Error while finalizing:"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public getAllMessagesFromIccEf()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    const-string v3, "getAllMessagesFromEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 269
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from SIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 275
    :try_start_15
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 276
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_3a

    .line 280
    :try_start_29
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_3a
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2e} :catch_32

    .line 284
    :goto_2e
    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_3a

    .line 285
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v3

    .line 281
    :catch_32
    move-exception v3

    move-object v1, v3

    .line 282
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_34
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_2e

    .line 284
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method public getCbSettings()[B
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, cbConfig:Landroid/telephony/gsm/CbConfig;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SMSDispatcher;->getCbSettings()Landroid/telephony/gsm/CbConfig;

    move-result-object v0

    .line 386
    const-string v3, "[CB] In getCbSettings of simsmsinterfacemanager"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] bCBEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectedId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdMaxCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 392
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4a
    iget-object v3, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v3, v3

    if-ge v1, v3, :cond_6c

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] msgIDs =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 397
    :cond_6c
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 399
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    iget-boolean v3, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    if-ne v3, v5, :cond_99

    .line 400
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 404
    :goto_78
    iget-char v3, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 405
    iget-char v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 406
    iget v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 408
    const/4 v1, 0x0

    :goto_8b
    iget v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v1, v3, :cond_9e

    .line 410
    iget-object v3, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v3, v3, v1

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->setByte(SLjava/io/ByteArrayOutputStream;)V

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 402
    :cond_99
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_78

    .line 413
    :cond_9e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public getMessagesFromIccEf(I)[B
    .registers 3
    .parameter "index"

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSMSAvailable()Z
    .registers 3

    .prologue
    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSMSAvailable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSMSavailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSMSavailable()Z

    move-result v0

    return v0
.end method

.method public getSMSPAvailable()Z
    .registers 3

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSMSPAvailable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSMSPavailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSMSPavailable()Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 514
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimSmsInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void
.end method

.method public setCbConfig(BBI[B[I)V
    .registers 14
    .parameter "cbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"
    .parameter "langInt"

    .prologue
    .line 438
    const-string v0, "[CB] In setCbConfig of SimSmsInterfaceManager.java"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 446
    array-length v0, p4

    div-int/lit8 v0, v0, 0x2

    new-array v4, v0, [S

    .line 449
    .local v4, msgIDs:[S
    if-nez p1, :cond_28

    .line 450
    const/4 v1, 0x0

    .line 455
    .local v1, bCBEnabled:Z
    :goto_d
    int-to-char v2, p2

    .line 459
    .local v2, selectedId:C
    const/4 v6, 0x0

    .local v6, i:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_10
    array-length v0, p4

    if-ge v6, v0, :cond_2a

    .line 460
    aget-byte v0, p4, v6

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v6, 0x1

    aget-byte v3, p4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    int-to-short v0, v0

    aput-short v0, v4, v7

    .line 459
    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 452
    .end local v1           #bCBEnabled:Z
    .end local v2           #selectedId:C
    .end local v6           #i:I
    .end local v7           #j:I
    :cond_28
    const/4 v1, 0x1

    .restart local v1       #bCBEnabled:Z
    goto :goto_d

    .line 464
    .restart local v2       #selectedId:C
    .restart local v6       #i:I
    .restart local v7       #j:I
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB] cbEnable : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " selectId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " idCount: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 467
    const/4 v6, 0x0

    :goto_55
    array-length v0, v4

    if-ge v6, v0, :cond_5b

    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    .line 471
    :cond_5b
    const/4 v6, 0x0

    :goto_5c
    if-eqz p5, :cond_64

    array-length v0, p5

    if-ge v6, v0, :cond_64

    add-int/lit8 v6, v6, 0x1

    goto :goto_5c

    .line 475
    :cond_64
    array-length v0, p5

    new-array v5, v0, [Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .line 477
    .local v5, languageId:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;
    const/4 v6, 0x0

    :goto_68
    array-length v0, p5

    if-ge v6, v0, :cond_b3

    .line 479
    aget v0, p5, v6

    packed-switch v0, :pswitch_data_ba

    .line 492
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_DUMMY:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    .line 477
    :goto_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    .line 480
    :pswitch_77
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_GERMAN:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_74

    .line 481
    :pswitch_7c
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_ENGLISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_74

    .line 482
    :pswitch_81
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_ITALIAN:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_74

    .line 483
    :pswitch_86
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_FRENCH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_74

    .line 484
    :pswitch_8b
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_SPANISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_74

    .line 485
    :pswitch_90
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_DUTCH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_74

    .line 486
    :pswitch_95
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_SWEDISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_74

    .line 487
    :pswitch_9a
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_DANISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_74

    .line 488
    :pswitch_9f
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_PORTUGUESE:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_74

    .line 489
    :pswitch_a4
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_FINNISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_74

    .line 490
    :pswitch_a9
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_NORWEGIAN:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_74

    .line 491
    :pswitch_ae
    sget-object v0, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_GREEK:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v0, v5, v6

    goto :goto_74

    .line 498
    :cond_b3
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->setCbConfig(ZCI[S[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V

    .line 499
    return-void

    .line 479
    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_77
        :pswitch_7c
        :pswitch_81
        :pswitch_86
        :pswitch_8b
        :pswitch_90
        :pswitch_95
        :pswitch_9a
        :pswitch_9f
        :pswitch_a4
        :pswitch_a9
        :pswitch_ae
    .end packed-switch
.end method

.method public updateMessageOnIccEf(II[B)Z
    .registers 12
    .parameter "index"
    .parameter "status"
    .parameter "pdu"

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMessageOnIccEf: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 162
    const-string v0, "Updating message on SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 163
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 164
    const/4 v0, 0x0

    :try_start_44
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 167
    .local v5, response:Landroid/os/Message;
    if-nez p2, :cond_5f

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V
    :try_end_56
    .catchall {:try_start_44 .. :try_end_56} :catchall_73

    .line 179
    :goto_56
    :try_start_56
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_73
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_5b} :catch_76

    .line 183
    :goto_5b
    :try_start_5b
    monitor-exit v7
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_73

    .line 184
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v0

    .line 173
    :cond_5f
    :try_start_5f
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    .line 174
    .local v3, record:[B
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_56

    .line 183
    .end local v3           #record:[B
    .end local v5           #response:Landroid/os/Message;
    :catchall_73
    move-exception v0

    monitor-exit v7
    :try_end_75
    .catchall {:try_start_5f .. :try_end_75} :catchall_73

    throw v0

    .line 180
    .restart local v5       #response:Landroid/os/Message;
    :catch_76
    move-exception v0

    move-object v6, v0

    .line 181
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_78
    const-string v0, "interrupted while trying to update by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_73

    goto :goto_5b
.end method

.method public updateSmsServiceCenterOnSimEf([B)Z
    .registers 7
    .parameter "smsc"

    .prologue
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSmsServiceCenterOnSimEf: smsc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 202
    const-string v2, "Updating smsc on SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 205
    const/4 v3, 0x0

    :try_start_20
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 206
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 208
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_45

    .line 211
    :try_start_34
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_45
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_39} :catch_3d

    .line 216
    :goto_39
    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_45

    .line 217
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 212
    :catch_3d
    move-exception v3

    move-object v0, v3

    .line 213
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3f
    const-string v3, "interrupted while trying to update by index"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_39

    .line 216
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_45
    move-exception v3

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_45

    throw v3
.end method

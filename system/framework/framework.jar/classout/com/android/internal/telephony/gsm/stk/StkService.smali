.class public Lcom/android/internal/telephony/gsm/stk/StkService;
.super Landroid/os/Handler;
.source "StkService.java"

# interfaces
.implements Lcom/android/internal/telephony/gsm/stk/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/StkService$1;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final EVENT_USSD_COMPLETE:I = 0x7

.field static final MSG_ID_BIP_TERMINAL_RESPONSE:I = 0x11

.field static final MSG_ID_CALL_CONTROL_RESULT:I = 0xd

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT:I = 0xe

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field static final MSG_ID_PHONE_DISCONNECT:I = 0xf

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RELEASE_COMPLETE_MESSAGE:I = 0x8

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SEND_DTMF_PAUSE:I = 0x10

.field static final MSG_ID_SEND_DTMF_RESULT:I = 0xb

.field static final MSG_ID_SEND_SMS_RESULT:I = 0xc

.field static final MSG_ID_SESSION_END:I = 0x1

.field private static final MSG_ID_SIM_LOADED:I = 0x14

.field static final MSG_ID_TIMEOUT:I = 0x9

.field private static final NOT_IN_USE:I = 0x0

.field static final STK_REFRESH:Ljava/lang/String; = "default refresh..."

.field static final STK_RESET:Ljava/lang/String; = "default reset..."

.field static final STK_SENDING:Ljava/lang/String; = "null alphaId, default sending..."

.field private static final WAITING_RELEASE_COMPLETE:I = 0x1

.field private static final WAITING_RELEASE_COMPLETE_TIME:I = 0x7530

.field static final WAITING_SEND_DTMF:I = 0x5

.field static final WAITING_SEND_DTMF_TIME:I = 0xdac

.field private static final WAITING_SETUP_CALL:I = 0x4

.field private static final WAITING_SETUP_CALL_HOLD_RESULT:I = 0x3

.field private static final WAITING_SETUP_CALL_HOLD_RESULT_TIME:I = 0x1388

.field private static final WAITING_SETUP_CALL_TIME:I = 0x2710

.field private static final WAITING_SMS_RESULT:I = 0x2

.field private static final WAITING_SMS_RESULT_TIME:I = 0xea60

.field private static final WAKE_LOCK_TIMEOUT:I = 0xfde8

.field static mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

.field private static sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;


# instance fields
.field private isTerminalResponseForSEUPMENU:Z

.field private mCallControlResultCode:I

.field private mCallType:I

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

.field private mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private mSendTerminalResponseExpectedByCallSetup:Z

.field private mSetupCallDisc:Z

.field private mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field private mSimSms:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

.field private mStkBIPMgr:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

.field private mTimeoutDest:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 273
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 12
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"
    .parameter "mSimSmsInt"
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 338
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 267
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 268
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 270
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 271
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    .line 272
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mStkBIPMgr:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    .line 296
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z

    .line 323
    iput v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    .line 325
    iput v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    .line 326
    iput v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    .line 327
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 335
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z

    .line 339
    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    if-eqz p3, :cond_27

    if-eqz p4, :cond_27

    if-eqz p5, :cond_27

    if-nez p6, :cond_2f

    .line 341
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_2f
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 345
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    .line 346
    iput-object p7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 347
    iput-object p6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimSms:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 349
    invoke-static {p0, p4}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSendDTMFResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSendSmsResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkCallControlResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 365
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 366
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 370
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->createWakelock()V

    .line 371
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    invoke-direct {v0, p3, p7, p0}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/stk/StkService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mStkBIPMgr:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    .line 372
    return-void
.end method

.method private cancelTimeOut()V
    .registers 2

    .prologue
    .line 443
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeMessages(I)V

    .line 444
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    .line 445
    return-void
.end method

.method private createWakelock()V
    .registers 4

    .prologue
    .line 1960
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1961
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "STKService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1962
    return-void
.end method

.method private displayChannelStatusParams(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 4
    .parameter "cmdParams"

    .prologue
    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Channel ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/GetChannelDataParams;

    .end local p1
    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/GetChannelDataParams;->mChannelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method private displayCloseChannelParams(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 5
    .parameter "cmdParams"

    .prologue
    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Channel ID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;

    move-object v1, v0

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;->mChannelId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Close Channel Mode is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;->mCloseChannelMode:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Text Message is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method private displayOpenChannelParams(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 10
    .parameter "cmdParams"

    .prologue
    .line 622
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v2, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    .line 623
    .local v2, bearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v5, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    .line 625
    .local v5, transportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;
    if-eqz v2, :cond_1b1

    .line 626
    const-string v6, "The BearerDescription is: "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Bearer Type is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    iget-byte v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    iget-boolean v1, v6, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    .line 629
    .local v1, bearerDefault:Z
    if-nez v1, :cond_10e

    .line 630
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Buffer Size is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBufferSize:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Network Access Name is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    const-string v6, "The Bearer Mode Parameters are :"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Is On Demand : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isOnDemand:Z

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Is Auto Reconnect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isAutoReconnect:Z

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Is Background Mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    iget-boolean v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isBackgroundMode:Z

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The User Name is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The User Password is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    .end local v1           #bearerDefault:Z
    :cond_10e
    :goto_10e
    if-eqz v5, :cond_1be

    .line 645
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Transport Level Protocol is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget-byte v6, v6, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->transportProtocol:B

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Port Number is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget v6, v6, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v3, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;

    .line 648
    .local v3, dataDestinationAddress:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;
    if-eqz v3, :cond_1b8

    .line 649
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Data Destination Address Type is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;

    iget-byte v6, v6, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;->addressType:B

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;

    iget-object v4, v6, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;->address:[B

    .line 651
    .local v4, dd:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Data Destination Address is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    .end local v3           #dataDestinationAddress:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;
    .end local v4           #dd:[B
    :goto_194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Text Message is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    .end local p1
    iget-object v7, p1, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    return-void

    .line 641
    .restart local p1
    :cond_1b1
    const-string v6, "The BearerDescription is: null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_10e

    .line 654
    .restart local v3       #dataDestinationAddress:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;
    :cond_1b8
    const-string v6, "The Data Destination Address is: null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_194

    .line 658
    .end local v3           #dataDestinationAddress:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;
    :cond_1be
    const-string v6, "The Transport Level is: null"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_194
.end method

.method private displayReceiveDataParams(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 5
    .parameter "cmdParams"

    .prologue
    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Channel ID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;

    move-object v1, v0

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;->mChannelId:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Channel Data Length is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;

    move-object v1, v0

    iget-byte v1, v1, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;->mChannelDataLength:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Text Message is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method private displaySendDataParams(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 5
    .parameter "cmdParams"

    .prologue
    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Channel ID is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDataParams;

    move-object v1, v0

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mChannelId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Channel Data is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDataParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mChannelData:[B

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Send Immediate is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SendDataParams;

    .end local p1
    iget-boolean v2, p1, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mSendImmediate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method private eventDownload(III[BZ)V
    .registers 17
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    .line 1326
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1329
    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .line 1330
    .local v8, tag:I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1333
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1336
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1337
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1338
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1339
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1342
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1343
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1344
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1345
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1346
    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1349
    if-eqz p4, :cond_44

    .line 1350
    move-object v0, p4

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3a
    if-ge v4, v6, :cond_44

    aget-byte v1, v0, v4

    .line 1351
    .local v1, b:B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1350
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 1355
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_44
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1358
    .local v7, rawData:[B
    array-length v9, v7

    const/4 v10, 0x2

    sub-int v5, v9, v10

    .line 1359
    .local v5, len:I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    .line 1361
    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1363
    .local v3, hexString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1364
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gsm/stk/AppInterface;
    .registers 7

    .prologue
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    .line 1397
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/stk/StkService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/stk/StkService;
    .registers 16
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"
    .parameter "mSimSmsInt"
    .parameter "phone"

    .prologue
    .line 1379
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    if-nez v0, :cond_2a

    .line 1380
    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    if-eqz p4, :cond_10

    if-nez p5, :cond_12

    .line 1382
    :cond_10
    const/4 v0, 0x0

    .line 1388
    :goto_11
    return-object v0

    .line 1384
    :cond_12
    new-instance v8, Landroid/os/HandlerThread;

    const-string v0, "Stk Telephony service"

    invoke-direct {v8, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1385
    .local v8, thread:Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 1386
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/IccCard;Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/GSMPhone;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    .line 1388
    .end local v8           #thread:Landroid/os/HandlerThread;
    :cond_2a
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    goto :goto_11
.end method

.method private handleCallControlResultNoti(Ljava/lang/String;)V
    .registers 26
    .parameter "callcontrol_result"

    .prologue
    .line 692
    const/4 v15, 0x0

    .line 693
    .local v15, call_type:I
    const/4 v14, 0x0

    .line 694
    .local v14, callControlResultCode:I
    const/4 v12, 0x0

    .line 695
    .local v12, alphaidpresent:Z
    const/4 v11, 0x0

    .line 696
    .local v11, alphaid_len:I
    const/16 v4, 0x40

    new-array v10, v4, [B

    .line 697
    .local v10, alpha_id:[B
    const/16 v18, 0x0

    .line 698
    .local v18, length_of_mod:B
    const-string v23, ""

    .line 699
    .local v23, voicecall_ss_modified_address:Ljava/lang/String;
    const/16 v21, 0x0

    .line 700
    .local v21, modified_ussd_string:Ljava/lang/String;
    const/16 v20, 0x0

    .line 702
    .local v20, modified_sms_dest_address:Ljava/lang/String;
    const/4 v13, 0x0

    .line 704
    .local v13, callControlResult:Ljava/lang/String;
    const/16 v22, 0x0

    .line 706
    .local v22, rawData:[B
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v22

    .line 709
    const/4 v4, 0x0

    aget-byte v4, v22, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    .line 710
    const/4 v4, 0x1

    aget-byte v4, v22, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    .line 713
    const/4 v4, 0x1

    aget-byte v14, v22, v4

    .line 714
    const/4 v4, 0x0

    aget-byte v15, v22, v4

    .line 716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The call control result by SIM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    const/4 v4, 0x2

    :try_start_4c
    aget-byte v4, v22, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_64

    .line 719
    const/4 v12, 0x1

    .line 722
    :goto_52
    const/16 v17, 0x0

    .local v17, i:I
    :goto_54
    const/16 v4, 0x40

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_67

    .line 724
    add-int/lit8 v4, v17, 0x4

    aget-byte v4, v22, v4

    aput-byte v4, v10, v17
    :try_end_61
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4c .. :try_end_61} :catch_66

    .line 722
    add-int/lit8 v17, v17, 0x1

    goto :goto_54

    .line 720
    .end local v17           #i:I
    :cond_64
    const/4 v12, 0x0

    goto :goto_52

    .line 726
    :catch_66
    move-exception v4

    .line 730
    :cond_67
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v4, v5, :cond_280

    .line 733
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$CallType:[I

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/CallType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2e2

    .line 823
    :goto_7e
    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-eq v4, v5, :cond_8e

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v4, v5, :cond_9b

    .line 824
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v13, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 839
    :cond_9b
    :goto_9b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    move v4, v0

    if-eqz v4, :cond_2a7

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v4, v5, :cond_2a7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v4, v0

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v4, v5, :cond_2a7

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    iget-object v5, v4, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 845
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 846
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 860
    :cond_d1
    :goto_d1
    return-void

    .line 738
    :pswitch_d2
    const/16 v4, 0x46

    :try_start_d4
    aget-byte v4, v22, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_ef

    .line 739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 741
    :cond_ef
    const/16 v4, 0x48

    aget-byte v18, v22, v4

    .line 742
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_f5
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_15f

    .line 743
    add-int/lit8 v4, v17, 0x49

    aget-byte v4, v22, v4

    packed-switch v4, :pswitch_data_2ec

    .line 742
    :goto_102
    add-int/lit8 v17, v17, 0x1

    goto :goto_f5

    .line 745
    :pswitch_105
    add-int/lit8 v4, v17, 0x49

    aget-byte v5, v22, v4

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v22, v4

    .line 746
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v17, 0x49

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v22

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 747
    goto :goto_102

    .line 749
    :pswitch_130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 750
    goto :goto_102

    .line 752
    :pswitch_147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d4 .. :try_end_15c} :catch_15e

    move-result-object v23

    .line 753
    goto :goto_102

    .line 758
    .end local v17           #i:I
    :catch_15e
    move-exception v4

    .line 762
    :cond_15f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The Modified number by SIM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x104045e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 764
    .local v19, message:Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 766
    goto/16 :goto_7e

    .line 769
    .end local v19           #message:Ljava/lang/CharSequence;
    :pswitch_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x104045e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 770
    .restart local v19       #message:Ljava/lang/CharSequence;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 772
    goto/16 :goto_7e

    .line 775
    .end local v19           #message:Ljava/lang/CharSequence;
    :pswitch_1b9
    const/16 v4, 0x48

    aget-byte v18, v22, v4

    .line 776
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_1bf
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_228

    .line 777
    add-int/lit8 v4, v17, 0x49

    aget-byte v4, v22, v4

    packed-switch v4, :pswitch_data_308

    .line 776
    :goto_1cc
    add-int/lit8 v17, v17, 0x1

    goto :goto_1bf

    .line 779
    :pswitch_1cf
    add-int/lit8 v4, v17, 0x49

    aget-byte v5, v22, v4

    add-int/lit8 v5, v5, 0x30

    int-to-byte v5, v5

    aput-byte v5, v22, v4

    .line 780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v17, 0x49

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v22

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 781
    goto :goto_1cc

    .line 783
    :pswitch_1fa
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 784
    goto :goto_1cc

    .line 786
    :pswitch_211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 787
    goto :goto_1cc

    .line 793
    :cond_228
    :try_start_228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_233
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_228 .. :try_end_233} :catch_25f

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x104045f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 802
    .restart local v19       #message:Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7e

    .line 794
    .end local v19           #message:Ljava/lang/CharSequence;
    :catch_25f
    move-exception v4

    move-object/from16 v16, v4

    .line 796
    .local v16, e:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "fail to send SS"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    iget-object v5, v4, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_d1

    .line 828
    .end local v16           #e:Lcom/android/internal/telephony/CallStateException;
    .end local v17           #i:I
    :cond_280
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v4, v5, :cond_9b

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x1040460

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 831
    .restart local v19       #message:Ljava/lang/CharSequence;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v13, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9b

    .line 848
    .end local v19           #message:Ljava/lang/CharSequence;
    :cond_2a7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    move v4, v0

    if-eqz v4, :cond_d1

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v4, v5, :cond_d1

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    if-eqz v4, :cond_2d9

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v4, v0

    iget-object v5, v4, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 856
    :goto_2ce
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 857
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    goto/16 :goto_d1

    .line 854
    :cond_2d9
    const-string v4, "mCurrntCmd = null error handle is needed"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2ce

    .line 733
    :pswitch_data_2e2
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_1a7
        :pswitch_1b9
    .end packed-switch

    .line 743
    :pswitch_data_2ec
    .packed-switch 0x0
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_130
        :pswitch_147
    .end packed-switch

    .line 777
    :pswitch_data_308
    .packed-switch 0x0
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1cf
        :pswitch_1fa
        :pswitch_211
    .end packed-switch
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
    .registers 24
    .parameter "resMsg"

    .prologue
    .line 1735
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->validateResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1957
    .end local p0
    :cond_6
    :goto_6
    return-void

    .line 1738
    .restart local p0
    :cond_7
    const/4 v8, 0x0

    .line 1739
    .local v8, resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    const/4 v15, 0x0

    .line 1740
    .local v15, helpRequired:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-result-object v4

    .line 1744
    .local v4, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    const/4 v11, 0x0

    .line 1746
    .local v11, calldisabledNoti:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_3e8

    goto :goto_6

    .line 1748
    :pswitch_1f
    const/4 v15, 0x1

    .line 1760
    :pswitch_20
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    iget v5, v4, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_410

    .line 1953
    :cond_31
    :goto_31
    :pswitch_31
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:Z

    move v3, v0

    if-nez v3, :cond_3ce

    .line 1954
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_6

    .line 1762
    :pswitch_45
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z

    move v3, v0

    if-eqz v3, :cond_62

    .line 1763
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 1764
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z

    .line 1765
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleSessionEnd()V

    goto :goto_6

    .line 1768
    :cond_62
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-ne v3, v4, :cond_81

    const/4 v3, 0x1

    move v15, v3

    .line 1769
    :goto_6d
    const-string v3, "gsm.STK_USER_SESSION"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMenuSelection(IZ)V

    goto :goto_6

    .line 1768
    :cond_81
    const/4 v3, 0x0

    move v15, v3

    goto :goto_6d

    .line 1773
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :pswitch_84
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    move v3, v0

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;-><init>(I)V

    .line 1774
    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_31

    .line 1777
    :pswitch_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v16

    .line 1778
    .local v16, input:Lcom/android/internal/telephony/gsm/stk/Input;
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    move v3, v0

    if-nez v3, :cond_b7

    .line 1781
    if-nez v15, :cond_31

    .line 1782
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    move v5, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    move v6, v0

    invoke-direct {v8, v3, v5, v6}, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto/16 :goto_31

    .line 1786
    :cond_b7
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    move v3, v0

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;-><init>(Z)V

    .line 1789
    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto/16 :goto_31

    .line 1794
    .end local v16           #input:Lcom/android/internal/telephony/gsm/stk/Input;
    :pswitch_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez v3, :cond_ee

    .line 1795
    const-string/jumbo v3, "setup call address is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1796
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1797
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1800
    :cond_ee
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v5, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v6

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1802
    .local v17, intent:Landroid/content/Intent;
    if-nez v17, :cond_12b

    .line 1803
    const-string v3, "fail to make call intent"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1804
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1805
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1808
    :cond_12b
    const/high16 v3, 0x1000

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1810
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    move v3, v0

    if-nez v3, :cond_14f

    .line 1811
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1812
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1815
    :cond_14f
    const-string/jumbo v3, "setup call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1816
    const/16 v18, 0x0

    .line 1817
    .local v18, isInCall:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    .line 1818
    .local v14, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    .line 1819
    .local v9, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    .line 1821
    .local v21, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_193

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_193

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1ed

    :cond_193
    const/4 v3, 0x1

    move/from16 v18, v3

    .line 1825
    :goto_196
    if-eqz v18, :cond_2d2

    .line 1826
    const-string/jumbo v3, "phone is in call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    if-ne v3, v5, :cond_1f1

    .line 1830
    const-string/jumbo v3, "show Notification - Can\'t call by Incall"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v5, 0x10400c2

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 1833
    .local v19, message:Ljava/lang/CharSequence;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    const/4 v5, 0x1

    invoke-static {v3, v11, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1837
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1839
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x2

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1821
    .end local v19           #message:Ljava/lang/CharSequence;
    :cond_1ed
    const/4 v3, 0x0

    move/from16 v18, v3

    goto :goto_196

    .line 1842
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    if-ne v3, v5, :cond_235

    .line 1845
    :try_start_202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->switchHoldingAndActive()V

    .line 1846
    const/4 v3, 0x3

    const/16 v5, 0x1388

    move-object/from16 v0, p0

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V
    :try_end_214
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_202 .. :try_end_214} :catch_216

    goto/16 :goto_6

    .line 1848
    :catch_216
    move-exception v3

    move-object v12, v3

    .line 1850
    .local v12, e:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "fail to setup call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1851
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1852
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1856
    .end local v12           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/gsm/stk/SetupCallCommandQualifiers;

    if-ne v3, v5, :cond_2b5

    .line 1859
    :try_start_246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v20

    .line 1860
    .local v20, ringing:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v13

    .line 1861
    .local v13, fg:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v10

    .line 1862
    .local v10, bg:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_282

    .line 1863
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V

    .line 1871
    :cond_26a
    :goto_26a
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z
    :try_end_270
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_246 .. :try_end_270} :catch_28c

    .line 1896
    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .end local v10           #bg:Lcom/android/internal/telephony/Call;
    .end local v13           #fg:Lcom/android/internal/telephony/Call;
    .end local v20           #ringing:Lcom/android/internal/telephony/Call;
    :goto_270
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 1899
    const/4 v3, 0x4

    const/16 v4, 0x2710

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    goto/16 :goto_6

    .line 1864
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .restart local v10       #bg:Lcom/android/internal/telephony/Call;
    .restart local v13       #fg:Lcom/android/internal/telephony/Call;
    .restart local v20       #ringing:Lcom/android/internal/telephony/Call;
    :cond_282
    :try_start_282
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2ab

    .line 1865
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V
    :try_end_28b
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_282 .. :try_end_28b} :catch_28c

    goto :goto_26a

    .line 1873
    .end local v10           #bg:Lcom/android/internal/telephony/Call;
    .end local v13           #fg:Lcom/android/internal/telephony/Call;
    .end local v20           #ringing:Lcom/android/internal/telephony/Call;
    :catch_28c
    move-exception v3

    move-object v12, v3

    .line 1875
    .restart local v12       #e:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "fail to setup call"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1876
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1877
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1866
    .end local v12           #e:Lcom/android/internal/telephony/CallStateException;
    .restart local v10       #bg:Lcom/android/internal/telephony/Call;
    .restart local v13       #fg:Lcom/android/internal/telephony/Call;
    .restart local v20       #ringing:Lcom/android/internal/telephony/Call;
    :cond_2ab
    :try_start_2ab
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_26a

    .line 1867
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GsmCall;->hangup()V
    :try_end_2b4
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2ab .. :try_end_2b4} :catch_28c

    goto :goto_26a

    .line 1882
    .end local v10           #bg:Lcom/android/internal/telephony/Call;
    .end local v13           #fg:Lcom/android/internal/telephony/Call;
    .end local v20           #ringing:Lcom/android/internal/telephony/Call;
    :cond_2b5
    const-string v3, "*************call intent"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 1884
    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_270

    .line 1888
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :cond_2d2
    const-string v3, "*************call intent"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 1890
    .end local v4           #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_270

    .line 1902
    .end local v9           #backgroundCallState:Lcom/android/internal/telephony/Call$State;
    .end local v14           #foregroundCallState:Lcom/android/internal/telephony/Call$State;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #isInCall:Z
    .end local v21           #ringingCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v4       #cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :pswitch_2ef
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    move v3, v0

    if-nez v3, :cond_335

    .line 1903
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resMsg.resCode = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Openchannel : Sending TR :user did not accept"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1904
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1905
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    invoke-direct {v8}, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;-><init>()V

    .line 1906
    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1909
    :cond_335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mStkBIPMgr:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    move-object v3, v0

    sget-object p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->handleOpenChannel(Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;)V

    goto/16 :goto_6

    .line 1913
    .restart local p0
    :pswitch_346
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    move v3, v0

    if-nez v3, :cond_387

    .line 1914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resMsg.resCode = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " CLOSE_CHANNEL : Sending TR :user did not accept"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1916
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 1917
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1920
    :cond_387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mStkBIPMgr:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    move-object v3, v0

    sget-object p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->handleCloseChannel(Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;)V

    goto/16 :goto_6

    .line 1926
    .restart local p0
    :pswitch_398
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    iget v5, v4, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_43a

    .line 1937
    const/4 v8, 0x0

    goto/16 :goto_31

    .line 1929
    :pswitch_3ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v16

    .line 1930
    .restart local v16       #input:Lcom/android/internal/telephony/gsm/stk/Input;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    move-object v3, v0

    if-eqz v3, :cond_3c8

    .line 1931
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/Input;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    move-object v3, v0

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;-><init>(Lcom/android/internal/telephony/gsm/stk/Duration;)V

    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto/16 :goto_31

    .line 1933
    :cond_3c8
    const/4 v8, 0x0

    .line 1935
    goto/16 :goto_31

    .line 1946
    .end local v16           #input:Lcom/android/internal/telephony/gsm/stk/Input;
    :pswitch_3cb
    const/4 v8, 0x0

    .line 1947
    goto/16 :goto_31

    .line 1955
    :cond_3ce
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfo:Z

    move v3, v0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 1956
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->additionalInfoData:I

    move v7, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_6

    .line 1746
    :pswitch_data_3e8
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_398
        :pswitch_3cb
        :pswitch_3cb
        :pswitch_3cb
        :pswitch_3cb
        :pswitch_3cb
        :pswitch_31
    .end packed-switch

    .line 1760
    :pswitch_data_410
    .packed-switch 0x1
        :pswitch_45
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_c3
        :pswitch_31
        :pswitch_31
        :pswitch_84
        :pswitch_8f
        :pswitch_8f
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_2ef
        :pswitch_346
    .end packed-switch

    .line 1926
    :pswitch_data_43a
    .packed-switch 0xd
        :pswitch_3ac
        :pswitch_3ac
    .end packed-switch
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 21
    .parameter "cmdParams"

    .prologue
    .line 867
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 871
    .local v17, sessionEnd:Ljava/lang/Boolean;
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 872
    .local v9, cmdMsg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
    sget-object v2, Lcom/android/internal/telephony/gsm/stk/StkService$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4b4

    .line 1072
    :goto_2a
    const-string v2, "Unsupported command"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    .end local p1
    :cond_32
    :goto_32
    return-void

    .line 874
    .restart local p1
    :pswitch_33
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeMenu(Lcom/android/internal/telephony/gsm/stk/Menu;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 875
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 876
    const-string v2, "gsm.STK_SETUP_MENU"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    .end local p1
    :cond_4d
    :goto_4d
    :pswitch_4d
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 1076
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.command"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v11, intent:Landroid/content/Intent;
    const-string v2, "STK CMD"

    invoke-virtual {v11, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-virtual {v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1079
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_32

    .line 1080
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleSessionEnd()V

    .line 1081
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto :goto_32

    .line 878
    .end local v11           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_76
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    if-eqz v2, :cond_cc

    .line 880
    const-string v2, "SETUP_MENU property Setting. -AAA"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_bb

    .line 882
    const-string v2, "gsm.STK_SETUP_MENU"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x13

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 884
    :cond_bb
    const-string v2, "gsm.STK_SETUP_MENU"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d

    .line 888
    :cond_cc
    const-string v2, "SETUP_MENU property Setting. -BBB"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    const-string v2, "gsm.STK_SETUP_MENU"

    const-string v3, "SIM Toolkit"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 897
    :pswitch_dd
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    if-nez v2, :cond_4d

    .line 898
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_4d

    .line 903
    :pswitch_f6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "here : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 904
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v3, "default refresh..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v2, v0

    const v3, 0x104045c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 911
    .local v12, message:Ljava/lang/CharSequence;
    :goto_139
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-object v2, v0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 912
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 913
    goto/16 :goto_4d

    .line 906
    .end local v12           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_14d
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string v3, "default reset..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v2, v0

    const v3, 0x104045d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .restart local v12       #message:Ljava/lang/CharSequence;
    goto :goto_139

    .line 909
    .end local v12           #message:Ljava/lang/CharSequence;
    :cond_16b
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .restart local v12       #message:Ljava/lang/CharSequence;
    goto :goto_139

    .line 915
    .end local v12           #message:Ljava/lang/CharSequence;
    :pswitch_171
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_4d

    .line 919
    :pswitch_182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_1a2

    .line 920
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_32

    .line 923
    :cond_1a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 924
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendSS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 925
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_1e6

    .line 926
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string/jumbo v3, "null alphaId, default sending..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v2, v0

    const v3, 0x1040463

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 928
    .restart local v12       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-object v2, v0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_4d

    .line 931
    .end local v12           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_1e6
    const-string/jumbo v2, "wakelock for SS"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v2, v0

    const-wide/32 v3, 0xfde8

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 933
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_32

    .line 938
    :pswitch_201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_221

    .line 939
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_32

    .line 942
    :cond_221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 943
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 944
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_265

    .line 945
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string/jumbo v3, "null alphaId, default sending..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v2, v0

    const v3, 0x1040463

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 947
    .restart local v12       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-object v2, v0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_4d

    .line 950
    .end local v12           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_265
    const-string/jumbo v2, "wakelock for USSD"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v2, v0

    const-wide/32 v3, 0xfde8

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 952
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_32

    .line 957
    :pswitch_280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_2a0

    .line 958
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_32

    .line 961
    :cond_2a0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 962
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_4d

    .line 963
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string/jumbo v3, "null alphaId, default sending..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v2, v0

    const v3, 0x1040463

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 965
    .restart local v12       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-object v2, v0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_4d

    .line 970
    .end local v12           #message:Ljava/lang/CharSequence;
    .restart local p1
    :pswitch_2db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_2fb

    .line 971
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_32

    .line 974
    :cond_2fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 975
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandSendSMS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 976
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_33f

    .line 977
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    const-string/jumbo v3, "null alphaId, default sending..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v2, v0

    const v3, 0x1040463

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 979
    .restart local v12       #message:Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    .end local p1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-object v2, v0

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_4d

    .line 982
    .end local v12           #message:Ljava/lang/CharSequence;
    .restart local p1
    :cond_33f
    const-string/jumbo v2, "wakelock for SMS"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v2, v0

    const-wide/32 v3, 0xfde8

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 984
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_32

    .line 1002
    :pswitch_35a
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommandProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto/16 :goto_32

    .line 1005
    :pswitch_35f
    const-string v2, "OPEN_CHANNEL"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 1007
    .local v18, tm:Landroid/telephony/TelephonyManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tm.getNetworkType() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    .line 1009
    .local v13, networkType:I
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object v14, v0

    .line 1011
    .local v14, op:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;
    if-nez v13, :cond_3c4

    iget-object v2, v14, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isServer()Z

    move-result v2

    if-nez v2, :cond_3c4

    .line 1012
    const-string v2, "NETWORK_TYPE_UNKNOWN "

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1013
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_32

    .line 1017
    :cond_3c4
    sput-object v14, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1018
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->displayOpenChannelParams(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 1020
    iget-object v2, v14, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_3dc

    iget-object v2, v14, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4d

    .line 1021
    :cond_3dc
    const-string/jumbo v2, "no alphaID or alphaID 0 : no user confirm"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mStkBIPMgr:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    move-object v2, v0

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->handleOpenChannel(Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;)V

    .line 1023
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 1024
    iget-object v2, v14, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_32

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v2, v0

    const-string/jumbo v3, "open channel for BIP"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_32

    .line 1032
    .end local v13           #networkType:I
    .end local v14           #op:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;
    .end local v18           #tm:Landroid/telephony/TelephonyManager;
    :pswitch_40a
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;

    move-object v10, v0

    .line 1033
    .local v10, cp:Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;
    sput-object v10, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1034
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->displayCloseChannelParams(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 1035
    const-string v2, "After Displaying Params Close Channel...Calling StkBIPMgr.handleCloseChannel: "

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    iget-object v2, v10, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_4d

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mStkBIPMgr:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    move-object v2, v0

    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->handleCloseChannel(Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;)V

    .line 1038
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_32

    .line 1043
    .end local v10           #cp:Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;
    :pswitch_434
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;

    move-object v15, v0

    .line 1044
    .local v15, rd:Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;
    sput-object v15, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1045
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->displayReceiveDataParams(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 1046
    const-string v2, "After Displaying Params RECEIVE_DATA...Calling StkBIPMgr.handleReceiveData: "

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mStkBIPMgr:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    move-object v2, v0

    invoke-virtual {v2, v15}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->handleReceiveData(Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;)V

    .line 1048
    iget-object v2, v15, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_4d

    .line 1049
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_32

    .line 1054
    .end local v15           #rd:Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;
    :pswitch_45e
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDataParams;

    move-object/from16 v16, v0

    .line 1055
    .local v16, sd:Lcom/android/internal/telephony/gsm/stk/SendDataParams;
    sput-object v16, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1056
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->displaySendDataParams(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 1057
    const-string v2, "After Displaying Params SEND_DATA...Calling StkBIPMgr.handleSendData: "

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mStkBIPMgr:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->handleSendData(Lcom/android/internal/telephony/gsm/stk/SendDataParams;)V

    .line 1059
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/SendDataParams;->mTextMessage:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_4d

    .line 1060
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_32

    .line 1065
    .end local v16           #sd:Lcom/android/internal/telephony/gsm/stk/SendDataParams;
    :pswitch_490
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/GetChannelDataParams;

    move-object v8, v0

    .line 1066
    .local v8, cd:Lcom/android/internal/telephony/gsm/stk/GetChannelDataParams;
    sput-object v8, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1067
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 1068
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->displayChannelStatusParams(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 1069
    const-string v2, "After Displaying Params GET_CHANNEL_STATUS"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mStkBIPMgr:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->getChannelStatus(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto/16 :goto_2a

    .line 872
    :pswitch_data_4b4
    .packed-switch 0x1
        :pswitch_33
        :pswitch_dd
        :pswitch_f6
        :pswitch_171
        :pswitch_182
        :pswitch_201
        :pswitch_280
        :pswitch_2db
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_35a
        :pswitch_35f
        :pswitch_40a
        :pswitch_434
        :pswitch_45e
        :pswitch_490
    .end packed-switch
.end method

.method private handleProactiveCommandProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 20
    .parameter "cmdParams"

    .prologue
    .line 571
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    move-object v0, v3

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    move/from16 v16, v0

    .line 572
    .local v16, commandQualifier:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provide local info command Qualifier : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    packed-switch v16, :pswitch_data_16a

    .line 614
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v10, v0

    sget-object v11, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 617
    :goto_38
    return-void

    .line 581
    :pswitch_39
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_38

    .line 584
    :pswitch_49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 585
    .local v15, calendar:Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 586
    .local v2, res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    if-nez v15, :cond_60

    .line 587
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_38

    .line 589
    :cond_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " d : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hh : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mm : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ss : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " zone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AM_PM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;

    .end local v2           #res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v15, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x9

    invoke-virtual {v15, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_130

    const/16 v6, 0xa

    invoke-virtual {v15, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    :goto_10e
    const/16 v7, 0xc

    invoke-virtual {v15, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xd

    invoke-virtual {v15, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xff

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoTimeResponseData;-><init>(IIIIIII)V

    .line 600
    .restart local v2       #res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_38

    .line 590
    .end local v2           #res:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    :cond_130
    const/16 v6, 0xa

    invoke-virtual {v15, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    goto :goto_10e

    .line 604
    .end local v15           #calendar:Ljava/util/Calendar;
    :pswitch_139
    const/4 v8, 0x0

    .line 605
    .local v8, response:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    .line 606
    .local v17, loc:Ljava/util/Locale;
    if-nez v17, :cond_151

    .line 607
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_38

    .line 609
    :cond_151
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;

    .end local v8           #response:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfoLangSetting;-><init>(Ljava/lang/String;)V

    .line 610
    .restart local v8       #response:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_38

    .line 574
    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_49
        :pswitch_139
        :pswitch_39
    .end packed-switch
.end method

.method private handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 15
    .parameter "cmdParams"

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0xb

    const/16 v10, 0xa

    .line 490
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DTMF String is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    const/4 v9, 0x0

    aget-byte v2, v8, v9

    .line 493
    .local v2, rawDataLength:I
    mul-int/lit8 v8, v2, 0x2

    new-array v4, v8, [B

    .line 494
    .local v4, tempDTMFString:[B
    const/4 v5, 0x0

    .line 495
    .local v5, tempDTMFStringLength:I
    const/4 v6, 0x0

    .line 498
    .local v6, workingPtr:I
    const/4 v1, 0x0

    .local v1, i:I
    move v7, v6

    .end local v6           #workingPtr:I
    .local v7, workingPtr:I
    :goto_37
    if-ge v1, v2, :cond_8e

    .line 499
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0xf

    int-to-byte v3, v8

    .line 500
    .local v3, temp:B
    if-ne v3, v12, :cond_72

    const/16 v3, 0x70

    .line 504
    :goto_4a
    add-int/lit8 v6, v7, 0x1

    .end local v7           #workingPtr:I
    .restart local v6       #workingPtr:I
    aput-byte v3, v4, v7

    .line 505
    add-int/lit8 v5, v5, 0x1

    .line 506
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;->dtmfString:[B

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    int-to-byte v3, v8

    .line 507
    const/16 v8, 0xf

    if-eq v3, v8, :cond_6e

    .line 508
    if-ne v3, v12, :cond_80

    const/16 v3, 0x70

    .line 512
    :goto_67
    add-int/lit8 v7, v6, 0x1

    .end local v6           #workingPtr:I
    .restart local v7       #workingPtr:I
    aput-byte v3, v4, v6

    .line 513
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    .line 498
    .end local v7           #workingPtr:I
    .restart local v6       #workingPtr:I
    :cond_6e
    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .end local v6           #workingPtr:I
    .restart local v7       #workingPtr:I
    goto :goto_37

    .line 501
    :cond_72
    if-ne v3, v10, :cond_77

    const/16 v3, 0x2a

    goto :goto_4a

    .line 502
    :cond_77
    if-ne v3, v11, :cond_7c

    const/16 v3, 0x23

    goto :goto_4a

    .line 503
    :cond_7c
    add-int/lit8 v8, v3, 0x30

    int-to-byte v3, v8

    goto :goto_4a

    .line 509
    .end local v7           #workingPtr:I
    .restart local v6       #workingPtr:I
    :cond_80
    if-ne v3, v10, :cond_85

    const/16 v3, 0x2a

    goto :goto_67

    .line 510
    :cond_85
    if-ne v3, v11, :cond_8a

    const/16 v3, 0x23

    goto :goto_67

    .line 511
    :cond_8a
    add-int/lit8 v8, v3, 0x30

    int-to-byte v3, v8

    goto :goto_67

    .line 517
    .end local v3           #temp:B
    .end local v6           #workingPtr:I
    .restart local v7       #workingPtr:I
    :cond_8e
    const-string/jumbo v8, "wakelock for DTMF"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v9, 0xfde8

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 520
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/DtmfString;

    invoke-direct {v8, v5, v4}, Lcom/android/internal/telephony/gsm/stk/DtmfString;-><init>(I[B)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    .line 521
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->processDTMFString()V

    .line 522
    return-void
.end method

.method private handleProactiveCommandSendSMS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 7
    .parameter "cmdParams"

    .prologue
    const/4 v4, 0x0

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Smscaddress is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->SmscAddress:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Sms Pdu is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->Pdu:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimSms:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->SmscAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;->Pdu:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v1, v3, v4, v4}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->sendRawPduSat([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 567
    const/4 v1, 0x2

    const v2, 0xea60

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    .line 568
    return-void
.end method

.method private handleProactiveCommandSendSS(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 11
    .parameter "cmdParams"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "ro.csc.sales_code"

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ssString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendSSParams;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/SendSSParams;->ssString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    :try_start_22
    const-string v1, "ORO"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "XFA"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "XFM"

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 458
    :cond_4f
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    .line 461
    :goto_54
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SendSSParams;

    .end local p1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/SendSSParams;->ssString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_5d
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_22 .. :try_end_5d} :catch_69

    .line 467
    :goto_5d
    const/16 v1, 0x7530

    invoke-virtual {p0, v8, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    .line 468
    return-void

    .line 460
    .restart local p1
    :cond_63
    :try_start_63
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z
    :try_end_68
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_63 .. :try_end_68} :catch_69

    goto :goto_54

    .line 462
    .end local p1
    :catch_69
    move-exception v1

    move-object v7, v1

    .line 464
    .local v7, e:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "fail to send SS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_5d
.end method

.method private handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V
    .registers 10
    .parameter "cmdParams"

    .prologue
    const/4 v7, 0x1

    const-string/jumbo v6, "ro.csc.sales_code"

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ussdString is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdString:[B

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    move-object v4, v0

    iget v1, v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->dcsCode:I

    .line 474
    .local v1, dcsCode:I
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    move-object v4, v0

    iget v2, v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdLength:I

    .line 475
    .local v2, ussdLength:I
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    .end local p1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;->ussdString:[B

    .line 476
    .local v3, ussdString:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dcsCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    const-string v4, "ORO"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    const-string v4, "XFA"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    const-string v4, "XFM"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    const-string v4, "XFC"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    const-string v4, "XFE"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    const-string v4, "XFV"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_be

    const-string v4, "XSE"

    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 481
    :cond_be
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    .line 484
    :goto_c3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4, v3, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendEncodedUssd([BII)V

    .line 486
    const/16 v4, 0x7530

    invoke-virtual {p0, v7, v4}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    .line 487
    return-void

    .line 483
    :cond_ce
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-boolean v7, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiInitBySTK:Z

    goto :goto_c3
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .registers 12
    .parameter "rilMsg"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 389
    if-nez p1, :cond_5

    .line 439
    :cond_4
    :goto_4
    return-void

    .line 394
    :cond_5
    const/4 v7, 0x0

    .line 395
    .local v7, cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_5a

    :pswitch_b
    goto :goto_4

    .line 432
    :pswitch_c
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleSessionEnd()V

    goto :goto_4

    .line 397
    :pswitch_10
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v1, v2, :cond_4

    .line 398
    iget-object v7, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 399
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v7, :cond_4

    .line 400
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_4

    .line 406
    :pswitch_20
    :try_start_20
    iget-object v9, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    move-object v7, v0
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_26} :catch_32

    .line 413
    if-eqz v7, :cond_4

    .line 414
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v1, v2, :cond_45

    .line 415
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_4

    .line 407
    :catch_32
    move-exception v1

    move-object v8, v1

    .line 409
    .local v8, e:Ljava/lang/ClassCastException;
    const-string v1, "fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_4

    .line 420
    .end local v8           #e:Ljava/lang/ClassCastException;
    :cond_45
    iget-object v2, v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_4

    .line 426
    :pswitch_4f
    iget-object v7, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v7           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 427
    .restart local v7       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v7, :cond_4

    .line 428
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    goto :goto_4

    .line 395
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_20
        :pswitch_10
        :pswitch_b
        :pswitch_4f
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .registers 3

    .prologue
    .line 1090
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1092
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 1093
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1095
    return-void
.end method

.method public static isBIPCmdBeingProcessed()Z
    .registers 1

    .prologue
    .line 1975
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private removeMenu(Lcom/android/internal/telephony/gsm/stk/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1714
    :try_start_2
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1e

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_15

    move-result-object v1

    if-nez v1, :cond_1e

    move v1, v3

    .line 1721
    :goto_14
    return v1

    .line 1717
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 1718
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v3

    .line 1719
    goto :goto_14

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1e
    move v1, v4

    .line 1721
    goto :goto_14
.end method

.method private sendMenuSelection(IZ)V
    .registers 12
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1283
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1286
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 1287
    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1290
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1293
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1294
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1295
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1296
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1297
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1300
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1301
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1302
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1303
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1306
    if-eqz p2, :cond_45

    .line 1307
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 1308
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1309
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1312
    :cond_45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1315
    .local v3, rawData:[B
    array-length v5, v3

    sub-int v2, v5, v8

    .line 1316
    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    .line 1318
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1320
    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1321
    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;Lcom/android/internal/telephony/gsm/stk/ResponseData;)V
    .registers 13
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "data"
    .parameter "resp"

    .prologue
    .line 1159
    const-string v6, " sendTerminalResponse"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1160
    if-nez p1, :cond_d

    .line 1161
    const-string v6, "(cmdDet == null) "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1279
    :goto_c
    return-void

    .line 1165
    :cond_d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1168
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1169
    .local v5, tag:I
    iget-boolean v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_1e

    .line 1170
    or-int/lit16 v5, v5, 0x80

    .line 1172
    :cond_1e
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1173
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1174
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1175
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1176
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1178
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 1179
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1180
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1181
    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1182
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1185
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 1186
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1190
    const/4 v3, 0x0

    .line 1193
    .local v3, length:I
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_ce

    .line 1195
    const-string v6, " making Send SS Terminal Response "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1196
    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    if-eqz v6, :cond_6c

    .line 1198
    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    add-int/lit8 v3, v6, 0x1

    .line 1200
    :cond_6c
    if-nez v3, :cond_6f

    .line 1201
    const/4 v3, 0x1

    .line 1203
    :cond_6f
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1205
    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->params:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_be

    .line 1206
    const-string v6, " SS Release complete error info "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1207
    const/16 v6, 0x34

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1214
    :goto_81
    const/4 v4, 0x0

    .line 1216
    .local v4, rawData:[B
    :try_start_82
    iget-object v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_c6

    move-result-object v4

    .line 1221
    :goto_88
    if-eqz v4, :cond_90

    .line 1222
    const/4 v6, 0x0

    iget v7, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1267
    .end local v4           #rawData:[B
    :cond_90
    :goto_90
    if-eqz p4, :cond_95

    .line 1268
    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 1271
    :cond_95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1272
    .restart local v4       #rawData:[B
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1274
    .local v2, hexString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1277
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 1278
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_c

    .line 1210
    .end local v2           #hexString:Ljava/lang/String;
    .end local v4           #rawData:[B
    :cond_be
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_81

    .line 1217
    .restart local v4       #rawData:[B
    :catch_c6
    move-exception v6

    move-object v1, v6

    .line 1219
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_88

    .line 1226
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #rawData:[B
    :cond_ce
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_90

    .line 1228
    const-string v6, " making Send USSD Terminal Response "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1229
    iget v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->params:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_10f

    .line 1230
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1231
    const-string v6, " USSD result error "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1232
    const/16 v6, 0x37

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1233
    const/4 v4, 0x0

    .line 1235
    .restart local v4       #rawData:[B
    :try_start_ed
    iget-object v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f2} :catch_107

    move-result-object v4

    .line 1241
    :goto_f3
    if-eqz v4, :cond_90

    .line 1242
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_100

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v4, v6

    .line 1243
    :cond_100
    const/4 v6, 0x0

    iget v7, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_90

    .line 1236
    :catch_107
    move-exception v6

    move-object v1, v6

    .line 1238
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f3

    .line 1247
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #rawData:[B
    :cond_10f
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1248
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1249
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1251
    const/4 v4, 0x0

    .line 1253
    .restart local v4       #rawData:[B
    :try_start_120
    iget-object v6, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_125} :catch_140

    move-result-object v4

    .line 1258
    :goto_126
    if-eqz v4, :cond_90

    .line 1259
    const/4 v6, 0x1

    aget-byte v6, v4, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1260
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1261
    const/4 v6, 0x2

    iget v7, p3, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_90

    .line 1254
    :catch_140
    move-exception v6

    move-object v1, v6

    .line 1256
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_126
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V
    .registers 14
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 1105
    if-nez p1, :cond_5

    .line 1154
    :goto_4
    return-void

    .line 1108
    :cond_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1111
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v4

    .line 1112
    .local v4, tag:I
    iget-boolean v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    if-eqz v5, :cond_16

    .line 1113
    or-int/lit16 v4, v4, 0x80

    .line 1115
    :cond_16
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1116
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1117
    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1118
    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1119
    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1122
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1123
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1124
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1125
    const/16 v5, 0x82

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1126
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1129
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1130
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1131
    if-eqz p3, :cond_8f

    move v2, v6

    .line 1132
    .local v2, length:I
    :goto_52
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1133
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1136
    if-eqz p3, :cond_61

    .line 1137
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1141
    :cond_61
    if-eqz p5, :cond_66

    .line 1142
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 1145
    :cond_66
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1146
    .local v3, rawData:[B
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, hexString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TERMINAL RESPONSE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1151
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 1152
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    .line 1153
    sput-object v7, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    goto/16 :goto_4

    .line 1131
    .end local v1           #hexString:Ljava/lang/String;
    .end local v2           #length:I
    .end local v3           #rawData:[B
    :cond_8f
    const/4 v5, 0x1

    move v2, v5

    goto :goto_52
.end method

.method private validateResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)Z
    .registers 4
    .parameter "resMsg"

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-eqz v0, :cond_f

    .line 1707
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compareTo(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)Z

    move-result v0

    .line 1709
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkSessionEnd(Landroid/os/Handler;)V

    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkProactiveCmd(Landroid/os/Handler;)V

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkEvent(Landroid/os/Handler;)V

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkCallSetUp(Landroid/os/Handler;)V

    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 385
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 27
    .parameter "msg"

    .prologue
    .line 1403
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_618

    .line 1675
    :pswitch_8
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized STK command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 1408
    :pswitch_26
    const-string/jumbo v5, "ril message arrived"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1409
    const/16 v19, 0x0

    .line 1410
    .local v19, data:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_51

    .line 1411
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1412
    .local v16, ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_51

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_51

    .line 1414
    :try_start_49
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    .end local v19           #data:Ljava/lang/String;
    check-cast v19, Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/ClassCastException; {:try_start_49 .. :try_end_51} :catch_68

    .line 1420
    .end local v16           #ar:Landroid/os/AsyncResult;
    .restart local v19       #data:Ljava/lang/String;
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    .line 1677
    .end local v19           #data:Ljava/lang/String;
    .end local p1
    :cond_67
    :goto_67
    :pswitch_67
    return-void

    .line 1415
    .restart local v16       #ar:Landroid/os/AsyncResult;
    .restart local p1
    :catch_68
    move-exception v5

    move-object/from16 v20, v5

    .line 1416
    .local v20, e:Ljava/lang/ClassCastException;
    goto :goto_67

    .line 1423
    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    :pswitch_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-object v5, v0

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    goto :goto_67

    .line 1428
    :pswitch_80
    const-string v5, "MSG_ID_PHONE_DISCONNECT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1429
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_67

    .line 1430
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v6, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1432
    .local v21, intent:Landroid/content/Intent;
    if-nez v21, :cond_ca

    .line 1433
    const-string v5, "fail to make call intent"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v6, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_67

    .line 1437
    :cond_ca
    const/high16 v5, 0x1000

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1439
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSetupCallDisc:Z

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_67

    .line 1449
    .end local v21           #intent:Landroid/content/Intent;
    :pswitch_ee
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleRilMsg(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    goto/16 :goto_67

    .line 1452
    .restart local p1
    :pswitch_fb
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V

    goto/16 :goto_67

    .line 1455
    .restart local p1
    :pswitch_108
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    iget v6, v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->event:I

    .line 1456
    .local v6, event:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    iget v7, v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->sourceID:I

    .line 1457
    .local v7, sourceId:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    iget v8, v5, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->destinationID:I

    .line 1458
    .local v8, destinationId:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;->additionalInfo:[B

    move-object v9, v0

    .line 1459
    .local v9, additionalInfo:[B
    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/stk/StkService;->eventDownload(III[BZ)V

    goto/16 :goto_67

    .line 1462
    .end local v6           #event:I
    .end local v7           #sourceId:I
    .end local v8           #destinationId:I
    .end local v9           #additionalInfo:[B
    .restart local p1
    :pswitch_138
    const-string v5, "handleMsg : MSG_ID_RELEASE_COMPLETE_MESSAGE"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1463
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    move v5, v0

    packed-switch v5, :pswitch_data_644

    :pswitch_148
    goto/16 :goto_67

    .line 1466
    :pswitch_14a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 1467
    const/16 v24, 0x0

    .line 1468
    .local v24, ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_16f

    .line 1469
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1470
    .restart local v16       #ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_16f

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_16f

    .line 1472
    :try_start_167
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    .end local v24           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    check-cast v24, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :try_end_16f
    .catch Ljava/lang/ClassCastException; {:try_start_167 .. :try_end_16f} :catch_1e6

    .line 1479
    .end local v16           #ar:Landroid/os/AsyncResult;
    .restart local v24       #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :cond_16f
    if-nez v24, :cond_176

    .line 1480
    new-instance v24, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;

    .end local v24           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;-><init>()V

    .line 1483
    .restart local v24       #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :cond_176
    const-string v5, "got ReleaseComplete and need it"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    if-eqz v5, :cond_201

    .line 1486
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCallType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1487
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_1eb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_SS:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-eq v5, v6, :cond_1ca

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallType:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallType;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallType;->CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/gsm/stk/CallType;

    if-ne v5, v6, :cond_1eb

    .line 1489
    :cond_1ca
    const-string/jumbo v5, "send fail TR "

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1473
    .end local v24           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    .restart local v16       #ar:Landroid/os/AsyncResult;
    :catch_1e6
    move-exception v5

    move-object/from16 v20, v5

    .line 1474
    .restart local v20       #e:Ljava/lang/ClassCastException;
    goto/16 :goto_67

    .line 1493
    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    .restart local v24       #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v24

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;Lcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1496
    :cond_201
    const-string v5, "mCurrntCmd = null error handle is needed"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_67

    .line 1502
    .end local v24           #ssReleaseCompleteNotification:Lcom/android/internal/telephony/gsm/SSReleaseCompleteNotification;
    :pswitch_20b
    const-string/jumbo v5, "mWaitingSetupCallHoldResult = true"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1503
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1510
    :pswitch_22a
    const-string v5, "MSG_ID_TIMEOUT timeout!!!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    if-nez v5, :cond_241

    .line 1512
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    goto/16 :goto_67

    .line 1515
    :cond_241
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    move v5, v0

    packed-switch v5, :pswitch_data_64e

    .line 1573
    :cond_249
    :goto_249
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    goto/16 :goto_67

    .line 1519
    :pswitch_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v5, v5, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v6, 0x11

    if-ne v5, v6, :cond_28f

    .line 1520
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_27d

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_249

    .line 1523
    :cond_27d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_249

    .line 1525
    :cond_28f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v5, v5, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_249

    .line 1526
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_2bb

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_249

    .line 1529
    :cond_2bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_249

    .line 1534
    :pswitch_2ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x7

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_249

    .line 1538
    :pswitch_2e1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_301

    .line 1539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_249

    .line 1541
    :cond_301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_249

    .line 1547
    :pswitch_314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez v5, :cond_33d

    .line 1548
    const-string/jumbo v5, "setup call address is null"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1552
    :cond_33d
    new-instance v21, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string/jumbo v6, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getCallSettings()Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1554
    .restart local v21       #intent:Landroid/content/Intent;
    if-nez v21, :cond_378

    .line 1555
    const-string v5, "fail to make call intent"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1559
    :cond_378
    const/high16 v5, 0x1000

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1560
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 1561
    const-string v5, "*************call intent"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_249

    .line 1569
    .end local v21           #intent:Landroid/content/Intent;
    :pswitch_3a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_249

    .line 1576
    :pswitch_3b7
    const-string v5, "MSG_ID_SEND_DTMF_RESULT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1577
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 1578
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_67

    .line 1579
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1580
    .restart local v16       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_417

    .line 1581
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    .line 1582
    .local v18, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v6, :cond_3fb

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x7

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1585
    :cond_3fb
    const-string/jumbo v5, "send DTMF Error except GENERIC_FAILURE!!!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1589
    .end local v18           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1594
    .end local v16           #ar:Landroid/os/AsyncResult;
    :pswitch_42a
    const-string v5, "handleMsg : MSG_ID_SEND_SMS_RESULT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1596
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_67

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    if-eqz v5, :cond_67

    .line 1600
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 1601
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Msg ID data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1602
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 1603
    .local v23, result:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_48e

    .line 1604
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1605
    .restart local v16       #ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_48e

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_48e

    .line 1607
    :try_start_480
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object/from16 v23, v0
    :try_end_48e
    .catch Ljava/lang/ClassCastException; {:try_start_480 .. :try_end_48e} :catch_4bc

    .line 1613
    .end local v16           #ar:Landroid/os/AsyncResult;
    :cond_48e
    const/4 v5, 0x0

    aget v5, v23, v5

    sparse-switch v5, :sswitch_data_65c

    .line 1637
    const-string v5, "SMS SEND GENERIC FAIL"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1638
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_572

    .line 1639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1608
    .restart local v16       #ar:Landroid/os/AsyncResult;
    :catch_4bc
    move-exception v5

    move-object/from16 v20, v5

    .line 1609
    .restart local v20       #e:Ljava/lang/ClassCastException;
    goto/16 :goto_67

    .line 1616
    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    :sswitch_4c1
    const-string v5, "SMS SEND OK"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_4e9

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1620
    :cond_4e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1623
    :sswitch_4fc
    const-string v5, "SMS SEND FAIL - MEMORY NOT AVAILABLE"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1624
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_524

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1627
    :cond_524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1630
    :sswitch_537
    const-string v5, "SMS SEND FAIL RETRY"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1631
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCallControlResultCode:I

    move v5, v0

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    if-ne v5, v6, :cond_55f

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1634
    :cond_55f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1641
    :cond_572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v5, v0

    iget-object v11, v5, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/gsm/stk/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1647
    .end local v23           #result:[I
    .restart local p1
    :pswitch_585
    const-string v5, "handleMsg : MSG_ID_CALL_CONTROL_RESULT"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1648
    const/16 v17, 0x0

    .line 1649
    .local v17, callcontrol_result:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_5af

    .line 1650
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    .line 1651
    .restart local v16       #ar:Landroid/os/AsyncResult;
    if-eqz v16, :cond_5af

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_5af

    .line 1653
    :try_start_5a7
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v17, v0

    .end local v17           #callcontrol_result:Ljava/lang/String;
    check-cast v17, Ljava/lang/String;
    :try_end_5af
    .catch Ljava/lang/ClassCastException; {:try_start_5a7 .. :try_end_5af} :catch_5d4

    .line 1659
    .end local v16           #ar:Landroid/os/AsyncResult;
    .restart local v17       #callcontrol_result:Ljava/lang/String;
    :cond_5af
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call control result data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1660
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleCallControlResultNoti(Ljava/lang/String;)V

    goto/16 :goto_67

    .line 1654
    .end local v17           #callcontrol_result:Ljava/lang/String;
    .restart local v16       #ar:Landroid/os/AsyncResult;
    :catch_5d4
    move-exception v5

    move-object/from16 v20, v5

    .line 1655
    .restart local v20       #e:Ljava/lang/ClassCastException;
    goto/16 :goto_67

    .line 1663
    .end local v16           #ar:Landroid/os/AsyncResult;
    .end local v20           #e:Ljava/lang/ClassCastException;
    :pswitch_5d9
    const-string/jumbo v5, "pause 3 secs"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1664
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->processDTMFString()V

    goto/16 :goto_67

    .line 1667
    :pswitch_5e7
    const/16 v22, 0x0

    .line 1668
    .local v22, res:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_67

    .line 1670
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    .end local v22           #res:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;
    check-cast v22, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;

    .line 1671
    .restart local v22       #res:Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v11, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v12, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->hasAdditionalInfo:Z

    move v13, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->AdditionalInfo:I

    move v14, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPResponseMessage;->data:Lcom/android/internal/telephony/gsm/stk/ResponseData;

    move-object v15, v0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_67

    .line 1403
    :pswitch_data_618
    .packed-switch 0x1
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_6c
        :pswitch_26
        :pswitch_fb
        :pswitch_8
        :pswitch_138
        :pswitch_22a
        :pswitch_ee
        :pswitch_3b7
        :pswitch_42a
        :pswitch_585
        :pswitch_108
        :pswitch_80
        :pswitch_5d9
        :pswitch_5e7
        :pswitch_8
        :pswitch_8
        :pswitch_67
    .end packed-switch

    .line 1463
    :pswitch_data_644
    .packed-switch 0x1
        :pswitch_14a
        :pswitch_148
        :pswitch_20b
    .end packed-switch

    .line 1515
    :pswitch_data_64e
    .packed-switch 0x1
        :pswitch_251
        :pswitch_2e1
        :pswitch_314
        :pswitch_3a4
        :pswitch_2ce
    .end packed-switch

    .line 1613
    :sswitch_data_65c
    .sparse-switch
        0x0 -> :sswitch_4c1
        0x8016 -> :sswitch_4fc
        0x802a -> :sswitch_537
    .end sparse-switch
.end method

.method public isAirplaneMode()Z
    .registers 3

    .prologue
    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhone.mCM.getRadioState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1988
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
    .registers 4
    .parameter "resMsg"

    .prologue
    .line 1681
    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "onCmdResponse()"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_14

    .line 1682
    if-nez p1, :cond_b

    .line 1688
    :goto_9
    monitor-exit p0

    return-void

    .line 1686
    :cond_b
    const/4 v1, 0x6

    :try_start_c
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1687
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_14

    goto :goto_9

    .line 1681
    .end local v0           #msg:Landroid/os/Message;
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/gsm/stk/StkEnvelopeMessage;)V
    .registers 4
    .parameter "eventMsg"

    .prologue
    .line 1692
    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "onEventDownload()"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    .line 1693
    if-nez p1, :cond_b

    .line 1699
    :goto_9
    monitor-exit p0

    return-void

    .line 1697
    :cond_b
    const/16 v1, 0xe

    :try_start_d
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1698
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    goto :goto_9

    .line 1692
    .end local v0           #msg:Landroid/os/Message;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method processDTMFString()V
    .registers 6

    .prologue
    const/16 v4, 0x70

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dtmfStringLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    DTMFString : <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    const/4 v0, 0x0

    .line 528
    .local v0, countP:I
    :goto_31
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    if-ge v1, v2, :cond_56

    .line 529
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_61

    .line 530
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendDtmfLastRequest(C)V

    .line 549
    :cond_56
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    mul-int/lit16 v2, v2, 0xdac

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->startTimeOut(II)V

    .line 550
    :goto_60
    return-void

    .line 534
    :cond_61
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_ba

    .line 535
    add-int/lit8 v0, v0, 0x1

    .line 537
    :goto_71
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtmfStringLength:I

    if-ge v1, v2, :cond_8e

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_8e

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 540
    :cond_8e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xbb8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xbb8

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 542
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    goto :goto_60

    .line 545
    :cond_ba
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendDtmfRequest(C)V

    .line 547
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mDtmfString:Lcom/android/internal/telephony/gsm/stk/DtmfString;

    iget v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/gsm/stk/DtmfString;->pointer:I

    goto/16 :goto_31
.end method

.method sendDtmfLastRequest(C)V
    .registers 4
    .parameter "c"

    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDtmfLastRequest ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 561
    return-void
.end method

.method sendDtmfRequest(C)V
    .registers 4
    .parameter "c"

    .prologue
    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDtmfRequest ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 556
    return-void
.end method

.method public sendSessionEndTerminalResponseForAirplaneMode()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1b

    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    .line 1100
    :cond_1b
    return-void
.end method

.method public declared-synchronized sentTerminalResponseForSetupMenu(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1702
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->isTerminalResponseForSEUPMENU:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1703
    monitor-exit p0

    return-void

    .line 1702
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEventListChannelStatus(Z)V
    .registers 3
    .parameter "val"

    .prologue
    .line 1979
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mStkBIPMgr:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    iput-boolean p1, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->monitorChannelStatusEvent:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 1980
    monitor-exit p0

    return-void

    .line 1979
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEventListDataAvailable(Z)V
    .registers 3
    .parameter "val"

    .prologue
    .line 1983
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mStkBIPMgr:Lcom/android/internal/telephony/gsm/stk/StkBIPManager;

    iput-boolean p1, v0, Lcom/android/internal/telephony/gsm/stk/StkBIPManager;->monitorDataDownloadEvent:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 1984
    monitor-exit p0

    return-void

    .line 1983
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startTimeOut(II)V
    .registers 6
    .parameter "timeDest"
    .parameter "duration"

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->cancelTimeOut()V

    .line 449
    iput p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mTimeoutDest:I

    .line 450
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 451
    return-void
.end method

.method public declared-synchronized triggerCmd(Ljava/lang/String;)V
    .registers 6
    .parameter "cmd"

    .prologue
    .line 1966
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trigger cmd() cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1968
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1969
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1970
    .local v1, msg:Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1971
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 1972
    monitor-exit p0

    return-void

    .line 1966
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

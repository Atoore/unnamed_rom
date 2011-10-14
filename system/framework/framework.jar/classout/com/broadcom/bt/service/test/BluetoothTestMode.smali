.class public final Lcom/broadcom/bt/service/test/BluetoothTestMode;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothTestMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/test/BluetoothTestMode$1;,
        Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;,
        Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_BTLD_API_CMD_IND:Ljava/lang/String; = "com.broadcom.bt.app.test.action.ON_BTLD_API_CMD_IND"

.field public static final ACTION_ON_ENABLE_BTSNOOP:Ljava/lang/String; = "com.broadcom.bt.app.test.action.ON_ENABLE_BTSNOOP"

.field public static final ACTION_ON_ENTER_DUT_MODE:Ljava/lang/String; = "com.broadcom.bt.app.test.action.ON_ENTER_DUT_MODE"

.field public static final ACTION_ON_ENTER_TEST_MODE:Ljava/lang/String; = "com.broadcom.bt.app.test.action.ON_ENTER_TEST_MODE"

.field public static final ACTION_ON_EXIT_DUT_MODE:Ljava/lang/String; = "com.broadcom.bt.app.test.action.ON_EXIT_DUT_MODE"

.field public static final ACTION_ON_EXIT_TEST_MODE:Ljava/lang/String; = "com.broadcom.bt.app.test.action.ON_EXIT_TEST_MODE"

.field public static final ACTION_ON_GET_BTSNOOP_STATE:Ljava/lang/String; = "com.broadcom.bt.app.test.action.ON_GET_BTSNOOP_STATE"

.field public static final ACTION_ON_GET_TEST_MODE:Ljava/lang/String; = "com.broadcom.bt.app.test.action.ON_GET_TEST_MODE"

.field public static final ACTION_ON_SET_TEST_MODE:Ljava/lang/String; = "com.broadcom.bt.app.test.action.ON_SET_TEST_MODE"

.field public static final ACTION_ON_TX_RX_TEST:Ljava/lang/String; = "com.broadcom.bt.app.test.action.ON_TX_RX_TEST"

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.test.action."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final AFH_CLASS_OFF:B = -0x1t

.field public static final AFH_FIRST_IDX:B = 0x0t

.field public static final AFH_LAST_IDX:B = 0x1t

.field public static final BTLD_CMD_SEND:I = 0x1010000

.field public static final BTLD_CMD_STATUS_FAILURE:B = 0x1t

.field public static final BTLD_CMD_STATUS_IDX:B = 0x0t

.field public static final BTLD_CMD_STATUS_SUCCESS:B = 0x0t

.field private static final D:Z = true

.field public static final EXTRA_CMD:Ljava/lang/String; = "CMD"

.field public static final EXTRA_LENGTH:Ljava/lang/String; = "LENGTH"

.field public static final EXTRA_MODE:Ljava/lang/String; = "MODE"

.field public static final EXTRA_PAYLOAD:Ljava/lang/String; = "PAYLOAD"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final HCI_AFH_SET_CHN_CLASS:I = 0xc3f

.field public static final HCI_AFH_SET_CHN_CLASS_LEN:I = 0x2

.field public static final HCI_SSP_DEBUG_MODE:I = 0x1804

.field public static final HCI_SSP_DEBUG_MODE_LEN:I = 0x1

.field public static final INSTANCE_START_IDX:B = 0x0t

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_test"

.field public static final SSP_DEBUG_MODE_IDX:B = 0x0t

.field public static final SSP_DEBUG_MODE_OFF:B = 0x4t

.field public static final SSP_DEBUG_MODE_ON:B = 0x5t

.field private static final TAG:Ljava/lang/String; = "BluetoothTestMode"

.field public static final TST_BTSNOOP_RUNNING:I = 0x53

.field public static final TST_DISABLE_BTSNOOP:I = 0x52

.field public static final TST_DISABLE_TESTMODE:I = 0x0

.field public static final TST_ENABLE_BTSNOOP:I = 0x51

.field public static final TST_ENABLE_TESTMODE:I = 0x1

.field public static final TST_GET_TESTMODE:I = -0x1

.field public static final TST_SET_DUT:I = 0x11

.field public static final TST_SET_RX_TEST:I = 0x41

.field public static final TST_SET_TRACE_LEVEL:I = -0x10000

.field public static final TST_SET_TX_CARRIER_FREQ:I = 0x21

.field public static final TST_SET_TX_TEST:I = 0x31


# instance fields
.field private final mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

.field private mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "com.broadcom.bt.app.test.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;

    .line 171
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 269
    if-nez p0, :cond_7

    .line 270
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 272
    .restart local p0
    :cond_7
    const-string v0, "com.broadcom.bt.app.test.action.ON_BTLD_API_CMD_IND"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v0, "com.broadcom.bt.app.test.action.ON_ENTER_DUT_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v0, "com.broadcom.bt.app.test.action.ON_ENTER_TEST_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v0, "com.broadcom.bt.app.test.action.ON_EXIT_DUT_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v0, "com.broadcom.bt.app.test.action.ON_EXIT_TEST_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v0, "com.broadcom.bt.app.test.action.ON_ENABLE_BTSNOOP"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v0, "com.broadcom.bt.app.test.action.ON_GET_BTSNOOP_STATE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v0, "com.broadcom.bt.app.test.action.ON_GET_TEST_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v0, "com.broadcom.bt.app.test.action.ON_SET_TEST_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v0, "com.broadcom.bt.app.test.action.ON_TX_RX_TEST"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .registers 5
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 160
    const-string v1, "bluetooth_test"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 161
    const-string v1, "BluetoothTestMode"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x0

    .line 165
    :goto_10
    return v1

    .line 164
    :cond_11
    new-instance v0, Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-direct {v0}, Lcom/broadcom/bt/service/test/BluetoothTestMode;-><init>()V

    .line 165
    .local v0, p:Lcom/broadcom/bt/service/test/BluetoothTestMode;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.BluetoothTestModeService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method

.method private registerEventhandler(BLcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;)V
    .registers 6
    .parameter "instance"
    .parameter "callback"

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 446
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 447
    const-string v0, "BluetoothTestMode"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerEventhandler( instance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :goto_36
    return-void

    .line 451
    :cond_37
    const-string v0, "BluetoothTestMode"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTestMode( instance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) already registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method


# virtual methods
.method public SendBtldApiCmd(II[B)I
    .registers 8
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    const-string v3, "BluetoothTestMode"

    .line 434
    const-string v1, "BluetoothTestMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBtldApiCmd(cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :try_start_2e
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->SendBtldApiCmd(II[B)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_35

    move-result v1

    .line 440
    :goto_34
    return v1

    .line 438
    :catch_35
    move-exception v1

    move-object v0, v1

    .line 439
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, "SendBtldApiCmd()"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    const/4 v1, -0x1

    goto :goto_34
.end method

.method public Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I
    .registers 5
    .parameter "txRxTestParam"

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 423
    const-string v1, "BluetoothTestMode"

    const-string v1, "Set_TX_Test"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    .line 428
    :goto_f
    return v1

    .line 426
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 427
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public createTestMode(BLcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;)I
    .registers 9
    .parameter "instance"
    .parameter "handler"

    .prologue
    const/4 v3, 0x0

    .line 200
    const-string v0, "BluetoothTestMode"

    const-string v1, "createTestMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v5, 0xc8

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->createTestMode(BLcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized createTestMode(BLcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)I
    .registers 11
    .parameter "instance"
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 223
    monitor-enter p0

    const/4 v1, -0x1

    .line 224
    .local v1, ret_val:I
    :try_start_4
    const-string v2, "BluetoothTestMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createTestMode( instance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 244
    const-string v2, "BluetoothTestMode"

    const-string v3, "createTestMode() first register!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_55

    .line 246
    :try_start_31
    new-instance v2, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeCallback;-><init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;Lcom/broadcom/bt/service/test/BluetoothTestMode$1;)V

    iput-object v2, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mCallback:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    .line 247
    iget-object v2, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mCallback:Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v2, v3}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    :try_end_40
    .catchall {:try_start_31 .. :try_end_40} :catchall_55
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_40} :catch_48

    move-result v1

    .line 256
    :goto_41
    if-ltz v1, :cond_46

    .line 257
    :try_start_43
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->registerEventhandler(BLcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_55

    .line 259
    :cond_46
    monitor-exit p0

    return v1

    .line 248
    :catch_48
    move-exception v2

    move-object v0, v2

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4a
    const-string v2, "BluetoothTestMode"

    const-string v3, "Call createTestMode Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_55

    .line 250
    const/4 v1, -0x1

    .line 251
    goto :goto_41

    .line 254
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_53
    const/4 v1, 0x1

    goto :goto_41

    .line 223
    :catchall_55
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createTestMode(BLcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;Landroid/content/IntentFilter;ZI)I
    .registers 12
    .parameter "instance"
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 214
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p5

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->createTestMode(BLcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;Landroid/content/IntentFilter;ZI)I
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableBtSnoop(I)I
    .registers 6
    .parameter "enable"

    .prologue
    const-string v3, "BluetoothTestMode"

    .line 372
    const-string v1, "BluetoothTestMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableBtSnoop: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :try_start_1a
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->enableBtSnoop(I)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_21

    move-result v1

    .line 377
    :goto_20
    return v1

    .line 375
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 376
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    const/4 v1, -0x1

    goto :goto_20
.end method

.method public enterDUTMode()I
    .registers 4

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 402
    const-string v1, "BluetoothTestMode"

    const-string v1, "enterDUTMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->enterDUTMode()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    .line 407
    :goto_f
    return v1

    .line 405
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 406
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public enterTestMode()I
    .registers 4

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 330
    const-string v1, "BluetoothTestMode"

    const-string v1, "enterTestMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->enterTestMode()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    .line 335
    :goto_f
    return v1

    .line 333
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 334
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public exitCurrentTestMode()I
    .registers 5

    .prologue
    const-string v3, "BluetoothTestMode"

    .line 393
    :try_start_2
    const-string v1, "BluetoothTestMode"

    const-string v2, "exitCurrentTestMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->exitCurrentTestMode()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 397
    :goto_f
    return v1

    .line 395
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 396
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestMode"

    const-string v1, "Call exitCurrentTestMode() Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public exitDUTMode()I
    .registers 4

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 413
    const-string v1, "BluetoothTestMode"

    const-string v1, "exitDUTMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->exitDUTMode()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    .line 418
    :goto_f
    return v1

    .line 416
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 417
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public exitTestMode()I
    .registers 4

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 340
    const-string v1, "BluetoothTestMode"

    const-string v1, "exitTestMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->exitTestMode()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    .line 345
    :goto_f
    return v1

    .line 343
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 344
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public declared-synchronized finish()V
    .registers 2

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 309
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 310
    monitor-exit p0

    return-void

    .line 301
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBtSnoopState()I
    .registers 4

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 382
    const-string v1, "BluetoothTestMode"

    const-string v1, "getBtSnoopState"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->getBtSnoopState()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    .line 387
    :goto_f
    return v1

    .line 385
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 386
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public getTestMode()I
    .registers 4

    .prologue
    const-string v2, "BluetoothTestMode"

    .line 351
    const-string v1, "BluetoothTestMode"

    const-string v1, "getTestMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->getTestMode()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    .line 356
    :goto_f
    return v1

    .line 354
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 355
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    const/4 v1, -0x1

    goto :goto_f
.end method

.method protected init(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "service"

    .prologue
    .line 180
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_8

    .line 182
    const/4 v1, 0x1

    .line 185
    :goto_7
    return v1

    .line 183
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 184
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothTestMode"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public setTraceLevel(BB)I
    .registers 7
    .parameter "layer_id"
    .parameter "level"

    .prologue
    const-string v3, "BluetoothTestMode"

    .line 361
    const-string v1, "BluetoothTestMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTraceLevel( layer_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :try_start_2b
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mService:Lcom/broadcom/bt/service/test/IBluetoothTestModeService;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/test/IBluetoothTestModeService;->setTraceLevel(BB)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_32

    move-result v1

    .line 367
    :goto_31
    return v1

    .line 365
    :catch_32
    move-exception v1

    move-object v0, v1

    .line 366
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothTestMode"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    const/4 v1, -0x1

    goto :goto_31
.end method

.method public declared-synchronized unregisterEventHandler()V
    .registers 3

    .prologue
    .line 287
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothTestMode"

    const-string/jumbo v1, "unregisterEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 298
    monitor-exit p0

    return-void

    .line 287
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

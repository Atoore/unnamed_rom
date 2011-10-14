.class public final Lcom/broadcom/bt/service/test/BluetoothTestModeService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothTestModeService.java"


# static fields
.field public static final DISABLE_RX_TEST_MODE:I = 0x3

.field public static final DISABLE_TESTMODE:I = 0x0

.field public static final DISABLE_TX_TEST_MODE:I = 0x0

.field public static final ENABLE_RX_TEST_MODE:I = 0x2

.field public static final ENABLE_TESTMODE:I = 0x1

.field public static final ENABLE_TX_TEST_MODE:I = 0x1

.field public static final GET_TESTMODE:I = -0x1

.field public static final SET_DUT:I = 0x11

.field public static final SET_RX_TEST:I = 0x41

.field public static final SET_TRACE_LEVEL:I = -0x10000

.field public static final SET_TX_CARRIER_FREQ:I = 0x21

.field public static final SET_TX_TEST:I = 0x31

.field public static final TAG:Ljava/lang/String; = "BluetoothTestModeService"


# instance fields
.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeData:I

.field private mTxRxParams:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 57
    invoke-static {}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->classInitNative()Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private native SendBtldApiCmdNative(II[B)I
.end method

.method private native Set_TestNative(Ljava/lang/Object;)V
.end method

.method private static native classInitNative()Z
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native createTestModeNative()V
.end method

.method private native enableBtSnoopNative(I)V
.end method

.method private native enterDUTModeNative()V
.end method

.method private native exitDUTModeNative()V
.end method

.method private native getBtSnoopStateNative()V
.end method

.method private native initializeNativeDataNative()Z
.end method

.method private native setTestModeNative(I)V
.end method


# virtual methods
.method SendBtldApiCmd(II[B)I
    .registers 9
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    const-string v4, "BluetoothTestModeService"

    .line 311
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendBtldApiCmd(cmd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v1, "BluetoothTestModeService"

    const-string v2, "SendBtldApiCmd() call SendBtldApiCmd()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->SendBtldApiCmdNative(II[B)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_3a

    move-result v1

    .line 316
    :goto_39
    return v1

    .line 314
    :catch_3a
    move-exception v1

    move-object v0, v1

    .line 315
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call SendBtldApiCmdNative Failed"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    const/4 v1, -0x1

    goto :goto_39
.end method

.method Set_Tx_Rx_Test(Lcom/broadcom/bt/service/test/TxRxTestParams;)I
    .registers 6
    .parameter "txRxTestParam"

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 285
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Set_TX_Test() call Set_TX_TestNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mTxRxParams:Ljava/lang/Object;

    .line 287
    iget-object v1, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mTxRxParams:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->Set_TestNative(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12

    .line 292
    const/4 v1, 0x1

    :goto_11
    return v1

    .line 288
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 289
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call Set_TX_TestNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    const/4 v1, -0x1

    goto :goto_11
.end method

.method declared-synchronized connectTestMode()I
    .registers 5

    .prologue
    const-string v2, "BluetoothTestModeService"

    .line 99
    monitor-enter p0

    :try_start_3
    const-string v2, "BluetoothTestModeService"

    const-string v3, "connectTestMode() calls createTestModeNative()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, ret_val:I
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->createTestModeNative()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10

    .line 106
    :goto_e
    monitor-exit p0

    return v1

    .line 102
    .end local v1           #ret_val:I
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 103
    .local v0, e:Ljava/lang/Exception;
    :try_start_12
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Call createTestModeNative Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1b

    .line 104
    const/4 v1, -0x1

    .restart local v1       #ret_val:I
    goto :goto_e

    .line 99
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ret_val:I
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized createTestMode(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .registers 6
    .parameter "callback"

    .prologue
    const-string v2, "BluetoothTestModeService"

    .line 114
    monitor-enter p0

    :try_start_3
    const-string v2, "BluetoothTestModeService"

    const-string v3, "createTestMode() calls createTestModeNative()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I

    move-result v1

    .line 116
    .local v1, ret_val:I
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->createTestModeNative()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_13

    .line 121
    :goto_11
    monitor-exit p0

    return v1

    .line 117
    .end local v1           #ret_val:I
    :catch_13
    move-exception v2

    move-object v0, v2

    .line 118
    .local v0, e:Ljava/lang/Exception;
    :try_start_15
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Call createTestModeNative Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1e

    .line 119
    const/4 v1, -0x1

    .restart local v1       #ret_val:I
    goto :goto_11

    .line 114
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ret_val:I
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized enableBtSnoop(I)I
    .registers 6
    .parameter "enable"

    .prologue
    const-string v1, "BluetoothTestModeService"

    .line 222
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothTestModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableBtSnoop enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->enableBtSnoopNative(I)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_21

    .line 229
    const/4 v1, 0x1

    :goto_1f
    monitor-exit p0

    return v1

    .line 225
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 226
    .local v0, e:Ljava/lang/Exception;
    :try_start_23
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call enableBtSnoopNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2c

    .line 227
    const/4 v1, -0x1

    goto :goto_1f

    .line 222
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method enterDUTMode()I
    .registers 5

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 257
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "enterDUTMode() call enterDUTModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->enterDUTModeNative()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    .line 263
    const/4 v1, 0x1

    :goto_d
    return v1

    .line 259
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 260
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call enterDUTModeNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    const/4 v1, -0x1

    goto :goto_d
.end method

.method declared-synchronized enterTestMode()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const-string v1, "BluetoothTestModeService"

    .line 132
    monitor-enter p0

    :try_start_4
    const-string v1, "BluetoothTestModeService"

    const-string v2, "enterTestMode() call enterTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    move v1, v3

    .line 138
    :goto_10
    monitor-exit p0

    return v1

    .line 134
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 135
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call enterTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    .line 136
    const/4 v1, -0x1

    goto :goto_10

    .line 132
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized exitCurrentTestMode()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const-string v1, "BluetoothTestModeService"

    .line 201
    monitor-enter p0

    :try_start_4
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitCurrentTestMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    move v1, v3

    .line 207
    :goto_10
    monitor-exit p0

    return v1

    .line 203
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 204
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call exitCurrentTestMode() Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    .line 205
    const/4 v1, -0x1

    goto :goto_10

    .line 201
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method exitDUTMode()I
    .registers 5

    .prologue
    const-string v3, "BluetoothTestModeService"

    .line 271
    :try_start_2
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitDUTMode() call exitDUTModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->exitDUTModeNative()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    .line 277
    const/4 v1, 0x1

    :goto_d
    return v1

    .line 273
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 274
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothTestModeService"

    const-string v1, "Call exitDUTModeNative Failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    const/4 v1, -0x1

    goto :goto_d
.end method

.method declared-synchronized exitTestMode()I
    .registers 4

    .prologue
    const-string v1, "BluetoothTestModeService"

    .line 147
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothTestModeService"

    const-string v2, "exitTestMode() call exitTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_11

    .line 153
    const/4 v1, 0x1

    :goto_f
    monitor-exit p0

    return v1

    .line 149
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 150
    .local v0, e:Ljava/lang/Exception;
    :try_start_13
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call exitTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    .line 151
    const/4 v1, -0x1

    goto :goto_f

    .line 147
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public finish()V
    .registers 1

    .prologue
    .line 581
    return-void
.end method

.method declared-synchronized getBtSnoopState()I
    .registers 4

    .prologue
    const-string v1, "BluetoothTestModeService"

    .line 242
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothTestModeService"

    const-string v2, "getBtSnoopState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->getBtSnoopStateNative()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_10

    .line 249
    const/4 v1, 0x1

    :goto_e
    monitor-exit p0

    return v1

    .line 245
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 246
    .local v0, e:Ljava/lang/Exception;
    :try_start_12
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call getBtSnoopStateNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1b

    .line 247
    const/4 v1, -0x1

    goto :goto_e

    .line 242
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const-string v0, "bluetooth_test"

    return-object v0
.end method

.method declared-synchronized getTestMode()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    const-string v1, "BluetoothTestModeService"

    .line 159
    monitor-enter p0

    :try_start_4
    const-string v1, "BluetoothTestModeService"

    const-string v2, "getTestMode() call setTestModeNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_12

    .line 165
    const/4 v1, 0x1

    :goto_10
    monitor-exit p0

    return v1

    .line 161
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 162
    .local v0, e:Ljava/lang/Exception;
    :try_start_14
    const-string v1, "BluetoothTestModeService"

    const-string v2, "Call setTestModeNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1d

    move v1, v3

    .line 163
    goto :goto_10

    .line 159
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized init()V
    .registers 2

    .prologue
    .line 562
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 564
    monitor-exit p0

    return-void

    .line 562
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onBtldApiCmdInd(II[B)V
    .registers 10
    .parameter "cmd"
    .parameter "len"
    .parameter "payload"

    .prologue
    const-string v5, "BluetoothTestModeService"

    .line 532
    const-string v3, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBtldApiCmdInd(cmd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 544
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3a
    if-ge v1, v0, :cond_54

    .line 546
    :try_start_3c
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onBtldApiCmdInd(II[B)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_47} :catch_4a

    .line 544
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 547
    :catch_4a
    move-exception v3

    move-object v2, v3

    .line 548
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "BluetoothTestModeService"

    const-string v3, "Error: onTx_Rx_Test()"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 551
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_54
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 553
    return-void
.end method

.method onEnableBtSnoop(I)V
    .registers 8
    .parameter "state"

    .prologue
    const-string v5, "BluetoothTestModeService"

    .line 410
    const-string v3, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetTestMode(state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 419
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    if-ge v1, v0, :cond_46

    .line 421
    :try_start_2e
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onEnableBtSnoop(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_39} :catch_3c

    .line 419
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 422
    :catch_3c
    move-exception v3

    move-object v2, v3

    .line 423
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "BluetoothTestModeService"

    const-string v3, "Error: onEnableBtSnoop()"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 426
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_46
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 428
    return-void
.end method

.method onEnterDUTMode(I)V
    .registers 8
    .parameter "status"

    .prologue
    const-string v5, "BluetoothTestModeService"

    .line 453
    const-string v3, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEnterDUTMode(status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 462
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    if-ge v1, v0, :cond_46

    .line 464
    :try_start_2e
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onEnterDUTMode(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_39} :catch_3c

    .line 462
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 465
    :catch_3c
    move-exception v3

    move-object v2, v3

    .line 466
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "BluetoothTestModeService"

    const-string v3, "Error: onEnterDUTMode()"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 469
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_46
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 471
    return-void
.end method

.method onEnterTestMode(I)V
    .registers 8
    .parameter "mode"

    .prologue
    const-string v5, "BluetoothTestModeService"

    .line 367
    const-string v3, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEnterTestMode(mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 376
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    if-ge v1, v0, :cond_46

    .line 378
    :try_start_2e
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onEnterTestMode(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_39} :catch_3c

    .line 376
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 379
    :catch_3c
    move-exception v3

    move-object v2, v3

    .line 380
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "BluetoothTestModeService"

    const-string v3, "Error: onEnterTestMode()"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 383
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_46
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 385
    return-void
.end method

.method onExitDUTMode(I)V
    .registers 8
    .parameter "status"

    .prologue
    const-string v5, "BluetoothTestModeService"

    .line 474
    const-string v3, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onExitDUTMode(status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 483
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    if-ge v1, v0, :cond_46

    .line 485
    :try_start_2e
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onExitDUTMode(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_39} :catch_3c

    .line 483
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 486
    :catch_3c
    move-exception v3

    move-object v2, v3

    .line 487
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "BluetoothTestModeService"

    const-string v3, "Error: onExitDUTMode()"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 490
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_46
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 492
    return-void
.end method

.method onExitTestMode(I)V
    .registers 8
    .parameter "mode"

    .prologue
    const-string v5, "BluetoothTestModeService"

    .line 388
    const-string v3, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onExitTestMode(mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 397
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    if-ge v1, v0, :cond_46

    .line 399
    :try_start_2e
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onExitTestMode(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_39} :catch_3c

    .line 397
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 400
    :catch_3c
    move-exception v3

    move-object v2, v3

    .line 401
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "BluetoothTestModeService"

    const-string v3, "Error: onExitTestMode()"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 404
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_46
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 406
    return-void
.end method

.method onGetBtSnoopState(I)V
    .registers 8
    .parameter "state"

    .prologue
    const-string v5, "BluetoothTestModeService"

    .line 432
    const-string v3, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetTestMode(state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 441
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    if-ge v1, v0, :cond_46

    .line 443
    :try_start_2e
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onGetBtSnoopState(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_39} :catch_3c

    .line 441
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 444
    :catch_3c
    move-exception v3

    move-object v2, v3

    .line 445
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "BluetoothTestModeService"

    const-string v3, "Error: onGetBtSnoopState()"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 448
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_46
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 450
    return-void
.end method

.method onGetTestMode(I)V
    .registers 8
    .parameter "mode"

    .prologue
    const-string v5, "BluetoothTestModeService"

    .line 346
    const-string v3, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGetTestMode(mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 355
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    if-ge v1, v0, :cond_46

    .line 357
    :try_start_2e
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onGetTestMode(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_39} :catch_3c

    .line 355
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 358
    :catch_3c
    move-exception v3

    move-object v2, v3

    .line 359
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "BluetoothTestModeService"

    const-string v3, "Error: onGetTestMode()"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 362
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_46
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 364
    return-void
.end method

.method onSetTestMode(I)V
    .registers 8
    .parameter "mode"

    .prologue
    const-string v5, "BluetoothTestModeService"

    .line 324
    const-string v3, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetTestMode(mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 333
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    if-ge v1, v0, :cond_46

    .line 335
    :try_start_2e
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onSetTestMode(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_39} :catch_3c

    .line 333
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 336
    :catch_3c
    move-exception v3

    move-object v2, v3

    .line 337
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "BluetoothTestModeService"

    const-string v3, "Error: onSetTestMode()"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 340
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_46
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 342
    return-void
.end method

.method onTx_Rx_Test(II)V
    .registers 9
    .parameter "mode"
    .parameter "status"

    .prologue
    const-string v5, "BluetoothTestModeService"

    .line 495
    const-string v3, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTX_Test(mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 506
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3a
    if-ge v1, v0, :cond_54

    .line 508
    :try_start_3c
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;->onTx_Rx_Test(II)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_47} :catch_4a

    .line 506
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 509
    :catch_4a
    move-exception v3

    move-object v2, v3

    .line 510
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "BluetoothTestModeService"

    const-string v3, "Error: onTx_Rx_Test()"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 513
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_54
    iget-object v3, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 515
    return-void
.end method

.method declared-synchronized registerBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)I
    .registers 5
    .parameter "callback"

    .prologue
    const/4 v2, -0x1

    .line 77
    monitor-enter p0

    if-eqz p1, :cond_15

    :try_start_4
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_15

    .line 78
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_1e

    move-result v0

    if-eqz v0, :cond_13

    .line 79
    const/4 v0, 0x0

    .line 85
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    move v0, v2

    .line 81
    goto :goto_11

    .line 84
    :cond_15
    :try_start_15
    const-string v0, "BluetoothTestModeService"

    const-string v1, "#### Call Back is NULL ####"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1e

    move v0, v2

    .line 85
    goto :goto_11

    .line 77
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setTraceLevel(BB)I
    .registers 8
    .parameter "layer_id"
    .parameter "level"

    .prologue
    const-string v2, "BluetoothTestModeService"

    .line 181
    monitor-enter p0

    const/high16 v2, -0x1

    shl-int/lit8 v3, p1, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    and-int/lit16 v3, p2, 0xff

    or-int v1, v2, v3

    .line 182
    .local v1, set_level:I
    :try_start_10
    const-string v2, "BluetoothTestModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTraceLevel( set_level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) call setTestModeNative()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->setTestModeNative(I)V
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_36} :catch_39

    .line 189
    const/4 v2, 0x1

    :goto_37
    monitor-exit p0

    return v2

    .line 185
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 186
    .local v0, e:Ljava/lang/Exception;
    :try_start_3b
    const-string v2, "BluetoothTestModeService"

    const-string v3, "Call setTestModeNative Failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_44

    .line 187
    const/4 v2, -0x1

    goto :goto_37

    .line 181
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_44
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public start()V
    .registers 3

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->initializeNativeDataNative()Z

    move-result v0

    if-nez v0, :cond_e

    .line 568
    const-string v0, "BluetoothTestModeService"

    const-string v1, "initializeNativeDataNative() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_d
    return-void

    .line 571
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->onStateChangeEvent(Z)V

    goto :goto_d
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->cleanupNativeDataNative()V

    .line 576
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->onStateChangeEvent(Z)V

    .line 577
    return-void
.end method

.method declared-synchronized unregisterBluetoothTestModeCallback(Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 90
    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_c

    .line 91
    iget-object v0, p0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 93
    :cond_c
    monitor-exit p0

    return-void

    .line 90
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/broadcom/bt/service/sap/BluetoothSAP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothSAP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/sap/BluetoothSAP$1;,
        Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPBroadcastReceiver;,
        Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_SAP_CONNECTED:Ljava/lang/String; = "com.broadcom.bt.app.sap.action.ON_SAP_CONNECTED"

.field public static final ACTION_ON_SAP_DISCONNECTED:Ljava/lang/String; = "com.broadcom.bt.app.sap.action.ON_SAP_DISCONNECTED"

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.sap.action."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "address"

.field public static final SAPS_DISCONNECT_TYPE_GRACEFUL:I = 0x0

.field public static final SAPS_DISCONNECT_TYPE_IMMEDIATE:I = 0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_sap"

.field private static final TAG:Ljava/lang/String; = "BluetoothSAP"


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

.field private mService:Lcom/broadcom/bt/service/sap/IBluetoothSAPService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const-string v0, "com.broadcom.bt.app.sap.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    .line 113
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/sap/BluetoothSAP;)Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 234
    if-nez p0, :cond_7

    .line 235
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .restart local p0
    :cond_7
    const-string v0, "com.broadcom.bt.app.sap.action.ON_SAP_CONNECTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v0, "com.broadcom.bt.app.sap.action.ON_SAP_DISCONNECTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .registers 5
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 102
    const-string v1, "bluetooth_sap"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 103
    const-string v1, "BluetoothSAP"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, 0x0

    .line 107
    :goto_10
    return v1

    .line 106
    :cond_11
    new-instance v0, Lcom/broadcom/bt/service/sap/BluetoothSAP;

    invoke-direct {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;-><init>()V

    .line 107
    .local v0, p:Lcom/broadcom/bt/service/sap/BluetoothSAP;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.SapService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_10
.end method


# virtual methods
.method public disconnect(B)V
    .registers 5
    .parameter "type"

    .prologue
    const-string v2, "BluetoothSAP"

    .line 265
    const-string v1, "BluetoothSAP"

    const-string v1, "disconnect..."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mService:Lcom/broadcom/bt/service/sap/IBluetoothSAPService;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/sap/IBluetoothSAPService;->disconnect(B)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    .line 273
    :goto_e
    return-void

    .line 270
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 271
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothSAP"

    const-string v1, "disconnect() failed"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 132
    const-string v0, "BluetoothSAP"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 134
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 3

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    if-eqz v0, :cond_8

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    .line 147
    :cond_8
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_16

    .line 148
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    :cond_16
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 162
    monitor-exit p0

    return-void

    .line 142
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "service"

    .prologue
    .line 122
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/sap/IBluetoothSAPService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mService:Lcom/broadcom/bt/service/sap/IBluetoothSAPService;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_8

    .line 124
    const/4 v1, 0x1

    .line 127
    :goto_7
    return v1

    .line 125
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 126
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothSAP"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;)V
    .registers 5
    .parameter "handler"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothSAP"

    const-string/jumbo v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->registerEventHandler(Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 178
    monitor-exit p0

    return-void

    .line 175
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .registers 9
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 197
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    .line 202
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2e

    if-nez v1, :cond_22

    .line 204
    if-nez p2, :cond_e

    .line 205
    const/4 v1, 0x0

    :try_start_a
    invoke-static {v1}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object p2

    .line 207
    :cond_e
    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 208
    new-instance v1, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/sap/BluetoothSAP$SAPBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/sap/BluetoothSAP;Lcom/broadcom/bt/service/sap/BluetoothSAP$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, p2, v3, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_2e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_22} :catch_24

    .line 225
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    .line 211
    :catch_24
    move-exception v1

    move-object v0, v1

    .line 212
    .local v0, t:Ljava/lang/Throwable;
    :try_start_26
    const-string v1, "BluetoothSAP"

    const-string v2, "Error registering broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_2e

    goto :goto_22

    .line 197
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;Landroid/content/IntentFilter;ZI)V
    .registers 6
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 184
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->initEventCallbackHandler()Landroid/os/Handler;

    .line 186
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->initEventCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/broadcom/bt/service/sap/BluetoothSAP;->registerEventHandler(Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 191
    monitor-exit p0

    return-void

    .line 184
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterEventHandler()V
    .registers 3

    .prologue
    .line 243
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothSAP"

    const-string/jumbo v1, "unregisterEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAP;->mEventHandler:Lcom/broadcom/bt/service/sap/IBluetoothSAPEventHandler;

    .line 248
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1a

    .line 249
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 259
    :cond_1a
    monitor-exit p0

    return-void

    .line 243
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

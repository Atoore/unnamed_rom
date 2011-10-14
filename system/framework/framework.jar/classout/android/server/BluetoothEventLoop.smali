.class Landroid/server/BluetoothEventLoop;
.super Ljava/lang/Object;
.source "BluetoothEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothEventLoop$1;,
        Landroid/server/BluetoothEventLoop$EventLoopHandler;,
        Landroid/server/BluetoothEventLoop$EventLooperThread;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final CREATE_DEVICE_ALREADY_EXISTS:I = 0x1

.field private static final CREATE_DEVICE_FAILED:I = -0x1

.field private static final CREATE_DEVICE_SUCCESS:I = 0x0

.field private static final DBG:Z = true

.field private static final EVENT_AGENT_CANCEL:I = 0x3

.field private static final EVENT_ON_DEVICE_CREATED:I = 0x67

.field private static final EVENT_ON_DEVICE_FOUND:I = 0x64

.field private static final EVENT_ON_DEVICE_PROPERTY_CHANGED:I = 0x66

.field private static final EVENT_ON_DEVICE_REMOVED:I = 0x68

.field private static final EVENT_ON_PROPERTY_CHANGED:I = 0x65

.field private static final EVENT_PAIRING_CONSENT_DELAYED_ACCEPT:I = 0x2

.field private static final EVENT_RESTART_BLUETOOTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothEventLoop"


# instance fields
.field private final OPP_STANDALONE_EVENT_LOOP:Z

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAuthorizeAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothService:Landroid/server/BluetoothService;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

.field private mInterrupted:Z

.field private mLooper:Landroid/server/BluetoothEventLoop$EventLooperThread;

.field private mNativeData:I

.field private final mPasskeyAgentRequestData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 154
    invoke-static {}, Landroid/server/BluetoothEventLoop;->classInitNative()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/server/BluetoothService;)V
    .registers 6
    .parameter "context"
    .parameter "adapter"
    .parameter "bluetoothService"

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-static {}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isStandaloneProcess()Z

    move-result v0

    iput-boolean v0, p0, Landroid/server/BluetoothEventLoop;->OPP_STANDALONE_EVENT_LOOP:Z

    .line 160
    iput-object p3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    .line 161
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizeAgentRequestData:Ljava/util/HashMap;

    .line 164
    iput-object p2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 166
    new-instance v0, Landroid/server/BluetoothEventLoop$EventLooperThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/server/BluetoothEventLoop$EventLooperThread;-><init>(Landroid/server/BluetoothEventLoop;Landroid/server/BluetoothEventLoop$1;)V

    iput-object v0, p0, Landroid/server/BluetoothEventLoop;->mLooper:Landroid/server/BluetoothEventLoop$EventLooperThread;

    .line 167
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mLooper:Landroid/server/BluetoothEventLoop$EventLooperThread;

    invoke-virtual {v0}, Landroid/server/BluetoothEventLoop$EventLooperThread;->start()V

    .line 169
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->initializeNativeDataNative()V

    .line 170
    return-void
.end method

.method static synthetic access$002(Landroid/server/BluetoothEventLoop;Landroid/server/BluetoothEventLoop$EventLoopHandler;)Landroid/server/BluetoothEventLoop$EventLoopHandler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    return-object p1
.end method

.method static synthetic access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/server/BluetoothEventLoop;[Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop;->processPropertyChangedEvent([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->processDevicePropertyChangedEvent(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop;->processDeviceCreatedEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop;->processDeviceRemovedEvent(Ljava/lang/String;)V

    return-void
.end method

.method private addDevice(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .parameter "address"
    .parameter "properties"

    .prologue
    .line 210
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, p1, p2}, Landroid/server/BluetoothService;->addRemoteDeviceProperties(Ljava/lang/String;[Ljava/lang/String;)V

    .line 211
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v6, "RSSI"

    invoke-virtual {v5, p1, v6}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, rssi:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v6, "Class"

    invoke-virtual {v5, p1, v6}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, classValue:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v6, "Name"

    invoke-virtual {v5, p1, v6}, Landroid/server/BluetoothService;->getRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, name:Ljava/lang/String;
    if-eqz v3, :cond_60

    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-short v4, v5

    .line 222
    .local v4, rssiValue:S
    :goto_28
    if-eqz v0, :cond_63

    .line 223
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 225
    const-string v5, "android.bluetooth.device.extra.CLASS"

    new-instance v6, Landroid/bluetooth/BluetoothClass;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 227
    const-string v5, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 228
    const-string v5, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 234
    .end local v1           #intent:Landroid/content/Intent;
    :goto_5f
    return-void

    .line 220
    .end local v4           #rssiValue:S
    :cond_60
    const/16 v4, -0x8000

    .restart local v4       #rssiValue:S
    goto :goto_28

    .line 232
    :cond_63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for remote device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    goto :goto_5f
.end method

.method private checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    const/4 v3, 0x0

    .line 696
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 698
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Unable to get device address in checkPairingRequestAndGetAddress, returning null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 717
    :goto_11
    return-object v1

    .line 702
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 703
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_31

    .line 707
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->cancelPairingUserInput(Ljava/lang/String;)Z

    move-object v1, v3

    .line 708
    goto :goto_11

    .line 715
    :cond_31
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_42

    .line 716
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    :cond_42
    move-object v1, v0

    .line 717
    goto :goto_11
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native initializeNativeDataNative()V
.end method

.method private native isEventLoopRunningNative()Z
.end method

.method private isOtherSinkInNonDisconnectingState(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"

    .prologue
    const/4 v5, 0x0

    .line 992
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 993
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getNonDisconnectedSinks()Ljava/util/Set;

    move-result-object v2

    .line 994
    .local v2, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_14

    move v4, v5

    .line 998
    :goto_13
    return v4

    .line 995
    :cond_14
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 996
    .local v1, dev:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x1

    goto :goto_13

    .end local v1           #dev:Landroid/bluetooth/BluetoothDevice;
    :cond_30
    move v4, v5

    .line 998
    goto :goto_13
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1091
    const-string v0, "BluetoothEventLoop"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return-void
.end method

.method private onAgConnectionStatusUpdate(Ljava/lang/String;I)V
    .registers 7
    .parameter "address"
    .parameter "result"

    .prologue
    .line 266
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAgConnectionStatusUpdate(): Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.AG_CONNECTION_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 269
    const-string v1, "android.bluetooth.device.extra.AG_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method private onAgentAuthorize(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 14
    .parameter "objectPath"
    .parameter "deviceUuid"
    .parameter "nativeData"

    .prologue
    .line 851
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, address:Ljava/lang/String;
    if-nez v1, :cond_11

    .line 853
    const-string v7, "BluetoothEventLoop"

    const-string v8, "Unable to get device address in onAuthAgentAuthorize"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v7, 0x0

    .line 973
    :goto_10
    return v7

    .line 862
    :cond_11
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_4a

    .line 863
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rejecting incoming "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " connection from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " as BT is not enabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v1, v8, v9}, Landroid/server/BluetoothService;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 865
    const/4 v7, 0x0

    goto :goto_10

    .line 872
    :cond_4a
    const-string/jumbo v7, "sap_weak_linkkey"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f3

    .line 873
    sget-object v6, Landroid/bluetooth/BluetoothUuid;->SIM_ACC:Landroid/os/ParcelUuid;

    .line 878
    .local v6, uuid:Landroid/os/ParcelUuid;
    :goto_55
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 889
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAudioSource(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_74

    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_74

    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_74

    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAudioSink(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_115

    :cond_74
    invoke-direct {p0, v1}, Landroid/server/BluetoothEventLoop;->isOtherSinkInNonDisconnectingState(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_115

    .line 893
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 894
    .local v3, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothA2dp;->getSinkPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    if-lez v7, :cond_f9

    const/4 v7, 0x1

    move v2, v7

    .line 895
    .local v2, authorized:Z
    :goto_88
    if-eqz v2, :cond_fc

    .line 896
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Allowing incoming A2DP / AVRCP connection from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isAvrcpTarget(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_ad

    .line 903
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v7, v1}, Landroid/server/BluetoothService;->notifyIncomingA2dpConnection(Ljava/lang/String;)Z

    .line 909
    :cond_ad
    :goto_ad
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAuthorizeAgentRequestData:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v2, v8}, Landroid/server/BluetoothService;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 912
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onAgentAuthorize("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for A2dp service"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/4 v7, 0x1

    goto/16 :goto_10

    .line 875
    .end local v0           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    .end local v2           #authorized:Z
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #uuid:Landroid/os/ParcelUuid;
    :cond_f3
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v6

    .restart local v6       #uuid:Landroid/os/ParcelUuid;
    goto/16 :goto_55

    .line 894
    .restart local v0       #a2dp:Landroid/bluetooth/BluetoothA2dp;
    .restart local v3       #device:Landroid/bluetooth/BluetoothDevice;
    :cond_f9
    const/4 v7, 0x0

    move v2, v7

    goto :goto_88

    .line 906
    .restart local v2       #authorized:Z
    :cond_fc
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rejecting incoming A2DP / AVRCP connection from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 925
    .end local v2           #authorized:Z
    .end local v3           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_115
    const/4 v2, 0x1

    .line 929
    .restart local v2       #authorized:Z
    const-string/jumbo v7, "sap_weak_linkkey"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17c

    .line 930
    const-string/jumbo v5, "sap_weak_linkkey"

    .line 957
    .local v5, service:Ljava/lang/String;
    :goto_122
    if-eqz v2, :cond_1ec

    .line 958
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onAgentAuthorize("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") = true for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mAuthorizeAgentRequestData:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    new-instance v4, Landroid/content/Intent;

    const-string v7, "broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 963
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "broadcom.android.bluetooth.intent.DEVICE"

    iget-object v8, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 964
    const-string v7, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .end local v4           #intent:Landroid/content/Intent;
    :goto_179
    move v7, v2

    .line 973
    goto/16 :goto_10

    .line 932
    .end local v5           #service:Ljava/lang/String;
    :cond_17c
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isPbap(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_186

    .line 933
    const-string/jumbo v5, "service_pbap"

    .restart local v5       #service:Ljava/lang/String;
    goto :goto_122

    .line 934
    .end local v5           #service:Ljava/lang/String;
    :cond_186
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isOpp(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_190

    .line 935
    const-string/jumbo v5, "service_opp"

    .restart local v5       #service:Ljava/lang/String;
    goto :goto_122

    .line 936
    .end local v5           #service:Ljava/lang/String;
    :cond_190
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isFtp(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_19a

    .line 937
    const-string/jumbo v5, "service_ftp"

    .restart local v5       #service:Ljava/lang/String;
    goto :goto_122

    .line 938
    .end local v5           #service:Ljava/lang/String;
    :cond_19a
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isHid(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_1a5

    .line 939
    const-string/jumbo v5, "service_hid"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_122

    .line 940
    .end local v5           #service:Ljava/lang/String;
    :cond_1a5
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isSerialPort(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_1b0

    .line 941
    const-string/jumbo v5, "service_spp"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_122

    .line 942
    .end local v5           #service:Ljava/lang/String;
    :cond_1b0
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isDUN(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_1bb

    .line 943
    const-string/jumbo v5, "service_dun"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_122

    .line 944
    .end local v5           #service:Ljava/lang/String;
    :cond_1bb
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isSAP(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_1c6

    .line 945
    const-string/jumbo v5, "service_sap"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_122

    .line 946
    .end local v5           #service:Ljava/lang/String;
    :cond_1c6
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isMAP(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_1d1

    .line 947
    const-string/jumbo v5, "service_map"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_122

    .line 948
    .end local v5           #service:Ljava/lang/String;
    :cond_1d1
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isMSE(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_1dc

    .line 949
    const-string/jumbo v5, "service_mse"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_122

    .line 950
    .end local v5           #service:Ljava/lang/String;
    :cond_1dc
    invoke-static {v6}, Landroid/bluetooth/BluetoothUuid;->isMNS(Landroid/os/ParcelUuid;)Z

    move-result v7

    if-eqz v7, :cond_1e7

    .line 951
    const-string/jumbo v5, "service_mns"

    .restart local v5       #service:Ljava/lang/String;
    goto/16 :goto_122

    .line 953
    .end local v5           #service:Ljava/lang/String;
    :cond_1e7
    const-string v5, ""

    .line 954
    .restart local v5       #service:Ljava/lang/String;
    const/4 v2, 0x0

    goto/16 :goto_122

    .line 968
    :cond_1ec
    const-string v7, "BluetoothEventLoop"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rejecting incoming "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " connection from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for unknown service"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v7, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v1, v8, v9}, Landroid/server/BluetoothService;->authorizeService(Ljava/lang/String;ZZ)Z

    goto/16 :goto_179
.end method

.method private onAgentCancel()V
    .registers 6

    .prologue
    .line 1005
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.AGENT_CANCEL_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1006
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1008
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1011
    return-void
.end method

.method private onAgentOutOfBandDataAvailable(Ljava/lang/String;)Z
    .registers 6
    .parameter "objectPath"

    .prologue
    const/4 v3, 0x0

    .line 978
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    move v1, v3

    .line 987
    :goto_a
    return v1

    .line 980
    :cond_b
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_15

    move v1, v3

    goto :goto_a

    .line 983
    :cond_15
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getDeviceOutOfBandData(Landroid/bluetooth/BluetoothDevice;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 985
    const/4 v1, 0x1

    goto :goto_a

    :cond_25
    move v1, v3

    .line 987
    goto :goto_a
.end method

.method private onAmpStateChanged(ILjava/lang/String;I)V
    .registers 8
    .parameter "app_id"
    .parameter "address"
    .parameter "amp_state"

    .prologue
    .line 257
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAmpStateChanged(): app_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " amp_state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.AMP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.BTA_APP_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string v1, "android.bluetooth.adapter.extra.DI_REMOTE_ADDRESS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v1, "android.bluetooth.device.extra.AMP_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method private onCreateDeviceResult(Ljava/lang/String;I)V
    .registers 6
    .parameter "address"
    .parameter "result"

    .prologue
    .line 1027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of onCreateDeviceResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 1029
    packed-switch p2, :pswitch_data_3c

    .line 1045
    :goto_19
    :pswitch_19
    return-void

    .line 1031
    :pswitch_1a
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 1033
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/server/BluetoothService;->discoverServicesNative(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_19

    .line 1036
    :cond_2a
    const-string v1, "BluetoothEventLoop"

    const-string v2, "Device exists, but we dont have the bluez path, failing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .end local v0           #path:Ljava/lang/String;
    :pswitch_31
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto :goto_19

    .line 1029
    :pswitch_data_3c
    .packed-switch -0x1
        :pswitch_31
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method private onCreatePairedDeviceResult(Ljava/lang/String;I)V
    .registers 4
    .parameter "address"
    .parameter "result"

    .prologue
    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 301
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0, p1, p2}, Landroid/server/BluetoothService;->onCreatePairedDeviceResult(Ljava/lang/String;I)V

    .line 302
    return-void
.end method

.method private onDeviceCreated(Ljava/lang/String;)V
    .registers 6
    .parameter "deviceObjectPath"

    .prologue
    .line 317
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 318
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 320
    .local v1, postResult:Z
    if-nez v1, :cond_1a

    .line 321
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDeviceCreated() unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1a
    return-void
.end method

.method private onDeviceDisappeared(Ljava/lang/String;)V
    .registers 5
    .parameter "address"

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.DISAPPEARED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 285
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method private onDeviceDisconnectRequested(Ljava/lang/String;)V
    .registers 6
    .parameter "deviceObjectPath"

    .prologue
    .line 289
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_11

    .line 291
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDeviceDisconnectRequested: Address of the remote device in null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_10
    return-void

    .line 294
    :cond_11
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private onDeviceFound(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .parameter "address"
    .parameter "properties"

    .prologue
    const-string v4, "BluetoothEventLoop"

    .line 237
    if-nez p2, :cond_c

    .line 238
    const-string v2, "BluetoothEventLoop"

    const-string v2, "ERROR: Remote device properties are null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_b
    :goto_b
    return-void

    .line 245
    :cond_c
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 246
    .local v0, message:Landroid/os/Message;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 248
    .local v1, postResult:Z
    if-nez v1, :cond_b

    .line 249
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v2, "onDeviceFound() unable to post message to handler!"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private onDevicePropertyChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    .line 590
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 591
    .local v0, message:Landroid/os/Message;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 592
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 593
    .local v1, postResult:Z
    if-nez v1, :cond_23

    .line 594
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDevicePropertyChanged(): unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_23
    return-void
.end method

.method private onDeviceRemoved(Ljava/lang/String;)V
    .registers 6
    .parameter "deviceObjectPath"

    .prologue
    .line 350
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 351
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 353
    .local v1, postResult:Z
    if-nez v1, :cond_1a

    .line 354
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onDeviceRemoved() unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1a
    return-void
.end method

.method private onDiscoverServicesResult(Ljava/lang/String;Z)V
    .registers 3
    .parameter "deviceObjectPath"
    .parameter "result"

    .prologue
    .line 1024
    return-void
.end method

.method private onDisplayPasskey(Ljava/lang/String;II)V
    .registers 8
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 825
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 834
    :goto_6
    return-void

    .line 828
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 830
    const-string v2, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 833
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private onRemoteDiInfoReceived(Ljava/lang/String;II)V
    .registers 9
    .parameter "remoteAddress"
    .parameter "recNum"
    .parameter "status"

    .prologue
    const-string v4, ", "

    .line 1049
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoteDiInfoReceived("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.DI_REMOTE_DI_INFO_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.DI_REMOTE_ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1053
    const-string v1, "android.bluetooth.adapter.extra.DI_REC_NUM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1054
    const-string v1, "android.bluetooth.adapter.extra.DI_STATUS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1055
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method private onRemoteDiRecordReceived(IIZIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "handle"
    .parameter "status"
    .parameter "primaryRecord"
    .parameter "specId"
    .parameter "vendorId"
    .parameter "vendorIdSource"
    .parameter "productId"
    .parameter "version"
    .parameter "clientExecutableUrl"
    .parameter "serviceDescription"
    .parameter "documentationUrl"

    .prologue
    .line 1061
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoteDiRecordReceived("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "])"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.DI_REMOTE_DI_RECORD_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1067
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.DI_HANDLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1068
    const-string v1, "android.bluetooth.adapter.extra.DI_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1069
    const-string v1, "android.bluetooth.adapter.extra.DI_PRIMARY_RECORD"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1070
    const-string v1, "android.bluetooth.adapter.extra.DI_SPEC_ID"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1071
    const-string v1, "android.bluetooth.adapter.extra.DI_VENDOR_ID"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1072
    const-string v1, "android.bluetooth.adapter.extra.DI_VENDOR_ID_SOURCE"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1073
    const-string v1, "android.bluetooth.adapter.extra.DI_PRODUCT_ID"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1074
    const-string v1, "android.bluetooth.adapter.extra.DI_VERSION"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1075
    const-string v1, "android.bluetooth.adapter.extra.DI_CLIENT_EXECUTABLE_URL"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    const-string v1, "android.bluetooth.adapter.extra.DI_SERVICE_DESCRIPTION"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    const-string v1, "android.bluetooth.adapter.extra.DI_DOCUMENTATION_URL"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1078
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1079
    return-void
.end method

.method private onRequestOobData(Ljava/lang/String;I)V
    .registers 7
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 837
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 845
    :goto_6
    return-void

    .line 840
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 842
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 844
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private onRequestPairingConsent(Ljava/lang/String;I)V
    .registers 9
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 721
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 742
    :goto_6
    return-void

    .line 730
    :cond_7
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->getBondState(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_22

    .line 731
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 732
    .local v2, message:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 733
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v2, v4, v5}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    .line 737
    .end local v2           #message:Landroid/os/Message;
    :cond_22
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 738
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 739
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private onRequestPasskey(Ljava/lang/String;I)V
    .registers 7
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 759
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 769
    :goto_6
    return-void

    .line 762
    :cond_7
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z

    .line 764
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 765
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 766
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 768
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private onRequestPasskeyConfirmation(Ljava/lang/String;II)V
    .registers 8
    .parameter "objectPath"
    .parameter "passkey"
    .parameter "nativeData"

    .prologue
    .line 746
    invoke-direct {p0, p1, p3}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 755
    :goto_6
    return-void

    .line 749
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 751
    const-string v2, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 752
    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private onRequestPinCode(Ljava/lang/String;I)V
    .registers 10
    .parameter "objectPath"
    .parameter "nativeData"

    .prologue
    .line 773
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothEventLoop;->checkPairingRequestAndGetAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_7

    .line 821
    :goto_6
    return-void

    .line 776
    :cond_7
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v3

    .line 779
    .local v3, pendingOutgoingAddress:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->updateRemoteDevicePropertiesCache(Ljava/lang/String;)Z

    .line 781
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 785
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 786
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5}, Landroid/server/BluetoothService;->getDockPin()Ljava/lang/String;

    move-result-object v4

    .line 787
    .local v4, pin:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-static {v4}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/server/BluetoothService;->setPin(Ljava/lang/String;[B)Z

    goto :goto_6

    .line 791
    .end local v4           #pin:Ljava/lang/String;
    :cond_30
    new-instance v1, Landroid/bluetooth/BluetoothClass;

    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->getRemoteClass(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 794
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    sparse-switch v5, :sswitch_data_7c

    .line 817
    .end local v1           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_42
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    iget-object v6, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 819
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 820
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6

    .line 803
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #btClass:Landroid/bluetooth/BluetoothClass;
    :sswitch_62
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->attemptAutoPair(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    goto :goto_6

    .line 809
    :sswitch_6b
    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->isAutoPairingWhitelisted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v5, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v5, v0}, Landroid/server/BluetoothService;->attemptAutoPair(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    goto :goto_6

    .line 794
    :sswitch_data_7c
    .sparse-switch
        0x404 -> :sswitch_62
        0x408 -> :sswitch_62
        0x418 -> :sswitch_62
        0x41c -> :sswitch_62
        0x420 -> :sswitch_62
        0x428 -> :sswitch_62
        0x540 -> :sswitch_6b
        0x580 -> :sswitch_62
    .end sparse-switch
.end method

.method private onRestartRequired()V
    .registers 3

    .prologue
    .line 1083
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1084
    const-string v0, "BluetoothEventLoop"

    const-string v1, "*** A serious error occurred (did bluetoothd crash?) - restarting Bluetooth ***"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendEmptyMessage(I)Z

    .line 1088
    :cond_15
    return-void
.end method

.method private onSlcUpForAgConnection(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 274
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAgSlcUp(): Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.headset.extra.STATE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 278
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private processDeviceCreatedEvent(Ljava/lang/String;)V
    .registers 5
    .parameter "deviceObjectPath"

    .prologue
    .line 328
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, address:Ljava/lang/String;
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->isRemoteDeviceInCache(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 331
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothService;->getRemoteDeviceProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, properties:[Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 333
    invoke-direct {p0, v0, v1}, Landroid/server/BluetoothEventLoop;->addDevice(Ljava/lang/String;[Ljava/lang/String;)V

    .line 336
    .end local v1           #properties:[Ljava/lang/String;
    :cond_19
    return-void
.end method

.method private processDevicePropertyChangedEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 15
    .parameter "deviceObjectPath"
    .parameter "propValues"

    .prologue
    .line 601
    const/4 v9, 0x0

    aget-object v6, p2, v9

    .line 602
    .local v6, name:Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_14

    .line 604
    const-string v9, "BluetoothEventLoop"

    const-string/jumbo v10, "onDevicePropertyChanged: Address of the remote device in null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_13
    :goto_13
    return-void

    .line 608
    :cond_14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device property changed:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "property:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 610
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 611
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    const-string v9, "Name"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 612
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 615
    const-string v9, "android.bluetooth.device.extra.NAME"

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_13

    .line 617
    .end local v4           #intent:Landroid/content/Intent;
    :cond_67
    const-string v9, "Class"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a1

    .line 618
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 621
    const-string v9, "android.bluetooth.device.extra.CLASS"

    new-instance v10, Landroid/bluetooth/BluetoothClass;

    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 623
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 624
    .end local v4           #intent:Landroid/content/Intent;
    :cond_a1
    const-string v9, "Connected"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ea

    .line 625
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const/4 v4, 0x0

    .line 627
    .restart local v4       #intent:Landroid/content/Intent;
    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e2

    .line 628
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .restart local v4       #intent:Landroid/content/Intent;
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d4

    .line 632
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0x1f40

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setLinkTimeout(Ljava/lang/String;I)V

    .line 637
    :cond_d4
    :goto_d4
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 638
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 635
    :cond_e2
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v4       #intent:Landroid/content/Intent;
    goto :goto_d4

    .line 639
    .end local v4           #intent:Landroid/content/Intent;
    :cond_ea
    const-string v9, "Disconnected"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_126

    .line 640
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 642
    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string v10, "8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11f

    .line 643
    const-string v9, "android.bluetooth.device.extra.OUT_RANGE"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    :goto_10f
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "false"

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 646
    :cond_11f
    const-string v9, "android.bluetooth.device.extra.OUT_RANGE"

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_10f

    .line 650
    .end local v4           #intent:Landroid/content/Intent;
    :cond_126
    const-string v9, "UUIDs"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_167

    .line 651
    const/4 v8, 0x0

    .line 652
    .local v8, uuid:Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, p2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 653
    .local v5, len:I
    if-lez v5, :cond_156

    .line 654
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .local v7, str:Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    .local v3, i:I
    :goto_142
    array-length v9, p2

    if-ge v3, v9, :cond_152

    .line 656
    aget-object v9, p2, v3

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    add-int/lit8 v3, v3, 0x1

    goto :goto_142

    .line 659
    :cond_152
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 661
    .end local v3           #i:I
    .end local v7           #str:Ljava/lang/StringBuilder;
    :cond_156
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0, v6, v8}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->updateDeviceServiceChannelCache(Ljava/lang/String;)V

    .line 666
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 667
    .end local v5           #len:I
    .end local v8           #uuid:Ljava/lang/String;
    :cond_167
    const-string v9, "Paired"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19e

    .line 668
    const/4 v9, 0x1

    aget-object v9, p2, v9

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18c

    .line 672
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getPendingOutgoingBonding()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_13

    .line 673
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xc

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto/16 :goto_13

    .line 676
    :cond_18c
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xa

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    .line 677
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Trusted"

    const-string v11, "false"

    invoke-virtual {v9, v0, v10, v11}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 679
    :cond_19e
    const-string v9, "Trusted"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1ca

    .line 681
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set trust state succeded, value is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 682
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v0, v6, v10}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 683
    :cond_1ca
    const-string v9, "PairingFailed"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 685
    :try_start_1d2
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xa

    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Landroid/server/BluetoothPairingFailedResult;->getPairingErrorCodeToDisplayMessage(I)I

    move-result v11

    invoke-virtual {v9, v0, v10, v11}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z
    :try_end_1e4
    .catch Ljava/lang/NumberFormatException; {:try_start_1d2 .. :try_end_1e4} :catch_1ef

    .line 690
    :goto_1e4
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v10, "Trusted"

    const-string v11, "false"

    invoke-virtual {v9, v0, v10, v11}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 686
    :catch_1ef
    move-exception v9

    move-object v2, v9

    .line 687
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v9, "BluetoothEventLoop"

    const-string v10, "Invalid pairing failure code received from JNI"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v9, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/16 v10, 0xa

    invoke-virtual {v9, v0, v10}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;I)Z

    goto :goto_1e4
.end method

.method private processDeviceRemovedEvent(Ljava/lang/String;)V
    .registers 7
    .parameter "deviceObjectPath"

    .prologue
    .line 361
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, p1}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 363
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v3, v4}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    .line 365
    iget-object v1, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v2, "UUIDs"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/server/BluetoothService;->setRemoteDeviceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_1d
    return-void
.end method

.method private processPropertyChangedEvent([Ljava/lang/String;)V
    .registers 14
    .parameter "propValues"

    .prologue
    .line 447
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->isAdapterPropertiesEmpty()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 450
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->getAllProperties()V

    .line 452
    :cond_d
    const/4 v10, 0x0

    aget-object v5, p1, v10

    .line 453
    .local v5, name:Ljava/lang/String;
    const-string v10, "Name"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    .line 454
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v10, v5, v11}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v2, intent:Landroid/content/Intent;
    const-string v10, "android.bluetooth.adapter.extra.LOCAL_NAME"

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 511
    .end local v2           #intent:Landroid/content/Intent;
    :cond_36
    :goto_36
    return-void

    .line 458
    :cond_37
    const-string v10, "Pairable"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_47

    const-string v10, "Discoverable"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b7

    .line 459
    :cond_47
    const-string v10, "Pairable"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a3

    const/4 v10, 0x1

    aget-object v10, p1, v10

    move-object v6, v10

    .line 461
    .local v6, pairable:Ljava/lang/String;
    :goto_53
    const-string v10, "Discoverable"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ad

    const/4 v10, 0x1

    aget-object v10, p1, v10

    move-object v0, v10

    .line 465
    .local v0, discoverable:Ljava/lang/String;
    :goto_5f
    if-eqz v6, :cond_36

    if-eqz v0, :cond_36

    .line 468
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v10, v5, v11}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->getScanMode()I

    move-result v7

    .line 470
    .local v7, prevMode:I
    const-string/jumbo v10, "true"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string/jumbo v11, "true"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v10, v11}, Landroid/server/BluetoothService;->bluezStringToScanMode(ZZ)I

    move-result v4

    .line 473
    .local v4, mode:I
    if-ltz v4, :cond_36

    .line 474
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v10, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {v2, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    const-string v10, "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

    invoke-virtual {v2, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const/high16 v10, 0x1000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 478
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_36

    .line 459
    .end local v0           #discoverable:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mode:I
    .end local v6           #pairable:Ljava/lang/String;
    .end local v7           #prevMode:I
    :cond_a3
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v11, "Pairable"

    invoke-virtual {v10, v11}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    goto :goto_53

    .line 461
    .restart local v6       #pairable:Ljava/lang/String;
    :cond_ad
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const-string v11, "Discoverable"

    invoke-virtual {v10, v11}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    goto :goto_5f

    .line 480
    .end local v6           #pairable:Ljava/lang/String;
    :cond_b7
    const-string v10, "Discovering"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fc

    .line 482
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v10, v5, v11}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v10, 0x1

    aget-object v10, p1, v10

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e9

    .line 484
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/server/BluetoothService;->setIsDiscovering(Z)V

    .line 485
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .restart local v2       #intent:Landroid/content/Intent;
    :goto_e0
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v2, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 488
    .end local v2           #intent:Landroid/content/Intent;
    :cond_e9
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->cancelDiscovery()Z

    .line 489
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/server/BluetoothService;->setIsDiscovering(Z)V

    .line 490
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_e0

    .line 493
    .end local v2           #intent:Landroid/content/Intent;
    :cond_fc
    const-string v10, "Devices"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_133

    .line 494
    const/4 v9, 0x0

    .line 495
    .local v9, value:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, p1, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 496
    .local v3, len:I
    if-lez v3, :cond_12c

    .line 497
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v8, str:Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    .local v1, i:I
    :goto_118
    array-length v10, p1

    if-ge v1, v10, :cond_128

    .line 499
    aget-object v10, p1, v1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    .line 502
    :cond_128
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 504
    .end local v1           #i:I
    .end local v8           #str:Ljava/lang/StringBuilder;
    :cond_12c
    iget-object v10, p0, Landroid/server/BluetoothEventLoop;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v10, v5, v9}, Landroid/server/BluetoothService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_36

    .line 505
    .end local v3           #len:I
    .end local v9           #value:Ljava/lang/String;
    :cond_133
    const-string v10, "Powered"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 508
    const/4 v10, 0x1

    aget-object v10, p1, v10

    const-string/jumbo v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 509
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->onRestartRequired()V

    goto/16 :goto_36
.end method

.method private native startEventLoopNative()V
.end method

.method private native stopEventLoopNative()V
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->cleanupNativeDataNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 176
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 178
    return-void

    .line 176
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getAuthorizeAgentRequestData()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mAuthorizeAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method getPasskeyAgentRequestData()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Landroid/server/BluetoothEventLoop;->mPasskeyAgentRequestData:Ljava/util/HashMap;

    return-object v0
.end method

.method public isEventLoopRunning()Z
    .registers 2

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    return v0
.end method

.method onPropertyChanged([Ljava/lang/String;)V
    .registers 6
    .parameter "propValues"

    .prologue
    .line 436
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 437
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 438
    iget-object v2, p0, Landroid/server/BluetoothEventLoop;->mHandler:Landroid/server/BluetoothEventLoop$EventLoopHandler;

    invoke-virtual {v2, v0}, Landroid/server/BluetoothEventLoop$EventLoopHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    .line 439
    .local v1, postResult:Z
    if-nez v1, :cond_1a

    .line 440
    const-string v2, "BluetoothEventLoop"

    const-string/jumbo v3, "onPropertyChanged() unable to post message to handler!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1a
    return-void
.end method

.method start()V
    .registers 2

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-nez v0, :cond_e

    .line 193
    const-string v0, "Starting Event Loop thread"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->startEventLoopNative()V

    .line 196
    :cond_e
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 199
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->isEventLoopRunningNative()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 200
    const-string v0, "Stopping Event Loop thread"

    invoke-static {v0}, Landroid/server/BluetoothEventLoop;->log(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Landroid/server/BluetoothEventLoop;->stopEventLoopNative()V

    .line 203
    :cond_e
    return-void
.end method

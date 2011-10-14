.class Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;
.super Landroid/os/Handler;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectDhcpHandler"
.end annotation


# instance fields
.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCancelCallback:Z

.field private mDirectTarget:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V
    .registers 7
    .parameter
    .parameter "looper"
    .parameter "target"

    .prologue
    .line 3123
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    .line 3124
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3125
    iput-object p3, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mDirectTarget:Landroid/os/Handler;

    .line 3126
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    #getter for: Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/net/wifi/WifiStateTracker;->access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 3127
    return-void
.end method

.method private shouldDisableCoexistenceMode()Z
    .registers 4

    .prologue
    .line 3220
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 3221
    .local v0, state:I
    if-nez v0, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const-string v4, "WifiStateTracker"

    .line 3132
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_b4

    .line 3204
    :goto_8
    return-void

    .line 3135
    :pswitch_9
    const/4 v1, 0x0

    .line 3136
    .local v1, modifiedBluetoothCoexistenceMode:Z
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->shouldDisableCoexistenceMode()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 3153
    const/4 v1, 0x1

    .line 3156
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateTracker;->setBluetoothCoexistenceMode(I)Z

    .line 3160
    :cond_16
    monitor-enter p0

    .line 3161
    :try_start_17
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    iget-object v2, v2, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3162
    const-string v2, "WifiStateTracker"

    const-string/jumbo v3, "mWakeLock.acquired"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v3, 0x1

    #calls: Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;I)V

    .line 3164
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_8c

    .line 3167
    monitor-enter p0

    .line 3169
    const/4 v2, 0x0

    :try_start_2f
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mCancelCallback:Z

    .line 3170
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_8f

    .line 3171
    const-string v2, "WifiStateTracker"

    const-string v2, "DhcpHandler: DHCP request started"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDirectInterfaceName:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/wifi/WifiStateTracker;->access$500(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    #getter for: Landroid/net/wifi/WifiStateTracker;->mDirectDhcpInfo:Landroid/net/DhcpInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiStateTracker;->access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 3173
    const/16 v0, 0x1e

    .line 3175
    .local v0, event:I
    const-string v2, "WifiStateTracker"

    const-string v2, "DirectDhcpHandler: DHCP request succeeded"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    :goto_54
    monitor-enter p0

    .line 3183
    :try_start_55
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    iget-object v2, v2, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 3184
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    iget-object v2, v2, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3186
    const-string v2, "WifiStateTracker"

    const-string/jumbo v3, "mWakeLock.released"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    :cond_6e
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v3, 0x0

    #calls: Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateTracker;->access$100(Landroid/net/wifi/WifiStateTracker;I)V

    .line 3189
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_55 .. :try_end_75} :catchall_b1

    .line 3192
    if-eqz v1, :cond_7d

    .line 3194
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->this$0:Landroid/net/wifi/WifiStateTracker;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateTracker;->setBluetoothCoexistenceMode(I)Z

    .line 3197
    :cond_7d
    monitor-enter p0

    .line 3198
    :try_start_7e
    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mCancelCallback:Z

    if-nez v2, :cond_87

    .line 3199
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mDirectTarget:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3201
    :cond_87
    monitor-exit p0

    goto :goto_8

    :catchall_89
    move-exception v2

    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_7e .. :try_end_8b} :catchall_89

    throw v2

    .line 3164
    .end local v0           #event:I
    :catchall_8c
    move-exception v2

    :try_start_8d
    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v2

    .line 3170
    :catchall_8f
    move-exception v2

    :try_start_90
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    throw v2

    .line 3177
    :cond_92
    const/16 v0, 0x1f

    .line 3178
    .restart local v0       #event:I
    const-string v2, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DirectDhcpHandler: DHCP request failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 3189
    :catchall_b1
    move-exception v2

    :try_start_b2
    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v2

    .line 3132
    :pswitch_data_b4
    .packed-switch 0x13
        :pswitch_9
    .end packed-switch
.end method

.method public declared-synchronized setCancelCallback(Z)V
    .registers 3
    .parameter "cancelCallback"

    .prologue
    .line 3207
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->mCancelCallback:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 3208
    monitor-exit p0

    return-void

    .line 3207
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

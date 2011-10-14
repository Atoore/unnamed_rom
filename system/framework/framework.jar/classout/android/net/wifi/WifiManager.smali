.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ACTION_WIFI_DIRECT_NOTI:Ljava/lang/String; = "android.net.wifidirect.DIRECT_STATE_CHANGED"

.field public static final DIRECT_CREATE_LINK_COMPLETE_ACTION:Ljava/lang/String; = "android.net.wifidirect.CREATE_LINK_COMPLETE"

.field public static final DIRECT_DEVICE_AUDIO:I = 0xb

.field public static final DIRECT_DEVICE_CAMERA:I = 0x4

.field public static final DIRECT_DEVICE_COMPUTER:I = 0x1

.field public static final DIRECT_DEVICE_DISPLAY:I = 0x7

.field public static final DIRECT_DEVICE_GAME:I = 0x9

.field public static final DIRECT_DEVICE_INPUT:I = 0x2

.field public static final DIRECT_DEVICE_MULTIMEDIA:I = 0x8

.field public static final DIRECT_DEVICE_NETWORK:I = 0x6

.field public static final DIRECT_DEVICE_PRINTER:I = 0x3

.field public static final DIRECT_DEVICE_STORAGE:I = 0x5

.field public static final DIRECT_DEVICE_TELEPHONE:I = 0xa

.field public static final DIRECT_GO_READY_ACTION:Ljava/lang/String; = "android.net.wifidirect.DIRECT_GO_READY"

.field public static final DIRECT_LINK_DOWN_ACTION:Ljava/lang/String; = "android.net.wifidirect.GO_LINK_DOWN"

.field public static final DIRECT_PEER_CONNECTED_ACTION:Ljava/lang/String; = "android.net.wifidirect.DIRECT_PEER_CONNECTED"

.field public static final DIRECT_PEER_DISCONNECTED_ACTION:Ljava/lang/String; = "android.net.wifidirect.CREATE_LINK_FAIL"

.field public static final DIRECT_PEER_FOUND_ACTION:Ljava/lang/String; = "android.net.wifidirect.FOUND_PEERS"

.field public static final DIRECT_PROVISION_REQUEST_ACTION:Ljava/lang/String; = "android.net.wifidirect.PROVISION_DISCOVERY_REQ"

.field public static final DIRECT_PROVISION_RESPONSE_ACTION:Ljava/lang/String; = "android.net.wifidirect.PROVISION_DISCOVERY_RESP"

.field public static final DIRECT_STA_DISASSOC_ACTION:Ljava/lang/String; = "android.net.wifidirect.STA_DISASSOC"

.field public static final DIRECT_WPS_DISPLAY:I = 0x0

.field public static final DIRECT_WPS_KEYPAD:I = 0x1

.field public static final DIRECT_WPS_PBC:I = 0x2

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_BYTE_DATA:Ljava/lang/String; = "byteData"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_NOTI_TYPE:Ljava/lang/String; = "notiType"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_ENABLE_SOON:Ljava/lang/String; = "wifi_enable_soon"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_WPS:Ljava/lang/String; = "wps_event"

.field public static final GET_WPS_EVENT_ACTION:Ljava/lang/String; = "android.net.wifi.GET_WPS_EVENT"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final SHOW_AP_LIST_DIALOG_ACTION:Ljava/lang/String; = "android.net.wifi.SHOW_AP_LIST_DIALOG"

.field public static final SHOW_EAP_MESSAGE_DIALOG_ACTION:Ljava/lang/String; = "android.net.wifi.SHOW_EAP_MESSAGE_DIALOG"

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0x1

.field public static final WIFI_AP_STATE_DISABLING:I = 0x0

.field public static final WIFI_AP_STATE_ENABLED:I = 0x3

.field public static final WIFI_AP_STATE_ENABLING:I = 0x2

.field public static final WIFI_AP_STATE_FAILED:I = 0x4

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WIFI_WPS_FAIL:I = 0x2

.field public static final WIFI_WPS_OVERLAP:I = 0x3

.field public static final WIFI_WPS_SUCCESS:I = 0x1

.field public static final WIFI_WPS_TIMEOUT:I = 0x4

.field public static final WIFI_WPS_UNDEFINE:I = 0x5


# instance fields
.field private mActiveLockCount:I

.field mHandler:Landroid/os/Handler;

.field private mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

.field mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V
    .registers 4
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 485
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mHandler:Landroid/os/Handler;

    .line 486
    new-instance v0, Landroid/net/wifi/WifiProgressStore;

    invoke-direct {v0}, Landroid/net/wifi/WifiProgressStore;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    .line 487
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$008(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$010(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4
    .parameter "config"

    .prologue
    .line 569
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 571
    :goto_6
    return v1

    .line 570
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 571
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public static calculateSignalLevel(II)I
    .registers 6
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v3, -0x64

    .line 1341
    if-nez p0, :cond_7

    .line 1350
    :cond_6
    :goto_6
    return v1

    .line 1344
    :cond_7
    if-le p0, v3, :cond_6

    .line 1346
    const/16 v1, -0x37

    if-lt p0, v1, :cond_10

    .line 1347
    sub-int v1, p1, v2

    goto :goto_6

    .line 1349
    :cond_10
    const/16 v1, 0x2d

    sub-int v2, p1, v2

    div-int v0, v1, v2

    .line 1350
    .local v0, partitionSize:I
    sub-int v1, p0, v3

    div-int/2addr v1, v0

    goto :goto_6
.end method

.method public static compareSignalLevel(II)I
    .registers 3
    .parameter "rssiA"
    .parameter "rssiB"

    .prologue
    .line 1364
    sub-int v0, p0, p1

    return v0
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    const/4 v0, -0x1

    .line 530
    if-nez p1, :cond_4

    .line 534
    :goto_3
    return v0

    .line 533
    :cond_4
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 534
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_3
.end method

.method public checkWpsInProgress()Z
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getWpsInProgress()Z

    move-result v0

    return v0
.end method

.method public configureDirectPeerInterface()V
    .registers 3

    .prologue
    .line 1104
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->configureDirectPeerInterface()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1108
    :goto_5
    return-void

    .line 1105
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1106
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public connectPeerWithProvision(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "macAddr"
    .parameter "pin"

    .prologue
    .line 1165
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->connectPeerWithProvision(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1167
    :goto_6
    return v1

    .line 1166
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1167
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public connectToP2PNetwork(Ljava/lang/String;)Z
    .registers 4
    .parameter "DevAddr"

    .prologue
    .line 1117
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->connectToP2PNetwork(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1119
    :goto_6
    return v1

    .line 1118
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1119
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .registers 4
    .parameter "tag"

    .prologue
    .line 1673
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 1639
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .parameter "tag"

    .prologue
    .line 1655
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disableNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 620
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 622
    :goto_6
    return v1

    .line 621
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 622
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disconnect()Z
    .registers 3

    .prologue
    .line 633
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 635
    :goto_6
    return v1

    .line 634
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 635
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disconnectWifiDirectPeer(Ljava/lang/String;)Z
    .registers 4
    .parameter "macAddr"

    .prologue
    .line 1024
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disconnectWifiDirectPeer(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1026
    :goto_6
    return v1

    .line 1025
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1026
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableNetwork(IZ)Z
    .registers 5
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 605
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 607
    :goto_6
    return v1

    .line 606
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 607
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 511
    :goto_6
    return-object v1

    .line 510
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 511
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .prologue
    .line 722
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 724
    :goto_6
    return-object v1

    .line 723
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 724
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCurrentTime()J
    .registers 3

    .prologue
    .line 841
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getCurrentTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceInfoLists()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1000
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDeviceInfoLists()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1002
    :goto_6
    return-object v1

    .line 1001
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1002
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 930
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 932
    :goto_6
    return-object v1

    .line 931
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDirectWpsPin()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1008
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDirectWpsPin()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1010
    :goto_6
    return-object v1

    .line 1009
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1010
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNumAllowedChannels()I
    .registers 3

    .prologue
    .line 881
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getNumAllowedChannels()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 883
    :goto_6
    return v1

    .line 882
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 883
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getP2PScanResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1129
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getP2PScanResults()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1131
    :goto_6
    return-object v1

    .line 1130
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1131
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPER()I
    .registers 3

    .prologue
    .line 1230
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getPER()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1232
    :goto_6
    return v1

    .line 1231
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1232
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getProgressLapseTime()I
    .registers 2

    .prologue
    .line 832
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getLapseTime()I

    move-result v0

    return v0
.end method

.method public getProgressMode()I
    .registers 2

    .prologue
    .line 835
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getProgressMode()I

    move-result v0

    return v0
.end method

.method public getProgressPinNumber()I
    .registers 2

    .prologue
    .line 838
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getProgressPinNumber()I

    move-result v0

    return v0
.end method

.method public getProgressValue()I
    .registers 2

    .prologue
    .line 829
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiProgressStore;->getProgressValue()I

    move-result v0

    return v0
.end method

.method public getRoamDelta()I
    .registers 3

    .prologue
    .line 1278
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamDelta()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1280
    :goto_6
    return v1

    .line 1279
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1280
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getRoamScanPeriod()I
    .registers 3

    .prologue
    .line 1302
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamScanPeriod()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1304
    :goto_6
    return v1

    .line 1303
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1304
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getRoamTrigger()I
    .registers 3

    .prologue
    .line 1254
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamTrigger()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1256
    :goto_6
    return v1

    .line 1255
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1256
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getScanResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getScanResults()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 736
    :goto_6
    return-object v1

    .line 735
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 736
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getValidChannelCounts()[I
    .registers 3

    .prologue
    .line 917
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getValidChannelCounts()[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 919
    :goto_6
    return-object v1

    .line 918
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 919
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .prologue
    .line 1423
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1425
    :goto_6
    return-object v1

    .line 1424
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1425
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApState()I
    .registers 3

    .prologue
    .line 1398
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1400
    :goto_6
    return v1

    .line 1399
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1400
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public getWifiDirectSetting()Z
    .registers 3

    .prologue
    .line 1189
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiDirectSetting()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1191
    :goto_6
    return v1

    .line 1190
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1191
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiState()I
    .registers 3

    .prologue
    .line 1218
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1220
    :goto_6
    return v1

    .line 1219
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1220
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public initializeMulticastFiltering()Z
    .registers 3

    .prologue
    .line 1855
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1856
    const/4 v1, 0x1

    .line 1858
    :goto_6
    return v1

    .line 1857
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1858
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isDirectConnected()Z
    .registers 3

    .prologue
    .line 1064
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDirectConnected()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1066
    :goto_6
    return v1

    .line 1065
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1066
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isDirectInitialized()Z
    .registers 3

    .prologue
    .line 1040
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDirectInitialized()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1042
    :goto_6
    return v1

    .line 1041
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1042
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isGOCreated()Z
    .registers 3

    .prologue
    .line 1048
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isGOCreated()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1050
    :goto_6
    return v1

    .line 1049
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1050
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isGcCreated()Z
    .registers 3

    .prologue
    .line 1056
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isGcCreated()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1058
    :goto_6
    return v1

    .line 1057
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1058
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 1843
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1845
    :goto_6
    return v1

    .line 1844
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1845
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isShowingAccessPointListDialog()Z
    .registers 3

    .prologue
    .line 857
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isShowingAccessPointListDialog()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 859
    :goto_6
    return v1

    .line 858
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 859
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isWifiApEnabled()Z
    .registers 3

    .prologue
    .line 1412
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isWifiEnabled()Z
    .registers 3

    .prologue
    .line 1326
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public pingSupplicant()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 673
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v1, :cond_7

    move v1, v2

    .line 678
    :goto_6
    return v1

    .line 676
    :cond_7
    :try_start_7
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    goto :goto_6

    .line 677
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v2

    .line 678
    goto :goto_6
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    .line 661
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 663
    :goto_6
    return v1

    .line 662
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 663
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reconnect()Z
    .registers 3

    .prologue
    .line 647
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 649
    :goto_6
    return v1

    .line 648
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 649
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public removeNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 585
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 587
    :goto_6
    return v1

    .line 586
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 587
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public saveConfiguration()Z
    .registers 3

    .prologue
    .line 751
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 753
    :goto_6
    return v1

    .line 752
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 753
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public saveCurrentTime(J)V
    .registers 4
    .parameter "currentTime"

    .prologue
    .line 821
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiProgressStore;->setCurrentTime(J)V

    .line 822
    return-void
.end method

.method public saveProgressLapseTime(I)V
    .registers 3
    .parameter "saveTime"

    .prologue
    .line 807
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setLapseTime(I)V

    .line 808
    return-void
.end method

.method public saveProgressMode(I)V
    .registers 3
    .parameter "saveDialogMode"

    .prologue
    .line 814
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setProgressMode(I)V

    .line 815
    return-void
.end method

.method public saveProgressPinNumber(I)V
    .registers 3
    .parameter "savePinNumber"

    .prologue
    .line 818
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setProgressPinNumber(I)V

    .line 819
    return-void
.end method

.method public saveProgressValue(I)V
    .registers 3
    .parameter "saveValue"

    .prologue
    .line 810
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setProgressValue(I)V

    .line 811
    return-void
.end method

.method public sendProvisionRequest(ILjava/lang/String;)Z
    .registers 5
    .parameter "provision_method"
    .parameter "macAddr"

    .prologue
    .line 1141
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->sendProvisionRequest(ILjava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1143
    :goto_6
    return v1

    .line 1142
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1143
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public sendProvisionResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "cfgMethod"
    .parameter "macAddr"
    .parameter "mPin"

    .prologue
    .line 1153
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->sendProvisionResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1155
    :goto_6
    return v1

    .line 1154
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1155
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setDeviceDiscoveryEnabled(ZZ)Z
    .registers 5
    .parameter "enable"
    .parameter "bListen"

    .prologue
    .line 992
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setDeviceDiscoveryEnabled(ZZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 994
    :goto_6
    return v1

    .line 993
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 994
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setDirectAPEnabled(ZLjava/lang/String;)Z
    .registers 5
    .parameter "enable"
    .parameter "mSSID"

    .prologue
    .line 1032
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setDirectAPEnabled(ZLjava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1034
    :goto_6
    return v1

    .line 1033
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1034
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setNumAllowedChannels(IZ)Z
    .registers 5
    .parameter "numChannels"
    .parameter "persist"

    .prologue
    .line 902
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setNumAllowedChannels(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 904
    :goto_6
    return v1

    .line 903
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 904
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRoamBand(I)Z
    .registers 4
    .parameter "roamBand"

    .prologue
    .line 1314
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamBand(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1316
    :goto_6
    return v1

    .line 1315
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1316
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRoamDelta(I)Z
    .registers 4
    .parameter "roamDelta"

    .prologue
    .line 1266
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamDelta(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1268
    :goto_6
    return v1

    .line 1267
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1268
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRoamScanPeriod(I)Z
    .registers 4
    .parameter "roamScanPeriod"

    .prologue
    .line 1290
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamScanPeriod(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1292
    :goto_6
    return v1

    .line 1291
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1292
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRoamTrigger(I)Z
    .registers 4
    .parameter "roamTrigger"

    .prologue
    .line 1242
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamTrigger(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1244
    :goto_6
    return v1

    .line 1243
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1244
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setShowAccessPointListDialog(Z)Z
    .registers 4
    .parameter "enable"

    .prologue
    .line 865
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setShowAccessPointListDialog(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 867
    :goto_6
    return v1

    .line 866
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 867
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setSupplicantAutoConn(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 1088
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setSupplicantAutoConn(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1090
    :goto_6
    return v1

    .line 1089
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1090
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setSupplicantAutoScan(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 1096
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setSupplicantAutoScan(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1098
    :goto_6
    return v1

    .line 1097
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1098
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setSupplicantHotspotAutoConn(ZZ)Z
    .registers 5
    .parameter "enabled"
    .parameter "autoConnectATTHotspot"

    .prologue
    .line 1203
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setSupplicantHotspotAutoConn(ZZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1205
    :goto_6
    return v1

    .line 1204
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1205
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4
    .parameter "wifiConfig"

    .prologue
    .line 1437
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1438
    const/4 v1, 0x1

    .line 1440
    :goto_6
    return v1

    .line 1439
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1440
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 5
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 1381
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1383
    :goto_6
    return v1

    .line 1382
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1383
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z
    .registers 6
    .parameter "enable"
    .parameter "config"
    .parameter "intent"

    .prologue
    .line 984
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 986
    :goto_6
    return v1

    .line 985
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 986
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiDirectPassword(Ljava/lang/String;)I
    .registers 4
    .parameter "mPassword"

    .prologue
    .line 1080
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiDirectPassword(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1082
    :goto_6
    return v1

    .line 1081
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1082
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiDirectSSID(Ljava/lang/String;)I
    .registers 4
    .parameter "mSsid"

    .prologue
    .line 1072
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiDirectSSID(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1074
    :goto_6
    return v1

    .line 1073
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1074
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiDirectSetting(Z)Z
    .registers 4
    .parameter "bDirect"

    .prologue
    .line 1177
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiDirectSetting(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1179
    :goto_6
    return v1

    .line 1178
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1179
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 945
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 947
    :goto_6
    return v1

    .line 946
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 947
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiEnabledDialog(Z)Z
    .registers 5
    .parameter "enabled"

    .prologue
    .line 971
    const-string v1, "WifiManager"

    const-string/jumbo v2, "setWifiEnabledDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :try_start_8
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabledDialog(Z)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v1

    .line 975
    :goto_e
    return v1

    .line 974
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 975
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public setWpsInProgress(Z)V
    .registers 3
    .parameter "inWpsProgress"

    .prologue
    .line 825
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mProgressStoredInfo:Landroid/net/wifi/WifiProgressStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiProgressStore;->setWpsInProgress(Z)V

    .line 826
    return-void
.end method

.method public showApDialog()Z
    .registers 3

    .prologue
    .line 851
    const-string v0, "WifiManager"

    const-string/jumbo v1, "showApDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isShowingAccessPointListDialog()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public shutdown()Z
    .registers 3

    .prologue
    .line 957
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->shutdown()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 959
    :goto_6
    return v1

    .line 958
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 959
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startScan()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 690
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 691
    const/4 v1, 0x1

    .line 693
    :goto_8
    return v1

    .line 692
    :catch_9
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v3

    .line 693
    goto :goto_8
.end method

.method public startScanActive()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 709
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v1, v3

    .line 712
    :goto_8
    return v1

    .line 711
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 712
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public stopWifiDirectWps()Z
    .registers 3

    .prologue
    .line 1016
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWifiDirectWps()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1018
    :goto_6
    return v1

    .line 1017
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1018
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    .line 553
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_8

    .line 554
    :cond_6
    const/4 v0, -0x1

    .line 556
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_7
.end method

.method public wpsCommandCancel()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 795
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWpsInProgress(Z)V

    .line 797
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->wpsCommandCancel()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_c

    move-result v1

    .line 799
    :goto_b
    return v1

    .line 798
    :catch_c
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v2

    .line 799
    goto :goto_b
.end method

.method public wpsPbcConnect()Z
    .registers 3

    .prologue
    .line 766
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWpsInProgress(Z)V

    .line 767
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->wpsPbcConnect()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-result v1

    .line 769
    :goto_a
    return v1

    .line 768
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 769
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public wpsPinConnect(Ljava/lang/String;)I
    .registers 4
    .parameter "bssid"

    .prologue
    .line 780
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->setWpsInProgress(Z)V

    .line 781
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->wpsPinConnect(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-result v1

    .line 783
    :goto_a
    return v1

    .line 782
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 783
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_a
.end method

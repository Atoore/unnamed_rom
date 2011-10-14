.class public Landroid/net/wifi/WifiStateTracker;
.super Landroid/net/NetworkStateTracker;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;,
        Landroid/net/wifi/WifiStateTracker$SettingsObserver;,
        Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;,
        Landroid/net/wifi/WifiStateTracker$DhcpHandler;,
        Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;,
        Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DISCONNECT_DELAY_MSECS:I = 0x1388

.field private static final DRIVER_HUNG:I = 0x2

.field private static final DRIVER_POWER_MODE_ACTIVE:I = 0x1

.field private static final DRIVER_POWER_MODE_AUTO:I = 0x0

.field private static final DRIVER_STARTED:I = 0x0

.field private static final DRIVER_STOPPED:I = 0x1

.field private static final EVENTLOG_DRIVER_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_INTERFACE_CONFIGURATION_STATE_CHANGED:I = 0xc368

.field private static final EVENTLOG_NETWORK_STATE_CHANGED:I = 0xc365

.field private static final EVENTLOG_SUPPLICANT_CONNECTION_STATE_CHANGED:I = 0xc369

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc366

.field private static final EVENT_ABOUT_WPS:I = 0xc

.field private static final EVENT_DEFERRED_DISCONNECT:I = 0xa

.field private static final EVENT_DEFERRED_RECONNECT:I = 0xb

.field private static final EVENT_DHCP_START:I = 0x9

.field private static final EVENT_DIRECT_DHCP_START:I = 0x13

.field private static final EVENT_DIRECT_INTERFACE_CONFIGURATION_FAILED:I = 0x1f

.field private static final EVENT_DIRECT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x1e

.field private static final EVENT_DIRECT_START:I = 0x11

.field private static final EVENT_DIRECT_STOP:I = 0x12

.field private static final EVENT_DRIVER_STATE_CHANGED:I = 0xd

.field private static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0x7

.field private static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x6

.field private static final EVENT_MAYBE_START_SCAN_POST_DISCONNECT:I = 0xf

.field private static final EVENT_NETWORK_STATE_CHANGED:I = 0x4

.field private static final EVENT_PASSWORD_KEY_MAY_BE_INCORRECT:I = 0xe

.field private static final EVENT_POLL_INTERVAL:I = 0x8

.field private static final EVENT_SCAN_RESULTS_AVAILABLE:I = 0x5

.field private static final EVENT_SHOW_AP_LIST_DIALOG:I = 0x10

.field private static final EVENT_SHOW_EAP_MESSAGE_DIALOG:I = 0x16

.field private static final EVENT_SUPPLICANT_CONNECTION:I = 0x1

.field private static final EVENT_SUPPLICANT_DISCONNECT:I = 0x2

.field private static final EVENT_SUPPLICANT_STATE_CHANGED:I = 0x3

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x10802c0

.field private static final KICKSTART_SCANNING_DELAY_MSECS:I = 0x3a98

.field private static final LOCAL_LOGD:Z = true

.field private static LS:Ljava/lang/String; = null

.field private static final MAX_SUPPLICANT_LOOP_ITERATIONS:I = 0x4

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x2

.field private static final POLL_STATUS_INTERVAL_MSECS:I = 0xbb8

.field private static final RECONNECT_DELAY_MSECS:I = 0x7d0

.field private static final RUN_STATE_RUNNING:I = 0x2

.field private static final RUN_STATE_STARTING:I = 0x1

.field private static final RUN_STATE_STOPPED:I = 0x4

.field private static final RUN_STATE_STOPPING:I = 0x3

.field public static final SUPPL_SCAN_HANDLING_LIST_ONLY:I = 0x2

.field public static final SUPPL_SCAN_HANDLING_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiStateTracker"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "DhcpHandler"

.field private static final WPS_FAIL:I = 0x2

.field private static final WPS_OVERLAP:I = 0x3

.field private static final WPS_SUCCESS:I = 0x1

.field private static final WPS_TIMEOUT:I = 0x4

.field private static final WPS_UNDEFINE:I = 0x5

.field private static final mRunStateNames:[Ljava/lang/String;

.field private static sDnsPropNames:[Ljava/lang/String;


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private mDhcpRenewAlarmIntent:Landroid/app/PendingIntent;

.field private mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

.field private mDirectDhcpInfo:Landroid/net/DhcpInfo;

.field private mDirectDhcpTarget:Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;

.field private mDirectInterfaceName:Ljava/lang/String;

.field private mDisconnectExpected:Z

.field private mDisconnectPending:Z

.field private mEnableRssiPolling:Z

.field private mHaveDirectIpAddr:Z

.field private mHaveIpAddress:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsHighPerfEnabled:Z

.field private mIsScanModeActive:Z

.field private mIsScanOnly:Z

.field private mLastBssid:Ljava/lang/String;

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSignalLevel:I

.field private mLastSsid:Ljava/lang/String;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumAllowedChannels:I

.field private mNumScansSinceNetworkStateChange:I

.field private mNumSupplicantLoopIterations:I

.field private mNumSupplicantStateChanges:I

.field private mObtainingDirectIpAddr:Z

.field private mObtainingIpAddress:Z

.field private mOptimizationsDisabledRefCount:I

.field private mPasswordKeyMayBeIncorrect:Z

.field private mPowerModeRefCount:I

.field private mReconnectCount:I

.field private mReportedRunning:Z

.field private mRunState:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Landroid/net/wifi/WifiStateTracker$SettingsObserver;

.field private mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

.field private mTornDownByConnMgr:Z

.field private mUseStaticIp:Z

.field private mWM:Landroid/net/wifi/WifiManager;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 364
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Starting"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Running"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Stopping"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Stopped"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    .line 379
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 13
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v9, "dhcp."

    .line 442
    const-string v5, "WIFI"

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V

    .line 159
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 220
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    .line 225
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    .line 233
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    .line 241
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    .line 271
    iput v8, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 274
    iput v8, p0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    .line 275
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    .line 279
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 283
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    .line 342
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    .line 343
    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    .line 356
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 386
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    .line 391
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 396
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 444
    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 445
    new-instance v0, Landroid/net/wifi/WifiMonitor;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiMonitor;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 446
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 447
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 448
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    .line 449
    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;

    .line 452
    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    .line 453
    iput v3, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 469
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    const/16 v2, 0x384

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    iput-wide v0, p0, Landroid/net/wifi/WifiStateTracker;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 471
    new-instance v0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    .line 472
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->register()V

    .line 474
    new-instance v0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiStateTracker$SettingsObserver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSettingsObserver:Landroid/net/wifi/WifiStateTracker$SettingsObserver;

    .line 476
    const v0, 0x10404a7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDirectInterfaceName:Ljava/lang/String;

    .line 477
    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpInfo:Landroid/net/DhcpInfo;

    .line 478
    const-string/jumbo v0, "wifi.interface"

    const-string v1, "eth0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 479
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->sDnsPropNames:[Ljava/lang/String;

    .line 483
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 486
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 487
    .local v7, powerManager:Landroid/os/PowerManager;
    const-string v0, "DhcpHandler"

    invoke-virtual {v7, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 489
    return-void
.end method

.method private CheckDhcpRenew()Z
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "WifiStateTracker"

    .line 1084
    const/4 v1, 0x0

    .line 1085
    .local v1, in:Ljava/io/InputStream;
    const/16 v6, 0x64

    :try_start_7
    new-array v0, v6, [B

    .line 1086
    .local v0, buffer:[B
    const/4 v5, 0x0

    .line 1087
    .local v5, value:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1089
    .local v3, length:I
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/wifi/kaf/dhcp_on.ini"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_17} :catch_32

    .line 1090
    .end local v1           #in:Ljava/io/InputStream;
    .local v2, in:Ljava/io/InputStream;
    :try_start_17
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 1091
    if-eqz v3, :cond_25

    .line 1092
    new-instance v5, Ljava/lang/String;

    .end local v5           #value:Ljava/lang/String;
    const/4 v6, 0x0

    sub-int v7, v3, v9

    invoke-direct {v5, v0, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 1094
    .restart local v5       #value:Ljava/lang/String;
    :cond_25
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1095
    const-string v6, "DhcpIpRenewOn=0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2d} :catch_8e

    move-result v6

    if-eqz v6, :cond_33

    move v6, v8

    .line 1122
    .end local v0           #buffer:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #length:I
    .end local v5           #value:Ljava/lang/String;
    :goto_31
    return v6

    .line 1098
    .restart local v1       #in:Ljava/io/InputStream;
    :catch_32
    move-exception v6

    .line 1102
    .end local v1           #in:Ljava/io/InputStream;
    :cond_33
    :goto_33
    const/4 v1, 0x0

    .line 1103
    .restart local v1       #in:Ljava/io/InputStream;
    const/16 v6, 0x64

    :try_start_36
    new-array v0, v6, [B

    .line 1104
    .restart local v0       #buffer:[B
    const/4 v5, 0x0

    .line 1105
    .restart local v5       #value:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1107
    .restart local v3       #length:I
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/misc/wifi/kaf/info.ini"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_46} :catch_68

    .line 1108
    .end local v1           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :try_start_46
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 1109
    if-eqz v3, :cond_54

    .line 1110
    new-instance v5, Ljava/lang/String;

    .end local v5           #value:Ljava/lang/String;
    const/4 v6, 0x0

    sub-int v7, v3, v9

    invoke-direct {v5, v0, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 1112
    .restart local v5       #value:Ljava/lang/String;
    :cond_54
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1113
    const-string v6, "KTAP=1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 1114
    const-string v6, "WifiStateTracker"

    const-string v7, "DhcpIpRenew is on"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_66} :catch_8a

    move v6, v9

    .line 1115
    goto :goto_31

    .line 1117
    .end local v0           #buffer:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #length:I
    .end local v5           #value:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/InputStream;
    :catch_68
    move-exception v6

    move-object v4, v6

    .line 1118
    .local v4, t:Ljava/lang/Throwable;
    :goto_6a
    const-string v6, "WifiStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CheckDhcpRenew:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 1119
    goto :goto_31

    .end local v1           #in:Ljava/io/InputStream;
    .end local v4           #t:Ljava/lang/Throwable;
    .restart local v0       #buffer:[B
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v3       #length:I
    .restart local v5       #value:Ljava/lang/String;
    :cond_88
    move v6, v8

    .line 1122
    goto :goto_31

    .line 1117
    .end local v5           #value:Ljava/lang/String;
    :catch_8a
    move-exception v6

    move-object v4, v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    goto :goto_6a

    .line 1098
    .end local v1           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    :catch_8e
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    goto :goto_33
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiStateTracker;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/net/wifi/WifiStateTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiStateTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDirectInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    return v0
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiStateTracker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V

    return-void
.end method

.method private cancelDisconnect()V
    .registers 2

    .prologue
    .line 1874
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1875
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->removeMessages(I)V

    .line 1876
    return-void
.end method

.method private checkIsBluetoothPlaying()V
    .registers 7

    .prologue
    .line 967
    const/4 v3, 0x0

    .line 968
    .local v3, isBluetoothPlaying:Z
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v0

    .line 970
    .local v0, connected:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 971
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    .line 972
    const/4 v3, 0x1

    .line 976
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_21
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateTracker;->setBluetoothScanMode(Z)V

    .line 977
    return-void
.end method

.method private declared-synchronized checkPollTimer()V
    .registers 4

    .prologue
    .line 828
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_1e

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 831
    const/16 v0, 0x8

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 833
    :cond_1e
    monitor-exit p0

    return-void

    .line 828
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkUseStaticIp()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3226
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    .line 3227
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3229
    .local v1, cr:Landroid/content/ContentResolver;
    :try_start_9
    const-string/jumbo v3, "wifi_use_static_ip"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_f} :catch_13

    move-result v3

    if-nez v3, :cond_16

    .line 3271
    :cond_12
    :goto_12
    return-void

    .line 3232
    :catch_13
    move-exception v3

    move-object v2, v3

    .line 3233
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_12

    .line 3237
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_16
    :try_start_16
    const-string/jumbo v3, "wifi_static_ip"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3238
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 3239
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->ipAddress:I

    .line 3243
    const-string/jumbo v3, "wifi_static_gateway"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3244
    if-eqz v0, :cond_12

    .line 3245
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->gateway:I

    .line 3249
    const-string/jumbo v3, "wifi_static_netmask"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3250
    if-eqz v0, :cond_12

    .line 3251
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->netmask:I

    .line 3255
    const-string/jumbo v3, "wifi_static_dns1"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3256
    if-eqz v0, :cond_12

    .line 3257
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->dns1:I

    .line 3261
    const-string/jumbo v3, "wifi_static_dns2"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3262
    if-eqz v0, :cond_6f

    .line 3263
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->dns2:I
    :try_end_6b
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_6b} :catch_75

    .line 3270
    :goto_6b
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    goto :goto_12

    .line 3265
    :cond_6f
    :try_start_6f
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/net/DhcpInfo;->dns2:I
    :try_end_74
    .catch Ljava/net/UnknownHostException; {:try_start_6f .. :try_end_74} :catch_75

    goto :goto_6b

    .line 3267
    .end local v0           #addr:Ljava/lang/String;
    :catch_75
    move-exception v3

    move-object v2, v3

    .line 3268
    .local v2, e:Ljava/net/UnknownHostException;
    goto :goto_12
.end method

.method private configureDirectInterface()V
    .registers 3

    .prologue
    .line 1790
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mHaveDirectIpAddr:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingDirectIpAddr:Z

    if-nez v0, :cond_16

    .line 1791
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpTarget:Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;

    if-eqz v0, :cond_17

    .line 1792
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingDirectIpAddr:Z

    .line 1793
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpTarget:Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->sendEmptyMessage(I)Z

    .line 1798
    :cond_16
    :goto_16
    return-void

    .line 1795
    :cond_17
    const-string v0, "WifiStateTracker"

    const-string v1, "mDirectDhcpTarget is null. Check Why mDirectDhcpTarget is null. "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private configureInterface()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "WifiStateTracker"

    .line 1765
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 1766
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1767
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    if-nez v1, :cond_1f

    .line 1768
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    if-nez v1, :cond_1e

    .line 1769
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1770
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 1785
    :cond_1e
    :goto_1e
    return-void

    .line 1774
    :cond_1f
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->configureInterface(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1775
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1776
    const/4 v0, 0x6

    .line 1777
    .local v0, event:I
    const-string v1, "WifiStateTracker"

    const-string v1, "Static IP configuration succeeded"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :goto_33
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    goto :goto_1e

    .line 1779
    .end local v0           #event:I
    :cond_37
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1780
    const/4 v0, 0x7

    .line 1781
    .restart local v0       #event:I
    const-string v1, "WifiStateTracker"

    const-string v1, "Static IP configuration failed"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method private getMaxDhcpRetries()I
    .registers 4

    .prologue
    .line 3298
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V
    .registers 6
    .parameter "newState"
    .parameter "disableInterface"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1809
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    if-eqz v0, :cond_9

    .line 1810
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->cancelDisconnect()V

    .line 1812
    :cond_9
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    .line 1813
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 1814
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1815
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 1816
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 1817
    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1818
    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1819
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1820
    return-void
.end method

.method public static intToIpString(I)Ljava/lang/String;
    .registers 4
    .parameter "i"

    .prologue
    const-string v2, "."

    .line 3292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSupplicantLooping(Landroid/net/wifi/SupplicantState;)Z
    .registers 4
    .parameter "newSupplicantState"

    .prologue
    .line 1009
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_43

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 1011
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    if-eq v0, p1, :cond_35

    .line 1012
    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 1013
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    if-eqz v0, :cond_3c

    .line 1015
    const-string v0, "WifiStateTracker"

    const-string v1, "isSupplicantLooping(), will not count mNumSupplicantLoopIterations during WPS connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_33
    :goto_33
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    .line 1027
    :cond_35
    :goto_35
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4b

    const/4 v0, 0x1

    :goto_3b
    return v0

    .line 1017
    :cond_3c
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    goto :goto_33

    .line 1023
    :cond_43
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne p1, v0, :cond_35

    .line 1024
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    goto :goto_35

    .line 1027
    :cond_4b
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private removeDhcpRenewAlarm()V
    .registers 3

    .prologue
    .line 1055
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mAlarmService:Landroid/app/AlarmManager;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpRenewAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_19

    .line 1056
    const-string v0, "WifiStateTracker"

    const-string v1, "cancelDhcpRenewAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpRenewAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1058
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpRenewAlarmIntent:Landroid/app/PendingIntent;

    .line 1060
    :cond_19
    return-void
.end method

.method private requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V
    .registers 19
    .parameter "info"

    .prologue
    .line 1901
    const/4 v3, 0x0

    .line 1902
    .local v3, SSID:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1903
    .local v2, BSSID:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1904
    .local v13, suppState:Ljava/lang/String;
    const/4 v10, -0x1

    .line 1905
    .local v10, netId:I
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->status()Ljava/lang/String;

    move-result-object v12

    .line 1906
    .local v12, reply:Ljava/lang/String;
    if-eqz v12, :cond_5b

    .line 1913
    const-string v15, "\n"

    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1914
    .local v8, lines:[Ljava/lang/String;
    move-object v4, v8

    .local v4, arr$:[Ljava/lang/String;
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_13
    if-ge v5, v6, :cond_5b

    aget-object v7, v4, v5

    .line 1915
    .local v7, line:Ljava/lang/String;
    const-string v15, " *= *"

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1916
    .local v11, prop:[Ljava/lang/String;
    array-length v15, v11

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_28

    .line 1914
    :cond_25
    :goto_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 1918
    :cond_28
    const/4 v15, 0x0

    aget-object v9, v11, v15

    .line 1919
    .local v9, name:Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v14, v11, v15

    .line 1920
    .local v14, value:Ljava/lang/String;
    const-string v15, "id"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3b

    .line 1921
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_25

    .line 1922
    :cond_3b
    const-string/jumbo v15, "ssid"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_46

    .line 1923
    move-object v3, v14

    goto :goto_25

    .line 1924
    :cond_46
    const-string v15, "bssid"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_50

    .line 1925
    move-object v2, v14

    goto :goto_25

    .line 1926
    :cond_50
    const-string/jumbo v15, "wpa_state"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_25

    .line 1927
    move-object v13, v14

    goto :goto_25

    .line 1930
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #lines:[Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #prop:[Ljava/lang/String;
    .end local v14           #value:Ljava/lang/String;
    :cond_5b
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 1931
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 1932
    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v15

    sget-object v16, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_85

    if-eqz v13, :cond_85

    .line 1941
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Ljava/lang/String;)V

    .line 1942
    :cond_85
    return-void
.end method

.method private declared-synchronized requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V
    .registers 9
    .parameter "info"
    .parameter "polling"

    .prologue
    const/4 v5, -0x1

    const/16 v4, -0xc8

    .line 1950
    monitor-enter p0

    if-eqz p2, :cond_33

    :try_start_6
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getRssiApprox()I

    move-result v3

    move v1, v3

    .line 1951
    .local v1, newRssi:I
    :goto_b
    if-eq v1, v5, :cond_39

    if-ge v4, v1, :cond_39

    const/16 v3, 0x100

    if-ge v1, v3, :cond_39

    .line 1955
    if-lez v1, :cond_17

    add-int/lit16 v1, v1, -0x100

    .line 1956
    :cond_17
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 1970
    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 1971
    .local v2, newSignalLevel:I
    iget v3, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    if-eq v2, v3, :cond_26

    .line 1972
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->sendRssiChangeBroadcast(I)V

    .line 1974
    :cond_26
    iput v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1978
    .end local v2           #newSignalLevel:I
    :goto_28
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getLinkSpeed()I

    move-result v0

    .line 1979
    .local v0, newLinkSpeed:I
    if-eq v0, v5, :cond_31

    .line 1980
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_3f

    .line 1982
    :cond_31
    monitor-exit p0

    return-void

    .line 1950
    .end local v0           #newLinkSpeed:I
    .end local v1           #newRssi:I
    :cond_33
    :try_start_33
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getRssi()I

    move-result v3

    move v1, v3

    goto :goto_b

    .line 1976
    .restart local v1       #newRssi:I
    :cond_39
    const/16 v3, -0xc8

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiInfo;->setRssi(I)V
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_3f

    goto :goto_28

    .line 1950
    .end local v1           #newRssi:I
    :catchall_3f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private resetNotificationTimer()V
    .registers 3

    .prologue
    .line 2931
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    .line 2932
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    .line 2933
    return-void
.end method

.method private resetSupplicantLoopState()V
    .registers 2

    .prologue
    .line 1034
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    .line 1035
    return-void
.end method

.method private scheduleDisconnect()V
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 1867
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    .line 1868
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1869
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1871
    :cond_10
    return-void
.end method

.method private sendAlarmSignaltoDhcp()Z
    .registers 8

    .prologue
    const-string v6, "WifiStateTracker"

    .line 1063
    const-string v3, "dhcp.eth0.pid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, dhcpPid:Ljava/lang/String;
    const-string v3, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendAlarmSignaltoDhcp dhcpPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1070
    :try_start_29
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1071
    .local v2, pId:I
    const-string v3, "WifiStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendAlarmSignaltoDhcp pId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/16 v3, 0xe

    invoke-static {v2, v3}, Landroid/os/Process;->sendSignal(II)V
    :try_end_4b
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_4b} :catch_4d

    .line 1078
    const/4 v3, 0x1

    .end local v2           #pId:I
    :goto_4c
    return v3

    .line 1074
    :catch_4d
    move-exception v3

    move-object v1, v3

    .line 1075
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "WifiStateTracker"

    const-string/jumbo v3, "sendAlarmSignaltoDhcp Invalid pId"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v3, 0x0

    goto :goto_4c
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .registers 5
    .parameter "bssid"

    .prologue
    .line 2005
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2006
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2008
    const-string/jumbo v1, "networkInfo"

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2009
    if-eqz p1, :cond_1b

    .line 2010
    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2011
    :cond_1b
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2012
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .registers 4
    .parameter "newRssi"

    .prologue
    .line 1997
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1998
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1999
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2000
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2002
    .end local v0           #intent:Landroid/content/Intent;
    :cond_18
    return-void
.end method

.method private setDhcpRenewAlarm(I)V
    .registers 10
    .parameter "leasetime"

    .prologue
    const-string v5, "WifiStateTracker"

    .line 1038
    const-string v3, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDhcpRenewAlarm leasetime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v3, :cond_2b

    .line 1041
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mAlarmService:Landroid/app/AlarmManager;

    .line 1042
    :cond_2b
    if-gtz p1, :cond_36

    .line 1043
    const-string v3, "WifiStateTracker"

    const-string/jumbo v3, "setDhcpRenewAlarm invalid leasetime"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :goto_35
    return-void

    .line 1047
    :cond_36
    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long v1, v3, v5

    .line 1049
    .local v1, renewtime_millisec:J
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DHCP_RENEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1050
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpRenewAlarmIntent:Landroid/app/PendingIntent;

    .line 1051
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mAlarmService:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v1

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpRenewAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_35
.end method

.method private declared-synchronized setPowerMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 2614
    monitor-enter p0

    packed-switch p1, :pswitch_data_32

    .line 2629
    :goto_4
    :try_start_4
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1c

    move-result v0

    if-eqz v0, :cond_2d

    .line 2634
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 2616
    :pswitch_15
    :try_start_15
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1c

    goto :goto_4

    .line 2614
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2619
    :pswitch_1f
    :try_start_1f
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    .line 2620
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    if-gtz v0, :cond_13

    .line 2624
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    goto :goto_4

    .line 2633
    :cond_2d
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_1c

    goto :goto_13

    .line 2614
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_15
    .end packed-switch
.end method

.method private setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 497
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 498
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 499
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 500
    return-void
.end method

.method private setSupplicantState(Ljava/lang/String;)V
    .registers 3
    .parameter "stateName"

    .prologue
    .line 512
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Ljava/lang/String;)V

    .line 513
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 514
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 515
    return-void
.end method

.method private setTornDownByConnMgr(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 525
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    .line 526
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    .line 527
    return-void
.end method

.method private static stringToIpAddr(Ljava/lang/String;)I
    .registers 9
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 3275
    :try_start_0
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3276
    .local v5, parts:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-eq v6, v7, :cond_18

    .line 3277
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_10} :catch_10

    .line 3286
    .end local v5           #parts:[Ljava/lang/String;
    :catch_10
    move-exception v6

    move-object v4, v6

    .line 3287
    .local v4, ex:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3280
    .end local v4           #ex:Ljava/lang/NumberFormatException;
    .restart local v5       #parts:[Ljava/lang/String;
    :cond_18
    const/4 v6, 0x0

    :try_start_19
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3281
    .local v0, a:I
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v1, v6, 0x8

    .line 3282
    .local v1, b:I
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v2, v6, 0x10

    .line 3283
    .local v2, c:I
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_37} :catch_10

    move-result v6

    shl-int/lit8 v3, v6, 0x18

    .line 3285
    .local v3, d:I
    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    return v6
.end method

.method private updateNetworkInfo()V
    .registers 3

    .prologue
    .line 602
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 603
    return-void
.end method

.method private wifiManagerDisableNetwork(I)Z
    .registers 6
    .parameter "networkId"

    .prologue
    const-string v3, "WifiStateTracker"

    .line 1746
    const/4 v0, 0x0

    .line 1747
    .local v0, disabledNetwork:Z
    if-ltz p1, :cond_25

    .line 1748
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    .line 1750
    if-eqz v0, :cond_25

    .line 1751
    const-string v1, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabled network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    :cond_25
    if-nez v0, :cond_3f

    .line 1757
    const-string v1, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to disable network: invalid network id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_3f
    return v0
.end method


# virtual methods
.method public declared-synchronized SetAutoConn(Z)Z
    .registers 5
    .parameter "enabled"

    .prologue
    .line 2747
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2748
    const/4 v0, 0x0

    .line 2753
    :goto_b
    monitor-exit p0

    return v0

    .line 2751
    :cond_d
    :try_start_d
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================>> Check SetAutoConnect Setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->SetAutoConnCommand(Z)Z
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_2a

    move-result v0

    goto :goto_b

    .line 2747
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized SetAutoScan(Z)Z
    .registers 5
    .parameter "enabled"

    .prologue
    .line 2762
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2763
    const/4 v0, 0x0

    .line 2768
    :goto_b
    monitor-exit p0

    return v0

    .line 2766
    :cond_d
    :try_start_d
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================>> Check SetAutoConnect Setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->SetAutoScanCommand(Z)Z
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_2a

    move-result v0

    goto :goto_b

    .line 2762
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized SetHotspotAutoConn(ZZ)Z
    .registers 6
    .parameter "enabled"
    .parameter "autoConnectATTHotspot"

    .prologue
    const-string v0, "WifiStateTracker"

    .line 2801
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_44

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    .line 2802
    const/4 v0, 0x0

    .line 2808
    :goto_d
    monitor-exit p0

    return v0

    .line 2805
    :cond_f
    :try_start_f
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================>> Check SetAutoConnect Setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================>> Check SetAutoConnect autoConnectATTHotspot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    invoke-static {p1, p2}, Landroid/net/wifi/WifiNative;->SetHotspotAutoConnCommand(ZZ)Z
    :try_end_42
    .catchall {:try_start_f .. :try_end_42} :catchall_44

    move-result v0

    goto :goto_d

    .line 2801
    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addNetwork()I
    .registers 3

    .prologue
    .line 2264
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2265
    const/4 v0, -0x1

    .line 2267
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->addNetworkCommand()I
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2264
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addToBlacklist(Ljava/lang/String;)Z
    .registers 4
    .parameter "bssid"

    .prologue
    .line 2349
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2350
    const/4 v0, 0x0

    .line 2352
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->addToBlacklistCommand(Ljava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2349
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearBlacklist()Z
    .registers 3

    .prologue
    .line 2361
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2362
    const/4 v0, 0x0

    .line 2364
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->clearBlacklistCommand()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2361
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeSupplicantConnection()V
    .registers 2

    .prologue
    .line 2161
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 2162
    monitor-exit p0

    return-void

    .line 2161
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectToSupplicant()Z
    .registers 2

    .prologue
    .line 2154
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disableNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 2322
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1a

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2323
    const/4 v0, 0x0

    .line 2326
    :goto_b
    monitor-exit p0

    return v0

    .line 2325
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2326
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->disableNetworkCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1a

    goto :goto_b

    .line 2322
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()Z
    .registers 3

    .prologue
    .line 2240
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2241
    :cond_10
    const/4 v0, 0x0

    .line 2243
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2240
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectAndStop()Z
    .registers 6

    .prologue
    const/4 v2, 0x3

    .line 2058
    monitor-enter p0

    const/4 v0, 0x1

    .line 2059
    .local v0, ret:Z
    :try_start_3
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    if-eq v1, v2, :cond_24

    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_24

    .line 2061
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 2063
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_26

    .line 2064
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->stopDriver()Z

    move-result v0

    .line 2068
    :goto_21
    const/4 v1, 0x3

    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2b

    .line 2070
    :cond_24
    monitor-exit p0

    return v0

    .line 2066
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2b

    move-result v0

    goto :goto_21

    .line 2058
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableAllNetworks(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2304
    .local p1, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2e

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_c

    .line 2313
    :cond_a
    monitor-exit p0

    return-void

    .line 2307
    :cond_c
    :try_start_c
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2308
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2309
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 2310
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2e

    goto :goto_16

    .line 2304
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_2e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized enableNetwork(IZ)Z
    .registers 5
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 2291
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1a

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2292
    const/4 v0, 0x0

    .line 2295
    :goto_b
    monitor-exit p0

    return v0

    .line 2294
    :cond_d
    if-eqz p2, :cond_15

    :try_start_f
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2295
    :cond_15
    invoke-static {p1, p2}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1a

    move-result v0

    goto :goto_b

    .line 2291
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableRssiPolling(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 980
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    if-eq v0, p1, :cond_9

    .line 981
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    .line 982
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    .line 984
    :cond_9
    return-void
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 1879
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getLinkSpeed()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 2470
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_43

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    .line 2479
    :goto_12
    monitor-exit p0

    return v0

    .line 2473
    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_41

    .line 2477
    :cond_3c
    invoke-static {}, Landroid/net/wifi/WifiNative;->getLinkSpeedCommand()I
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_43

    move-result v0

    goto :goto_12

    :cond_41
    move v0, v2

    .line 2479
    goto :goto_12

    .line 2470
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNameServers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 535
    sget-object v0, Landroid/net/wifi/WifiStateTracker;->sDnsPropNames:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubtype()I
    .registers 2

    .prologue
    .line 594
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "netId"
    .parameter "name"

    .prologue
    .line 2387
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2388
    const/4 v0, 0x0

    .line 2390
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    invoke-static {p1, p2}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result-object v0

    goto :goto_b

    .line 2387
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumAllowedChannels()I
    .registers 3

    .prologue
    .line 2681
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2682
    :cond_10
    const/4 v0, -0x1

    .line 2684
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->getNumAllowedChannelsCommand()I
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2681
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPowerMode()I
    .registers 3

    .prologue
    .line 2588
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-nez v0, :cond_13

    .line 2589
    const/4 v0, -0x1

    .line 2591
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->getPowerModeCommand()I
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2588
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRssi()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 2434
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_43

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    .line 2443
    :goto_12
    monitor-exit p0

    return v0

    .line 2437
    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_41

    .line 2441
    :cond_3c
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRssiApproxCommand()I
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_43

    move-result v0

    goto :goto_12

    :cond_41
    move v0, v2

    .line 2443
    goto :goto_12

    .line 2434
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRssiApprox()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 2452
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_43

    move-result v0

    if-nez v0, :cond_14

    move v0, v2

    .line 2461
    :goto_12
    monitor-exit p0

    return v0

    .line 2455
    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_41

    .line 2459
    :cond_3c
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRssiApproxCommand()I
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_43

    move-result v0

    goto :goto_12

    :cond_41
    move v0, v2

    .line 2461
    goto :goto_12

    .line 2452
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanResultsList()Ljava/util/List;
    .registers 2
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
    .line 1883
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .registers 2

    .prologue
    .line 503
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 551
    const-string/jumbo v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public getWifiState()I
    .registers 2

    .prologue
    .line 2083
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 36
    .parameter "msg"

    .prologue
    .line 1130
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_ab6

    .line 1743
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 1133
    :pswitch_a
    const-string v30, "WifiStateTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "EVENT_ABOUT_WPS: arg1 ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 1135
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v30

    if-eqz v30, :cond_9

    .line 1136
    new-instance v17, Landroid/content/Intent;

    const-string v30, "android.net.wifi.GET_WPS_EVENT"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1137
    .local v17, intent:Landroid/content/Intent;
    const-string/jumbo v30, "wps_event"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9

    .line 1145
    .end local v17           #intent:Landroid/content/Intent;
    :pswitch_67
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v30

    if-eqz v30, :cond_9

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    new-instance v31, Landroid/content/Intent;

    const-string v32, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-direct/range {v31 .. v32}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9

    .line 1152
    :pswitch_7e
    monitor-enter p0

    .line 1153
    const/16 v30, 0x0

    :try_start_81
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveDirectIpAddr:Z

    .line 1154
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingDirectIpAddr:Z

    .line 1156
    new-instance v10, Landroid/os/HandlerThread;

    const-string v30, "Direct DHCP Handler Thread"

    move-object v0, v10

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v10, directdhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 1158
    new-instance v30, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpTarget:Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;

    .line 1159
    monitor-exit p0

    goto/16 :goto_9

    .end local v10           #directdhcpThread:Landroid/os/HandlerThread;
    :catchall_b6
    move-exception v30

    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_81 .. :try_end_b8} :catchall_b6

    throw v30

    .line 1163
    :pswitch_b9
    monitor-enter p0

    .line 1164
    :try_start_ba
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpTarget:Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;

    move-object/from16 v30, v0

    if-eqz v30, :cond_ed

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpTarget:Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->setCancelCallback(Z)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpTarget:Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;

    move-object/from16 v30, v0

    const/16 v31, 0x13

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->removeMessages(I)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpTarget:Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->getLooper()Landroid/os/Looper;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/Looper;->quit()V

    .line 1169
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpTarget:Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;

    .line 1171
    :cond_ed
    monitor-exit p0

    goto/16 :goto_9

    :catchall_f0
    move-exception v30

    monitor-exit p0
    :try_end_f2
    .catchall {:try_start_ba .. :try_end_f2} :catchall_f0

    throw v30

    .line 1175
    :pswitch_f3
    const/16 v30, 0x2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string/jumbo v31, "wifi_auto_connect"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_279

    const/16 v30, 0x1

    move/from16 v6, v30

    .line 1182
    .local v6, autoConnectATTHotspot:Z
    :goto_11a
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->SetHotspotAutoConn(ZZ)Z

    .line 1185
    monitor-enter p0

    .line 1186
    const/16 v30, 0x0

    :try_start_127
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    .line 1187
    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;

    move-result-object v20

    .line 1188
    .local v20, macaddr:Ljava/lang/String;
    monitor-exit p0
    :try_end_133
    .catchall {:try_start_127 .. :try_end_133} :catchall_27f

    .line 1189
    if-eqz v20, :cond_142

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 1193
    :cond_142
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V

    .line 1195
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    .line 1199
    new-instance v8, Landroid/os/HandlerThread;

    const-string v30, "DHCP Handler Thread"

    move-object v0, v8

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1200
    .local v8, dhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 1201
    new-instance v30, Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    .line 1202
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    .line 1203
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mIsHighPerfEnabled:Z

    .line 1204
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    .line 1205
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    .line 1206
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    .line 1207
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1208
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1210
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v27

    .line 1213
    .local v27, supplState:Landroid/net/wifi/SupplicantState;
    const-string v30, "WifiStateTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Connection to supplicant established, state="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const v30, 0xc369

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1225
    sget-object v30, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_20b

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1228
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    .line 1230
    :cond_20b
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v30

    if-eqz v30, :cond_236

    .line 1231
    new-instance v17, Landroid/content/Intent;

    const-string v30, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1232
    .restart local v17       #intent:Landroid/content/Intent;
    const-string v30, "connected"

    const/16 v31, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1234
    :try_start_229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_236
    .catch Ljava/lang/IllegalStateException; {:try_start_229 .. :try_end_236} :catch_282

    .line 1239
    .end local v17           #intent:Landroid/content/Intent;
    :cond_236
    :goto_236
    sget-object v30, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_28d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v30, v0

    if-eqz v30, :cond_28d

    .line 1240
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1249
    :goto_24f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiManager;->initializeMulticastFiltering()Z

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v30, v0

    if-nez v30, :cond_271

    .line 1252
    new-instance v30, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-direct/range {v30 .. v31}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 1254
    :cond_271
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkIsBluetoothPlaying()V

    .line 1257
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels()Z

    goto/16 :goto_9

    .line 1180
    .end local v6           #autoConnectATTHotspot:Z
    .end local v8           #dhcpThread:Landroid/os/HandlerThread;
    .end local v20           #macaddr:Ljava/lang/String;
    .end local v27           #supplState:Landroid/net/wifi/SupplicantState;
    :cond_279
    const/16 v30, 0x0

    move/from16 v6, v30

    goto/16 :goto_11a

    .line 1188
    .restart local v6       #autoConnectATTHotspot:Z
    :catchall_27f
    move-exception v30

    :try_start_280
    monitor-exit p0
    :try_end_281
    .catchall {:try_start_280 .. :try_end_281} :catchall_27f

    throw v30

    .line 1235
    .restart local v8       #dhcpThread:Landroid/os/HandlerThread;
    .restart local v17       #intent:Landroid/content/Intent;
    .restart local v20       #macaddr:Ljava/lang/String;
    .restart local v27       #supplState:Landroid/net/wifi/SupplicantState;
    :catch_282
    move-exception v30

    move-object/from16 v13, v30

    .line 1236
    .local v13, ex:Ljava/lang/IllegalStateException;
    const-string v30, "WifiStateTracker"

    const-string v31, "Before system ready: EVENT_SUPPLICANT_CONNECTION"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_236

    .line 1242
    .end local v13           #ex:Ljava/lang/IllegalStateException;
    .end local v17           #intent:Landroid/content/Intent;
    :cond_28d
    invoke-static/range {v27 .. v27}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_24f

    .line 1261
    .end local v6           #autoConnectATTHotspot:Z
    .end local v8           #dhcpThread:Landroid/os/HandlerThread;
    .end local v20           #macaddr:Ljava/lang/String;
    .end local v27           #supplState:Landroid/net/wifi/SupplicantState;
    :pswitch_299
    const/16 v30, 0x4

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1262
    monitor-enter p0

    .line 1263
    const/16 v30, 0x0

    :try_start_2a4
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    .line 1264
    monitor-exit p0
    :try_end_2ac
    .catchall {:try_start_2a4 .. :try_end_2ac} :catchall_378

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_37b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v30

    if-eqz v30, :cond_37b

    const/16 v30, 0x1

    move/from16 v9, v30

    .line 1267
    .local v9, died:Z
    :goto_2ce
    if-eqz v9, :cond_381

    .line 1268
    const-string v30, "WifiStateTracker"

    const-string v31, "Supplicant died unexpectedly"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :goto_2d7
    const v30, 0xc369

    if-eqz v9, :cond_38a

    const/16 v31, 0x2

    :goto_2de
    invoke-static/range {v30 .. v31}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1277
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->closeSupplicantConnection()V

    .line 1279
    if-eqz v9, :cond_2ef

    .line 1280
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 1283
    :cond_2ef
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v30, v0

    if-eqz v30, :cond_30c

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->getLooper()Landroid/os/Looper;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/Looper;->quit()V

    .line 1285
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    .line 1288
    :cond_30c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    new-instance v31, Landroid/content/Intent;

    const-string v32, "android.net.wifi.STATE_CHANGE"

    invoke-direct/range {v31 .. v32}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1289
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v30

    if-eqz v30, :cond_347

    .line 1290
    new-instance v17, Landroid/content/Intent;

    const-string v30, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1291
    .restart local v17       #intent:Landroid/content/Intent;
    const-string v30, "connected"

    const/16 v31, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1294
    .end local v17           #intent:Landroid/content/Intent;
    :cond_347
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1295
    sget-object v30, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 1296
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1297
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1298
    if-eqz v9, :cond_9

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_9

    .line 1264
    .end local v9           #died:Z
    :catchall_378
    move-exception v30

    :try_start_379
    monitor-exit p0
    :try_end_37a
    .catchall {:try_start_379 .. :try_end_37a} :catchall_378

    throw v30

    .line 1265
    :cond_37b
    const/16 v30, 0x0

    move/from16 v9, v30

    goto/16 :goto_2ce

    .line 1270
    .restart local v9       #died:Z
    :cond_381
    const-string v30, "WifiStateTracker"

    const-string v31, "Connection to supplicant lost"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d7

    .line 1276
    :cond_38a
    const/16 v31, 0x0

    goto/16 :goto_2de

    .line 1306
    .end local v9           #died:Z
    :pswitch_38e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 1307
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z

    goto/16 :goto_9

    .line 1312
    :pswitch_3ab
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    .line 1313
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;

    .line 1315
    .local v28, supplicantStateResult:Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    move-object/from16 v23, v0

    .line 1316
    .local v23, newState:Landroid/net/wifi/SupplicantState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v7

    .line 1321
    .local v7, currentState:Landroid/net/wifi/SupplicantState;
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v30

    and-int/lit8 v12, v30, 0x3f

    .line 1322
    .local v12, eventLogParam:I
    const v30, 0xc366

    move/from16 v0, v30

    move v1, v12

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1324
    const-string v30, "WifiStateTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Changing supplicant state: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " ==> "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    move-object/from16 v0, v28

    iget v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->networkId:I

    move/from16 v21, v0

    .line 1334
    .local v21, networkId:I
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    move-object/from16 v30, v0

    sget-object v31, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_429

    .line 1335
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->BSSID:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1354
    :cond_429
    const/4 v14, 0x0

    .line 1355
    .local v14, failedToAuthenticate:Z
    sget-object v30, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_437

    .line 1356
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    move v14, v0

    .line 1358
    :cond_437
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    .line 1364
    const/4 v11, 0x0

    .line 1365
    .local v11, disabledNetwork:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->isSupplicantLooping(Landroid/net/wifi/SupplicantState;)Z

    move-result v30

    if-eqz v30, :cond_459

    .line 1367
    const-string v30, "WifiStateTracker"

    const-string v31, "Stop WPA supplicant loop and disable network"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->wifiManagerDisableNetwork(I)Z

    move-result v11

    .line 1373
    :cond_459
    if-eqz v11, :cond_460

    .line 1377
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    goto/16 :goto_9

    .line 1378
    :cond_460
    move-object/from16 v0, v23

    move-object v1, v7

    if-ne v0, v1, :cond_473

    sget-object v30, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v30

    if-eqz v30, :cond_9

    .line 1380
    :cond_473
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 1381
    sget-object v30, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_573

    .line 1383
    const/16 v30, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    .line 1384
    .local v24, reconnectMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v30, v0

    if-nez v30, :cond_4aa

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_542

    .line 1385
    :cond_4aa
    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 1389
    .local v22, newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    :goto_4ac
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    .line 1402
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_546

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v30, v0

    if-nez v30, :cond_546

    .line 1403
    const-wide/16 v30, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1430
    .end local v22           #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    .end local v24           #reconnectMsg:Landroid/os/Message;
    :cond_4d8
    :goto_4d8
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    .line 1431
    new-instance v17, Landroid/content/Intent;

    const-string v30, "android.net.wifi.supplicant.STATE_CHANGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1432
    .restart local v17       #intent:Landroid/content/Intent;
    const/high16 v30, 0x3000

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1434
    const-string/jumbo v30, "newState"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1435
    if-eqz v14, :cond_533

    .line 1436
    const-string v30, "WifiStateTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Failed to authenticate, disabling network "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->wifiManagerDisableNetwork(I)Z

    .line 1438
    const-string/jumbo v30, "supplicantError"

    const/16 v31, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1442
    :cond_533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 1387
    .end local v17           #intent:Landroid/content/Intent;
    .restart local v24       #reconnectMsg:Landroid/os/Message;
    :cond_542
    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .restart local v22       #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    goto/16 :goto_4ac

    .line 1404
    :cond_546
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_558

    .line 1405
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->stopDriver()Z

    goto :goto_4d8

    .line 1406
    :cond_558
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4d8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v30, v0

    if-nez v30, :cond_4d8

    .line 1407
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    goto/16 :goto_4d8

    .line 1409
    .end local v22           #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    .end local v24           #reconnectMsg:Landroid/os/Message;
    :cond_573
    sget-object v30, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_5a5

    .line 1410
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1411
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v30

    if-nez v30, :cond_591

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5a0

    .line 1412
    :cond_591
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto/16 :goto_4d8

    .line 1414
    :cond_5a0
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->scheduleDisconnect()V

    goto/16 :goto_4d8

    .line 1416
    :cond_5a5
    sget-object v30, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_4d8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v30, v0

    if-nez v30, :cond_4d8

    .line 1421
    sget-object v30, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object v0, v7

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_5dc

    sget-object v30, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_4d8

    sget-object v30, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_4d8

    sget-object v30, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_4d8

    sget-object v30, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_4d8

    .line 1426
    :cond_5dc
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_4d8

    .line 1458
    .end local v7           #currentState:Landroid/net/wifi/SupplicantState;
    .end local v11           #disabledNetwork:Z
    .end local v12           #eventLogParam:I
    .end local v14           #failedToAuthenticate:Z
    .end local v21           #networkId:I
    .end local v23           #newState:Landroid/net/wifi/SupplicantState;
    .end local v28           #supplicantStateResult:Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    :pswitch_5e9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;

    .line 1464
    .local v25, result:Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v30

    and-int/lit8 v12, v30, 0x3f

    .line 1465
    .restart local v12       #eventLogParam:I
    const v30, 0xc365

    move/from16 v0, v30

    move v1, v12

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1467
    const-string v30, "WifiStateTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "New network state is "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v30, v0

    if-eqz v30, :cond_635

    .line 1473
    const-string v30, "WifiStateTracker"

    const-string v31, "Dropping event in scan-only mode"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1476
    :cond_635
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v30, v0

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_64b

    .line 1482
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    .line 1492
    :cond_64b
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v30, v0

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_670

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v30

    sget-object v31, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_9

    .line 1494
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->scheduleDisconnect()V

    goto/16 :goto_9

    .line 1500
    :cond_670
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V

    .line 1501
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v30, v0

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_69b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v30, v0

    if-eqz v30, :cond_6a8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v30, v0

    if-nez v30, :cond_6a8

    .line 1503
    :cond_69b
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1506
    :cond_6a8
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v30, v0

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_72e

    .line 1511
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 1512
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v29, v0

    .line 1513
    .local v29, wasDisconnectPending:Z
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->cancelDisconnect()V

    .line 1519
    if-eqz v29, :cond_6f2

    .line 1520
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v26

    .line 1521
    .local v26, saveState:Landroid/net/NetworkInfo$DetailedState;
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    .line 1522
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1533
    .end local v26           #saveState:Landroid/net/NetworkInfo$DetailedState;
    :cond_6f2
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    .line 1534
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->BSSID:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    .line 1536
    move-object/from16 v0, v25

    iget v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->networkId:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    .line 1537
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v30, v0

    if-eqz v30, :cond_741

    .line 1538
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1543
    .end local v29           #wasDisconnectPending:Z
    :cond_72e
    :goto_72e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1540
    .restart local v29       #wasDisconnectPending:Z
    :cond_741
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_72e

    .line 1547
    .end local v12           #eventLogParam:I
    .end local v25           #result:Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;
    .end local v29           #wasDisconnectPending:Z
    :pswitch_74b
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v30

    if-eqz v30, :cond_761

    .line 1549
    :try_start_751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    new-instance v31, Landroid/content/Intent;

    const-string v32, "android.net.wifi.SCAN_RESULTS"

    invoke-direct/range {v31 .. v32}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_761
    .catch Ljava/lang/IllegalStateException; {:try_start_751 .. :try_end_761} :catch_76f

    .line 1554
    :cond_761
    :goto_761
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->sendScanResultsAvailable()V

    .line 1559
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setScanMode(Z)Z

    goto/16 :goto_9

    .line 1550
    :catch_76f
    move-exception v30

    move-object/from16 v13, v30

    .line 1551
    .restart local v13       #ex:Ljava/lang/IllegalStateException;
    const-string v30, "WifiStateTracker"

    const-string v31, "Before system ready: EVENT_SCAN_RESULTS_AVAILABLE"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_761

    .line 1563
    .end local v13           #ex:Ljava/lang/IllegalStateException;
    :pswitch_77a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v30

    sget-object v31, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_9

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V

    .line 1565
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    goto/16 :goto_9

    .line 1570
    :pswitch_7a2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v30

    sget-object v31, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_9

    .line 1571
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto/16 :goto_9

    .line 1580
    :pswitch_7c3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    if-eqz v30, :cond_840

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v5, v30

    .line 1585
    .local v5, BSSID:Ljava/lang/String;
    :goto_7d7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v30

    sget-object v31, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_9

    .line 1586
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->getMaxDhcpRetries()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_83b

    .line 1588
    const-string v30, "WifiStateTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Failed reconnect count: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " Disabling "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1593
    :cond_83b
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    goto/16 :goto_9

    .line 1580
    .end local v5           #BSSID:Ljava/lang/String;
    :cond_840
    const/16 v30, 0x0

    move-object/from16 v5, v30

    goto :goto_7d7

    .line 1603
    :pswitch_845
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v30

    sget-object v31, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_9

    .line 1606
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    .line 1607
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1608
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1610
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .line 1611
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    move/from16 v30, v0

    if-nez v30, :cond_8eb

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_8eb

    .line 1612
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 1618
    :goto_8c0
    const-string v30, "WifiStateTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "IP configuration: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const v30, 0xc368

    const/16 v31, 0x1

    invoke-static/range {v30 .. v31}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1630
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    goto/16 :goto_9

    .line 1615
    :cond_8eb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    move-object/from16 v30, v0

    const/16 v31, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1616
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8c0

    .line 1634
    :pswitch_901
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v30

    sget-object v31, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_9

    .line 1638
    const v30, 0xc368

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1639
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1640
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1641
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1642
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z

    goto/16 :goto_9

    .line 1651
    :pswitch_93b
    const v30, 0xc367

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    invoke-static/range {v30 .. v31}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1653
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_af8

    .line 1688
    :goto_950
    monitor-enter p0

    .line 1689
    const/16 v30, 0x0

    :try_start_953
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    .line 1690
    monitor-exit p0

    goto/16 :goto_9

    :catchall_95d
    move-exception v30

    monitor-exit p0
    :try_end_95f
    .catchall {:try_start_953 .. :try_end_95f} :catchall_95d

    throw v30

    .line 1660
    :pswitch_960
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels()Z

    .line 1661
    monitor-enter p0

    .line 1662
    :try_start_964
    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;

    move-result-object v20

    .line 1663
    .restart local v20       #macaddr:Ljava/lang/String;
    if-eqz v20, :cond_977

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    .line 1666
    :cond_977
    const/16 v30, 0x2

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 1667
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v30, v0

    if-nez v30, :cond_98f

    .line 1668
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    .line 1674
    :goto_98a
    monitor-exit p0

    goto :goto_950

    .end local v20           #macaddr:Ljava/lang/String;
    :catchall_98c
    move-exception v30

    monitor-exit p0
    :try_end_98e
    .catchall {:try_start_964 .. :try_end_98e} :catchall_98c

    throw v30

    .line 1672
    .restart local v20       #macaddr:Ljava/lang/String;
    :cond_98f
    const/16 v30, 0x1

    :try_start_991
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z
    :try_end_998
    .catchall {:try_start_991 .. :try_end_998} :catchall_98c

    goto :goto_98a

    .line 1677
    .end local v20           #macaddr:Ljava/lang/String;
    :pswitch_999
    const/16 v30, 0x4

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    goto :goto_950

    .line 1680
    :pswitch_9a2
    const-string v30, "WifiStateTracker"

    const-string v31, "Wifi Driver reports HUNG - reloading."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_950

    .line 1694
    :pswitch_9c0
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    goto/16 :goto_9

    .line 1698
    :pswitch_9ca
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveDirectIpAddr:Z

    .line 1699
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingDirectIpAddr:Z

    .line 1701
    const-string v30, "WifiStateTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[EVENT_DIRECT_INTERFACE_CONFIGURATION_SUCCEEDED] : ["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateTracker;->intToIpString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1707
    const-string v18, "android.net.wifidirect.DIRECT_PEER_CONNECTED"

    .line 1708
    .local v18, mIntentName:Ljava/lang/String;
    new-instance v15, Landroid/content/Intent;

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1709
    .local v15, iDirect:Landroid/content/Intent;
    const-string v30, "IpAddr"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v31, v0

    move-object v0, v15

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1710
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1712
    const-string v30, "WifiStateTracker"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[EVENT_DIRECT_INTERFACE_CONFIGURATION_SUCCEEDED] : ["

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/net/wifi/WifiStateTracker;->intToIpString(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1716
    .end local v15           #iDirect:Landroid/content/Intent;
    .end local v18           #mIntentName:Ljava/lang/String;
    :pswitch_a79
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveDirectIpAddr:Z

    .line 1717
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingDirectIpAddr:Z

    .line 1718
    const-string v30, "WifiStateTracker"

    const-string v31, "EVENT_DIRECT_INTERFACE_CONFIGURATION_FAILED"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/net/wifi/WifiManager;->disconnectWifiDirectPeer(Ljava/lang/String;)Z

    .line 1720
    const-string v19, "android.net.wifidirect.DHCP_Failure"

    .line 1721
    .local v19, mIntentName2:Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1722
    .local v16, iDirect2:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 1130
    nop

    :pswitch_data_ab6
    .packed-switch 0x1
        :pswitch_f3
        :pswitch_299
        :pswitch_3ab
        :pswitch_5e9
        :pswitch_74b
        :pswitch_845
        :pswitch_901
        :pswitch_77a
        :pswitch_9
        :pswitch_7a2
        :pswitch_7c3
        :pswitch_a
        :pswitch_93b
        :pswitch_9c0
        :pswitch_38e
        :pswitch_67
        :pswitch_7e
        :pswitch_b9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9ca
        :pswitch_a79
    .end packed-switch

    .line 1653
    :pswitch_data_af8
    .packed-switch 0x0
        :pswitch_960
        :pswitch_999
        :pswitch_9a2
    .end packed-switch
.end method

.method public hasIpAddress()Z
    .registers 2

    .prologue
    .line 619
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    return v0
.end method

.method public interpretScanResultsAvailable()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2816
    iget-boolean v6, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    if-nez v6, :cond_7

    .line 2854
    :cond_6
    :goto_6
    return-void

    .line 2818
    :cond_7
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2820
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 2821
    .local v5, state:Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_17

    sget-object v6, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_48

    .line 2825
    :cond_17
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getScanResultsList()Ljava/util/List;

    move-result-object v4

    .line 2826
    .local v4, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_48

    .line 2827
    const/4 v2, 0x0

    .line 2828
    .local v2, numOpenNetworks:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int v0, v6, v9

    .local v0, i:I
    :goto_24
    if-ltz v0, :cond_39

    .line 2829
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 2831
    .local v3, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 2832
    add-int/lit8 v2, v2, 0x1

    .line 2828
    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 2836
    .end local v3           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_39
    if-lez v2, :cond_48

    .line 2837
    iget v6, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_6

    .line 2845
    invoke-virtual {p0, v9, v2, v8, v8}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    goto :goto_6

    .line 2853
    .end local v0           #i:I
    .end local v2           #numOpenNetworks:I
    .end local v4           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_48
    invoke-virtual {p0, v8, v8, v8, v8}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    goto :goto_6
.end method

.method public isAnyNetworkDisabled()Z
    .registers 2

    .prologue
    .line 2091
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isAvailable()Z
    .registers 3

    .prologue
    .line 583
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 584
    .local v0, suppState:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_1c

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_1c

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-nez v1, :cond_19

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    move-result v1

    if-nez v1, :cond_1c

    :cond_19
    const/4 v1, 0x1

    :goto_1a
    monitor-exit p0

    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1a

    .line 583
    .end local v0           #suppState:Landroid/net/wifi/SupplicantState;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isConnectionCompleted()Z
    .registers 3

    .prologue
    .line 611
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public declared-synchronized isDriverStopped()Z
    .registers 3

    .prologue
    .line 844
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listNetworks()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2373
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2374
    const/4 v0, 0x0

    .line 2376
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->listNetworksCommand()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result-object v0

    goto :goto_b

    .line 2373
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadDriver()Z
    .registers 2

    .prologue
    .line 2116
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->loadDriver()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyDirectLinkCompleted(Landroid/net/InterfaceConfiguration;)V
    .registers 11
    .parameter "ifcg"

    .prologue
    const-string v6, "WifiStateTracker"

    .line 797
    monitor-enter p0

    :try_start_3
    const-string v6, "WifiStateTracker"

    const-string v7, "[WifiStateTracker] [notifyDirectPeerConnected]   "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v0, "192.168.43.1"

    .line 800
    .local v0, DIRECT_DEFAULT_GATEWAY:Ljava/lang/String;
    iget v4, p1, Landroid/net/InterfaceConfiguration;->ipAddr:I

    .line 801
    .local v4, ipAddr:I
    iget-object v2, p1, Landroid/net/InterfaceConfiguration;->hwAddr:Ljava/lang/String;

    .line 803
    .local v2, hwAddr:Ljava/lang/String;
    const-string v6, "WifiStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Direct] IPAddress  : ------------ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/net/InterfaceConfiguration;->ipAddr:I

    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->intToIpString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v6, "WifiStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Direct] MADAddress : ------------ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_81

    .line 807
    :try_start_46
    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_81
    .catch Ljava/net/UnknownHostException; {:try_start_46 .. :try_end_49} :catch_7f

    .line 812
    :try_start_49
    iget-object v6, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 815
    const-string v5, "android.net.wifidirect.DIRECT_PEER_CONNECTED"

    .line 816
    .local v5, mIntentName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 817
    .local v3, iDirect:Landroid/content/Intent;
    const-string v6, "IpAddr"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 818
    iget-object v6, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 820
    const-string v6, "WifiStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Direct] IPAddress\t: ------------ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/net/InterfaceConfiguration;->ipAddr:I

    invoke-static {v8}, Landroid/net/wifi/WifiStateTracker;->intToIpString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_49 .. :try_end_7d} :catchall_81

    .line 821
    .end local v3           #iDirect:Landroid/content/Intent;
    .end local v5           #mIntentName:Ljava/lang/String;
    :goto_7d
    monitor-exit p0

    return-void

    .line 808
    :catch_7f
    move-exception v1

    .line 809
    .local v1, e:Ljava/net/UnknownHostException;
    goto :goto_7d

    .line 797
    .end local v0           #DIRECT_DEFAULT_GATEWAY:Ljava/lang/String;
    .end local v1           #e:Ljava/net/UnknownHostException;
    .end local v2           #hwAddr:Ljava/lang/String;
    .end local v4           #ipAddr:I
    :catchall_81
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized notifyDirectPeerConnected()V
    .registers 3

    .prologue
    .line 791
    monitor-enter p0

    :try_start_1
    const-string v0, "WifiStateTracker"

    const-string v1, "[WifiStateTracker] [notifyDirectPeerConnected]   "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->configureDirectInterface()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 793
    monitor-exit p0

    return-void

    .line 791
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyDirectStart()V
    .registers 3

    .prologue
    .line 753
    const-string v0, "WifiStateTracker"

    const-string v1, "[WifiStateTracker] [notifyDirectStart]   "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 755
    return-void
.end method

.method public notifyDirectStop()V
    .registers 2

    .prologue
    .line 759
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 760
    return-void
.end method

.method notifyDriverHung()V
    .registers 4

    .prologue
    .line 747
    const/16 v0, 0xd

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 748
    return-void
.end method

.method notifyDriverStarted()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 700
    const/16 v0, 0xd

    invoke-static {p0, v0, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 701
    return-void
.end method

.method notifyDriverStopped()V
    .registers 4

    .prologue
    .line 691
    const/16 v0, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 692
    return-void
.end method

.method notifyGetWpsEvent(Ljava/lang/String;)V
    .registers 6
    .parameter "wpsEvent"

    .prologue
    .line 724
    const/4 v0, 0x5

    .line 725
    .local v0, arg1:I
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyGetWpsEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string/jumbo v1, "wps_success"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 727
    const/4 v0, 0x1

    .line 738
    :cond_24
    :goto_24
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 739
    return-void

    .line 728
    :cond_2f
    const-string/jumbo v1, "wps_fail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 729
    const/4 v0, 0x2

    goto :goto_24

    .line 730
    :cond_3a
    const-string/jumbo v1, "wps_overlap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 731
    const/4 v0, 0x3

    goto :goto_24

    .line 732
    :cond_45
    const-string/jumbo v1, "wps_timeout"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 733
    const/4 v0, 0x4

    goto :goto_24

    .line 734
    :cond_50
    const-string/jumbo v1, "wps_not_defined"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 735
    const/4 v0, 0x5

    goto :goto_24
.end method

.method notifyPasswordKeyMayBeIncorrect()V
    .registers 2

    .prologue
    .line 627
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 628
    return-void
.end method

.method notifyScanResultsAvailable()V
    .registers 2

    .prologue
    .line 674
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    .line 675
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 676
    return-void
.end method

.method notifyShowApListDialog()V
    .registers 2

    .prologue
    .line 705
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 706
    return-void
.end method

.method notifyShowEapMessageDialog(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 710
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyShowEapMessageDialog, message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/16 v0, 0x16

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 713
    return-void
.end method

.method notifyStateChange(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .registers 7
    .parameter "networkId"
    .parameter "BSSID"
    .parameter "newState"

    .prologue
    .line 645
    const/4 v1, 0x3

    new-instance v2, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;-><init>(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 648
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 649
    return-void
.end method

.method notifyStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .registers 7
    .parameter "newState"
    .parameter "BSSID"
    .parameter "networkId"

    .prologue
    .line 662
    const/4 v1, 0x4

    new-instance v2, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;-><init>(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 665
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 666
    return-void
.end method

.method notifySupplicantConnection()V
    .registers 2

    .prologue
    .line 635
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 636
    return-void
.end method

.method notifySupplicantLost()V
    .registers 2

    .prologue
    .line 683
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    .line 684
    return-void
.end method

.method public declared-synchronized ping()Z
    .registers 3

    .prologue
    .line 2170
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2171
    const/4 v0, 0x0

    .line 2173
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->pingCommand()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2170
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reassociate()Z
    .registers 3

    .prologue
    .line 2335
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2336
    :cond_10
    const/4 v0, 0x0

    .line 2338
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->reassociateCommand()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2335
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reconnect()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2034
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-eqz v0, :cond_13

    .line 2035
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->restart()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2036
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    move v0, v2

    .line 2045
    :goto_10
    return v0

    :cond_11
    move v0, v1

    .line 2039
    goto :goto_10

    :cond_13
    move v0, v2

    .line 2045
    goto :goto_10
.end method

.method public declared-synchronized reconnectCommand()Z
    .registers 3

    .prologue
    .line 2252
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2253
    :cond_10
    const/4 v0, 0x0

    .line 2255
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2252
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseWakeLock()V
    .registers 1

    .prologue
    .line 1000
    return-void
.end method

.method public declared-synchronized reloadConfig()Z
    .registers 3

    .prologue
    .line 2735
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2736
    const/4 v0, 0x0

    .line 2738
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->reloadConfigCommand()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2735
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNetwork(I)Z
    .registers 4
    .parameter "networkId"

    .prologue
    .line 2277
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2278
    const/4 v0, 0x0

    .line 2280
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_14

    goto :goto_b

    .line 2277
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .prologue
    .line 1895
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V

    .line 1896
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateTracker;->requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V

    .line 1897
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public resetConnections(Z)V
    .registers 5
    .parameter "disableInterface"

    .prologue
    const/4 v1, 0x0

    const-string v2, "WifiStateTracker"

    .line 1827
    const-string v0, "WifiStateTracker"

    const-string v0, "Reset connections and stopping DHCP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    .line 1829
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    .line 1830
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    .line 1836
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    .line 1840
    :try_start_18
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->setCancelCallback(Z)V

    .line 1841
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->removeMessages(I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_43

    .line 1846
    :goto_25
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1847
    const-string v0, "WifiStateTracker"

    const-string v0, "Could not stop DHCP"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_34
    if-eqz p1, :cond_42

    .line 1855
    const-string v0, "WifiStateTracker"

    const-string v0, "Disabling interface"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 1858
    :cond_42
    return-void

    .line 1842
    :catch_43
    move-exception v0

    goto :goto_25
.end method

.method public resetDirectConnections()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const-string v2, "WifiStateTracker"

    .line 767
    const-string v0, "WifiStateTracker"

    const-string v0, "[Direct] Reset connections and stopping DHCP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveDirectIpAddr:Z

    .line 771
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingDirectIpAddr:Z

    .line 777
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDirectInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    .line 780
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpTarget:Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;

    if-eqz v0, :cond_24

    .line 781
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpTarget:Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->setCancelCallback(Z)V

    .line 782
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDirectDhcpTarget:Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DirectDhcpHandler;->removeMessages(I)V

    .line 784
    :cond_24
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDirectInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 785
    const-string v0, "WifiStateTracker"

    const-string v0, "Could not stop DHCP"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_33
    return-void
.end method

.method public declared-synchronized restart()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2074
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2075
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    .line 2076
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 2077
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->startDriver()Z
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_17

    move-result v0

    .line 2079
    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    move v0, v1

    goto :goto_13

    .line 2074
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveConfig()Z
    .registers 3

    .prologue
    .line 2723
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2724
    const/4 v0, 0x0

    .line 2726
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2723
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scan(Z)Z
    .registers 4
    .parameter "forceActive"

    .prologue
    .line 2183
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2184
    :cond_10
    const/4 v0, 0x0

    .line 2186
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->scanCommand(Z)Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2183
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanResults()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2213
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2214
    :cond_10
    const/4 v0, 0x0

    .line 2216
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->scanResultsCommand()Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result-object v0

    goto :goto_11

    .line 2213
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 1988
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 1992
    :goto_5
    return-void

    .line 1989
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public declared-synchronized setBluetoothCoexistenceMode(I)Z
    .registers 4
    .parameter "mode"

    .prologue
    .line 2697
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2698
    :cond_10
    const/4 v0, 0x0

    .line 2700
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceModeCommand(I)Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2697
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBluetoothScanMode(Z)V
    .registers 4
    .parameter "isBluetoothPlaying"

    .prologue
    .line 2711
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_16

    move-result v0

    if-eqz v0, :cond_12

    .line 2715
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 2714
    :cond_12
    :try_start_12
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanModeCommand(Z)Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_10

    .line 2711
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHighPerfMode(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 952
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsHighPerfEnabled:Z

    if-eq v0, p1, :cond_29

    .line 953
    if-eqz p1, :cond_2b

    .line 954
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V

    .line 955
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setSuspendModeOptimizations(Z)V

    .line 960
    :goto_f
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsHighPerfEnabled:Z

    .line 961
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "high performance mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_34

    .line 963
    :cond_29
    monitor-exit p0

    return-void

    .line 957
    :cond_2b
    const/4 v0, 0x0

    :try_start_2c
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V

    .line 958
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setSuspendModeOptimizations(Z)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    goto :goto_f

    .line 952
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "netId"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2402
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2403
    const/4 v0, 0x0

    .line 2405
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {p1, p2, p3}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2402
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNotificationVisible(ZIZI)V
    .registers 15
    .parameter "visible"
    .parameter "numNetworks"
    .parameter "force"
    .parameter "delay"

    .prologue
    const v9, 0x10802c0

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 2874
    if-nez p1, :cond_e

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    if-nez v3, :cond_e

    if-nez p3, :cond_e

    .line 2921
    :cond_d
    :goto_d
    return-void

    .line 2879
    :cond_e
    if-eqz p1, :cond_8a

    .line 2882
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_d

    .line 2886
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    if-nez v3, :cond_46

    .line 2890
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    .line 2891
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 2892
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iput v9, v3, Landroid/app/Notification;->icon:I

    .line 2893
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 2894
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2898
    :cond_46
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10f0011

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2900
    .local v2, title:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10f0012

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2902
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2903
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiStateTracker;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    .line 2907
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4, v9, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2918
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v2           #title:Ljava/lang/CharSequence;
    .local v1, message:Landroid/os/Message;
    :goto_81
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    int-to-long v4, p4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2920
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    goto :goto_d

    .line 2913
    .end local v1           #message:Landroid/os/Message;
    :cond_8a
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2915
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    invoke-virtual {v3, v8, v7, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #message:Landroid/os/Message;
    goto :goto_81
.end method

.method public declared-synchronized setNumAllowedChannels()Z
    .registers 4

    .prologue
    .line 2643
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_32

    move-result v1

    if-eqz v1, :cond_13

    .line 2644
    :cond_10
    const/4 v1, 0x0

    .line 2656
    :goto_11
    monitor-exit p0

    return v1

    .line 2647
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_num_allowed_channels"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels(I)Z
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_32
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_13 .. :try_end_23} :catch_25

    move-result v1

    goto :goto_11

    .line 2650
    :catch_25
    move-exception v1

    move-object v0, v1

    .line 2651
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    :try_start_27
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    if-eqz v1, :cond_30

    .line 2652
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setNumAllowedChannelsCommand(I)Z
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_32

    .line 2656
    :cond_30
    const/4 v1, 0x1

    goto :goto_11

    .line 2643
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setNumAllowedChannels(I)Z
    .registers 4
    .parameter "numChannels"

    .prologue
    .line 2668
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1a

    move-result v0

    if-eqz v0, :cond_13

    .line 2669
    :cond_10
    const/4 v0, 0x0

    .line 2672
    :goto_11
    monitor-exit p0

    return v0

    .line 2671
    :cond_13
    :try_start_13
    iput p1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    .line 2672
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setNumAllowedChannelsCommand(I)Z
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1a

    move-result v0

    goto :goto_11

    .line 2668
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRadio(Z)Z
    .registers 3
    .parameter "turnOn"

    .prologue
    .line 2772
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setScanMode(Z)Z
    .registers 4
    .parameter "isScanModeActive"

    .prologue
    .line 2225
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_20

    move-result v0

    if-eqz v0, :cond_13

    .line 2226
    :cond_10
    const/4 v0, 0x0

    .line 2231
    :goto_11
    monitor-exit p0

    return v0

    .line 2228
    :cond_13
    :try_start_13
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    if-eq v0, p1, :cond_1e

    .line 2229
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setScanModeCommand(Z)Z
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_20

    move-result v0

    goto :goto_11

    .line 2231
    :cond_1e
    const/4 v0, 0x1

    goto :goto_11

    .line 2225
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanOnlyMode(Z)V
    .registers 6
    .parameter "scanOnlyMode"

    .prologue
    .line 887
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    if-eq v1, p1, :cond_3e

    .line 888
    if-eqz p1, :cond_40

    const/4 v1, 0x2

    move v0, v1

    .line 890
    .local v0, scanType:I
    :goto_9
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan-only mode changing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scanType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 892
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    .line 893
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 894
    if-eqz p1, :cond_43

    .line 895
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_47

    .line 902
    .end local v0           #scanType:I
    :cond_3e
    :goto_3e
    monitor-exit p0

    return-void

    .line 888
    :cond_40
    const/4 v1, 0x1

    move v0, v1

    goto :goto_9

    .line 897
    .restart local v0       #scanType:I
    :cond_43
    :try_start_43
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_3e

    .line 887
    .end local v0           #scanType:I
    :catchall_47
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setScanResultHandling(I)Z
    .registers 4
    .parameter "mode"

    .prologue
    .line 2199
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2200
    const/4 v0, 0x0

    .line 2202
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2199
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanResultsList(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1887
    .local p1, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1888
    monitor-exit p0

    return-void

    .line 1887
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSuspendModeOptimizations(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 926
    monitor-enter p0

    if-nez p1, :cond_1a

    .line 927
    :try_start_3
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    .line 938
    :goto_9
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_28

    move-result v0

    if-eqz v0, :cond_2b

    .line 943
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    .line 929
    :cond_1a
    :try_start_1a
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    .line 930
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    if-gtz v0, :cond_18

    .line 934
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_28

    goto :goto_9

    .line 926
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 942
    :cond_2b
    :try_start_2b
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setSuspendOptimizationsCommand(Z)Z
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_28

    goto :goto_18
.end method

.method public setWifiState(I)V
    .registers 3
    .parameter "wifiState"

    .prologue
    .line 2087
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2088
    return-void
.end method

.method public declared-synchronized startDriver()Z
    .registers 3

    .prologue
    .line 2488
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2489
    const/4 v0, 0x0

    .line 2491
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->startDriverCommand()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 2488
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startEventLoop()V
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    .line 564
    return-void
.end method

.method public startMonitoring()V
    .registers 3

    .prologue
    .line 559
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    .line 560
    return-void
.end method

.method public declared-synchronized startPacketFiltering()Z
    .registers 3

    .prologue
    .line 2565
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2566
    :cond_10
    const/4 v0, 0x0

    .line 2568
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->startPacketFiltering()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2565
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSupplicant()Z
    .registers 2

    .prologue
    .line 2135
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->startSupplicant()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 2782
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized status()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2422
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_12

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 2423
    const/4 v0, 0x0

    .line 2425
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result-object v0

    goto :goto_b

    .line 2422
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDriver()Z
    .registers 3

    .prologue
    .line 2502
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_17

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 2503
    :cond_f
    const/4 v0, 0x0

    .line 2505
    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    :try_start_12
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopDriverCommand()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_17

    move-result v0

    goto :goto_10

    .line 2502
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopPacketFiltering()Z
    .registers 3

    .prologue
    .line 2577
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_18

    move-result v0

    if-eqz v0, :cond_13

    .line 2578
    :cond_10
    const/4 v0, 0x0

    .line 2580
    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopPacketFiltering()Z
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18

    move-result v0

    goto :goto_11

    .line 2577
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSupplicant()Z
    .registers 2

    .prologue
    .line 2144
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopSupplicant()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 2792
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2018
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-nez v0, :cond_12

    .line 2019
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnectAndStop()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2020
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    move v0, v1

    .line 2026
    :goto_f
    return v0

    .line 2023
    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :cond_12
    move v0, v1

    .line 2026
    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2937
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2938
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2939
    const-string v1, " runState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2940
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    if-lt v1, v3, :cond_8d

    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    array-length v2, v2

    if-gt v1, v2, :cond_8d

    .line 2941
    sget-object v1, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2945
    :goto_2b
    sget-object v1, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2946
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2947
    const-string v1, "haveIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", obtainingIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", scanModeActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lastSignalLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", explicitlyDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 2952
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2943
    :cond_8d
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2b
.end method

.method public declared-synchronized unloadDriver()Z
    .registers 2

    .prologue
    .line 2125
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->unloadDriver()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V
    .registers 5
    .parameter "newSource"

    .prologue
    .line 849
    if-eqz p1, :cond_7

    .line 850
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 852
    :cond_7
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3f

    .line 853
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    if-eqz v0, :cond_2b

    .line 856
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 857
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 859
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 879
    :cond_2a
    :goto_2a
    return-void

    .line 863
    :cond_2b
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 864
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 865
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    goto :goto_2a

    .line 877
    :catch_3d
    move-exception v0

    goto :goto_2a

    .line 867
    :cond_3f
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 868
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    if-eqz v0, :cond_2a

    .line 870
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 871
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_57} :catch_3d

    goto :goto_2a
.end method

.method public declared-synchronized wpsCommandCancel()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2548
    monitor-enter p0

    :try_start_2
    const-string v0, "WifiStateTracker"

    const-string/jumbo v1, "wpsCommandCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 2551
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_24

    move-result v0

    if-nez v0, :cond_1f

    move v0, v2

    .line 2554
    :goto_1d
    monitor-exit p0

    return v0

    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/net/wifi/WifiNative;->cancelWpsCommand()Z
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_24

    move-result v0

    goto :goto_1d

    .line 2548
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wpsPbcConnect()Z
    .registers 3

    .prologue
    .line 2516
    monitor-enter p0

    :try_start_1
    const-string v0, "WifiStateTracker"

    const-string/jumbo v1, "wpsPbcConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_23

    move-result v0

    if-nez v0, :cond_1b

    .line 2519
    const/4 v0, 0x0

    .line 2522
    :goto_19
    monitor-exit p0

    return v0

    .line 2521
    :cond_1b
    const/4 v0, 0x1

    :try_start_1c
    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 2522
    invoke-static {}, Landroid/net/wifi/WifiNative;->startWpsPbcCommand()Z
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_23

    move-result v0

    goto :goto_19

    .line 2516
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wpsPinConnect(Ljava/lang/String;)I
    .registers 5
    .parameter "bssid"

    .prologue
    .line 2532
    monitor-enter p0

    :try_start_1
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wpsPinConnect(), bssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_34

    move-result v0

    if-nez v0, :cond_2c

    .line 2535
    const/4 v0, -0x1

    .line 2538
    :goto_2a
    monitor-exit p0

    return v0

    .line 2537
    :cond_2c
    const/4 v0, 0x1

    :try_start_2d
    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mWpsInProgress:Z

    .line 2538
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->startWpsPinCommand(Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_34

    move-result v0

    goto :goto_2a

    .line 2532
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method
